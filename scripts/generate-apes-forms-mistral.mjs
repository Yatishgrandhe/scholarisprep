#!/usr/bin/env node
/**
 * Generate APES Full Exam Forms A-J using Mistral API (incremental).
 * 80 MCQ + 3 FRQ per form × 10 forms = 830 questions
 * Writes to JSONL for resumability.
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
const PROGRESS_FILE = join(OUT_DIR, 'AP_ENVIRONMENTAL_SCIENCE.forms_mistral.jsonl');
const SQL_FILE = join(OUT_DIR, 'AP_ENVIRONMENTAL_SCIENCE.forms_mistral.sql');

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
      headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${MISTRAL_API_KEY}` },
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
              console.log(`  Rate limited, waiting ${wait / 1000}s...`);
              setTimeout(tryRequest, wait);
              return;
            }
          }
          if (res.statusCode !== 200) { reject(new Error(`API ${res.statusCode}: ${data.substring(0, 200)}`)); return; }
          try { resolve(JSON.parse(data).choices?.[0]?.message?.content || ''); }
          catch (e) { reject(new Error(`Parse: ${e.message}`)); }
        });
      });
      req.on('error', (e) => { attempt++; if (attempt <= retries) setTimeout(tryRequest, 3000); else reject(e); });
      req.write(body); req.end();
    }
    tryRequest();
  });
}

function stripFences(text) {
  let t = text.trim();
  if (t.startsWith('```')) t = t.replace(/^```(?:json)?\n?/, '').replace(/\n?```\s*$/, '');
  return t.trim();
}

function computeFormDistribution() {
  const total = 80;
  const dist = [];
  let assigned = 0;
  for (const unit of BLUEPRINT.units) {
    const raw = Math.round(unit.weight_hint * total);
    dist.push({ unit_code: unit.unit_code, unit, mcq_count: raw });
    assigned += raw;
  }
  while (assigned < total) { dist[assigned % dist.length].mcq_count++; assigned++; }
  while (assigned > total) { const i = dist.findIndex(d => d.mcq_count > 1); dist[i >= 0 ? i : 0].mcq_count--; assigned--; }
  return dist;
}
const FORM_DIST = computeFormDistribution();

async function generateMCQ(unit, topic, difficulty) {
  const prompt = `Generate 1 AP Environmental Science MCQ for a full practice exam.
UNIT: ${unit.unit_name} (${unit.unit_code}) | TOPIC: ${topic} | DIFFICULTY: ${difficulty}
4 options (A-D), ONE correct, explanations for ALL 4. Calculator allowed.
Return ONLY JSON: {"question_text":"...","options":[{"id":"A","text":"...","is_correct":false,"explanation":"..."},{"id":"B","text":"...","is_correct":true,"explanation":"..."},{"id":"C","text":"...","is_correct":false,"explanation":"..."},{"id":"D","text":"...","is_correct":false,"explanation":"..."}],"correct_answer":"B","explanation":"...","hint":"..."}`;
  const raw = await makeRequest(prompt);
  const parsed = JSON.parse(stripFences(raw));
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
  const prompt = `Generate 1 AP Environmental Science FRQ for a full practice exam.
UNIT: ${unit.unit_name} (${unit.unit_code}) | TOPIC: ${topic} | DIFFICULTY: ${difficulty}
Multi-part (a,b,c), 7 points, include stimulus. Return ONLY JSON:
{"question_text":"...","options":[{"id":"MODEL","text":"Model answer","is_correct":true,"explanation":"Full marks"}],"correct_answer":"MODEL","explanation":"...","hint":"...","rubric":{"criteria":[{"id":"knowledge","name":"Knowledge & Understanding","max_points":2,"descriptors":{"1":"Partial","2":"Complete"}},{"id":"application","name":"Application & Analysis","max_points":3,"descriptors":{"1":"Basic","2":"Good","3":"Excellent"}},{"id":"evaluation","name":"Synthesis & Evaluation","max_points":2,"descriptors":{"1":"Limited","2":"Clear"}}],"max_points":7,"scale":"AP_science_practices"},"max_points":7}`;
  const raw = await makeRequest(prompt);
  const parsed = JSON.parse(stripFences(raw));
  if (!parsed.question_text) throw new Error('Missing question_text');
  return {
    id: uuid(), question_type: 'free_response',
    question_text: parsed.question_text,
    options: parsed.options && parsed.options.length >= 2 ? parsed.options : [
      { id: 'MODEL', text: 'Model answer', is_correct: true, explanation: 'Full marks' },
      { id: 'PARTIAL', text: 'Partial marks awarded for relevant but incomplete answer', is_correct: false, explanation: 'Incomplete response' }
    ],
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

  const rows = questions.map(q => {
    const opts = JSON.stringify(q.options).replace(/'/g, "''");
    const rubricStr = q.rubric ? `'${JSON.stringify(q.rubric).replace(/'/g, "''")}'::jsonb` : 'NULL::jsonb';
    const maxPoints = q.max_points || 'NULL';
    const hint = String(q.hint || '').replace(/'/g, "''");
    const explanation = String(q.explanation || '').replace(/'/g, "''");
    const questionText = String(q.question_text || '').replace(/'/g, "''");
    const topic = String(q.topic || '').replace(/'/g, "''");
    const extId = `ap_apes_form_${q.form}_${q.sectionType}_${q.unit_code}_${q.id.slice(0, 8)}`;
    const section = q.sectionType === 'mcq' ? 'Section I Multiple Choice' : 'Section II Free Response';
    return `('${q.id}', '${questionText}', '${q.question_type}'::question_type, '${opts}'::jsonb, '${q.correct_answer}', '${explanation}', '${hint}', NULL, NULL, '${section}', '${topic}', '${q.difficulty}'::difficulty, 'AP_ENVIRONMENTAL_SCIENCE'::exam_type, true, true, ${q.calculator_allowed}, false, NULL, 'science', '${q.unit_code}', 'ap_ib_bank_v2', true, false, false, ARRAY['AP_ENVIRONMENTAL_SCIENCE','${q.unit_code}','${q.question_type}','form_${q.form}']::text[], '${extId}', 'full_exam_form', '{"generator":"generate-apes-forms-mistral.mjs","blueprint_exam":"AP_ENVIRONMENTAL_SCIENCE","form":"${q.form}","unit_code":"${q.unit_code}","ced_aligned":true}'::jsonb, '${q.unit_code}', ${rubricStr}, ${maxPoints})`;
  });

  let sql = `-- generate-apes-forms-mistral.mjs AP_ENVIRONMENTAL_SCIENCE forms n=${questions.length}\n`;
  sql += `-- Generated: ${new Date().toISOString()}\n`;
  sql += `-- Calculator: scientific\n`;
  for (const row of rows) {
    sql += INSERT_HEADER + '\n  ' + row + '\n' + ON_CONFLICT + '\n\n';
  }
  return sql;
}

async function main() {
  const difficulties = ['easy', 'medium', 'hard'];
  const doneKeys = new Set();
  const allQuestions = [];

  if (existsSync(PROGRESS_FILE)) {
    const lines = readFileSync(PROGRESS_FILE, 'utf8').split('\n').filter(Boolean);
    for (const line of lines) {
      try { const q = JSON.parse(line); allQuestions.push(q); doneKeys.add(q._key); } catch {}
    }
    console.log(`Resuming: ${allQuestions.length} questions already generated`);
  }

  const forms = BLUEPRINT.full_exam_forms.form_ids;
  let apiCalls = 0;
  console.log(`=== APES Forms A-J Generator (Mistral) ===`);
  console.log(`Total expected: ${forms.length * 83} | Done: ${allQuestions.length}`);

  for (const formLetter of forms) {
    console.log(`\n--- Form ${formLetter} ---`);
    let mcqIdx = 0;

    for (const dist of FORM_DIST) {
      const unit = dist.unit;
      for (let i = 0; i < dist.mcq_count; i++) {
        const key = `${formLetter}_mcq_${unit.unit_code}_${mcqIdx}`;
        if (doneKeys.has(key)) { mcqIdx++; process.stdout.write(`  MCQ ${mcqIdx}/80 (c) `); continue; }
        const topic = unit.topics[(mcqIdx) % unit.topics.length];
        const difficulty = difficulties[mcqIdx % 3];
        try {
          const q = await generateMCQ(unit, topic, difficulty);
          q.form = formLetter; q.sectionType = 'mcq'; q._key = key;
          allQuestions.push(q); appendFileSync(PROGRESS_FILE, JSON.stringify(q) + '\n');
          apiCalls++; mcqIdx++;
          process.stdout.write(`  MCQ ${mcqIdx}/80 ✓ `);
          await sleep(DELAY_MS);
        } catch (e) {
          apiCalls++; mcqIdx++;
          console.error(`  MCQ ${mcqIdx}/80 ✗ ${e.message.substring(0, 50)}`);
          await sleep(DELAY_MS * 2);
        }
      }
    }

    const frqUnits = [BLUEPRINT.units[2], BLUEPRINT.units[4], BLUEPRINT.units[8]];
    for (let i = 0; i < 3; i++) {
      const key = `${formLetter}_frq_${i}`;
      if (doneKeys.has(key)) { process.stdout.write(`  FRQ ${i + 1}/3 (c) `); continue; }
      const unit = frqUnits[i];
      const topic = unit.topics[i % unit.topics.length];
      const difficulty = difficulties[i % 3];
      try {
        const q = await generateFRQ(unit, topic, difficulty);
        q.form = formLetter; q.sectionType = 'frq'; q._key = key;
        allQuestions.push(q); appendFileSync(PROGRESS_FILE, JSON.stringify(q) + '\n');
        apiCalls++;
        process.stdout.write(`  FRQ ${i + 1}/3 ✓ `);
        await sleep(DELAY_MS);
      } catch (e) {
        apiCalls++;
        console.error(`  FRQ ${i + 1}/3 ✗ ${e.message.substring(0, 50)}`);
        await sleep(DELAY_MS * 2);
      }
    }
    console.log(`  Form ${formLetter} complete`);
  }

  console.log(`\nTotal: ${allQuestions.length} questions (${apiCalls} API calls)`);
  writeFileSync(SQL_FILE, buildSQL(allQuestions));
  console.log(`Wrote ${SQL_FILE}`);
}

main().catch(e => { console.error('Fatal:', e.message); process.exit(1); });
