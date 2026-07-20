#!/usr/bin/env node
/**
 * Insert the exclusive challenge bank (challenge_only=true). Idempotent: deletes any
 * existing challenge_only rows first, then inserts, then verifies the count.
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/apply-challenge-bank.mjs --apply
 */
import { readFileSync, readdirSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const REPO = "/Users/yatishgrandhe/Downloads/scholaris-main";
const INSERT_DIR = join(REPO, "scripts/data/.challenge-bank/inserts");
const apply = process.argv.includes("--apply");

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

const files = readdirSync(INSERT_DIR).filter((f) => /^ins-\d+\.sql$/.test(f)).sort();
const inserts = files.map((f) =>
  readFileSync(join(INSERT_DIR, f), "utf8").replace(/^BEGIN;\s*/i, "").replace(/\s*COMMIT;\s*$/i, ""),
);
const expected = inserts.reduce((n, s) => n + (s.match(/INSERT INTO/g) ?? []).length, 0);
console.log(`Loaded ${files.length} chunks, ${expected} inserts`);

const { default: pg } = await import("pg");
const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
await client.connect();
try {
  await client.query("BEGIN");
  const del = await client.query("DELETE FROM public.questions WHERE challenge_only = true");
  console.log(`Deleted ${del.rowCount} existing challenge_only rows`);
  for (let i = 0; i < inserts.length; i++) {
    await client.query(inserts[i]);
    if (i % 10 === 0) process.stdout.write(`  chunk ${i + 1}/${inserts.length}\r`);
  }
  const after = (await client.query("SELECT count(*)::int n FROM public.questions WHERE challenge_only = true")).rows[0].n;
  const bySec = (await client.query(
    "SELECT section, count(*)::int n FROM public.questions WHERE challenge_only = true GROUP BY section ORDER BY section",
  )).rows;
  console.log(`\nchallenge_only total: ${after} (expected ${expected})`);
  console.log("by section:", JSON.stringify(bySec));
  if (after !== expected) throw new Error(`Count mismatch ${after} != ${expected}`);
  if (apply) { await client.query("COMMIT"); console.log("COMMITTED."); }
  else { await client.query("ROLLBACK"); console.log("DRY RUN — rolled back (pass --apply)."); }
} catch (e) {
  await client.query("ROLLBACK");
  console.error("ROLLED BACK:", e.message);
  process.exitCode = 1;
} finally {
  await client.end();
}
