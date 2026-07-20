#!/usr/bin/env node
/**
 * Upload forms SQL to Supabase.
 * 1. Delete old full_exam_form source rows
 * 2. Insert new form questions
 */
import { readFileSync } from 'node:fs';
import { join } from 'node:path';

const REPO = '/Users/yatishgrandhe/Downloads/scholaris-main';
const SQL_FILE = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.forms_mistral.sql');
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
  // 1. Delete old full_exam_form source rows
  await runQuery(
    `DELETE FROM public.questions WHERE source = 'full_exam_form' AND exam_type = 'AP_ENVIRONMENTAL_SCIENCE';`,
    'Delete old full_exam_form rows'
  );
  await sleep(1000);

  // 2. Read and upload the SQL file
  const sql = readFileSync(SQL_FILE, 'utf8');
  
  // Split into individual INSERT statements
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

  console.log('Done! Uploaded all form questions.');
}

main().catch(e => { console.error('Fatal:', e.message); process.exit(1); });
