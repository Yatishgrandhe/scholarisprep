#!/usr/bin/env node
/**
 * Delete hard (non-challenged) DSAT RW rows and regenerate with sentence-quality gates.
 *
 *   node scripts/regenerate-dsat-hard-quality.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regenerate-dsat-hard-quality.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import pg from "pg";
import {
  DSAT_SUBTYPE_SPECS,
  SKILLS,
  DEFAULT_TARGET_PER_SUBTYPE,
  DIFFICULTY_MIX,
  generateDsatRwQuestion,
  sourceMetadataForInsert,
  validateDsatRwQuestion,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  generateConventionsBatch,
} from "./lib/dsat-conventions-bank.mjs";

const OUT_DIR = resolve("scripts/data/.dsat-hard-regen");
const DELETE_SQL = `DELETE FROM public.questions
WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
  AND difficulty='hard'
  AND (source_metadata->>'challenged_problem') IS DISTINCT FROM 'true';`;

const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);
const CONVENTIONS_SUBTYPES = { BOU: "boundaries", FSS: "form_structure_sense", SYN: "notes_synthesis" };

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const targetPerSubtype = Number(
  argv.find((a, i) => argv[i - 1] === "--target-per-subtype") ?? DEFAULT_TARGET_PER_SUBTYPE,
);
const hardPerSubtype = Math.floor(targetPerSubtype * DIFFICULTY_MIX.hard);

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const skill = SKILLS[row.skill_id];
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, ${sqlEscape(row.hint)}, ${sqlEscape(skill.topic)}, ${sqlEscape(skill.subtopic)}, ${sqlEscape(skill.section)}, ${sqlEscape(skill.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) throw new Error("no mcp.json");
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    return (
      env.POSTGRES_URL_NON_POOLING?.trim() ||
      env.POSTGRES_URL?.trim() ||
      env.DATABASE_URL?.trim() ||
      null
    );
  }
  throw new Error("no Postgres URL");
}

async function pgQuery(query) {
  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

function generateHardSubtype(spec) {
  const rows = [];
  let validationFails = 0;

  if (CONVENTIONS_SKILLS.has(spec.skill)) {
    const batch = generateConventionsBatch({ skill: spec.skill, count: hardPerSubtype, startIndex: spec.skill.length * 5000 });
    for (let i = 0; i < hardPerSubtype; i++) {
      let row = {
        ...batch[i % batch.length],
        id: randomUUID(),
        difficulty: "hard",
        rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
        source_metadata: {
          ...batch[i % batch.length].source_metadata,
          dsat_blueprint_v1: true,
          rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
          generator: "regenerate-dsat-hard-quality.mjs",
          explanation_v2: true,
          original: true,
        },
      };
      let v = validateDsatRwQuestion({ ...row, rw_subtype: CONVENTIONS_SUBTYPES[spec.skill] });
      let attempts = 0;
      while (!v.ok && attempts < 24) {
        const retry = generateConventionsBatch({
          skill: spec.skill,
          count: 1,
          startIndex: i + attempts * 997 + 90000,
        })[0];
        row = {
          ...retry,
          id: randomUUID(),
          difficulty: "hard",
          rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
          source_metadata: {
            ...retry.source_metadata,
            dsat_blueprint_v1: true,
            rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
            generator: "regenerate-dsat-hard-quality.mjs",
            explanation_v2: true,
            original: true,
          },
        };
        v = validateDsatRwQuestion({ ...row, rw_subtype: CONVENTIONS_SUBTYPES[spec.skill] });
        attempts++;
      }
      if (!v.ok) validationFails++;
      else rows.push(row);
    }
    return { rows, validationFails };
  }

  for (let i = 0; i < hardPerSubtype; i++) {
    let q = null;
    let attempts = 0;
    while (attempts < 32) {
      q = generateDsatRwQuestion({
        spec,
        index: i + attempts * 7919 + spec.rw_subtype.length * 300,
        difficulty: "hard",
      });
      const v = validateDsatRwQuestion(q);
      if (v.ok) break;
      attempts++;
    }
    const finalV = validateDsatRwQuestion(q);
    if (!finalV.ok) {
      validationFails++;
      console.error(`FAIL ${spec.rw_subtype} #${i}: ${finalV.reasons.join(", ")}`);
    }
    const { _index, _challenged, ...insertRow } = q;
    rows.push({
      id: randomUUID(),
      ...insertRow,
      source_metadata: sourceMetadataForInsert({ ...insertRow, source_metadata: { ...insertRow.source_metadata, generator: "regenerate-dsat-hard-quality.mjs" } }),
    });
  }
  return { rows, validationFails };
}

function generateAll() {
  const rows = [];
  const stats = { bySubtype: {}, validationFails: 0, total: 0, hardPerSubtype };

  for (const spec of DSAT_SUBTYPE_SPECS) {
    const { rows: subtypeRows, validationFails } = generateHardSubtype(spec);
    rows.push(...subtypeRows);
    stats.bySubtype[spec.rw_subtype] = subtypeRows.length;
    stats.validationFails += validationFails;
    stats.total += subtypeRows.length;
  }
  return { rows, stats };
}

function chunkMegas(stmts, megaDir, size = 10) {
  mkdirSync(megaDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += size) {
    const chunk = stmts.slice(i, i + size);
    writeFileSync(
      join(megaDir, `mega-${String(megaIdx).padStart(3, "0")}.sql`),
      "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;\n",
    );
    megaIdx++;
  }
  return megaIdx;
}

async function applyMegas(megaDir) {
  const files = readdirSync(megaDir)
    .filter((f) => /^mega-\d+\.sql$/.test(f))
    .sort();
  let ok = 0;
  let fail = 0;
  for (const file of files) {
    const sql = readFileSync(join(megaDir, file), "utf8");
    try {
      await pgQuery(sql);
      ok++;
      process.stdout.write(`ok ${file}\n`);
    } catch (e) {
      fail++;
      process.stdout.write(`FAIL ${file}: ${String(e.message).slice(0, 120)}\n`);
    }
  }
  return { ok, fail, total: files.length };
}

async function main() {
  console.log(JSON.stringify({ hardPerSubtype, subtypes: DSAT_SUBTYPE_SPECS.length, expected: hardPerSubtype * DSAT_SUBTYPE_SPECS.length }));

  const { rows, stats } = generateAll();
  const insertStmts = rows.map(insertSql);
  const sql = ["BEGIN;", DELETE_SQL, ...insertStmts, "COMMIT;"].join("\n");
  const megaDir = join(OUT_DIR, "megas");

  mkdirSync(OUT_DIR, { recursive: true });
  writeFileSync(join(OUT_DIR, "insert.sql"), sql + "\n");
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(stats, null, 2));
  const megaCount = chunkMegas([DELETE_SQL, ...insertStmts], megaDir, 8);

  console.log(JSON.stringify({ generated: rows.length, stats, megas: megaCount }, null, 2));

  if (dryRun) return;
  if (!apply) {
    console.log("Wrote SQL to scripts/data/.dsat-hard-regen/ — pass --apply to run");
    return;
  }

  const deleteResult = await pgQuery(DELETE_SQL);
  console.log(`deleted: ${deleteResult.rowCount} rows`);
  const applyResult = await applyMegas(megaDir);
  console.log(JSON.stringify({ deleteCount: deleteResult.rowCount, apply: applyResult }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
