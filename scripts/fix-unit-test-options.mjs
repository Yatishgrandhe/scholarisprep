#!/usr/bin/env node
/**
 * Fix FRQ options where text is an object instead of a string.
 * Converts option.text from object → JSON.stringify(object).
 * Rewrites the JSONL and regenerates SQL.
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const REPO = '/Users/yatishgrandhe/Downloads/scholaris-main';
const JSONL = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.jsonl');
const BACKUP = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.jsonl.bak');

const lines = readFileSync(JSONL, 'utf8').split('\n').filter(Boolean);
let fixed = 0;
const questions = [];

for (const line of lines) {
  const q = JSON.parse(line);
  let qFixed = false;
  for (const opt of (q.options || [])) {
    if (opt.text !== null && typeof opt.text === 'object') {
      opt.text = JSON.stringify(opt.text);
      qFixed = true;
    }
    if (opt.id !== null && typeof opt.id === 'object') {
      opt.id = JSON.stringify(opt.id);
      qFixed = true;
    }
    if (opt.explanation !== null && typeof opt.explanation === 'object') {
      opt.explanation = JSON.stringify(opt.explanation);
      qFixed = true;
    }
  }
  if (qFixed) fixed++;
  questions.push(q);
}

// Backup and rewrite
writeFileSync(BACKUP, readFileSync(JSONL, 'utf8'));
writeFileSync(JSONL, questions.map(q => JSON.stringify(q)).join('\n') + '\n');
console.log(`Fixed ${fixed} questions, ${lines.length} total. Backed up to .bak`);
