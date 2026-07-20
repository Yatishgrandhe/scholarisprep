#!/usr/bin/env node
/**
 * Regenerate unit test SQL from JSONL progress file.
 * Fixes column count bug (missing unit_code value).
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const REPO = '/Users/yatishgrandhe/Downloads/scholaris-main';
const JSONL = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.jsonl');
const SQL_FILE = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank/AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.sql');

const lines = readFileSync(JSONL, 'utf8').split('\n').filter(Boolean);
const questions = [];
for (const line of lines) {
  try { questions.push(JSON.parse(line)); } catch {}
}
console.log(`Loaded ${questions.length} questions from JSONL`);

function buildSQL(questions) {
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
  question_text = EXCLUDED.question_text, question_type = EXCLUDED.question_type,
  options = EXCLUDED.options, correct_answer = EXCLUDED.correct_answer,
  explanation = EXCLUDED.explanation, hint = EXCLUDED.hint, topic = EXCLUDED.topic,
  difficulty = EXCLUDED.difficulty, unit_code = EXCLUDED.unit_code, pool_key = EXCLUDED.pool_key,
  tags = EXCLUDED.tags, source_metadata = EXCLUDED.source_metadata,
  calculator_allowed = EXCLUDED.calculator_allowed, rubric = EXCLUDED.rubric, max_points = EXCLUDED.max_points;`;

  const rows = questions.map((q, i) => {
    const opts = JSON.stringify(q.options).replace(/'/g, "''");
    const rubricStr = q.rubric ? `'${JSON.stringify(q.rubric).replace(/'/g, "''")}'::jsonb` : 'NULL::jsonb';
    const maxPoints = q.max_points || 'NULL';
    const hint = String(q.hint || '').replace(/'/g, "''");
    const explanation = String(q.explanation || '').replace(/'/g, "''");
    const questionText = String(q.question_text || '').replace(/'/g, "''");
    const topic = String(q.topic || '').replace(/'/g, "''");
    const extId = `ap_apes_ut_v${q.variant}_${q.unit_code}_${String(q.qIdx).padStart(3, '0')}`;
    // 31 columns: id, question_text, question_type, options, correct_answer, explanation, hint,
    //   stimulus_text, stimulus_type, section, topic, difficulty, exam_type,
    //   is_platform_question, ai_generated, calculator_allowed, desmos_recommended, subject, subtopic,
    //   domain_id, skill_id, pool_key, diagnostic_eligible, challenge_only, tags,
    //   external_id, source, source_metadata, unit_code, rubric, max_points
    return `('${q.id}', '${questionText}', '${q.question_type}'::question_type, '${opts}'::jsonb, '${q.correct_answer}', '${explanation}', '${hint}', NULL, NULL, 'Paper 1', '${topic}', '${q.difficulty}'::difficulty, 'AP_ENVIRONMENTAL_SCIENCE'::exam_type, true, true, ${q.calculator_allowed}, false, NULL, 'science', '${q.unit_code}', 'ap_ib_unit_test_v1', true, false, false, ARRAY['AP_ENVIRONMENTAL_SCIENCE','${q.unit_code}','unit_test','V${q.variant}']::text[], '${extId}', 'unit_test', '{"generator":"generate-apes-unit-tests-mistral.mjs","blueprint_exam":"AP_ENVIRONMENTAL_SCIENCE","unit_code":"${q.unit_code}","variant":"V${q.variant}","ced_aligned":true}'::jsonb, '${q.unit_code}', ${rubricStr}, ${maxPoints})`;
  });

  let sql = `-- regen-unit-test-sql.mjs AP_ENVIRONMENTAL_SCIENCE unit_test n=${questions.length}\n`;
  sql += `-- Regenerated: ${new Date().toISOString()}\n`;
  sql += `-- Calculator: scientific (allowed on all sections)\n`;
  for (let i = 0; i < rows.length; i++) {
    sql += INSERT_HEADER + '\n  ' + rows[i] + '\n' + ON_CONFLICT + '\n\n';
  }
  return sql;
}

writeFileSync(SQL_FILE, buildSQL(questions));
console.log(`Wrote ${SQL_FILE} (${questions.length} rows)`);
