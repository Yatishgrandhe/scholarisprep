#!/usr/bin/env node
/**
 * Generate the exclusive DSAT CHALLENGE-TIER bank: ~900 English + ~900 Math.
 * All rows are tagged challenge_only=true and tier='challenge' so they are served
 * ONLY on the Challenge Questions page and excluded from every other pool.
 *
 *   node scripts/generate-challenge-bank.mjs              # generate + validate + write SQL
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, rmSync, existsSync } from "node:fs";
import { join } from "node:path";
import {
  CHALLENGE_RW_SUBTYPES,
  generateChallengeRwItem,
  validateChallengeRwItem,
} from "./lib/challenge-rw-bank.mjs";
import {
  generateChallengedDsatMathQuestion,
  MATH_SKILLS,
} from "./lib/dsat-math-blueprint.mjs";
import { validateDsatMathQuestion } from "./lib/dsat-math-blueprint.mjs";

const REPO = "/Users/yatishgrandhe/Downloads/scholaris-main";
const OUT = join(REPO, "scripts/data/.challenge-bank");
const RW_TARGET = 900;
const MATH_TARGET = 900;

const RW_SKILLS = {
  CID: { topic: "Information and Ideas", domain_id: "information", subtopic: "Central Ideas and Details" },
  COE: { topic: "Information and Ideas", domain_id: "information", subtopic: "Command of Evidence" },
  INF: { topic: "Information and Ideas", domain_id: "information", subtopic: "Inferences" },
  CTC: { topic: "Craft and Structure", domain_id: "craft", subtopic: "Cross-Text Connections" },
  TSP: { topic: "Craft and Structure", domain_id: "craft", subtopic: "Text Structure and Purpose" },
  WIC: { topic: "Craft and Structure", domain_id: "craft", subtopic: "Words in Context" },
  SYN: { topic: "Expression of Ideas", domain_id: "expression", subtopic: "Rhetorical Synthesis" },
  TRA: { topic: "Expression of Ideas", domain_id: "expression", subtopic: "Transitions" },
  BOU: { topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Boundaries" },
  FSS: { topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Form, Structure, and Sense" },
};

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, challenge_only, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(row.topic)}, ${sqlEscape(row.subtopic)}, ${sqlEscape(row.section)}, ${sqlEscape(row.domain_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.math_skill_code)}, 'hard', ${row.calculator_allowed ? "true" : "false"}, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, true, now(), now());`;
}

function baseMeta(extra) {
  return {
    dsat_blueprint_v1: true,
    tier: "challenge",
    challenge_tier: true,
    challenged_problem: true,
    difficulty_tier: "challenge",
    explanation_v2: true,
    generator: "generate-challenge-bank.mjs",
    ...extra,
  };
}

function generateRw() {
  const rows = [];
  const seen = new Set();
  const stats = { bySubtype: {}, fails: 0 };
  const nSub = CHALLENGE_RW_SUBTYPES.length;
  let i = 0;
  let guard = 0;
  while (rows.length < RW_TARGET && guard < RW_TARGET * 40) {
    guard++;
    const subtypeIndex = i % nSub;
    const idx = Math.floor(i / nSub);
    i++;
    const q = generateChallengeRwItem(subtypeIndex, idx);
    const v = validateChallengeRwItem(q);
    if (!v.ok) { stats.fails++; continue; }
    const key = `${q.skill_id}|${q.rw_subtype}|${q.stimulus_text}|${q.options.map((o) => o.text).join("¦")}`;
    if (seen.has(key)) continue;
    seen.add(key);
    const sk = RW_SKILLS[q.skill_id];
    rows.push({
      id: randomUUID(),
      question_text: q.question_text,
      stimulus_text: q.stimulus_text,
      stimulus_type: q.stimulus_type ?? "passage",
      options: q.options,
      correct_answer: q.correct_answer,
      explanation: q.explanation,
      topic: sk.topic, subtopic: sk.subtopic, section: "reading_writing", domain_id: sk.domain_id,
      skill_id: q.skill_id, math_skill_code: null, calculator_allowed: false,
      source_metadata: baseMeta({ rw_subtype: q.rw_subtype, rw_format: q.rw_format, challenge_key: q.challenge_key }),
    });
    stats.bySubtype[q.rw_subtype] = (stats.bySubtype[q.rw_subtype] ?? 0) + 1;
  }
  return { rows, stats };
}

function generateMath() {
  const rows = [];
  const seen = new Set();
  const stats = { bySkill: {}, fails: 0 };
  const skills = MATH_SKILLS.map((s) => (typeof s === "string" ? s : s.id ?? s.skill ?? s.code));
  const tryOne = (skill, idx) => {
    let q;
    try { q = generateChallengedDsatMathQuestion({ skill, index: idx }); }
    catch { stats.fails++; return false; }
    const v = validateDsatMathQuestion(q);
    if (!v.ok) { stats.fails++; return false; }
    const key = `${skill}|${q.question_text}|${(q.options ?? []).map((o) => o.text).join("¦")}`;
    if (seen.has(key)) return false;
    seen.add(key);
    rows.push(toMathRow(skill, q));
    stats.bySkill[skill] = (stats.bySkill[skill] ?? 0) + 1;
    return true;
  };
  // Pass 1: even distribution, then Pass 2: fill the shortfall from any skill that
  // still yields distinct items (productive skills like LIN/AQ vary indefinitely).
  const perSkill = Math.ceil(MATH_TARGET / skills.length);
  for (const skill of skills) {
    for (let idx = 0; idx < perSkill * 3 && (stats.bySkill[skill] ?? 0) < perSkill && rows.length < MATH_TARGET; idx++) {
      tryOne(skill, idx);
    }
  }
  for (let idx = perSkill * 3; rows.length < MATH_TARGET && idx < perSkill * 3 + 4000; idx++) {
    for (const skill of skills) {
      if (rows.length >= MATH_TARGET) break;
      tryOne(skill, idx);
    }
  }
  return { rows, stats };
}

function toMathRow(skill, q) {
  return {
    id: randomUUID(),
    question_text: q.question_text,
    stimulus_text: q.stimulus_text ?? null,
    stimulus_type: q.stimulus_text ? (q.stimulus_type ?? "passage") : null,
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: q.explanation ?? "",
    topic: q.topic ?? q.source_metadata?.topic ?? "Algebra",
    subtopic: q.subtopic ?? null,
    section: "math",
    domain_id: q.domain_id ?? null,
    skill_id: q.skill_id ?? skill,
    math_skill_code: q.math_skill_code ?? skill,
    calculator_allowed: q.calculator_allowed ?? true,
    source_metadata: baseMeta({ ...(q.source_metadata ?? {}), math_skill: skill }),
  };
}

function main() {
  if (existsSync(OUT)) rmSync(OUT, { recursive: true, force: true });
  mkdirSync(join(OUT, "inserts"), { recursive: true });

  const rw = generateRw();
  const math = generateMath();
  const all = [...rw.rows, ...math.rows];

  const CHUNK = 40;
  let c = 0;
  for (let b = 0; b < all.length; b += CHUNK) {
    const sql = "BEGIN;\n" + all.slice(b, b + CHUNK).map(insertSql).join("\n") + "\nCOMMIT;\n";
    writeFileSync(join(OUT, "inserts", `ins-${String(c).padStart(3, "0")}.sql`), sql);
    c++;
  }

  const summary = {
    rw_count: rw.rows.length, rw_fails: rw.stats.fails, rw_by_subtype: rw.stats.bySubtype,
    math_count: math.rows.length, math_fails: math.stats.fails, math_by_skill: math.stats.bySkill,
    total: all.length, chunks: c,
  };
  writeFileSync(join(OUT, "summary.json"), JSON.stringify(summary, null, 2));
  console.log(JSON.stringify(summary, null, 2));
}

main();
