#!/usr/bin/env node
/**
 * Import all mega SQL batches into Postgres.
 * Requires DATABASE_URL (Supabase → Project Settings → Database → Connection string, service role or direct).
 *
 *   DATABASE_URL='postgresql://...' node scripts/import-all-mega.mjs
 *
 * Alternative: use Supabase MCP execute_sql on each file in scripts/import-mega/mega-NN.sql
 */
import { readdir, readFile } from "node:fs/promises";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import pg from "pg";

const __dirname = dirname(fileURLToPath(import.meta.url));
const MEGA_DIR = join(__dirname, "import-mega");
const url = process.env.DATABASE_URL;

if (!url) {
  console.error("Set DATABASE_URL to your Supabase Postgres connection string.");
  process.exit(1);
}

const client = new pg.Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
await client.connect();

const files = (await readdir(MEGA_DIR))
  .filter((f) => f.startsWith("mega-") && f.endsWith(".sql"))
  .sort();

for (const file of files) {
  const sql = await readFile(join(MEGA_DIR, file), "utf8");
  process.stdout.write(`Importing ${file}... `);
  await client.query(sql);
  console.log("ok");
}

const { rows } = await client.query(`
  SELECT count(*)::int AS total_sat,
         count(*) FILTER (WHERE source = 'college_board_opensat')::int AS imported
  FROM questions WHERE exam_type = 'SAT'
`);
console.log("Done:", rows[0]);
await client.end();
