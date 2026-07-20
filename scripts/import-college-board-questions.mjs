#!/usr/bin/env node
/**
 * Import Digital SAT questions from OpenSAT public JSON (College Board EQB-style bank).
 * Source: https://api.jsonsilo.com/public/942c3c3b-3a0c-4be3-81c2-12029def19f5
 *
 * Usage:
 *   node scripts/import-college-board-questions.mjs --fetch          # download + write SQL batches
 *   node scripts/import-college-board-questions.mjs --emit-sql 0     # print batch 0 SQL to stdout
 */

import { createHash } from "node:crypto";
import { mkdir, writeFile } from "node:fs/promises";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import {
  classifyOpenSatItem,
  mapMathDomainSlug,
} from "./sat-question-taxonomy.mjs";

const __dirname = dirname(fileURLToPath(import.meta.url));
const SOURCE_URL =
  "https://api.jsonsilo.com/public/942c3c3b-3a0c-4be3-81c2-12029def19f5";
const SOURCE_KEY = "college_board_opensat";
const POOL_KEY = "college_board_sat_v1";
const BATCH_SIZE = 25;
const OUT_DIR = join(__dirname, "import-batches");

function sqlEscape(str) {
  if (str == null) return "NULL";
  return `'${String(str).replace(/'/g, "''")}'`;
}

function normalizeParagraph(p) {
  if (!p || p === "null" || p === "NULL") return null;
  return p.trim() || null;
}

function normalizeDifficulty(raw) {
  const d = String(raw ?? "").trim().toLowerCase();
  if (d === "easy") return "easy";
  if (d === "hard" || d === "expert") return "hard";
  return "medium";
}

function buildOptions(choices, correct) {
  return ["A", "B", "C", "D"].map((id) => ({
    id,
    text: choices[id] ?? "",
    is_correct: id === correct,
    // OpenSAT provides question-level explanations only (no per-choice rationale).
    explanation: "",
  }));
}

/**
 * OpenSAT ids collide (random_id_* placeholders and repeated hex ids like f54c918d).
 * Stable unique key: section + array index. Raw id preserved in source_metadata.
 */
function externalIdFor(item, section, index) {
  const raw = String(item.id ?? "").trim();
  const slot = `${section}_${String(index).padStart(5, "0")}`;
  if (raw && !/^random_id_/i.test(raw)) return `${raw}_${slot}`;

  const q = item.question;
  const fingerprint = [
    section,
    index,
    item.domain ?? "",
    q?.question ?? "",
    q?.correct_answer ?? "",
    JSON.stringify(q?.choices ?? {}),
  ].join("\0");
  return `opensat_${createHash("sha256").update(fingerprint).digest("hex").slice(0, 16)}_${slot}`;
}

function transformItem(item, section, index) {
  const q = item.question;
  if (!q?.choices || !q.correct_answer) return null;

  const subject = section === "math" ? "math" : "reading_writing";
  const paragraph = normalizeParagraph(q.paragraph);
  const options = buildOptions(q.choices, q.correct_answer);
  const externalId = externalIdFor(item, section, index);
  const taxonomy = classifyOpenSatItem(item, section);

  return {
    external_id: externalId,
    source: SOURCE_KEY,
    question_text: q.question,
    stimulus_text: paragraph,
    stimulus_type: paragraph ? "passage" : null,
    options,
    correct_answer: q.correct_answer,
    explanation: q.explanation || "See official explanation.",
    hint: "Review the passage and eliminate choices that contradict the text.",
    topic: taxonomy.domainLabel,
    subtopic: taxonomy.skillLabel,
    domain_id: taxonomy.domainId,
    skill_id: taxonomy.skillId,
    section: subject,
    subject,
    difficulty: normalizeDifficulty(item.difficulty),
    exam_type: "SAT",
    question_type: "multiple_choice",
    math_domain: section === "math" ? mapMathDomainSlug(item.domain) : null,
    math_skill_code: section === "math" ? taxonomy.skillId : null,
    pool_key: POOL_KEY,
    diagnostic_eligible: true,
    is_platform_question: true,
    ai_generated: false,
    calculator_allowed: section === "math",
    tags: ["college_board", "opensat", section, item.domain].filter(Boolean),
    source_metadata: {
      opensat_domain: item.domain,
      opensat_difficulty: item.difficulty ?? null,
      domain_id: taxonomy.domainId,
      skill_id: taxonomy.skillId,
      section,
      opensat_raw_id: item.id ?? null,
      opensat_index: index,
    },
  };
}

function rowToInsertSql(row) {
  const optionsJson = JSON.stringify(row.options).replace(/'/g, "''");
  const tagsSql =
    row.tags?.length > 0
      ? `ARRAY[${row.tags.map((t) => sqlEscape(t)).join(",")}]::text[]`
      : "NULL";
  const metaJson = JSON.stringify(row.source_metadata).replace(/'/g, "''");

  return `(
    gen_random_uuid(),
    ${sqlEscape(row.question_text)},
    'multiple_choice',
    '${optionsJson}'::jsonb,
    ${sqlEscape(row.correct_answer)},
    ${sqlEscape(row.explanation)},
    ${sqlEscape(row.hint)},
    ${row.stimulus_text ? sqlEscape(row.stimulus_text) : "NULL"},
    ${row.stimulus_type ? sqlEscape(row.stimulus_type) : "NULL"},
    ${sqlEscape(row.section)},
    ${sqlEscape(row.topic)},
    '${row.difficulty}'::difficulty,
    'SAT'::exam_type,
    true,
    false,
    ${row.calculator_allowed},
    ${sqlEscape(row.subject)},
    ${row.subtopic ? sqlEscape(row.subtopic) : "NULL"},
    ${sqlEscape(row.domain_id)},
    ${sqlEscape(row.skill_id)},
    ${row.math_domain ? sqlEscape(row.math_domain) : "NULL"},
    ${row.math_skill_code ? sqlEscape(row.math_skill_code) : "NULL"},
    ${sqlEscape(row.pool_key)},
    true,
    ${tagsSql},
    ${sqlEscape(row.external_id)},
    ${sqlEscape(row.source)},
    '${metaJson}'::jsonb
  )`;
}

function buildBatchSql(rows) {
  const values = rows.map(rowToInsertSql).join(",\n");
  return `INSERT INTO public.questions (
    id, question_text, question_type, options, correct_answer, explanation, hint,
    stimulus_text, stimulus_type, section, topic, difficulty, exam_type,
    is_platform_question, ai_generated, calculator_allowed, subject, subtopic,
    domain_id, skill_id, math_domain, math_skill_code, pool_key, diagnostic_eligible,
    tags, external_id, source, source_metadata
  ) VALUES
${values}
ON CONFLICT (source, external_id) WHERE external_id IS NOT NULL AND source IS NOT NULL
DO NOTHING;`;
}

async function loadData(fetchFresh) {
  if (fetchFresh) {
    const res = await fetch(SOURCE_URL);
    if (!res.ok) throw new Error(`Fetch failed: ${res.status}`);
    return res.json();
  }
  try {
    const { readFile } = await import("node:fs/promises");
    return JSON.parse(await readFile("/tmp/opensat.json", "utf8"));
  } catch {
    const res = await fetch(SOURCE_URL);
    return res.json();
  }
}

async function main() {
  const args = new Set(process.argv.slice(2));
  const fetchFresh = args.has("--fetch");
  const emitIdx = process.argv.indexOf("--emit-sql");
  const emitBatch = emitIdx >= 0 ? Number(process.argv[emitIdx + 1]) : null;

  const data = await loadData(fetchFresh || emitBatch != null);
  const rows = [];
  for (const section of ["english", "math"]) {
    (data[section] || []).forEach((item, index) => {
      const row = transformItem(item, section, index);
      if (row) rows.push(row);
    });
  }

  const uniqueExternal = new Set(rows.map((r) => r.external_id));
  if (uniqueExternal.size !== rows.length) {
    throw new Error(
      `Duplicate external_id after transform: ${rows.length - uniqueExternal.size} collisions`
    );
  }

  const batches = [];
  for (let i = 0; i < rows.length; i += BATCH_SIZE) {
    batches.push(rows.slice(i, i + BATCH_SIZE));
  }

  if (emitBatch != null) {
    if (!batches[emitBatch]) {
      console.error(`No batch ${emitBatch}`);
      process.exit(1);
    }
    console.log(buildBatchSql(batches[emitBatch]));
    return;
  }

  await mkdir(OUT_DIR, { recursive: true });
  const manifest = { total: rows.length, batches: batches.length, source: SOURCE_URL };
  for (let i = 0; i < batches.length; i++) {
    const sql = buildBatchSql(batches[i]);
    await writeFile(join(OUT_DIR, `batch-${String(i).padStart(3, "0")}.sql`), sql);
  }
  await writeFile(join(OUT_DIR, "manifest.json"), JSON.stringify(manifest, null, 2));
  console.log(JSON.stringify(manifest));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
