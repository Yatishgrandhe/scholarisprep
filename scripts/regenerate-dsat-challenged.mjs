#!/usr/bin/env node
/**
 * Delete all challenged RW items and regenerate 325 (25 × 13 subtypes) from
 * scripts/lib/dsat-challenged-bank.mjs, validate, and apply to prod Postgres.
 *
 *   node scripts/regenerate-dsat-challenged.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regenerate-dsat-challenged.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import pg from "pg";
import { DSAT_SUBTYPE_SPECS, SKILLS, CHALLENGED_PER_SUBTYPE } from "./lib/dsat-rw-blueprint.mjs";
import { generateChallengedBankItem, validateChallengedRow } from "./lib/dsat-challenged-bank.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.dsat-challenged-regen");
const DELETE_SQL = `DELETE FROM public.questions WHERE source_metadata->>'challenged_problem' = 'true' AND exam_type='SAT' AND section='reading_writing' AND is_platform_question=true;`;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");

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

function generateAll() {
  const rows = [];
  const stats = { bySubtype: {}, validationFails: 0, total: 0 };

  for (const spec of DSAT_SUBTYPE_SPECS) {
    stats.bySubtype[spec.rw_subtype] = 0;
    for (let i = 0; i < CHALLENGED_PER_SUBTYPE; i++) {
      let row = null;
      let attempts = 0;
      while (attempts < 12) {
        row = generateChallengedBankItem({ spec, index: i + attempts * 17 });
        const v = validateChallengedRow(row);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateChallengedRow(row);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL ${spec.rw_subtype} #${i}: ${finalV.reasons?.join(", ") ?? finalV.reason}`);
      }
      rows.push({ id: randomUUID(), ...row });
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
      try {
        await pgQuery("ROLLBACK");
      } catch {
        /* ignore */
      }
      process.stdout.write(`FAIL ${file}: ${String(e.message).slice(0, 120)}\n`);
    }
  }
  return { ok, fail, total: files.length };
}

async function verify() {
  const queries = {
    challengedTotal: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true'`,
    bySubtype: `SELECT source_metadata->>'rw_subtype' AS rw_subtype, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true' GROUP BY 1 ORDER BY 1`,
    sample: `SELECT id, skill_id, source_metadata->>'rw_subtype' AS rw_subtype, difficulty, source_metadata->>'difficulty_tier' AS tier, length(stimulus_text) AS stim_len FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true' ORDER BY random() LIMIT 5`,
    wordCounts: `SELECT source_metadata->>'rw_subtype' AS rw_subtype, AVG(array_length(regexp_split_to_array(trim(stimulus_text), E'\\\\s+'), 1))::int AS avg_words FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true' AND stimulus_text IS NOT NULL AND stimulus_text NOT LIKE '%•%' GROUP BY 1 ORDER BY 1`,
  };
  const out = {};
  for (const [key, q] of Object.entries(queries)) {
    const r = await pgQuery(q);
    out[key] = r.rows;
  }
  return out;
}

async function main() {
  console.log(
    JSON.stringify({
      subtypes: DSAT_SUBTYPE_SPECS.length,
      perSubtype: CHALLENGED_PER_SUBTYPE,
      expected: DSAT_SUBTYPE_SPECS.length * CHALLENGED_PER_SUBTYPE,
    }),
  );

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
    console.log("Wrote SQL to scripts/data/.dsat-challenged-regen/ — pass --apply to run");
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
