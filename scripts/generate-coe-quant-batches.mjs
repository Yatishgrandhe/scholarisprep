#!/usr/bin/env node
/**
 * Generate + apply hand-crafted COE quantitative (graphs & tables) items.
 *
 *   node scripts/generate-coe-quant-batches.mjs --dry-run
 *   node scripts/generate-coe-quant-batches.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import {
  getCoeQuantBank,
  bankItemToRow,
  REPLACE_IDS,
} from "./lib/dsat-coe-quant-bank.mjs";
import { validateDsatRwQuestion } from "./lib/dsat-rw-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.coe-quant-batch");
const LOG = resolve("scripts/data/.coe-quant-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, ${sqlEscape(row.hint)}, ${sqlEscape(row.topic)}, ${sqlEscape(row.subtopic)}, ${sqlEscape(row.section)}, ${sqlEscape(row.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, ${sqlEscape(row.external_id)}, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function buildPayload() {
  const items = getCoeQuantBank();
  const rows = items.map((item) => bankItemToRow(item, randomUUID()));
  const stats = { total: 0, easy: 0, medium: 0, hard: 0, fails: [] };

  for (const row of rows) {
    const v = validateDsatRwQuestion(row);
    if (!v.ok) {
      stats.fails.push({ external_id: row.external_id, reasons: v.reasons });
    } else {
      stats[row.difficulty]++;
      stats.total++;
    }
  }

  const sqlParts = ["BEGIN;"];
  if (REPLACE_IDS.length) {
    const idList = REPLACE_IDS.map((id) => `'${id}'`).join(",");
    sqlParts.push(`DELETE FROM public.questions WHERE id IN (${idList});`);
  }
  for (const row of rows) {
    sqlParts.push(insertSql(row));
  }
  sqlParts.push("COMMIT;");

  return { rows, replaceIds: REPLACE_IDS, sql: sqlParts.join("\n"), stats };
}

function getMcpEnv() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return {};
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) return cfg.env ?? {};
  }
  return {};
}

function getDatabaseUrl() {
  const env = getMcpEnv();
  return (
    process.env.DATABASE_URL?.trim() ||
    process.env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL?.trim() ||
    null
  );
}

function log(line) {
  console.log(line);
  appendFileSync(LOG, line + "\n");
}

async function pgQuery(query) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({
    connectionString: getDatabaseUrl(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const { rows, replaceIds, sql, stats } = buildPayload();

  writeFileSync(join(OUT_DIR, "insert.sql"), sql);
  writeFileSync(
    join(OUT_DIR, "stats.json"),
    JSON.stringify(
      {
        generated: rows.length,
        validated: stats.total,
        byDifficulty: { easy: stats.easy, medium: stats.medium, hard: stats.hard },
        replaceCount: replaceIds.length,
        replaceIds,
        external_ids: rows.map((r) => r.external_id),
        fails: stats.fails,
      },
      null,
      2,
    ),
  );

  console.log(`Generated ${rows.length} COE quantitative items`);
  console.log(`Validated: ${stats.total} (easy ${stats.easy}, medium ${stats.medium}, hard ${stats.hard})`);
  if (stats.fails.length) {
    console.error("Validation failures:", JSON.stringify(stats.fails, null, 2));
    process.exit(1);
  }

  if (dryRun) {
    console.log(`Dry run OK — SQL at ${join(OUT_DIR, "insert.sql")}`);
    return;
  }

  if (!apply) {
    console.log("Pass --apply to load to prod or --dry-run to validate only.");
    return;
  }

  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — set env or configure Supabase MCP in ~/.cursor/mcp.json");
    process.exit(1);
  }

  log(`# coe-quant apply ${new Date().toISOString()} replace=${replaceIds.length} insert=${rows.length}`);
  await pgQuery(sql);
  log(`OK insert.sql (${sql.length} bytes)`);

  const count = await pgQuery(
    `SELECT count(*)::int AS total FROM public.questions
     WHERE skill_id = 'COE' AND section = 'reading_writing' AND is_platform_question = true
       AND source_metadata->>'rw_subtype' = 'quantitative_table';`,
  );
  const newCount = await pgQuery(
    `SELECT count(*)::int AS total FROM public.questions
     WHERE source_metadata->>'generator' = 'generate-coe-quant-batches.mjs';`,
  );
  log(`COE_QUANT_TOTAL=${count.rows[0].total}`);
  log(`COE_QUANT_NEW=${newCount.rows[0].total}`);
  console.log(`Applied. COE quantitative total: ${count.rows[0].total}, new bank: ${newCount.rows[0].total}`);
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
