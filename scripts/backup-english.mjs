#!/usr/bin/env node
/** Back up all reading_writing questions to a timestamped JSON file before regeneration. */
import { readFileSync, writeFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const REPO = "/Users/yatishgrandhe/Downloads/scholaris-main";

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

const stamp = process.argv[2] ?? "manual";
const OUT = join(REPO, "scripts/data", `english-backup-${stamp}.json`);

const { default: pg } = await import("pg");
const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
await client.connect();
try {
  const { rows } = await client.query(
    `SELECT * FROM public.questions WHERE section = 'reading_writing' ORDER BY id`,
  );
  writeFileSync(OUT, JSON.stringify(rows, null, 0));
  console.log(JSON.stringify({ backed_up: rows.length, file: OUT }, null, 2));
} finally {
  await client.end();
}
