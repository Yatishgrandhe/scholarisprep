#!/usr/bin/env node
/**
 * Apply vocab-batches/*.sql to prod Supabase via Postgres (mcp.json creds).
 * Usage: node scripts/apply-vocab-batches.mjs [startBatch] [endBatch]
 */
import { readFileSync, readdirSync, appendFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import { existsSync } from "node:fs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const batchDir = join(dirname(fileURLToPath(import.meta.url)), "data/vocab-batches");
const logPath = join(dirname(fileURLToPath(import.meta.url)), "data/.vocab-apply-log.txt");
const startBatch = Number(process.argv[2] ?? 0);
const endBatch = Number(process.argv[3] ?? 999);

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

const files = readdirSync(batchDir)
  .filter((f) => /^batch-\d+\.sql$/.test(f))
  .sort((a, b) => Number(a.match(/batch-(\d+)/)[1]) - Number(b.match(/batch-(\d+)/)[1]))
  .filter((f) => {
    const n = Number(f.match(/batch-(\d+)/)[1]);
    return n >= startBatch && n <= endBatch;
  });

if (!getDatabaseUrl()) {
  console.error("No DATABASE_URL — set env or configure MiruNova-supabase in ~/.cursor/mcp.json");
  process.exit(1);
}

log(`# vocab apply ${new Date().toISOString()} batches=${files.length}`);

for (const file of files) {
  const query = readFileSync(join(batchDir, file), "utf8");
  await pgQuery(query);
  log(`OK ${file} (${query.length} bytes)`);
}

const count = await pgQuery(
  "SELECT count(*)::int AS total FROM public.vocabulary_words WHERE exam_type = 'SAT';",
);
log(`FINAL_COUNT=${count.rows[0].total}`);
