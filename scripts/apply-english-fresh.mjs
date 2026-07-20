#!/usr/bin/env node
/**
 * Atomically replace all reading_writing questions with the freshly generated bank.
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/apply-english-fresh.mjs --apply
 *
 * Without --apply it runs the whole transaction then ROLLS BACK (dry run).
 */
import { readFileSync, readdirSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const REPO = "/Users/yatishgrandhe/Downloads/scholaris-main";
const INSERT_DIR = join(REPO, "scripts/data/.english-fresh/inserts");
const EXPECTED = 4225;
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

const files = readdirSync(INSERT_DIR).filter((f) => /^insert-\d+\.sql$/.test(f)).sort();
const inserts = files.map((f) => {
  const body = readFileSync(join(INSERT_DIR, f), "utf8");
  return body.replace(/^BEGIN;\s*/i, "").replace(/\s*COMMIT;\s*$/i, "");
});
console.log(`Loaded ${files.length} insert chunks`);

const { default: pg } = await import("pg");
const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
await client.connect();
try {
  await client.query("BEGIN");
  const before = (await client.query("SELECT count(*)::int n FROM public.questions WHERE section='reading_writing'")).rows[0].n;
  const delRes = await client.query("DELETE FROM public.questions WHERE section='reading_writing'");
  console.log(`Deleted ${delRes.rowCount} reading_writing rows (was ${before})`);

  let inserted = 0;
  for (let i = 0; i < inserts.length; i++) {
    await client.query(inserts[i]);
    inserted += (inserts[i].match(/INSERT INTO/g) ?? []).length;
    if (i % 10 === 0) process.stdout.write(`  inserted chunk ${i + 1}/${inserts.length}\r`);
  }
  console.log(`\nInserted ${inserted} rows`);

  const after = (await client.query("SELECT count(*)::int n FROM public.questions WHERE section='reading_writing'")).rows[0].n;
  console.log(`reading_writing count now: ${after} (expected ${EXPECTED})`);
  if (after !== EXPECTED) throw new Error(`Count mismatch: ${after} != ${EXPECTED} — rolling back`);

  if (apply) {
    await client.query("COMMIT");
    console.log("COMMITTED.");
  } else {
    await client.query("ROLLBACK");
    console.log("DRY RUN — rolled back (pass --apply to commit).");
  }
} catch (e) {
  await client.query("ROLLBACK");
  console.error("ROLLED BACK:", e.message);
  process.exitCode = 1;
} finally {
  await client.end();
}
