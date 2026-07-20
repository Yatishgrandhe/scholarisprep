#!/usr/bin/env node
/**
 * Generate APES Unit Test questions using Mistral API (incremental).
 * 14 Q/variant (10 MCQ + 4 FRQ) × 2 variants × 9 units = 252 questions
 * Writes each question to a JSONL file as generated for resumability.
 */
import { readFileSync, writeFileSync, appendFileSync, existsSync } from 'node:fs';
import { join } from 'node:path';
import https from 'node:https';
import crypto from 'node:crypto';

const REPO = '/Users/yatishgrandhe/Downloads/scholaris-main';
const MISTRAL_API_KEY = 'aweCsgOeMkkGEGBjJoubrzghCIAwLDoH';
const MISTRAL_MODEL = 'mistral-medium-latest';
const DELAY_MS = 2500;
const MAX_TOKENS = 4000;

const BLUEPRINT = JSON.parse(
  readFileSync(join(REPO, 'scripts/data/course-research/AP_ENVIRONMENTAL_SCIENCE.blueprint.json'), 'utf8')
);
const OUT_DIR = join(REPO, 'scripts/data/.ap-ib-regen/batch1-bank');
const PROGRESS_FILE = join(OUT_DIR, 'AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.jsonl');
const SQL_FILE = join(OUT_DIR, 'AP_ENVIRONMENTAL_SCIENCE.unit_test_mistral.sql');

function sleep(ms) { return new Promise(r => setTimeout(r, ms)); }
function uuid() { return crypto.randomUUID(); }

function makeRequest(prompt, retries = 5) {
  return new Promise((resolve, reject) => {
    const body = JSON.stringify({
      model: MISTRAL_MODEL,
      messages: [{ role: 'user', content: prompt }],
      max_tokens: MAX_TOKENS,
      temperature: 0.7,
    });
    const options = {
      hostname: 'api.mistral.ai',
      path: '/v1/chat/completions',
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${MISTRAL_API_KEY}`,
      },
    };
    let attempt = 0;
    function tryRequest() {
      const req = https.request(options, (res) => {
        let data = '';
        res.on('data', chunk => data += chunk);
        res.on('end', () => {
          if (res.statusCode === 429) {
            attempt++;
            if (attempt <= retries) {
              const wait = Math.min(5000 * attempt, 30000);
              console.log(`  Rate limited, waiting ${wait / 1000}s (attempt ${attempt}/${retries})...`);
              setTimeout(tryRequest, wait);
              return;
            }
          }
          if (res.statusCode !== 200) {
            reject(new Error(`API ${res.statusCode}: ${data.substring(0, 200)}`));
            return;
          }
          try {
            const json = JSON.parse(data);
            resolve(json.choices?.[0]?.message?.content || '');
          } catch (e) {
            reject(new Error(`Parse error: ${e.message}`));
          }
        });
      });
      req.on('error', (e) => {
        attempt++;
        if (attempt <= retries) setTimeout(tryRequest, 3000);
        else reject(e);
      });
      req.write(body);
      req.end();
    }
    tryRequest();
  });
}

function stripFences(text) {
  let t = text.trim();
  if (t.startsWith('```')) {
    t = t.replace(/^```(?:json)?\n?/, '').replace(/\n?```\s*$/, '');
  }
  return t.trim();
}

async function generateMCQ(unit, topic, difficulty) {
  const prompt = `Generate exactly 1 AP Environmental Science multiple choice question.

UNIT: ${unit.unit_name} (${unit.unit_code})
TOPIC: ${topic}
DIFFICULTY: ${difficulty}
SKILLS: ${unit.skills.join('; ')}
LEARNING OBJECTIVES: ${unit.learning_objectives.join('; ')}

Requirements:
- 4 options (A-D), exactly ONE correct
- Include explanation for ALL 4 options
- Calculator allowed, may require quantitative reasoning
- Align to AP Environmental Science CED

Return ONLY valid JSON (no markdown):
{"question_text":"...","options":[{"id":"A","text":"...","is_correct":false,"explanation":"..."},{"id":"B","text":"...","is_correct":true,"explanation":"..."},{"id":"C","text":"...","is_correct":false,"explanation":"..."},{"id":"D","text":"...","is_correct":false,"explanation":"..."}],"correct_answer":"B","explanation":"...","hint":"..."}`;

  const raw = await makeRequest(prompt);
  const cleaned = stripFences(raw);
  const parsed = JSON.parse(cleaned);
  if (!parsed.question_text || !parsed.options || parsed.options.length !== 4) throw new Error('Invalid MCQ');
  return {
    id: uuid(), question_type: 'multiple_choice',
    question_text: parsed.question_text, options: parsed.options,
    correct_answer: parsed.correct_answer, explanation: parsed.explanation || '',
    hint: parsed.hint || '', topic, difficulty, unit_code: unit.unit_code,
    calculator_allowed: true, rubric: null, max_points: null,
  };
}

async function generateFRQ(unit, topic, difficulty) {
  const prompt = `Generate exactly 1 AP Environmental Science FRQ.

UNIT: ${unit.unit_name} (${unit.unit_code})
TOPIC: ${topic}
DIFFICULTY: ${difficulty}

Multi-part FRQ (a, b, c), 7 points total, include stimulus data/scenario when possible.
Return ONLY valid JSON:
{"question_text":"...","options":[{"id":"MODEL","text":"Model answer","is_correct":true,"explanation":"Full marks"}],"correct_answer":"MODEL","explanation":"...","hint":"...","rubric":{"criteria":[{"id":"knowledge","name":"Knowledge & Understanding","max_points":2,"descriptors":{"1":"Partial","2":"Complete"}},{"id":"application","name":"Application & Analysis","max_points":3,"descriptors":{"1":"Basic","2":"Good","3":"Excellent"}},{"id":"evaluation","name":"Synthesis & Evaluation","max_points":2,"descriptors":{"1":"Limited","2":"Clear"}}],"max_points":7,"scale":"AP_science_practices"},"max_points":7}`;

  const raw = await makeRequest(prompt);
  const cleaned = stripFences(raw);
  const parsed = JSON.parse(cleaned);
  if (!parsed.question_text) throw new Error('Missing question_text');
  return {
    id: uuid(), question_type: 'free_response',
    question_text: parsed.question_text,
    options: parsed.options || [{ id: 'MODEL', text: 'Model answer', is_correct: true, explanation: 'Full marks' }],
    correct_answer: parsed.correct_answer || 'MODEL',
    explanation: parsed.explanation || '', hint: parsed.hint || '',
    topic, difficulty, unit_code: unit.unit_code,
    calculator_allowed: true,
    rubric: parsed.rubric || { criteria: [{ id: 'knowledge', name: 'Knowledge', max_points: 3, descriptors: { '1': 'Partial', '2': 'Good', '3': 'Excellent' } }, { id: 'application', name: 'Application', max_points: 4, descriptors: { '1': 'Basic', '2': 'Good', '3': 'Strong', '4': 'Excellent' } }], max_points: 7, scale: 'AP_science_practices' },
    max_points: parsed.max_points || 7,
  };
}

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
    return `('${q.id}', '${questionText}', '${q.question_type}'::question_type, '${opts}'::jsonb, '${q.correct_answer}', '${explanation}', '${hint}', NULL, NULL, 'Paper 1', '${topic}', '${q.difficulty}'::difficulty, 'AP_ENVIRONMENTAL_SCIENCE'::exam_type, true, true, ${q.calculator_allowed}, false, NULL, 'science', '${q.unit_code}', 'ap_ib_unit_test_v1', true, false, false, ARRAY['AP_ENVIRONMENTAL_SCIENCE','${q.unit_code}','unit_test','V${q.variant}']::text[], '${extId}', 'unit_test', '{"generator":"generate-apes-unit-tests-mistral.mjs","blueprint_exam":"AP_ENVIRONMENTAL_SCIENCE","unit_code":"${q.unit_code}","variant":"V${q.variant}","ced_aligned":true}'::jsonb, '${q.unit_code}', ${rubricStr}, ${maxPoints})`;
  });

  let sql = `-- generate-apes-unit-tests-mistral.mjs AP_ENVIRONMENTAL_SCIENCE unit_test n=${questions.length}\n`;
  sql += `-- Generated: ${new Date().toISOString()}\n`;
  sql += `-- Calculator: scientific (allowed on all sections)\n`;
  for (let i = 0; i < rows.length; i++) {
    sql += INSERT_HEADER + '\n  ' + rows[i] + '\n' + ON_CONFLICT + '\n\n';
  }
  return sql;
}

async function main() {
  const variants = [1, 2];
  const difficulties = ['easy', 'medium', 'hard'];
  const doneKeys = new Set();
  const allQuestions = [];

  if (existsSync(PROGRESS_FILE)) {
    const lines = readFileSync(PROGRESS_FILE, 'utf8').split('\n').filter(Boolean);
    for (const line of lines) {
      try {
        const q = JSON.parse(line);
        allQuestions.push(q);
        doneKeys.add(`${q.unit_code}_V${q.variant}_${q.qIdx}`);
      } catch {}
    }
    console.log(`Resuming: ${allQuestions.length} questions already generated`);
  }

  let apiCalls = 0;
  const totalExpected = BLUEPRINT.units.length * 2 * 14;
  console.log(`=== APES Unit Test Generator (Mistral) ===`);
  console.log(`Total expected: ${totalExpected} | Already done: ${allQuestions.length}`);
  console.log('');

  for (const unit of BLUEPRINT.units) {
    console.log(`--- ${unit.unit_code} (${unit.unit_name}) ---`);
    for (const variant of variants) {
      let qIdx = 0;

      // 10 MCQ
      for (let i = 0; i < 10; i++) {
        qIdx++;
        if (doneKeys.has(`${unit.unit_code}_V${variant}_${qIdx}`)) {
          process.stdout.write(`  V${variant} MCQ ${i + 1}/10 (cached) `);
          continue;
        }
        const topic = unit.topics[i % unit.topics.length];
        const difficulty = difficulties[i % 3];
        try {
          const q = await generateMCQ(unit, topic, difficulty);
          q.variant = variant; q.qIdx = qIdx;
          allQuestions.push(q);
          appendFileSync(PROGRESS_FILE, JSON.stringify(q) + '\n');
          apiCalls++;
          process.stdout.write(`  V${variant} MCQ ${i + 1}/10 ✓ `);
          await sleep(DELAY_MS);
        } catch (e) {
          apiCalls++;
          console.error(`  V${variant} MCQ ${i + 1}/10 ✗ ${e.message.substring(0, 60)}`);
          await sleep(DELAY_MS * 2);
        }
      }

      // 4 FRQ
      for (let i = 0; i < 4; i++) {
        qIdx++;
        if (doneKeys.has(`${unit.unit_code}_V${variant}_${qIdx}`)) {
          process.stdout.write(`  V${variant} FRQ ${i + 1}/4 (cached) `);
          continue;
        }
        const topic = unit.topics[(10 + i) % unit.topics.length];
        const difficulty = difficulties[i % 3];
        try {
          const q = await generateFRQ(unit, topic, difficulty);
          q.variant = variant; q.qIdx = qIdx;
          allQuestions.push(q);
          appendFileSync(PROGRESS_FILE, JSON.stringify(q) + '\n');
          apiCalls++;
          process.stdout.write(`  V${variant} FRQ ${i + 1}/4 ✓ `);
          await sleep(DELAY_MS);
        } catch (e) {
          apiCalls++;
          console.error(`  V${variant} FRQ ${i + 1}/4 ✗ ${e.message.substring(0, 60)}`);
          await sleep(DELAY_MS * 2);
        }
      }
      console.log(`  V${variant} done`);
    }
  }

  console.log(`\nTotal: ${allQuestions.length} questions (${apiCalls} API calls)`);
  writeFileSync(SQL_FILE, buildSQL(allQuestions));
  console.log(`Wrote ${SQL_FILE}`);
}

main().catch(e => { console.error('Fatal:', e.message); process.exit(1); });
