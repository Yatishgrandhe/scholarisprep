#!/usr/bin/env node
/**
 * Upload unit test SQL to Supabase.
 * 1. Delete old unit_test source rows
 * 2. Insert new unit test questions
 */
import { readFileSync } from 'node:fs';
import { join } from 'node:path';

const REPO = '/Users/yatishgrandhe/Downloads/scholaris-main';
const SQL_FILE = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.sql');
const PROJECT_REF = 'aioyzumxxsepbnfivvdd';
const ACCESS_TOKEN = process.env.SUPABASE_ACCESS_TOKEN ?? (() => { throw new Error('Set SUPABASE_ACCESS_TOKEN env var'); })();

const sleep = (ms) => new Promise(r => setTimeout(r, ms));

async function runQuery(query, label) {
  console.log(`Running: ${label}...`);
  const res = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: {
      'Authorization': `Bearer ${ACCESS_TOKEN}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ query }),
  });
  const body = await res.text();
  if (!res.ok) {
    console.error(`FAILED ${label}:`, body.slice(0, 500));
    throw new Error(`Failed: ${label}`);
  }
  console.log(`OK ${label}`);
  return body;
}

async function main() {
  // 1. Delete old unit_test source rows
  await runQuery(
    `DELETE FROM public.questions WHERE source = 'unit_test' AND exam_type = 'AP_ENVIRONMENTAL_SCIENCE';`,
    'Delete old unit_test rows'
  );
  await sleep(1000);

  // 2. Read and upload the SQL file
  const sql = readFileSync(SQL_FILE, 'utf8');
  
  // Split into individual INSERT statements (each with ON CONFLICT)
  const statements = sql.split(/(?=INSERT INTO public\.questions)/g).filter(s => s.trim().startsWith('INSERT'));
  console.log(`Uploading ${statements.length} statements...`);
  
  // Upload in batches of 50
  const BATCH_SIZE = 50;
  for (let i = 0; i < statements.length; i += BATCH_SIZE) {
    const batch = statements.slice(i, i + BATCH_SIZE);
    const combined = batch.join('\n');
    await runQuery(combined, `Batch ${Math.floor(i/BATCH_SIZE) + 1}/${Math.ceil(statements.length/BATCH_SIZE)}`);
    await sleep(2000);
  }

  console.log('Done! Uploaded all unit test questions.');
}

main().catch(e => { console.error('Fatal:', e.message); process.exit(1); });
