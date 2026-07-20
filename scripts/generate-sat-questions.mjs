#!/usr/bin/env node
/**
 * Generate ORIGINAL (non-College-Board) Digital SAT practice questions with
 * Gemini and fill thin skill x difficulty cells in the bank.
 *
 * Original content only — never reproduces copyrighted CB items. Rows are
 * marked source='scholaris_ai', ai_generated=true so they are clearly
 * distinguishable from the official OpenSAT-sourced pool.
 *
 * Two ways to apply (the local service-role key may be a placeholder):
 *   --output-sql PATH   Emit INSERT statements to apply via Supabase MCP.
 *   --apply             Write directly via SUPABASE_SERVICE_ROLE_KEY.
 *
 * Usage:
 *   node scripts/generate-sat-questions.mjs --plan                       # show gaps
 *   node scripts/generate-sat-questions.mjs --floor 12 --output-sql scripts/data/gen-questions.sql
 *   node scripts/generate-sat-questions.mjs --skill CTC --difficulty hard --count 6 --dry-run
 *
 * Flags:
 *   --floor N       Target minimum questions per active skill x difficulty (default 12)
 *   --expand N      Extra questions to add to every active cell beyond the floor (default 0)
 *   --skill ID      Restrict to one skill_id
 *   --difficulty D  Restrict to one difficulty (easy|medium|hard)
 *   --count N       Force N per targeted cell (overrides floor math)
 *   --batch N       Questions per Gemini call (default 4)
 *   --plan          Print the per-cell generation plan and exit
 *   --output-sql P  Write INSERT SQL instead of applying
 *   --apply         Apply via service role
 *   --dry-run       Print generated JSON only (default)
 */

import { readFileSync, writeFileSync, mkdirSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { randomUUID } from "node:crypto";
import { createClient } from "@supabase/supabase-js";
import { GoogleGenAI } from "@google/genai";

const GEMINI_MODEL = "gemma-4-26b-a4b-it";

// skill_id -> taxonomy (mirrors existing bank rows).
const SKILLS = {
  // Reading & Writing
  CID: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Central Ideas and Details" },
  COE: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Command of Evidence" },
  INF: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Inferences" },
  CTC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Cross-Text Connections" },
  TSP: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Text Structure and Purpose" },
  WIC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Words in Context" },
  SYN: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Rhetorical Synthesis" },
  TRA: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Transitions" },
  BOU: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Boundaries" },
  FSS: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Form, Structure, and Sense" },
  // Math
  LIN: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable", calc: true },
  LEQ: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", calc: true },
  LIF: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", calc: true },
  SYS: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", calc: true },
  INE: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities", calc: true },
  EQS: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", calc: true },
  NRE: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable", calc: true },
  NRM: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions", calc: true },
  RAT: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions", calc: true },
  PER: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", calc: true },
  OIA: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data", calc: true },
  IEE: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics", calc: true },
  PRO: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", calc: true },
  ARE: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", calc: true },
  CIR: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles", calc: true },
  RIG: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", calc: true },
  LIN_G: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", calc: true },
};
const DIFFS = ["easy", "medium", "hard"];

function loadEnv() {
  try {
    const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
    const env = {};
    for (const line of raw.split("\n")) {
      const m = line.match(/^([^#=]+)=(.*)$/);
      if (m) env[m[1].trim()] = m[2].trim().replace(/^["']|["']$/g, "");
    }
    return env;
  } catch {
    return {};
  }
}

function parseArgs(argv) {
  const f = {
    floor: 12, expand: 0, skill: null, difficulty: null, count: null,
    batch: 4, plan: false, outputSql: null, apply: false, dryRun: false, delayMs: 600,
    fromJson: null,
  };
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--plan") f.plan = true;
    else if (a === "--apply") f.apply = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--floor") f.floor = Number(argv[++i]);
    else if (a === "--expand") f.expand = Number(argv[++i]);
    else if (a === "--skill") f.skill = argv[++i];
    else if (a === "--difficulty") f.difficulty = argv[++i];
    else if (a === "--count") f.count = Number(argv[++i]);
    else if (a === "--batch") f.batch = Number(argv[++i]);
    else if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--from-json") f.fromJson = argv[++i];
    else if (a === "--delay-ms") f.delayMs = Number(argv[++i]);
  }
  if (!f.apply && !f.outputSql) f.dryRun = true;
  return f;
}

function getKeys(env) {
  const names = ["GOOGLE_GEMINI_API_KEY", "GOOGLE_GEMINI_API_KEY_1", "GOOGLE_GEMINI_API_KEY_2",
    "GOOGLE_GEMINI_API_KEY_3", "GOOGLE_GEMINI_API_KEY_4", "GOOGLE_GEMINI_API_KEY_5"];
  const seen = new Set(); const keys = [];
  for (const n of names) { const v = (env[n] ?? "").trim(); if (v && !seen.has(v)) { seen.add(v); keys.push(v); } }
  return keys;
}

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));
const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

async function currentCounts(supabase) {
  // counts per skill_id x difficulty for SAT platform questions
  const { data, error } = await supabase
    .from("questions")
    .select("skill_id, difficulty")
    .eq("exam_type", "SAT")
    .eq("is_platform_question", true)
    .limit(20000);
  if (error) throw new Error(error.message);
  const counts = {};
  for (const r of data ?? []) {
    if (!r.skill_id || !r.difficulty) continue;
    counts[`${r.skill_id}:${r.difficulty}`] = (counts[`${r.skill_id}:${r.difficulty}`] ?? 0) + 1;
  }
  return counts;
}

function buildPlan(counts, f) {
  const plan = [];
  const skills = f.skill ? [f.skill] : Object.keys(SKILLS);
  const diffs = f.difficulty ? [f.difficulty] : DIFFS;
  for (const skill of skills) {
    if (!SKILLS[skill]) continue;
    for (const difficulty of diffs) {
      const have = counts[`${skill}:${difficulty}`] ?? 0;
      const need = f.count != null
        ? f.count
        : Math.max(0, f.floor - have) + f.expand;
      if (need > 0) plan.push({ skill, difficulty, have, need });
    }
  }
  return plan;
}

function buildPrompt(skill, meta, difficulty, n) {
  const isMath = meta.section === "math";
  return `You are an expert Digital SAT item writer creating ORIGINAL practice questions for Scholaris (NOT affiliated with the College Board; do not copy any real exam item).

Create ${n} brand-new, original ${difficulty} multiple-choice questions.
Section: ${isMath ? "Math" : "Reading & Writing"}
Skill: ${meta.subtopic}
Difficulty calibration: ${difficulty === "easy" ? "straightforward, one concept/step" : difficulty === "medium" ? "moderate, may combine two ideas/steps" : "challenging, multi-step or subtle reasoning typical of the hardest SAT items"}

Rules:
- Each question: exactly 4 options A-D, exactly one correct.
- ${isMath ? "Use $...$ LaTeX for math. Show a complete worked solution in 'explanation' with the real numbers." : "Include a short original 'stimulus_text' passage (2-5 sentences) when the skill needs reading; quote the relevant evidence in 'explanation'."}
- 'explanation' must justify the correct answer specifically. Each option needs an 'explanation' saying why it is right or the exact error that makes it wrong.
- Vary topics/contexts so the ${n} questions are distinct. Difficulty must genuinely match "${difficulty}".

Return ONLY valid JSON:
{
  "questions": [
    {
      "stimulus_text": ${isMath ? "null" : '"passage or null"'},
      "stimulus_type": ${isMath ? '"diagram or null for geometry figures (inline SVG in stimulus_text)"' : '"passage"'},
      "question_text": "string",
      "options": [
        {"id":"A","text":"string","is_correct":false,"explanation":"string"},
        {"id":"B","text":"string","is_correct":true,"explanation":"string"},
        {"id":"C","text":"string","is_correct":false,"explanation":"string"},
        {"id":"D","text":"string","is_correct":false,"explanation":"string"}
      ],
      "correct_answer": "B",
      "explanation": "string",
      "hint": "string"
    }
  ]
}`;
}

function validateQuestion(q) {
  if (!q || typeof q !== "object") return false;
  if (!q.question_text || !Array.isArray(q.options) || q.options.length !== 4) return false;
  const correct = q.options.filter((o) => o.is_correct);
  if (correct.length !== 1) return false;
  if (!q.explanation || String(q.explanation).length < 40) return false;
  return true;
}

function rowFor(skill, meta, difficulty, q) {
  const correct = q.options.find((o) => o.is_correct);
  const stimulusType =
    q.stimulus_type ??
    (q.stimulus_text && String(q.stimulus_text).trim().startsWith("<svg") ? "diagram" : null);
  return {
    id: randomUUID(),
    question_text: String(q.question_text).trim(),
    stimulus_text: q.stimulus_text && q.stimulus_text !== "null" ? String(q.stimulus_text).trim() : null,
    stimulus_type: stimulusType,
    options: q.options.map((o) => ({
      id: String(o.id), text: String(o.text), is_correct: Boolean(o.is_correct),
      explanation: String(o.explanation ?? ""),
    })),
    correct_answer: correct?.id ?? q.correct_answer ?? "A",
    explanation: String(q.explanation).trim(),
    hint: String(q.hint ?? "").trim() || null,
    topic: meta.topic, subtopic: meta.subtopic, section: meta.section,
    domain_id: meta.domain_id, skill_id: skill,
    math_skill_code: meta.section === "math" ? skill : null,
    difficulty, calculator_allowed: meta.section === "math" ? Boolean(meta.calc) : false,
    exam_type: "SAT", question_type: "multiple_choice",
    is_platform_question: true, ai_generated: true, source: "scholaris_ai",
    source_metadata: { generator: "scholaris_ai_v1", model: GEMINI_MODEL, original: true, explanation_v2: true },
  };
}

function insertSql(rows) {
  const lines = ["BEGIN;"];
  for (const r of rows) {
    lines.push(`INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(r.id)}, ${sqlEscape(r.question_text)}, ${sqlEscape(r.stimulus_text)}, ${sqlEscape(r.stimulus_type ?? null)}, '${JSON.stringify(r.options).replace(/'/g, "''")}'::jsonb, ${sqlEscape(r.correct_answer)}, ${sqlEscape(r.explanation)}, ${sqlEscape(r.hint)}, ${sqlEscape(r.topic)}, ${sqlEscape(r.subtopic)}, ${sqlEscape(r.section)}, ${sqlEscape(r.domain_id)}, ${sqlEscape(r.skill_id)}, ${sqlEscape(r.math_skill_code)}, ${sqlEscape(r.difficulty)}, ${r.calculator_allowed}, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${JSON.stringify(r.source_metadata).replace(/'/g, "''")}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`);
  }
  lines.push("COMMIT;");
  return lines.join("\n");
}

async function generateCell(ai, skill, meta, difficulty, count, batch) {
  const rows = [];
  while (rows.length < count) {
    const n = Math.min(batch, count - rows.length);
    const res = await ai.models.generateContent({
      model: GEMINI_MODEL,
      contents: [{ role: "user", parts: [{ text: buildPrompt(skill, meta, difficulty, n) }] }],
      config: { maxOutputTokens: 4096, temperature: 0.9 },
    });
    const text = (res.text ?? "").replace(/```json|```/g, "").trim();
    const m = text.match(/\{[\s\S]*\}/);
    const parsed = m ? JSON.parse(m[0]) : null;
    const qs = Array.isArray(parsed?.questions) ? parsed.questions : [];
    for (const q of qs) if (validateQuestion(q)) rows.push(rowFor(skill, meta, difficulty, q));
    if (qs.length === 0) break;
  }
  return rows.slice(0, count);
}

// Convert agent-authored JSON ([{skill,difficulty,question}]) into rows + SQL,
// no DB/API access required. Used to apply Claude-generated questions via MCP.
function fromJsonMode(f) {
  const items = JSON.parse(readFileSync(resolve(f.fromJson), "utf8"));
  const rows = [];
  const skipped = [];
  for (const it of items) {
    const meta = SKILLS[it.skill];
    if (!meta) { skipped.push({ skill: it.skill, reason: "unknown skill" }); continue; }
    if (!validateQuestion(it.question)) { skipped.push({ skill: it.skill, reason: "invalid question" }); continue; }
    rows.push(rowFor(it.skill, meta, it.difficulty, it.question));
  }
  if (f.outputSql && rows.length) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), insertSql(rows) + "\n");
    console.error(`Wrote SQL: ${f.outputSql} (${rows.length} rows, ${skipped.length} skipped)`);
  }
  console.log(JSON.stringify({ ok: true, rows: rows.length, skipped }, null, 2));
}

async function main() {
  const f = parseArgs(process.argv);
  if (f.fromJson) { fromJsonMode(f); return; }
  const env = { ...process.env, ...loadEnv() };
  const url = env.NEXT_PUBLIC_SUPABASE_URL;
  const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !serviceKey) { console.error("Need NEXT_PUBLIC_SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY (for counts)."); process.exit(1); }
  const supabase = createClient(url, serviceKey);

  const counts = await currentCounts(supabase);
  const plan = buildPlan(counts, f);
  const totalNeed = plan.reduce((s, p) => s + p.need, 0);
  console.error(`[generate] ${plan.length} cell(s), ${totalNeed} question(s) to create`);
  if (f.plan) { console.log(JSON.stringify(plan, null, 2)); return; }

  const keys = getKeys(env);
  if (keys.length === 0) { console.error("No Gemini keys configured."); process.exit(1); }
  const clients = keys.map((k) => new GoogleGenAI({ apiKey: k }));

  const allRows = [];
  let ci = 0;
  for (const cell of plan) {
    const ai = clients[ci++ % clients.length];
    const meta = SKILLS[cell.skill];
    try {
      const rows = await generateCell(ai, cell.skill, meta, cell.difficulty, cell.need, f.batch);
      allRows.push(...rows);
      console.error(`  ${cell.skill}/${cell.difficulty}: +${rows.length}`);
    } catch (e) {
      console.error(`  ${cell.skill}/${cell.difficulty}: FAILED ${String(e.message ?? e).slice(0, 120)}`);
    }
    await sleep(f.delayMs);
  }

  if (f.outputSql && allRows.length) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), insertSql(allRows) + "\n");
    console.error(`Wrote SQL: ${f.outputSql} (${allRows.length} rows)`);
  }
  if (f.apply && allRows.length) {
    for (let i = 0; i < allRows.length; i += 100) {
      const chunk = allRows.slice(i, i + 100).map(({ source_metadata, ...rest }) => ({ ...rest, source_metadata }));
      const { error } = await supabase.from("questions").insert(chunk);
      if (error) { console.error("insert error:", error.message); process.exit(1); }
    }
    console.error(`Applied ${allRows.length} rows.`);
  }

  console.log(JSON.stringify({ ok: true, generated: allRows.length, cells: plan.length, sample: allRows.slice(0, 2) }, null, 2));
}

main().catch((e) => { console.error(e); process.exit(1); });
