#!/usr/bin/env node
/**
 * Import all OpenSAT batch SQL files via direct Postgres connection.
 * Reads each batch with fs.readFileSync (per import spec).
 *
 * Usage:
 *   DATABASE_URL='postgresql://postgres.[ref]:[password]@aws-0-us-east-1.pooler.supabase.com:6543/postgres' \
 *     node scripts/import-all-batches-pg.mjs
 */
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import pg from 'pg';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const batchDir = path.join(__dirname, 'import-batches');
const progressDir = path.join(batchDir, '.progress');
const url = process.env.DATABASE_URL;

if (!url) {
  console.error('Set DATABASE_URL (Supabase → Settings → Database → Connection string, URI mode).');
  process.exit(1);
}

fs.mkdirSync(progressDir, { recursive: true });

const client = new pg.Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
await client.connect();

const results = { ok: [], fail: [] };

for (let i = 0; i <= 98; i++) {
  const num = String(i).padStart(3, '0');
  const file = path.join(batchDir, `batch-${num}.sql`);
  const sql = fs.readFileSync(file, 'utf8');
  process.stdout.write(`batch-${num} (${sql.length} bytes)... `);
  try {
    await client.query(sql);
    results.ok.push(num);
    fs.writeFileSync(path.join(progressDir, `${num}.ok`), new Date().toISOString());
    console.log('ok');
  } catch (err) {
    results.fail.push({ batch: num, error: String(err.message || err) });
    fs.writeFileSync(path.join(progressDir, `${num}.fail`), String(err));
    console.log('FAIL', err.message);
  }
}

const { rows } = await client.query(`
  SELECT count(*)::int AS total_sat,
         count(*) FILTER (WHERE source = 'college_board_opensat')::int AS imported
  FROM questions WHERE exam_type = 'SAT'
`);
results.verify = rows[0];
fs.writeFileSync(path.join(progressDir, 'import-results.json'), JSON.stringify(results, null, 2));
console.log('Verify:', rows[0]);
await client.end();
