#!/usr/bin/env node
/**
 * Generate 4 Digital SAT Exam Simulator forms (392 unique questions).
 *
 *   node scripts/generate-exam-simulator-forms.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/generate-exam-simulator-forms.mjs --apply
 */
import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import pg from "pg";
import {
  generateAllSimulatorForms,
  SIMULATOR_SOURCE,
} from "./lib/exam-simulator-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.exam-simulator");
const LOG = resolve("scripts/data/.exam-simulator-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options ?? []).replace(/'/g, "''");
  const qType = row.question_type ?? "multiple_choice";
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(row.topic)}, ${sqlEscape(row.subtopic)}, ${sqlEscape(row.section)}, ${sqlEscape(row.domain_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.difficulty)}::public.difficulty, ${row.calculator_allowed}, 'SAT', ${sqlEscape(qType)}::public.question_type, false, true, '${SIMULATOR_SOURCE}', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function buildSql(rows) {
  const parts = [
    "BEGIN;",
    `DELETE FROM public.questions WHERE source = '${SIMULATOR_SOURCE}';`,
  ];
  for (const row of rows) parts.push(insertSql(row));
  parts.push("COMMIT;");
  return parts.join("\n");
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

function chunkMegas(sql, megaDir, size = 15) {
  mkdirSync(megaDir, { recursive: true });
  const inner = sql.replace(/^BEGIN;\n?/i, "").replace(/\n?COMMIT;?\s*$/i, "");
  const stmts = inner.split(/\n(?=INSERT|DELETE)/i).filter((s) => /^(INSERT|DELETE)/i.test(s.trim()));
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
      process.stdout.write(`FAIL ${file}: ${String(e.message).slice(0, 160)}\n`);
    }
  }
  return { ok, fail, total: files.length };
}

async function verify() {
  const r = await pgQuery(`
    SELECT
      (source_metadata->>'simulator_form')::int AS form,
      source_metadata->>'module_key' AS module_key,
      COUNT(*)::int AS cnt
    FROM questions
    WHERE source = '${SIMULATOR_SOURCE}'
    GROUP BY 1, 2
    ORDER BY 1, 2;
  `);
  const total = await pgQuery(
    `SELECT COUNT(*)::int AS cnt FROM questions WHERE source = '${SIMULATOR_SOURCE}';`,
  );
  return { byFormModule: r.rows, total: total.rows[0]?.cnt ?? 0 };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const { rows, forms } = generateAllSimulatorForms();
  const sql = buildSql(rows);
  writeFileSync(join(OUT_DIR, "insert.sql"), sql);
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify({ forms, total: rows.length }, null, 2));
  const megaCount = chunkMegas(sql, join(OUT_DIR, "megas"), 15);
  console.log(JSON.stringify({ total: rows.length, megas: megaCount, forms }, null, 2));

  if (dryRun) {
    console.log("dry-run complete — no DB changes");
    return;
  }

  if (apply) {
    console.log("Applying exam simulator megas to prod...");
    const result = await applyMegas(join(OUT_DIR, "megas"));
    writeFileSync(LOG, `${new Date().toISOString()} ok=${result.ok} fail=${result.fail}\n`);
    const post = await verify();
    console.log("post-verify:", JSON.stringify(post, null, 2));
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
