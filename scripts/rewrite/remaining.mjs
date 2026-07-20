#!/usr/bin/env node
/**
 * Print the chunkIds still needing a rewrite, in manifest order, by checking which
 * items already carry the v2 rewrite tag in the DB. A chunk is "done" when every
 * item id in its input file is tagged. Output is a JSON array ready to pass as the
 * workflow's args.
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/rewrite/remaining.mjs [N]
 *
 * Optional N limits the output to the first N remaining chunks (e.g. 15 = one wave).
 */
import { readFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join, resolve } from "node:path";
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

const limit = process.argv[2] ? parseInt(process.argv[2], 10) : Infinity;
const manifest = JSON.parse(readFileSync(resolve("scripts/rewrite/manifest.json"), "utf8"));

const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
await client.connect();
const { rows } = await client.query(
  `SELECT id FROM public.questions WHERE source_metadata->>'rewrite' = $1`,
  [TAG]
);
await client.end();
const done = new Set(rows.map((r) => r.id));

const remaining = [];
for (const m of manifest) {
  const ids = JSON.parse(readFileSync(resolve(m.inputPath), "utf8")).map((x) => x.id);
  const allDone = ids.every((id) => done.has(id));
  if (!allDone) remaining.push(m.chunkId);
}

const out = Number.isFinite(limit) ? remaining.slice(0, limit) : remaining;
console.error(`${done.size} items rewritten; ${remaining.length} chunks remaining. Showing ${out.length}.`);
console.log(JSON.stringify(out));
