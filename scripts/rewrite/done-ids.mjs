#!/usr/bin/env node
/**
 * Print a JSON array of every question id already carrying the v2 rewrite tag, so
 * the generation pipelines can skip them (never overwrite already-good items).
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/rewrite/done-ids.mjs
 */
import { readFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";
import pg from "pg";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const TAG = "v2_authored_20260625";

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const p = join(homedir(), ".cursor/mcp.json");
  const mcp = JSON.parse(readFileSync(p, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    const url = env.POSTGRES_URL_NON_POOLING || env.POSTGRES_URL || env.DATABASE_URL;
    if (url) return url.trim();
  }
  throw new Error("no Postgres URL");
}

const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
await client.connect();
const { rows } = await client.query(
  `SELECT id FROM public.questions WHERE source_metadata->>'rewrite' = $1`,
  [TAG]
);
await client.end();
process.stdout.write(JSON.stringify(rows.map((r) => r.id)));
