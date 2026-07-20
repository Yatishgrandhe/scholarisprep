#!/usr/bin/env node
import { readFileSync, writeFileSync } from 'fs';
import { join } from 'path';

const OUT = '/Users/yatishgrandhe/Downloads/scholaris-main/scripts/data/.ap-ib-regen/batch1-bank';

function extractValues(sql) {
  const idx = sql.indexOf('VALUES');
  if (idx === -1) return '';
  return sql.substring(idx + 6).trim().replace(/;\s*$/, '').trim();
}

function extractTuples(valuesBlock) {
  const tuples = [];
  let depth = 0, start = -1;
  for (let i = 0; i < valuesBlock.length; i++) {
    if (valuesBlock[i] === '(' && depth === 0) { start = i; depth = 1; }
    else if (valuesBlock[i] === '(') depth++;
    else if (valuesBlock[i] === ')') {
      depth--;
      if (depth === 0 && start !== -1) {
        tuples.push(valuesBlock.substring(start + 1, i));
        start = -1;
      }
    } else if (valuesBlock[i] === "'") {
      i++;
      while (i < valuesBlock.length) {
        if (valuesBlock[i] === "'") {
          if (i + 1 < valuesBlock.length && valuesBlock[i + 1] === "'") { i += 2; continue; }
          break;
        }
        i++;
      }
    }
  }
  return tuples;
}

function fixTupleRubric(tuple) {
  // The tuple has 32 columns. The rubric is column 30 (index 29) and max_points is column 31 (index 30).
  // Column order:
  // 0: id, 1: question_text, 2: question_type, 3: options, 4: correct_answer,
  // 5: explanation, 6: hint, 7: stimulus_text, 8: stimulus_type, 9: section,
  // 10: topic, 11: difficulty, 12: exam_type, 13: is_platform_question, 14: ai_generated,
  // 15: calculator_allowed, 16: desmos_recommended, 17: subject, 18: subtopic,
  // 19: domain_id, 20: skill_id, 21: pool_key, 22: diagnostic_eligible, 23: challenge_only,
  // 24: tags, 25: external_id, 26: source, 27: source_metadata, 28: unit_code,
  // 29: rubric, 30: max_points
  //
  // We can't split by comma because JSON and arrays contain commas.
  // Instead, find rubric using brace-matching from the end.

  // Work backwards: find the last ')' which is the tuple end (already stripped)
  // The last value is max_points (a number like 7, 5, 3, NULL)
  // Find the comma before max_points
  const lastComma = tuple.lastIndexOf(',');
  const maxPointsPart = tuple.substring(lastComma + 1).trim();
  
  // Before that comma is the rubric value
  const beforeRubric = tuple.substring(0, lastComma);
  
  // The rubric starts after the unit_code value.
  // unit_code is a string like 'U1_ecosystems'
  // Find it by looking for the pattern: , 'U1_...', RUBRIC
  // The unit_code is always the 29th column (index 28).
  // 
  // Better: use brace matching from the end to find where the rubric starts.
  // The rubric is either NULL or a JSON object {"criteria":...}
  // 
  // Search backwards from the end of beforeRubric to find the opening of the rubric.
  // If rubric is NULL: it's just "NULL" and we skip.
  // If rubric is a JSON object: it starts with { and we need to find the matching {
  
  const trimmed = beforeRubric.trimEnd();
  const lastChar = trimmed[trimmed.length - 1];
  
  if (lastChar === 'L' && trimmed.endsWith('NULL')) {
    // NULL rubric - find the comma before NULL
    const nullIdx = trimmed.lastIndexOf('NULL');
    const commaBeforeNull = trimmed.lastIndexOf(',', nullIdx - 1);
    // The unit_code is before that comma
    const unitCodePart = trimmed.substring(0, commaBeforeNull).trimEnd();
    const unitCodeEnd = unitCodePart.lastIndexOf(',');
    // Return tuple with rubric properly quoted
    const unitCode = unitCodePart.substring(unitCodePart.lastIndexOf("'") - 10, unitCodePart.length);
    // Just leave it as is
    return tuple;
  }
  
  if (lastChar === '}') {
    // JSON rubric - brace match to find the opening {
    let depth = 0;
    let rubricEnd = trimmed.length;
    for (let i = trimmed.length - 1; i >= 0; i--) {
      if (trimmed[i] === '}') depth++;
      if (trimmed[i] === '{') {
        depth--;
        if (depth === 0) {
          // Found the opening brace
          const rubricContent = trimmed.substring(i, rubricEnd);
          const prefix = trimmed.substring(0, i);
          
          // Check if already quoted
          if (prefix.endsWith("'")) {
            // Already properly quoted: '{"criteria":...}'
            return tuple;
          }
          
          // Fix: wrap in single quotes
          return prefix + "'" + rubricContent + "'::jsonb, " + maxPointsPart;
        }
      }
    }
  }
  
  return tuple;
}

// Process all files
const INSERT_HEADER = `INSERT INTO public.questions (
    id, question_text, question_type, options, correct_answer, explanation, hint,
    stimulus_text, stimulus_type, section, topic, difficulty, exam_type,
    is_platform_question, ai_generated, calculator_allowed, desmos_recommended, subject, subtopic,
    domain_id, skill_id, pool_key, diagnostic_eligible, challenge_only, tags,
    external_id, source, source_metadata, unit_code, rubric, max_points
  ) VALUES`;

const ON_CONFLICT = `
ON CONFLICT (source, external_id) WHERE external_id IS NOT NULL AND source IS NOT NULL
DO UPDATE SET
  question_text = EXCLUDED.question_text,
  question_type = EXCLUDED.question_type,
  options = EXCLUDED.options,
  correct_answer = EXCLUDED.correct_answer,
  explanation = EXCLUDED.explanation,
  hint = EXCLUDED.hint,
  topic = EXCLUDED.topic,
  subtopic = EXCLUDED.subtopic,
  difficulty = EXCLUDED.difficulty,
  unit_code = EXCLUDED.unit_code,
  pool_key = EXCLUDED.pool_key,
  tags = EXCLUDED.tags,
  source_metadata = EXCLUDED.source_metadata,
  calculator_allowed = EXCLUDED.calculator_allowed,
  desmos_recommended = EXCLUDED.desmos_recommended,
  rubric = EXCLUDED.rubric,
  max_points = EXCLUDED.max_points;`;

const files = [
  { path: 'AP_ENVIRONMENTAL_SCIENCE.bank.mcq.sql', prefix: 'apes_mistral_mcq_', label: 'mcq' },
  { path: 'AP_ENVIRONMENTAL_SCIENCE.bank.frq.sql', prefix: 'apes_mistral_frq_bank_', label: 'frq_bank' },
  { path: 'AP_ENVIRONMENTAL_SCIENCE.gap.frq.sql', prefix: 'apes_mistral_frq_gap_', label: 'frq_gap' },
];

let out = `-- APES Mistral-generated bank\n-- Generated: ${new Date().toISOString()}\n\n`;
const counters = { mcq: 0, frq_bank: 0, frq_gap: 0 };
let fixedRubrics = 0;

for (const file of files) {
  const sql = readFileSync(join(OUT, file.path), 'utf8');
  const tuples = extractTuples(extractValues(sql));
  console.log(`${file.path}: ${tuples.length} tuples`);
  
  for (const tuple of tuples) {
    counters[file.label]++;
    
    // Fix external_id to be unique
    let fixed = tuple.replace(
      /ap_environmental_science_[a-zA-Z_0-9]+/,
      file.prefix + counters[file.label]
    );
    
    // Fix rubric quoting
    const before = fixed;
    fixed = fixTupleRubric(fixed);
    if (fixed !== before) fixedRubrics++;
    
    // Fix [object Object]
    fixed = fixed.replace(/\[object Object\]/g, '');
    
    out += INSERT_HEADER + '\n  (' + fixed + ')\n' + ON_CONFLICT + '\n\n';
  }
}

writeFileSync(join(OUT, 'AP_ENVIRONMENTAL_SCIENCE.upload.sql'), out);
console.log(`Wrote upload.sql with ${counters.mcq + counters.frq_bank + counters.frq_gap} rows`);
console.log(`MCQ: ${counters.mcq}, FRQ bank: ${counters.frq_bank}, FRQ gap: ${counters.frq_gap}`);
console.log(`Fixed ${fixedRubrics} rubric quoting issues`);
