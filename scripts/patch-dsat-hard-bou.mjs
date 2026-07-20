#!/usr/bin/env node
/**
 * Insert missing hard BOU rows (patch after empty-option seed fix).
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/patch-dsat-hard-bou.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/patch-dsat-hard-bou.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { readFileSync } from "node:fs";
import { join } from "node:path";
import { homedir } from "node:os";
import pg from "pg";
import { generateConventionsBatch } from "./lib/dsat-conventions-bank.mjs";
import { validateDsatRwQuestion, SKILLS, PROJECT_ID } from "./lib/dsat-rw-blueprint.mjs";

const argv = process.argv.slice(2);
const TARGET = Number(argv.find((a, i) => argv[i - 1] === "--count") ?? 24);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const trimFss = argv.includes("--trim-fss");
const CONVENTIONS_SUBTYPE = "boundaries";

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
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

function generatePatchRows() {
  const rows = [];
  for (let i = 0; i < TARGET; i++) {
    let attempts = 0;
    let row = null;
    while (attempts < 32) {
      const batch = generateConventionsBatch({ skill: "BOU", count: 1, startIndex: 91000 + i + attempts * 997 });
      const base = batch[0];
      const candidate = {
        ...base,
        id: randomUUID(),
        difficulty: "hard",
        rw_subtype: CONVENTIONS_SUBTYPE,
        source_metadata: {
          ...base.source_metadata,
          dsat_blueprint_v1: true,
          rw_subtype: CONVENTIONS_SUBTYPE,
          generator: "patch-dsat-hard-bou.mjs",
          explanation_v2: true,
          original: true,
        },
      };
      const v = validateDsatRwQuestion(candidate);
      if (v.ok) {
        row = candidate;
        break;
      }
      attempts++;
    }
    if (!row) throw new Error(`failed to generate row ${i}`);
    rows.push(row);
  }
  return rows;
}

async function countQueries(client) {
  const hardBou = await client.query(`
    SELECT COUNT(*)::int AS n FROM questions
    WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
      AND difficulty='hard' AND skill_id='BOU'
      AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true'`);
  const rwTotal = await client.query(`
    SELECT COUNT(*)::int AS n FROM questions
    WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true`);
  return { hardBou: hardBou.rows[0].n, rwTotal: rwTotal.rows[0].n };
}

async function trimExcessHardFss(client, trim = 18) {
  const pick = await client.query(
    `SELECT id FROM questions
     WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
       AND difficulty='hard' AND skill_id='FSS'
       AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true'
     ORDER BY created_at DESC, id DESC
     LIMIT $1`,
    [trim],
  );
  if (!pick.rows.length) return 0;
  const del = await client.query("DELETE FROM questions WHERE id = ANY($1::uuid[])", [
    pick.rows.map((r) => r.id),
  ]);
  return del.rowCount ?? 0;
}

async function main() {
  if (trimFss) {
    const client = new pg.Client({
      connectionString: getConnString(),
      ssl: { rejectUnauthorized: false },
    });
    await client.connect();
    try {
      const before = await countQueries(client);
      if (!apply) {
        console.log(JSON.stringify({ before, note: "pass --apply with --trim-fss to delete 18 excess hard FSS" }, null, 2));
        return;
      }
      await client.query("BEGIN");
      const deleted = await trimExcessHardFss(client, 18);
      await client.query("COMMIT");
      const after = await countQueries(client);
      const fss = await client.query(
        `SELECT COUNT(*)::int AS n FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND difficulty='hard' AND skill_id='FSS' AND COALESCE(source_metadata->>'challenged_problem','false') <> 'true'`,
      );
      console.log(JSON.stringify({ deleted, before, after, hardFss: fss.rows[0].n }, null, 2));
    } catch (e) {
      await client.query("ROLLBACK");
      throw e;
    } finally {
      await client.end();
    }
    return;
  }

  const rows = generatePatchRows();
  console.log(JSON.stringify({ generated: rows.length, target: TARGET }, null, 2));
  if (dryRun) return;

  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    const before = await countQueries(client);
    if (!apply) {
      console.log(JSON.stringify({ before, note: "pass --apply to insert" }, null, 2));
      return;
    }
    await client.query("BEGIN");
    let inserted = 0;
    for (const row of rows) {
      const res = await client.query(insertSql(row));
      inserted += res.rowCount ?? 0;
    }
    await client.query("COMMIT");
    const after = await countQueries(client);
    console.log(JSON.stringify({ inserted, before, after }, null, 2));
  } catch (e) {
    await client.query("ROLLBACK");
    throw e;
  } finally {
    await client.end();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
