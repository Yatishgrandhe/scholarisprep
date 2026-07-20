/**
 * Digital SAT Math Item Generation Blueprint v1.
 * College Board structure: 44 Q (2×22 modules), ~75% MCQ / ~25% SPR, 4 domains, 19 skills.
 */

import {
  generateMathQuestion,
  generateChallengedMath,
  buildExplanationV2,
  bounded,
} from "./dsat-math-templates.mjs";

export const PROJECT_ID = "aioyzumxxsepbnfivvdd";
export const BLUEPRINT_VERSION = "dsat_math_blueprint_v1";

/** Standard bank size per math skill. */
export const DEFAULT_TARGET_PER_SKILL = 300;

/** Ultra-hard challenged items per skill (source_metadata.challenged_problem). */
export const CHALLENGED_PER_SKILL = 25;

/** ~25% SPR per College Board Math section. */
export const SPR_SHARE = 0.25;

export const DIFFICULTY_MIX = {
  easy: 0.42,
  medium: 0.35,
  hard: 0.23,
};

export const MATH_SKILLS = [
  "LIN", "LIF", "LEQ", "SYS", "INE",
  "NRM", "NRE", "EQS",
  "RAT", "PER", "OIA", "TVA", "PRO", "IEE", "EVA",
  "ARE", "LIN_G", "RIG", "CIR",
];

export const SKILLS = {
  LIN: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable", section: "math" },
  LIF: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", section: "math" },
  LEQ: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", section: "math" },
  SYS: { topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", section: "math" },
  INE: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities", section: "math" },
  NRM: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions", section: "math" },
  NRE: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable", section: "math" },
  EQS: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", section: "math" },
  RAT: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions", section: "math" },
  PER: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", section: "math" },
  OIA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data", section: "math" },
  TVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Two-variable data", section: "math" },
  PRO: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", section: "math" },
  IEE: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics", section: "math" },
  EVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Evaluating statistical claims", section: "math" },
  ARE: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", section: "math" },
  LIN_G: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", section: "math" },
  RIG: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", section: "math" },
  CIR: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles", section: "math" },
};

export const DSAT_MATH_SKILL_SPECS = MATH_SKILLS.map((skill) => ({
  skill,
  ...SKILLS[skill],
}));

/** math_format per skill — stimulus type hints for validators. */
export const MATH_FORMAT_BY_SKILL = {
  LIN: "equation_mcq", LIF: "function_mcq", LEQ: "graph_line", SYS: "system_mcq", INE: "inequality_mcq",
  NRM: "function_graph", NRE: "quadratic_mcq", EQS: "expression_mcq",
  RAT: "rate_context", PER: "percent_context", OIA: "data_table", TVA: "scatter_line", PRO: "probability_mcq",
  IEE: "poll_context", EVA: "study_eval",
  ARE: "geometry_figure", LIN_G: "triangle_svg", RIG: "right_triangle_svg", CIR: "circle_svg",
};

const SPR_ELIGIBLE = new Set(["LIN", "LIF", "LEQ", "SYS", "INE", "NRE", "NRM", "EQS", "RAT", "PER", "OIA", "ARE", "LIN_G", "RIG", "CIR"]);

const STEP_TARGETS = {
  easy: { min: 1, max: 2 },
  medium: { min: 2, max: 3 },
  hard: { min: 3, max: 5 },
  challenged: { min: 5, max: 8 },
};

export function difficultyForCell(index, total) {
  const easyCut = Math.floor(total * DIFFICULTY_MIX.easy);
  const medCut = easyCut + Math.floor(total * DIFFICULTY_MIX.medium);
  if (index < easyCut) return "easy";
  if (index < medCut) return "medium";
  return "hard";
}

export function countSteps(explanation) {
  const m = String(explanation ?? "").match(/\*\*Step\s*\d+/gi);
  return m?.length ?? 0;
}

export function mkDataTable(headers, rows) {
  const h = `| ${headers.join(" | ")} |`;
  const sep = `| ${headers.map(() => "---").join(" | ")} |`;
  const body = rows.map((r) => `| ${r.join(" | ")} |`).join("\n");
  return `${h}\n${sep}\n${body}`;
}

export function mkTriangleSvg(angleA, angleB, angleC, label = "ABC") {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Triangle ${label}">
  <polygon points="30,130 190,130 110,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="18" y="145" font-size="12" fill="#111">${label[0]}</text>
  <text x="195" y="145" font-size="12" fill="#111">${label[1]}</text>
  <text x="110" y="22" font-size="12" fill="#111">${label[2]}</text>
  <text x="42" y="118" font-size="11" fill="#374151">${angleA}°</text>
  <text x="158" y="118" font-size="11" fill="#374151">${angleB}°</text>
  <text x="102" y="72" font-size="11" fill="#374151">${angleC}°</text>
</svg>`;
}

export function mkRightTriangleSvg(a, b, c) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 150" width="200" height="150" role="img" aria-label="Right triangle">
  <polygon points="30,120 170,120 30,40" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="138" font-size="11" fill="#374151">${a}</text>
  <text x="12" y="82" font-size="11" fill="#374151">${b}</text>
  <text x="95" y="72" font-size="11" fill="#374151">${c}</text>
  <path d="M30 110 L40 110 L40 120" fill="none" stroke="#6b7280" stroke-width="1"/>
</svg>`;
}

export function mkCircleSvg(r) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 180 180" width="180" height="180" role="img" aria-label="Circle radius ${r}">
  <circle cx="90" cy="90" r="60" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="90" y1="90" x2="150" y2="90" stroke="#dc2626" stroke-width="1.5"/>
  <text x="115" y="82" font-size="11" fill="#dc2626">r = ${r}</text>
</svg>`;
}

export function enrichStimulus(skill, raw, index) {
  const n = bounded(index, 40);
  let stimulus = raw.stimulus_text ?? "";
  let stimulus_type = raw.stimulus_text ? "passage" : null;

  if (skill === "OIA" && index % 3 === 0) {
    const vals = [12 + n, 15 + n, 18 + n, 21 + n];
    stimulus = mkDataTable(["Student", "Score"], vals.map((v, i) => [`S${i + 1}`, String(v)]));
    if (raw.stimulus_text) stimulus = `${raw.stimulus_text}\n\n${stimulus}`;
    stimulus_type = "table";
  }
  if (skill === "TVA" && index % 2 === 0) {
    const rows = [[n + 1, 4 * (n + 1) - 2], [n + 3, 4 * (n + 3) - 2], [n + 5, 4 * (n + 5) - 2]];
    const table = mkDataTable(["Units", "Cost ($)"], rows.map((r) => [String(r[0]), String(r[1])]));
    stimulus = stimulus ? `${stimulus}\n\n${table}` : table;
    stimulus_type = "table";
  }
  if (skill === "LIN_G") {
    const angleA = 52 + (n % 7) * 6;
    const angleB = 48 + (n % 5) * 4;
    const angleC = 180 - angleA - angleB;
    const svg = mkTriangleSvg(angleA, angleB, angleC);
    stimulus = stimulus ? `${stimulus}\n\n${svg}` : svg;
    stimulus_type = "figure";
  }
  if (skill === "RIG") {
    const a = 6 + n;
    const b = 13 + n;
    const c = Math.round(Math.sqrt(a * a + b * b));
    const svg = mkRightTriangleSvg(`${a} ft`, `${b} ft`, `${c} ft`);
    stimulus = stimulus ? `${stimulus}\n\n${svg}` : svg;
    stimulus_type = "figure";
  }
  if (skill === "CIR" && index % 2 === 1) {
    const r = 5 + (n % 14);
    const svg = mkCircleSvg(r);
    stimulus = stimulus ? `${stimulus}\n\n${svg}` : svg;
    stimulus_type = "figure";
  }
  if (skill === "ARE" && index % 4 === 2) {
    const w = 6 + n;
    const h = 5 + n;
    stimulus = `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 140" width="200" height="140" role="img" aria-label="Rectangle ${w} by ${h}">
  <rect x="30" y="30" width="140" height="80" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="90" y="125" font-size="11">${w} in</text>
  <text x="8" y="75" font-size="11" transform="rotate(-90 8 75)">${h} in</text>
</svg>${stimulus ? `\n\n${stimulus}` : ""}`;
    stimulus_type = "figure";
  }

  return { stimulus_text: stimulus || null, stimulus_type };
}

export function shouldUseSpr(skill, index) {
  if (!SPR_ELIGIBLE.has(skill)) return false;
  return index % Math.round(1 / SPR_SHARE) === 1;
}

export function validateDsatMathQuestion(q) {
  const reasons = [];
  const meta = q.source_metadata ?? {};
  const skill = q.skill_id;
  const tier = meta.challenged_problem ? "challenged" : (q.difficulty ?? "medium");
  const steps = countSteps(q.explanation);

  if (!skill || !SKILLS[skill]) reasons.push("invalid_skill_id");
  if (!q.question_text?.trim()) reasons.push("empty_question_text");
  if (q.question_type === "grid_in") {
    if (!q.correct_answer?.trim()) reasons.push("spr_missing_answer");
    if (!Array.isArray(q.options) || q.options.length < 2) reasons.push("spr_needs_placeholder_options");
  } else {
    if (!Array.isArray(q.options) || q.options.length !== 4) reasons.push("mcq_needs_4_options");
    const correct = q.options?.filter((o) => o.is_correct) ?? [];
    if (correct.length !== 1) reasons.push("mcq_one_correct");
  }
  if (!/step\s*1/i.test(q.explanation ?? "")) reasons.push("missing_step_explanation");

  const target = STEP_TARGETS[tier] ?? STEP_TARGETS.medium;
  if (steps < target.min) reasons.push(`too_few_steps:${steps}<${target.min}`);

  if (meta.dsat_math_blueprint_v1 !== true) reasons.push("missing_blueprint_flag");
  if (!meta.math_format) reasons.push("missing_math_format");

  return { ok: reasons.length === 0, reasons, skill, tier };
}

export function sourceMetadataForInsert(q, extra = {}) {
  return {
    ...q.source_metadata,
    original: true,
    dsat_math_blueprint_v1: true,
    blueprint_version: BLUEPRINT_VERSION,
    explanation_v2: true,
    generator: extra.generator ?? "generate-dsat-math-expansion.mjs",
    ...extra,
  };
}

/**
 * @param {{ skill: string, index: number, difficulty: string, challenged?: boolean }} params
 */
export function generateDsatMathQuestion({ skill, index, difficulty, challenged = false }) {
  const spr = !challenged && shouldUseSpr(skill, index);
  const raw = challenged
    ? generateChallengedMath(skill, index + skill.length * 500)
    : generateMathQuestion(skill, difficulty, index + skill.length * 100, { spr });

  const enriched = enrichStimulus(skill, raw, index);
  const v2 = buildExplanationV2({ ...raw, ...enriched });

  const math_format = raw.math_format ?? (spr ? "spr" : MATH_FORMAT_BY_SKILL[skill] ?? "mcq");
  const meta = {
    dsat_math_blueprint_v1: true,
    math_format,
    math_skill: skill,
    blueprint_version: BLUEPRINT_VERSION,
    explanation_v2: true,
    generator: challenged ? "dsat-challenged-math-bank.mjs" : "generate-dsat-math-expansion.mjs",
  };
  if (challenged) {
    meta.challenged_problem = true;
    meta.difficulty_tier = "challenged";
  }

  return {
    question_text: raw.question_text,
    stimulus_text: enriched.stimulus_text,
    stimulus_type: enriched.stimulus_type,
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    question_type: raw.question_type ?? "multiple_choice",
    difficulty: challenged ? "hard" : difficulty,
    skill_id: skill,
    calculator_allowed: true,
    source_metadata: meta,
    _challenged: challenged,
  };
}

export function generateChallengedDsatMathQuestion({ skill, index }) {
  return generateDsatMathQuestion({ skill, index, difficulty: "hard", challenged: true });
}
