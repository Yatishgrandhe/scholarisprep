#!/usr/bin/env node
/**
 * Generate ORIGINAL SAT practice questions (templates, no Gemini) to fill thin
 * skill × difficulty cells. Outputs JSON + SQL with ON CONFLICT DO NOTHING.
 *
 *   node scripts/generate-template-gap.mjs --output-sql scripts/data/gen-gap-batch2.sql
 *   node scripts/generate-template-gap.mjs --output-json scripts/data/gen-gap-batch2.json
 */

import { writeFileSync, mkdirSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { randomUUID } from "node:crypto";

const SKILLS = {
  CTC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Cross-Text Connections" },
  WIC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Words in Context" },
  TRA: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Transitions" },
  SYN: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Rhetorical Synthesis" },
  COE: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Command of Evidence" },
  INF: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Inferences" },
  LEQ: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", calc: true },
  INE: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities", calc: true },
  SYS: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", calc: true },
  EQS: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", calc: true },
  PER: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", calc: true },
  PRO: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", calc: true },
  OIA: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data", calc: true },
  IEE: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics", calc: true },
  RIG: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", calc: true },
  LIN_G: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", calc: true },
  ARE: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", calc: true },
  LIF: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", calc: true },
  RAT: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions", calc: true },
};

/** Prod counts 2026-06-12 post batch2 — pass `--have-json` to override from DB export. */
const HAVE = {
  "LIF:hard": 8,
  "RAT:easy": 8,
};

const FLOOR = 12;

function parseArgs() {
  const f = { outputSql: null, outputJson: null, floor: FLOOR };
  for (let i = 2; i < process.argv.length; i++) {
    if (process.argv[i] === "--output-sql") f.outputSql = process.argv[++i];
    else if (process.argv[i] === "--output-json") f.outputJson = process.argv[++i];
    else if (process.argv[i] === "--floor") f.floor = Number(process.argv[++i]);
  }
  return f;
}

function plan(f) {
  const cells = [];
  for (const key of Object.keys(HAVE)) {
    const [skill, difficulty] = key.split(":");
    if (!SKILLS[skill]) continue;
    const have = HAVE[key] ?? 0;
    const need = Math.max(0, f.floor - have);
    if (need > 0) cells.push({ skill, difficulty, need });
  }
  return cells;
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

function triangleSvg(labels = {}) {
  const { AB = "?", BC = "?", CA = "?", angleB = "" } = labels;
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 280 200" aria-label="Triangle diagram">
  <polygon points="30,170 250,170 140,30" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <text x="18" y="185" font-size="14" font-family="system-ui,sans-serif">A</text>
  <text x="252" y="185" font-size="14" font-family="system-ui,sans-serif">B</text>
  <text x="132" y="22" font-size="14" font-family="system-ui,sans-serif">C</text>
  <text x="135" y="188" font-size="13" font-family="system-ui,sans-serif">${AB}</text>
  <text x="200" y="100" font-size="13" font-family="system-ui,sans-serif">${BC}</text>
  <text x="55" y="100" font-size="13" font-family="system-ui,sans-serif">${CA}</text>
  ${angleB ? `<text x="215" y="162" font-size="12" font-family="system-ui,sans-serif">${angleB}</text>` : ""}
</svg>`;
}

function rightTriangleSvg(a, b, c) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 200" aria-label="Right triangle">
  <polygon points="40,170 220,170 40,50" fill="#f8fafc" stroke="#111827" stroke-width="2"/>
  <rect x="40" y="150" width="20" height="20" fill="none" stroke="#111827" stroke-width="1.5"/>
  <text x="125" y="188" font-size="13" font-family="system-ui,sans-serif">${a}</text>
  <text x="18" y="115" font-size="13" font-family="system-ui,sans-serif">${b}</text>
  <text x="115" y="105" font-size="13" font-family="system-ui,sans-serif">${c}</text>
</svg>`;
}

function generateOne(skill, difficulty, index) {
  const n = index + 1;
  const meta = SKILLS[skill];

  if (skill === "INE") {
    const a = 2 + (n % 4);
    const b = 3 + (n % 5);
    const c = a * (4 + n) + b - 2;
    const correct = 4 + n;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which value of $x$ satisfies $${a}x + ${b} > ${c}$?`,
      options: mkOpts(
        "C",
        ["$" + (correct - 2) + "$", "$" + (correct - 1) + "$", "$" + correct + "$", "$" + (correct + 1) + "$"],
        [
          `Substituting gives ${a}(${correct - 2})+${b}=${a * (correct - 2) + b}, which is not greater than ${c}.`,
          `Substituting gives ${a}(${correct - 1})+${b}=${a * (correct - 1) + b}, which is not greater than ${c}.`,
          `Substituting gives ${a}(${correct})+${b}=${a * correct + b} > ${c}.`,
          `This is greater than needed but C is the smallest valid choice listed.`,
        ],
      ),
      correct_answer: "C",
      explanation: `Solve: $${a}x > ${c - b}$, so $x > ${(c - b) / a}$. The smallest listed value above that is $${correct}$.`,
    };
  }

  if (skill === "SYS") {
    const x = 2 + n;
    const y = 3 + n;
    return {
      stimulus_text: `$x + y = ${x + y}$\n$2x - y = ${2 * x - y}$`,
      stimulus_type: null,
      question_text: "What is the value of $x$?",
      options: mkOpts("B", ["$" + (x - 1) + "$", "$" + x + "$", "$" + (x + 1) + "$", "$" + y + "$"], [
        "This is one less than the correct $x$.",
        `Adding the equations: $3x = ${3 * x}$, so $x = ${x}$.`,
        "This is one more than the correct $x$.",
        `This is $y$, not $x$.`,
      ]),
      correct_answer: "B",
      explanation: `Add the equations: $3x = ${3 * x}$, so $x = ${x}$.`,
    };
  }

  if (skill === "LEQ") {
    const m = 2 + (n % 3);
    const b = n;
    const x = 3 + n;
    const y = m * x + b;
    return {
      stimulus_text: `$y = ${m}x + ${b}$`,
      stimulus_type: null,
      question_text: `When $x = ${x}$, what is the value of $y$?`,
      options: mkOpts("A", ["$" + y + "$", "$" + (y + 1) + "$", "$" + (y - 1) + "$", "$" + (m + b) + "$"], [
        `$y = ${m}(${x}) + ${b} = ${y}$.`,
        `This adds 1 to the correct value.`,
        `This subtracts 1 from the correct value.`,
        `This adds slope and intercept instead of evaluating.`,
      ]),
      correct_answer: "A",
      explanation: `Substitute $x = ${x}$: $y = ${m}(${x}) + ${b} = ${y}$.`,
    };
  }

  if (skill === "PER") {
    const pct = 10 + n * 5;
    const base = 20 * n;
    const ans = Math.round((base * pct) / 100);
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `What is ${pct}% of ${base}?`,
      options: mkOpts("B", ["$" + (ans - 5) + "$", "$" + ans + "$", "$" + (ans + 5) + "$", "$" + (pct + base) + "$"], [
        "This is too small; check ${pct}% of ${base}.",
        `${pct}% of ${base} = 0.${String(pct).padStart(2, "0")} × ${base} = ${ans}.`,
        "This is too large.",
        "This adds the percent and the base instead of multiplying.",
      ]),
      correct_answer: "B",
      explanation: `${pct}% of ${base} = \\frac{${pct}}{100} \\times ${base} = ${ans}$.`,
    };
  }

  if (skill === "LIN_G") {
    const angle = 40 + n * 8;
    const unknown = 180 - angle - 60;
    const svg = triangleSvg({ AB: "8", BC: "6", CA: "?", angleB: "60°" });
    return {
      stimulus_text: svg,
      stimulus_type: "diagram",
      question_text: `In triangle $ABC$ shown, $m\\angle B = 60°$ and $m\\angle A = ${angle}°$. What is $m\\angle C$?`,
      options: mkOpts("D", ["$${angle}°$", "$60°$", "$${angle + 10}°$", "$${unknown}°$"], [
        "That is angle A, not C.",
        "That is angle B.",
        "Triangle angles must sum to 180°; this is too large.",
        `$${angle}° + 60° + ${unknown}° = 180°$.`,
      ]),
      correct_answer: "D",
      explanation: `Angles in a triangle sum to $180°$: $m\\angle C = 180 - ${angle} - 60 = ${unknown}°$.`,
    };
  }

  if (skill === "RIG") {
    const a = 3 + n;
    const b = 4 + n;
    const c = Math.round(Math.sqrt(a * a + b * b));
    const svg = rightTriangleSvg(String(a), String(b), String(c));
    return {
      stimulus_text: svg,
      stimulus_type: "diagram",
      question_text: "In the right triangle shown, what is the length of the hypotenuse?",
      options: mkOpts("C", ["$" + (c - 1) + "$", "$" + (a + b) + "$", "$" + c + "$", "$" + (c + 2) + "$"], [
        "Too short for the hypotenuse.",
        "The hypotenuse is not the sum of the legs.",
        `$c = \\sqrt{${a}^2 + ${b}^2} = ${c}$.`,
        "Too long.",
      ]),
      correct_answer: "C",
      explanation: `By the Pythagorean theorem: $c = \\sqrt{${a}^2 + ${b}^2} = \\sqrt{${a * a + b * b}} = ${c}$.`,
    };
  }

  if (skill === "LIF") {
    const x1 = 2 + n;
    const y1 = -1 + n;
    const x2 = x1 + 4;
    const slope = 2;
    const y2 = y1 + slope * 4;
    const x3 = -3 - n;
    const y3 = slope * (x3 - x1) + y1;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `A linear function $f$ satisfies $f(${x1}) = ${y1}$ and $f(${x2}) = ${y2}$. What is the value of $f(${x3})$?`,
      options: mkOpts(
        "A",
        ["$" + y3 + "$", "$" + (y3 + 2) + "$", "$" + slope + "$", "$" + (y3 - 4) + "$"],
        [
          `Slope $m = \\frac{${y2}-(${y1})}{${x2}-${x1}} = ${slope}$. Then $f(${x3}) = ${slope}(${x3}-${x1})+(${y1}) = ${y3}$.`,
          "This adds 2 to the correct value.",
          `That is the slope, not $f(${x3})$.`,
          "This subtracts 4 from the correct value.",
        ],
      ),
      correct_answer: "A",
      explanation: `Slope $m = \\frac{${y2}-(${y1})}{${x2}-${x1}} = ${slope}$. Using point-slope from $(${x1}, ${y1})$: $f(${x3}) = ${slope}(${x3}-${x1})+(${y1}) = ${y3}$.`,
    };
  }

  if (skill === "RAT") {
    const a = 2 + n;
    const b = 3 + n;
    const total = 10 * n;
    const partA = Math.round((total * a) / (a + b));
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `In a mixture, the ratio of ingredient A to ingredient B is $${a}:${b}$. If the mixture contains ${total} units total, how many units are ingredient A?`,
      options: mkOpts(
        "B",
        ["$" + (partA - 2) + "$", "$" + partA + "$", "$" + (partA + 3) + "$", "$" + total + "$"],
        [
          `Too small; check $\\frac{${a}}{${a + b}} \\times ${total}$.`,
          `$\\frac{${a}}{${a + b}} \\times ${total} = ${partA}$.`,
          "Too large.",
          "That is the total mixture, not just ingredient A.",
        ],
      ),
      correct_answer: "B",
      explanation: `Ingredient A is $\\frac{${a}}{${a + b}}$ of the mixture: $\\frac{${a}}{${a + b}} \\times ${total} = ${partA}$ units.`,
    };
  }

  if (skill === "ARE") {
    const w = 4 + n;
    const h = 3 + n;
    const area = w * h;
    const svg = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 260 180" aria-label="Rectangle"><rect x="50" y="40" width="160" height="100" fill="#f8fafc" stroke="#111827" stroke-width="2"/><text x="120" y="155" font-size="13">${w}</text><text x="28" y="95" font-size="13">${h}</text></svg>`;
    return {
      stimulus_text: svg,
      stimulus_type: "diagram",
      question_text: "What is the area of the rectangle shown?",
      options: mkOpts("A", ["$" + area + "$", "$" + (w + h) + "$", "$" + (2 * w + 2 * h) + "$", "$" + (area + 5) + "$"], [
        `Area = ${w} \\times ${h} = ${area}.`,
        "This is the sum of dimensions, not area.",
        "This is the perimeter.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Area of a rectangle = length × width = ${w} × ${h} = ${area}$.`,
    };
  }

  if (skill === "CTC") {
    return {
      stimulus_text: `Text 1\nResearchers in ${2010 + n} argued that city parks mainly benefit adults who jog or play sports.\n\nText 2\nA ${2020 + n} study found that children who live near parks read outdoors more often and report lower stress, even if they rarely exercise there.`,
      stimulus_type: "passage",
      question_text: "Based on the texts, how would the author of Text 2 most likely respond to Text 1?",
      options: mkOpts("B", [
        "By agreeing that parks only help people who exercise",
        "By showing parks can benefit residents in ways beyond exercise",
        "By claiming children never use parks",
        "By rejecting all research about parks",
      ], [
        "Text 2 describes non-exercise benefits, so it would not fully agree.",
        "Text 2 emphasizes reading outdoors and lower stress without requiring exercise.",
        "Text 2 says children use parks for reading, not that they avoid parks.",
        "Text 2 is itself research and does not reject research.",
      ]),
      correct_answer: "B",
      explanation: "Text 1 limits park benefits to exercisers. Text 2 documents benefits for children through reading and stress relief without exercise, complicating Text 1's claim.",
    };
  }

  // Generic math linear fallback
  if (meta.section === "math") {
    const k = 5 + n;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `If $${k}x = ${k * (n + 2)}$, what is the value of $x$?`,
      options: mkOpts("A", ["$" + (n + 2) + "$", "$" + (n + 1) + "$", "$" + k + "$", "$" + (n + 3) + "$"], [
        `Divide both sides by ${k}: $x = ${n + 2}$.`,
        "Too small.",
        "That is the coefficient, not $x$.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Divide both sides by ${k}: $x = ${(k * (n + 2)) / k} = ${n + 2}$.`,
    };
  }

  return {
    stimulus_text: `Passage ${n}: Scientists observed that species in region ${n} adapt quickly when temperatures shift by even a few degrees.`,
    stimulus_type: "passage",
    question_text: "Which choice best states the main idea of the passage?",
    options: mkOpts("A", [
      "Local species can adapt when temperatures change slightly",
      "Temperature never affects species",
      "The passage lists every species on Earth",
      "Scientists refuse to study climate",
    ], ["Supported by the passage.", "Contradicted.", "Too broad.", "Not stated."]),
    correct_answer: "A",
    explanation: "The passage focuses on quick adaptation to small temperature shifts.",
  };
}

function rowFor(skill, meta, difficulty, q) {
  const correct = q.options.find((o) => o.is_correct);
  return {
    id: randomUUID(),
    question_text: q.question_text,
    stimulus_text: q.stimulus_text,
    stimulus_type: q.stimulus_type,
    options: q.options,
    correct_answer: correct?.id ?? q.correct_answer,
    explanation: q.explanation,
    hint: null,
    topic: meta.topic,
    subtopic: meta.subtopic,
    section: meta.section,
    domain_id: meta.domain_id,
    skill_id: skill,
    math_skill_code: meta.section === "math" ? skill : null,
    difficulty,
    calculator_allowed: meta.section === "math",
    exam_type: "SAT",
    question_type: "multiple_choice",
    is_platform_question: true,
    ai_generated: true,
    source: "scholaris_ai",
    source_metadata: {
      generator: "scholaris_template_v1",
      original: true,
      explanation_v2: true,
    },
  };
}

function insertSql(rows) {
  const lines = ["BEGIN;"];
  for (const r of rows) {
    lines.push(`INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(r.id)}, ${sqlEscape(r.question_text)}, ${sqlEscape(r.stimulus_text)}, ${sqlEscape(r.stimulus_type)}, '${JSON.stringify(r.options).replace(/'/g, "''")}'::jsonb, ${sqlEscape(r.correct_answer)}, ${sqlEscape(r.explanation)}, ${sqlEscape(r.hint)}, ${sqlEscape(r.topic)}, ${sqlEscape(r.subtopic)}, ${sqlEscape(r.section)}, ${sqlEscape(r.domain_id)}, ${sqlEscape(r.skill_id)}, ${sqlEscape(r.math_skill_code)}, ${sqlEscape(r.difficulty)}, ${r.calculator_allowed}, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${JSON.stringify(r.source_metadata).replace(/'/g, "''")}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`);
  }
  lines.push("COMMIT;");
  return lines.join("\n");
}

function main() {
  const f = parseArgs();
  const cells = plan(f);
  const items = [];
  const rows = [];
  for (const cell of cells) {
    for (let i = 0; i < cell.need; i++) {
      const q = generateOne(cell.skill, cell.difficulty, i);
      const meta = SKILLS[cell.skill];
      items.push({ skill: cell.skill, difficulty: cell.difficulty, question: q });
      rows.push(rowFor(cell.skill, meta, cell.difficulty, q));
    }
  }
  console.error(`Generated ${rows.length} questions across ${cells.length} cells`);
  if (f.outputJson) {
    mkdirSync(dirname(resolve(f.outputJson)), { recursive: true });
    writeFileSync(resolve(f.outputJson), JSON.stringify(items, null, 2) + "\n");
    console.error(`Wrote ${f.outputJson}`);
  }
  if (f.outputSql) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), insertSql(rows) + "\n");
    console.error(`Wrote ${f.outputSql}`);
  }
  console.log(JSON.stringify({ ok: true, rows: rows.length, cells: cells.length }, null, 2));
}

main();
