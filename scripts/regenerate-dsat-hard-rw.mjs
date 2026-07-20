#!/usr/bin/env node
/**
 * Delete standard hard-tier SAT RW rows (non-challenged) and regenerate ~897 items
 * (13 subtypes × 69 hard cells at 23% of 300) with updated sentence/TRA validators.
 *
 *   node scripts/regenerate-dsat-hard-rw.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regenerate-dsat-hard-rw.mjs --apply
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
  generateDsatRwQuestion,
  sourceMetadataForInsert,
  difficultyForCell,
  validateDsatRwQuestion,
  validateContentQuality,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  generateConventionsBatch,
  validateConventionsRow,
} from "./lib/dsat-conventions-bank.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.dsat-hard-rw-regen");
const DELETE_SQL = `DELETE FROM public.questions
WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
  AND difficulty='hard'
  AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true';`;

const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);
const CONVENTIONS_SUBTYPES = {
  BOU: "boundaries",
  FSS: "form_structure_sense",
  SYN: "notes_synthesis",
};

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const targetPerSubtype = Number(argv.find((a, i) => argv[i - 1] === "--target-per-subtype") ?? DEFAULT_TARGET_PER_SUBTYPE);

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

function validateRow(row) {
  if (CONVENTIONS_SKILLS.has(row.skill_id)) return validateConventionsRow(row);
  const v = validateDsatRwQuestion(row);
  const q = validateContentQuality(row);
  if (!q.ok) return { ok: false, reasons: [...(v.reasons ?? []), ...q.reasons] };
  return v;
}

function hardIndicesForSubtype(total) {
  const out = [];
  for (let i = 0; i < total; i++) {
    if (difficultyForCell(i, total) === "hard") out.push(i);
  }
  return out;
}

function generateHardRows() {
  const rows = [];
  const stats = { bySubtype: {}, validationFails: 0, total: 0 };

  for (const spec of DSAT_SUBTYPE_SPECS) {
    stats.bySubtype[spec.rw_subtype] = 0;
    const hardIdx = hardIndicesForSubtype(targetPerSubtype);

    if (CONVENTIONS_SKILLS.has(spec.skill)) {
      for (const i of hardIdx) {
        let attempts = 0;
        let row = null;
        while (attempts < 12) {
          const batch = generateConventionsBatch({ skill: spec.skill, count: 1, startIndex: i + attempts * 4000 + 20000 });
          row = {
            ...batch[0],
            id: randomUUID(),
            difficulty: "hard",
            rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
            source_metadata: {
              ...batch[0].source_metadata,
              dsat_blueprint_v1: true,
              rw_subtype: CONVENTIONS_SUBTYPES[spec.skill],
              rw_format: batch[0].rw_format,
              generator: "regenerate-dsat-hard-rw.mjs",
              explanation_v2: true,
              original: true,
            },
          };
          const v = validateRow(row);
          if (v.ok) break;
          attempts++;
        }
        const finalV = validateRow(row);
        if (!finalV.ok) {
          stats.validationFails++;
          console.error(`FAIL ${spec.rw_subtype} #${i}: ${finalV.reasons?.join(", ")}`);
        }
        rows.push(row);
        stats.bySubtype[spec.rw_subtype]++;
        stats.total++;
      }
      continue;
    }

    for (const i of hardIdx) {
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        q = generateDsatRwQuestion({
          spec,
          index: i + attempts * 7919 + spec.skill.length * 1000,
          difficulty: "hard",
        });
        const v = validateRow(q);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateRow(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL ${spec.rw_subtype} #${i}: ${finalV.reasons?.join(", ")}`);
      }
      const { _index, _challenged, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow),
      });
      stats.bySubtype[spec.rw_subtype]++;
      stats.total++;
    }
  }

  return { rows, stats };
}

function chunkMegas(stmts, megaDir, size = 10) {
  mkdirSync(megaDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += size) {
    const chunk = stmts.slice(i, i + size);
    writeFileSync(join(megaDir, `mega-${String(megaIdx).padStart(3, "0")}.sql`), "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;\n");
    megaIdx++;
  }
  return megaIdx;
}

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) throw new Error("no mcp.json");
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    return env.POSTGRES_URL_NON_POOLING?.trim() || env.POSTGRES_URL?.trim() || env.DATABASE_URL?.trim() || null;
  }
  throw new Error("no Postgres URL");
}

async function pgQuery(query) {
  const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function applyMegas(megaDir) {
  const files = readdirSync(megaDir).filter((f) => /^mega-\d+\.sql$/.test(f)).sort();
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

async function verify() {
  const queries = {
    hardStandardTotal: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND difficulty='hard' AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true'`,
    bySubtype: `SELECT source_metadata->>'rw_subtype' AS rw_subtype, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND difficulty='hard' AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true' GROUP BY 1 ORDER BY 1`,
    ctcSample: `SELECT id, (length(stimulus_text) - length(replace(stimulus_text, '.', ''))) AS dots FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND skill_id='CTC' AND difficulty='hard' AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true' LIMIT 3`,
    traSample: `SELECT id, options->0->>'text' AS opt_a FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND skill_id='TRA' AND difficulty='hard' AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true' LIMIT 3`,
  };
  const out = {};
  for (const [key, q] of Object.entries(queries)) {
    out[key] = (await pgQuery(q)).rows;
  }
  return out;
}

async function main() {
  const hardPerSubtype = hardIndicesForSubtype(targetPerSubtype).length;
  console.log(JSON.stringify({ subtypes: DSAT_SUBTYPE_SPECS.length, hardPerSubtype, expected: DSAT_SUBTYPE_SPECS.length * hardPerSubtype }));

  const { rows, stats } = generateHardRows();
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
    console.log("Wrote SQL to scripts/data/.dsat-hard-rw-regen/ — pass --apply to run");
    return;
  }

  const deleteResult = await pgQuery(DELETE_SQL);
  console.log(`deleted: ${deleteResult.rowCount} rows`);
  const applyResult = await applyMegas(megaDir);
  const counts = await verify();
  console.log(JSON.stringify({ deleteCount: deleteResult.rowCount, apply: applyResult, verify: counts }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
