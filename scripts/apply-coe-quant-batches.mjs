#!/usr/bin/env node
/**
 * Apply COE quantitative batch SQL to prod Supabase via Postgres.
 * Usage: node scripts/apply-coe-quant-batches.mjs
 */
import { readFileSync, appendFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import { existsSync } from "node:fs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const batchDir = join(dirname(fileURLToPath(import.meta.url)), "data/.coe-quant-batch");
const logPath = join(dirname(fileURLToPath(import.meta.url)), "data/.coe-quant-apply-log.txt");
const sqlFile = join(batchDir, "insert.sql");

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) {
      return cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() || cfg?.env?.POSTGRES_URL?.trim() || null;
    }
  }
  return null;
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

function log(line) {
  console.log(line);
  appendFileSync(logPath, line + "\n");
}

if (!getDatabaseUrl()) {
  console.error("No DATABASE_URL — set env or configure Supabase MCP in ~/.cursor/mcp.json");
  process.exit(1);
}

const query = readFileSync(sqlFile, "utf8");
log(`# coe-quant apply ${new Date().toISOString()} (${query.length} bytes)`);
await pgQuery(query);
log("OK insert.sql");

const count = await pgQuery(
  `SELECT count(*)::int AS total FROM public.questions
   WHERE skill_id = 'COE' AND section = 'reading_writing' AND is_platform_question = true
     AND source_metadata->>'rw_subtype' = 'quantitative_table';`,
);
log(`FINAL_COE_QUANT_COUNT=${count.rows[0].total}`);
