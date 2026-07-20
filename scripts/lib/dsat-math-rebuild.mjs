/**
 * Digital SAT Math — verified rebuild generator (v2).
 *
 * Goals (per user request, 2026-06-14):
 *  - Every item's answer is COMPUTED in code; the correct option text, the
 *    step-by-step explanation, and the distractors are all derived from that
 *    same computation, so the answer key can never disagree with the work.
 *  - Each distractor is the result of a specific, named error (sign flip,
 *    forgot a term, used the wrong ratio, …) and its explanation says so.
 *  - Geometry figures are emitted by the template itself from the SAME
 *    parameters as the stem, so figure labels always match the text.
 *  - The challenge tier uses the SAME templates as the regular bank, just at
 *    the "challenged" difficulty band — identical question context/template.
 *  - No template literals leak (`${x}`); no stray control chars.
 *
 * Public API:
 *   generateItem({ skill, tier, seed, format })  ->  fully-formed question
 *     tier:   'easy' | 'medium' | 'hard' | 'challenged'
 *     format: 'mcq' | 'spr'   (spr = student-produced response / grid-in)
 *   MATH_SKILLS, SKILL_META
 */

export const REBUILD_VERSION = "dsat_math_rebuild_v2";

export const MATH_SKILLS = [
  "LIN", "LIF", "LEQ", "SYS", "INE",
  "NRM", "NRE", "EQS",
  "RAT", "PER", "OIA", "TVA", "PRO", "IEE", "EVA",
  "ARE", "LIN_G", "RIG", "CIR",
];

export const SKILL_META = {
  LIN:  { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable", math_format: "equation_mcq" },
  LIF:  { topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", math_format: "function_mcq" },
  LEQ:  { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", math_format: "rate_context" },
  SYS:  { topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", math_format: "system_mcq" },
  INE:  { topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities in one or two variables", math_format: "inequality_mcq" },
  NRM:  { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions", math_format: "function_mcq" },
  NRE:  { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable", math_format: "quadratic_mcq" },
  EQS:  { topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", math_format: "expression_mcq" },
  RAT:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, proportions, and units", math_format: "rate_context" },
  PER:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", math_format: "percent_context" },
  OIA:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data: distributions and measures", math_format: "data_context" },
  TVA:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Two-variable data: models and scatterplots", math_format: "scatter_line" },
  PRO:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", math_format: "probability_mcq" },
  IEE:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics and margin of error", math_format: "inference_mcq" },
  EVA:  { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Evaluating statistical claims: experiments and studies", math_format: "study_eval" },
  ARE:  { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", math_format: "geometry_figure" },
  LIN_G:{ topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", math_format: "triangle_svg" },
  RIG:  { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", math_format: "right_triangle_svg" },
  CIR:  { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles", math_format: "circle_svg" },
};

/** Skills with a clean single-number answer that can appear as a grid-in (SPR).
 * EQS (answer is an expression like 24x), RIG (a ratio), and CIR (answer in
 * terms of π) are intentionally excluded — their natural form is MCQ, so any
 * existing grid-in rows for those skills are converted to MCQ by the driver. */
export const SPR_ELIGIBLE = new Set([
  "LIN", "LIF", "LEQ", "SYS", "INE", "NRE", "NRM",
  "RAT", "PER", "OIA", "ARE", "LIN_G",
]);

// ---------------------------------------------------------------------------
// Deterministic RNG + helpers
// ---------------------------------------------------------------------------

function hashStr(s) {
  let h = 2166136261 >>> 0;
  for (let i = 0; i < s.length; i++) {
    h ^= s.charCodeAt(i);
    h = Math.imul(h, 16777619) >>> 0;
  }
  return h >>> 0;
}

function mulberry32(a) {
  return function () {
    a |= 0;
    a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

function makeRng(skill, tier, seed) {
  return mulberry32(hashStr(`${skill}|${tier}|${seed}`));
}

function ri(rng, lo, hi) {
  return lo + Math.floor(rng() * (hi - lo + 1));
}
function pick(rng, arr) {
  return arr[Math.floor(rng() * arr.length)];
}
function shuffle(rng, arr) {
  const a = arr.slice();
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

/** Tier band: returns one of e/m/h/c by tier. */
function band(tier, e, m, h, c) {
  if (tier === "easy") return e;
  if (tier === "medium") return m;
  if (tier === "hard") return h;
  return c; // challenged
}

const TIER_STEPS = { easy: 2, medium: 3, hard: 4, challenged: 5 };

export function gcd(a, b) {
  a = Math.abs(a); b = Math.abs(b);
  while (b) { [a, b] = [b, a % b]; }
  return a || 1;
}
function reduceFrac(num, den) {
  const g = gcd(num, den);
  return [num / g, den / g];
}
export function fracTex(num, den) {
  const [n, d] = reduceFrac(num, den);
  if (d === 1) return `${n}`;
  return `\\dfrac{${n}}{${d}}`;
}
export function signed(n) {
  return n >= 0 ? `+ ${n}` : `- ${Math.abs(n)}`;
}
function coefTerm(c, v) {
  // pretty linear term like "3x", "-x", "x"
  if (c === 1) return v;
  if (c === -1) return `-${v}`;
  return `${c}${v}`;
}

// ---------------------------------------------------------------------------
// Figure builders (labels supplied by the template -> always consistent)
// ---------------------------------------------------------------------------

function svgTriangle(angleA, angleB, angleC) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 240 170" width="240" height="170" role="img" aria-label="Triangle ABC with angles ${angleA}, ${angleB}, ${angleC} degrees">
  <polygon points="30,140 210,140 120,30" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="16" y="153" font-size="13" fill="#111">A</text>
  <text x="214" y="153" font-size="13" fill="#111">B</text>
  <text x="120" y="22" font-size="13" fill="#111">C</text>
  <text x="44" y="130" font-size="12" fill="#374151">${angleA}°</text>
  <text x="176" y="130" font-size="12" fill="#374151">${angleB}°</text>
  <text x="111" y="55" font-size="12" fill="#374151">${angleC}°</text>
</svg>`;
}

// Right triangle: right angle at C (bottom-left), angle theta at A (bottom-right),
// B at top. Bottom leg CA = adjacent to theta, vertical leg CB = opposite, AB =
// hypotenuse. Labels may be numbers or "?". Mirrors the College Board figure
// style (vertex letters, side labels, right-angle square, optional theta arc).
export function svgRightTriangle(adj, opp, hyp, showTheta = true) {
  const thetaMark = showTheta
    ? `<path d="M 178 150 A 27 27 0 0 0 187 131" fill="none" stroke="#dc2626" stroke-width="1.5"/><text x="168" y="143" font-size="12" fill="#dc2626">&#952;</text>`
    : "";
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 235 180" width="235" height="180" role="img" aria-label="Right triangle ABC with right angle at C, adjacent leg ${adj}, opposite leg ${opp}, hypotenuse ${hyp}">
  <polygon points="50,150 205,150 50,45" fill="none" stroke="#1e40af" stroke-width="2"/>
  <rect x="50" y="136" width="14" height="14" fill="none" stroke="#6b7280" stroke-width="1"/>
  <text x="38" y="162" font-size="13" fill="#111">C</text>
  <text x="210" y="162" font-size="13" fill="#111">A</text>
  <text x="42" y="40" font-size="13" fill="#111">B</text>
  <text x="120" y="167" font-size="12" fill="#374151">${adj}</text>
  <text x="30" y="102" font-size="12" fill="#374151">${opp}</text>
  <text x="138" y="92" font-size="12" fill="#374151">${hyp}</text>
  ${thetaMark}
</svg>`;
}

function svgCircle(rLabel) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 190 190" width="190" height="190" role="img" aria-label="Circle of radius ${rLabel}">
  <circle cx="95" cy="95" r="64" fill="none" stroke="#1e40af" stroke-width="2"/>
  <circle cx="95" cy="95" r="2.5" fill="#1e40af"/>
  <line x1="95" y1="95" x2="159" y2="95" stroke="#dc2626" stroke-width="1.5"/>
  <text x="112" y="88" font-size="12" fill="#dc2626">${rLabel}</text>
</svg>`;
}

function svgRectPrism(w, h) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 210 150" width="210" height="150" role="img" aria-label="Rectangle ${w} by ${h}">
  <rect x="34" y="34" width="150" height="84" fill="none" stroke="#1e40af" stroke-width="2"/>
  <text x="100" y="134" font-size="12" fill="#374151">${w}</text>
  <text x="14" y="80" font-size="12" fill="#374151" transform="rotate(-90 14 80)">${h}</text>
</svg>`;
}

function svgSheetWithCorners(w, h, cut) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220 160" width="220" height="160" role="img" aria-label="Rectangular sheet ${w} by ${h} with ${cut} by ${cut} corners removed">
  <rect x="30" y="30" width="160" height="100" fill="none" stroke="#1e40af" stroke-width="2"/>
  <rect x="30" y="30" width="22" height="22" fill="none" stroke="#dc2626" stroke-width="1.5" stroke-dasharray="3 2"/>
  <rect x="168" y="30" width="22" height="22" fill="none" stroke="#dc2626" stroke-width="1.5" stroke-dasharray="3 2"/>
  <rect x="30" y="108" width="22" height="22" fill="none" stroke="#dc2626" stroke-width="1.5" stroke-dasharray="3 2"/>
  <rect x="168" y="108" width="22" height="22" fill="none" stroke="#dc2626" stroke-width="1.5" stroke-dasharray="3 2"/>
  <text x="100" y="146" font-size="12" fill="#374151">${w} in</text>
  <text x="10" y="84" font-size="12" fill="#374151" transform="rotate(-90 10 84)">${h} in</text>
  <text x="54" y="46" font-size="9" fill="#dc2626">${cut}</text>
</svg>`;
}

function mdTable(headers, rows) {
  const h = `| ${headers.join(" | ")} |`;
  const sep = `| ${headers.map(() => "---").join(" | ")} |`;
  const body = rows.map((r) => `| ${r.join(" | ")} |`).join("\n");
  return `${h}\n${sep}\n${body}`;
}

// ---------------------------------------------------------------------------
// Assembler: turns a "core" spec into the final MCQ/SPR item.
//   core = {
//     context, contextType,         // stimulus_text + type (or null)
//     question,                     // question_text
//     answerText,                   // correct option's display text
//     answerWhy,                    // one-line why-correct
//     distractors: [{text, why}],   // 3 wrong options + the error each encodes
//     steps: [string,...],          // worked-solution lines (no "Step n" prefix)
//     numeric,                      // clean number string for SPR (or null)
//     mathFormat,
//   }
// ---------------------------------------------------------------------------

function assemble(rng, core, { skill, tier, format }) {
  const isSpr = format === "spr" && core.numeric != null;
  const stepLines = core.steps.map((s, i) => `**Step ${i + 1}.** ${s}`).join("\n");

  if (isSpr) {
    const explanation =
      `**Goal.** ${core.question}\n\n` +
      `${stepLines}\n\n` +
      `**Answer.** ${core.numeric}`;
    return {
      stimulus_text: core.context,
      stimulus_type: core.contextType,
      question_text: `${core.question} (Student-produced response: type your answer in the box as an integer, fraction, or decimal — no percent, dollar, or comma signs.)`,
      question_type: "grid_in",
      options: [
        { id: "SPR", text: core.numeric, is_correct: true, explanation: "Enter this value in the response field. Equivalent forms (for example a fraction or its decimal) are accepted." },
        { id: "_", text: "(student-produced response)", is_correct: false, explanation: "Grid-in items are scored from the entered value, not lettered choices." },
      ],
      correct_answer: core.numeric,
      explanation,
      math_format: core.mathFormat,
    };
  }

  const entries = [
    { text: core.answerText, why: core.answerWhy, correct: true },
    ...core.distractors.map((d) => ({ text: d.text, why: d.why, correct: false })),
  ];
  const ordered = shuffle(rng, entries);
  const ids = ["A", "B", "C", "D"];
  const options = ordered.map((e, i) => ({
    id: ids[i],
    text: e.text,
    is_correct: e.correct,
    explanation: e.correct ? `Correct. ${e.why}` : e.why,
  }));
  const correct = options.find((o) => o.is_correct);

  // Table-valued choices are multi-line pipe tables; reference them by letter
  // in the explanation instead of dumping the raw markup.
  const lbl = (t) => (t.includes("\n") ? "(the table in this choice)" : t);
  const distractorBlock = options
    .filter((o) => !o.is_correct)
    .map((o) => `- **${o.id})** ${lbl(o.text)} — ${o.explanation}`)
    .join("\n");

  const explanation =
    `**Goal.** ${core.question}\n\n` +
    `${stepLines}\n\n` +
    `**Answer: ${correct.id})** ${lbl(correct.text)}\n\n` +
    `**Why the other choices are wrong:**\n${distractorBlock}`;

  return {
    stimulus_text: core.context,
    stimulus_type: core.contextType,
    question_text: core.question,
    question_type: "multiple_choice",
    options,
    correct_answer: correct.id,
    explanation,
    math_format: core.mathFormat,
  };
}

// ---------------------------------------------------------------------------
// Per-skill template generators. Each returns a `core` spec (see assemble()).
// All arithmetic is integer-clean by construction; distractors encode real
// student errors. `numeric` is the grid-in answer (string) or null.
// ---------------------------------------------------------------------------

const CTX_LIN = [
  ["A technician calibrates a sensor", "reading"],
  ["A cafe sets a daily budget", "dollars"],
  ["A delivery route is planned", "miles"],
];

// ---- LIN: Linear equations in one variable -------------------------------
// Rebuilt to Digital SAT word-problem quality (2026-06-14). Tiers are
// calibrated to real SAT items: easy = one-step real-world context,
// medium = a structural move (treat an expression as one quantity / two-plan),
// hard = parameter & solution-count reasoning, challenge = identity / harder
// parameter work. Money is wrapped as `$\$X$` so KaTeX renders "$X" (a bare $
// in prose would open a math span and corrupt the line).
function usd(v) { return `$\\$${v}$`; }
function fmtCents(c) {
  const d = c / 100;
  return Number.isInteger(d) ? String(d) : d.toFixed(2);
}

function linEasy(rng) {
  const ctx = pick(rng, [
    { make: (B, p, T) => `A prepaid transit card has a balance of ${B}. Each round trip on the train costs ${p}. If the card is used only for these trips, after how many round trips will the balance be exactly ${T}?`, noun: "round trips" },
    { make: (B, p, T) => `A campus print account is loaded with ${B}. Each print job costs ${p}. After how many print jobs will the account balance be exactly ${T}?`, noun: "print jobs" },
    { make: (B, p, T) => `A parking app wallet holds ${B}. Each parking session costs ${p}. After how many parking sessions will the wallet hold exactly ${T}?`, noun: "parking sessions" },
    { make: (B, p, T) => `A gift card is worth ${B}. Each smoothie costs ${p}. After buying how many smoothies will the card be worth exactly ${T}?`, noun: "smoothies" },
    { make: (B, p, T) => `A toll transponder starts with ${B} of credit. Each bridge crossing costs ${p}. After how many crossings will the credit be exactly ${T}?`, noun: "crossings" },
  ]);
  const pc = pick(rng, [125, 150, 200, 250, 300, 400, 500, 625, 800]);
  const n = ri(rng, 8, 40);
  const k = ri(rng, 2, 6);            // leftover equals k purchases -> Tc is a clean multiple
  const Tc = pc * k;
  const Bc = Tc + pc * n;
  const B = usd(fmtCents(Bc)), p = usd(fmtCents(pc)), T = usd(fmtCents(Tc));
  return {
    context: null,
    contextType: null,
    question: ctx.make(B, p, T),
    answerText: `$${n}$`,
    answerWhy: `From (starting balance) − (cost)·n = (final balance), $n = ${n}$.`,
    distractors: [
      { text: `$${n + k}$`, why: `This divides the full balance by the cost, ignoring the ${T} that must remain.` },
      { text: `$${k}$`, why: `This is how many ${ctx.noun} the remaining ${T} would pay for, not the answer.` },
      { text: `$${n + 1}$`, why: `Off by one — recheck the subtraction before dividing.` },
    ],
    steps: [
      `Let $n$ be the number of ${ctx.noun}. Each one lowers the balance by the cost, so (start) − (cost)$\\cdot n =$ (final): ${B} $-$ ${p}$\\cdot n =$ ${T}.`,
      `Subtract to isolate the cost term: ${p}$\\cdot n =$ ${B} $-$ ${T} $=$ ${usd(fmtCents(pc * n))}.`,
      `Divide both sides by the cost: $n = ${n}$.`,
    ],
    numeric: String(n),
    mathFormat: "rate_context",
  };
}

function linMedium(rng) {
  const kind = pick(rng, ["unit", "twoplan", "bothsides"]);
  if (kind === "unit") {
    // a(c+h) = (a-1)(c+h) + m  ->  c+h = m  (treat c+h as a single quantity)
    const h = pick(rng, [8, 9, 11, 12, 14, 15, 20]);
    const a = ri(rng, 6, 18);
    const m = ri(rng, 20, 95);
    return {
      context: `For a shipment, the total cost is given by the expression $c + ${h}$, where $c$ is a base fee.`,
      contextType: "passage",
      question: `If $${a}(c + ${h}) = ${a - 1}(c + ${h}) + ${m}$, what is the value of $c + ${h}$?`,
      answerText: `$${m}$`,
      answerWhy: `Treating $(c + ${h})$ as one quantity, $${a}(c+${h}) - ${a - 1}(c+${h}) = ${m}$, so $c + ${h} = ${m}$.`,
      distractors: [
        { text: `$${m - h}$`, why: `This is the value of $c$, not of $c + ${h}$.` },
        { text: `$${h}$`, why: `This is just the constant ${h}, not $c + ${h}$.` },
        { text: `$${m + h}$`, why: `This adds ${h} again after $c + ${h}$ was already found.` },
      ],
      steps: [
        `Let $u = c + ${h}$. The equation becomes $${a}u = ${a - 1}u + ${m}$.`,
        `Subtract $${a - 1}u$ from both sides: $u = ${m}$.`,
        `So $c + ${h} = ${m}$.`,
      ],
      numeric: String(m),
      mathFormat: "equation_mcq",
    };
  }
  if (kind === "twoplan") {
    const n = ri(rng, 4, 18);
    const aRate = pick(rng, [3, 4, 5, 6, 8]);
    const dr = pick(rng, [2, 3]);
    const bRate = aRate + dr;          // Plan B costs more per month
    const bFix = pick(rng, [10, 12, 15, 18, 20, 24]);
    const aFix = bFix + dr * n;        // Plan A has the higher start-up so they meet at n
    const A = usd(aFix), Ar = usd(aRate), Bs = usd(bFix), Br = usd(bRate);
    return {
      context: `Two streaming plans are compared. Plan A costs ${A} up front plus ${Ar} per month. Plan B costs ${Bs} up front plus ${Br} per month.`,
      contextType: "passage",
      question: `After how many months will the two plans have cost the same total amount?`,
      answerText: `$${n}$`,
      answerWhy: `Set the totals equal: $${aFix} + ${aRate}t = ${bFix} + ${bRate}t$; solving gives $t = ${n}$.`,
      distractors: [
        { text: `$${dr * n}$`, why: `This is the up-front difference ${usd(aFix - bFix)}, not divided by the ${usd(dr)} monthly difference.` },
        { text: `$${n + 1}$`, why: `One month too many — check the month where the totals are equal, not where B overtakes A.` },
        { text: `$${n - 1}$`, why: `One month too few — at this point Plan A is still cheaper.` },
      ],
      steps: [
        `Let $t$ be the number of months. Plan A total $= ${aFix} + ${aRate}t$; Plan B total $= ${bFix} + ${bRate}t$.`,
        `Set them equal: $${aFix} + ${aRate}t = ${bFix} + ${bRate}t$.`,
        `Collect: $${aFix - bFix} = ${dr}t$, so $t = ${n}$.`,
      ],
      numeric: String(n),
      mathFormat: "rate_context",
    };
  }
  // bothsides: a x + b = c x + d, with a-c = 1 so distractors are clean
  const c = ri(rng, 2, 6);
  const a = c + 1;
  let b = ri(rng, -9, 9);
  if (b === 0) b = 3;
  const x = ri(rng, 3, 14);
  const d = (a - c) * x + b;          // a x + b = c x + d  ->  x = d - b
  return {
    context: null,
    contextType: null,
    question: `If $${a}x ${signed(b)} = ${c}x ${signed(d)}$, what is the value of $x$?`,
    answerText: `$${x}$`,
    answerWhy: `Subtract $${c}x$ and ${b < 0 ? `add ${-b}` : `subtract ${b}`} on both sides: $x = ${x}$.`,
    distractors: [
      { text: `$${d}$`, why: `This forgets to move the constant ${signed(b)} to the other side.` },
      { text: `$${d + b}$`, why: `This adds ${b} instead of subtracting it when isolating $x$.` },
      { text: `$${d - 2 * b}$`, why: `This moves the constant in the wrong direction.` },
    ],
    steps: [
      `Subtract $${c}x$ from both sides: $x ${signed(b)} = ${d}$.`,
      `Move the constant across: $x = ${d} ${b < 0 ? `+ ${-b}` : `- ${b}`} = ${x}$.`,
      `Check: $${a}(${x}) ${signed(b)} = ${a * x + b}$ and $${c}(${x}) ${signed(d)} = ${c * x + d}$. ✓`,
    ],
    numeric: String(x),
    mathFormat: "equation_mcq",
  };
}

function linHard(rng) {
  const kind = pick(rng, ["nosol", "rootconstraint", "consecutive"]);
  if (kind === "nosol") {
    // kx + p = m x + q has no solution when k = m (parallel) and p != q
    const m = ri(rng, 2, 9);
    let p = ri(rng, -9, 9), q = ri(rng, -9, 9);
    if (p === q) q = p + 3;
    return {
      context: null,
      contextType: null,
      question: `For what value of $k$ does the equation $kx ${signed(p)} = ${m}x ${signed(q)}$ have no solution?`,
      answerText: `$${m}$`,
      answerWhy: `The equation has no solution when the $x$-coefficients match but the constants differ, i.e. $k = ${m}$ (since ${p} \\neq ${q}$).`,
      distractors: [
        { text: `$${m + 1}$`, why: `With this $k$ the coefficients differ, so there is exactly one solution.` },
        { text: `$${q - p}$`, why: `This combines the constants; the no-solution condition is about the coefficients.` },
        { text: `$0$`, why: `$k = 0$ gives a one-solution linear equation, not a contradiction.` },
      ],
      steps: [
        `Write both sides in $mx + b$ form: left is $kx ${signed(p)}$, right is $${m}x ${signed(q)}$.`,
        `A linear equation has no solution only when the $x$-terms are identical but the constants are not.`,
        `So $k = ${m}$, and since ${p} \\neq ${q}$ the equation is a contradiction with no solution.`,
      ],
      numeric: String(m),
      mathFormat: "equation_mcq",
    };
  }
  if (kind === "rootconstraint") {
    // a x + b = 0 has solution x = r ; a - b = s ; find a.  b = -a r, a(1+r) = s
    const r = ri(rng, 1, 5);
    const a = ri(rng, 2, 9);
    const b = -a * r;
    const s = a - b;                  // = a(1+r)
    return {
      context: null,
      contextType: null,
      question: `The equation $ax + b = 0$ has solution $x = ${r}$. If $a - b = ${s}$, what is the value of $a$?`,
      answerText: `$${a}$`,
      answerWhy: `From $x = ${r}$, $b = -${r}a$, so $a - b = a + ${r}a = ${1 + r}a = ${s}$, giving $a = ${a}$.`,
      distractors: [
        { text: `$${s}$`, why: `This is $a - b$ itself, not $a$ — it skips dividing by $1 + ${r}$.` },
        { text: `$${b}$`, why: `This is the value of $b$, not $a$.` },
        { text: `$${a + 1}$`, why: `An arithmetic slip when dividing ${s} by ${1 + r}.` },
      ],
      steps: [
        `Substitute $x = ${r}$: $${r}a + b = 0$, so $b = -${r}a$.`,
        `Then $a - b = a - (-${r}a) = ${1 + r}a$.`,
        `Set $${1 + r}a = ${s}$: $a = ${a}$.`,
      ],
      numeric: String(a),
      mathFormat: "equation_mcq",
    };
  }
  // consecutive integers
  const even = rng() < 0.5;
  const step = even ? 2 : 1;
  const first = (even ? 2 : 1) + 2 * ri(rng, 3, 20);
  const ints = [first, first + step, first + 2 * step];
  const S = ints[0] + ints[1] + ints[2];
  const kindWord = even ? "consecutive even integers" : "consecutive integers";
  return {
    context: null,
    contextType: null,
    question: `The sum of three ${kindWord} is ${S}. What is the greatest of the three integers?`,
    answerText: `$${ints[2]}$`,
    answerWhy: `If the smallest is $n$, then $n + (n+${step}) + (n+${2 * step}) = ${S}$, so $n = ${ints[0]}$ and the greatest is ${ints[2]}.`,
    distractors: [
      { text: `$${ints[0]}$`, why: `This is the smallest of the three, not the greatest.` },
      { text: `$${ints[1]}$`, why: `This is the middle integer, not the greatest.` },
      { text: `$${ints[2] + step}$`, why: `This continues the pattern one term too far — only three integers are in the sum.` },
    ],
    steps: [
      `Let the smallest be $n$. The three are $n$, $n+${step}$, $n+${2 * step}$.`,
      `Sum: $3n + ${3 * step} = ${S}$, so $3n = ${S - 3 * step}$ and $n = ${ints[0]}$.`,
      `The greatest is $n + ${2 * step} = ${ints[2]}$.`,
    ],
    numeric: String(ints[2]),
    mathFormat: "equation_mcq",
  };
}

function linChallenge(rng) {
  const kind = pick(rng, ["identity", "param"]);
  if (kind === "identity") {
    // k(x + p) + q = kx + r  true for all x  ->  kp + q = r  ->  k = (r - q)/p
    const p = pick(rng, [2, 3, 4, 5, 6]);
    const k = ri(rng, 2, 12);
    const q = ri(rng, -9, 9);
    const r = k * p + q;              // guarantees an integer k
    return {
      context: null,
      contextType: null,
      question: `For what value of $k$ is the equation $k(x + ${p}) ${signed(q)} = kx ${signed(r)}$ true for all values of $x$?`,
      answerText: `$${k}$`,
      answerWhy: `Expanding, the $kx$ terms cancel and the equation holds for all $x$ only when $${p}k ${signed(q)} = ${r}$, i.e. $k = ${k}$.`,
      distractors: [
        { text: `$${r - q}$`, why: `This is $${r} - (${q})$ without dividing by the ${p} from the parentheses.` },
        { text: `$${p}$`, why: `This is the constant inside the parentheses, not $k$.` },
        { text: `$${k + 1}$`, why: `An arithmetic slip; substitute back and the equation fails for general $x$.` },
      ],
      steps: [
        `Expand the left side: $kx + ${p}k ${signed(q)} = kx ${signed(r)}$.`,
        `The $kx$ terms cancel, leaving $${p}k ${signed(q)} = ${r}$ (an equation in $k$ only).`,
        `Solve: $${p}k = ${r - q}$, so $k = ${k}$.`,
      ],
      numeric: String(k),
      mathFormat: "equation_mcq",
    };
  }
  // param: px - e = f - g·px has solution x = r ; find p
  const r = pick(rng, [2, 3, 4]);
  const g = pick(rng, [1, 2, 3]);
  const p = ri(rng, 2, 9);
  const e = ri(rng, 3, 20);
  const f = p * r * (1 + g) - e;       // guarantees the chosen p solves it
  return {
    context: null,
    contextType: null,
    question: `For what value of $p$ does the equation $px - ${e} = ${f} - ${g}px$ have the solution $x = ${r}$?`,
    answerText: `$${p}$`,
    answerWhy: `Substituting $x = ${r}$ gives $${r}p - ${e} = ${f} - ${g * r}p$; collecting the $p$ terms yields $p = ${p}$.`,
    distractors: [
      { text: `$${p + 1}$`, why: `Substitute back: this value does not satisfy the equation at $x = ${r}$.` },
      { text: `$${r * (1 + g)}$`, why: `This is the coefficient $${r}(1 + ${g})$ that multiplies $p$, not $p$ itself.` },
      { text: `$${f - e}$`, why: `This mixes the two constants instead of solving for $p$.` },
    ],
    steps: [
      `Substitute $x = ${r}$: $${r}p - ${e} = ${f} - ${g * r}p$.`,
      `Move the $p$ terms together: $${r}p + ${g * r}p = ${f} + ${e}$, i.e. $${r * (1 + g)}p = ${f + e}$.`,
      `Divide: $p = ${p}$.`,
    ],
    numeric: String(p),
    mathFormat: "equation_mcq",
  };
}

function genLIN(rng, tier) {
  if (tier === "easy") return linEasy(rng);
  if (tier === "medium") return linMedium(rng);
  if (tier === "hard") return linHard(rng);
  return linChallenge(rng);
}

// ---- LIF: Linear functions ------------------------------------------------
// Tiers calibrated to real SAT items (reference screenshots): easy = "which
// table matches y = mx + b" with TABLE-valued choices, medium = real-world
// equation modeling, hard = a 2-point table then evaluate y at a fractional x
// (grid-in, clean decimal answer), challenge = composition f(f(x)).
function lifTable(rows) {
  const body = rows.map(([x, y]) => `| ${x} | ${y} |`).join("\n");
  return `| $x$ | $y$ |\n| --- | --- |\n${body}`;
}
function decStr(n) {
  return String(Number(Number(n).toFixed(4)));
}

function linfEasy(rng) {
  const ctx = pick(rng, [
    { neg: true, make: (m, b) => `An elevator is located ${-b} floors below ground level (floor ${b}) and rises at a constant rate of ${m} floors per minute. The equation $y = ${m}x ${signed(b)}$ gives the floor $y$ the elevator is on after $x$ minutes.` },
    { neg: true, make: (m, b) => `A submarine sits ${-b} meters below sea level (elevation ${b}) and rises at ${m} meters per second. The equation $y = ${m}x ${signed(b)}$ gives its elevation $y$ after $x$ seconds.` },
    { neg: false, make: (m, b) => `A seedling is ${b} centimeters tall and grows ${m} centimeters each week. The equation $y = ${m}x ${signed(b)}$ gives its height $y$ after $x$ weeks.` },
    { neg: false, make: (m, b) => `A storage tank holds ${b} liters and is filled at ${m} liters per minute. The equation $y = ${m}x ${signed(b)}$ gives the volume $y$ after $x$ minutes.` },
  ]);
  const m = ri(rng, 2, 7);
  const bmag = ri(rng, 3, 9);
  const b = ctx.neg ? -bmag : bmag;
  const xs = [0, 1, 2];
  const correct = lifTable(xs.map((x) => [x, m * x + b]));
  const dInt = lifTable(xs.map((x) => [x, m * x - b]));    // intercept sign flipped
  const dSlope = lifTable(xs.map((x) => [x, -m * x + b])); // slope sign flipped
  const dBoth = lifTable(xs.map((x) => [x, -m * x - b]));  // both flipped
  return {
    context: null,
    contextType: null,
    question: `${ctx.make(m, b)} Which table shows three values of $x$ and their corresponding values of $y$ according to the given equation?`,
    answerText: correct,
    answerWhy: `Evaluating $y = ${m}x ${signed(b)}$ at $x = 0, 1, 2$ gives $y = ${b}, ${m + b}, ${2 * m + b}$.`,
    distractors: [
      { text: dInt, why: `This uses the wrong sign on the intercept (${-b} instead of ${b}).` },
      { text: dSlope, why: `This uses the wrong sign on the slope, so the $y$-values move the wrong way.` },
      { text: dBoth, why: `This flips the sign of both the slope and the intercept.` },
    ],
    steps: [
      `Substitute each $x$-value into $y = ${m}x ${signed(b)}$.`,
      `$x=0:\\ y=${b}$;  $x=1:\\ y=${m + b}$;  $x=2:\\ y=${2 * m + b}$.`,
      `The table listing these $y$-values is the correct one.`,
    ],
    numeric: null,
    mathFormat: "function_table",
  };
}

// Single-rate modeling stories: answer is (output) = (total)/rate.
const LIF_RATE_STORIES = [
  { rate: () => [12, 15, 18, 20, 24, 25, 30, 36], make: (r) => ({ q: `A printer prints ${r} pages per minute at a constant rate. Which equation gives the number of minutes $m$ needed to print $P$ pages?`, out: "m", tot: "P", div: "minutes", num: "pages", per: `${r} pages per minute` }) },
  { rate: () => [18, 20, 22, 24, 28, 30, 32, 35], make: (r) => ({ q: `A car travels ${r} miles on each gallon of fuel. Which equation gives the number of gallons $G$ used to travel $D$ miles?`, out: "G", tot: "D", div: "gallons", num: "miles", per: `${r} miles per gallon` }) },
  { rate: () => [6, 8, 9, 10, 12, 15, 16, 20], make: (r) => ({ q: `Each box holds ${r} identical parts. Which equation gives the number of boxes $B$ needed to pack $N$ parts?`, out: "B", tot: "N", div: "boxes", num: "parts", per: `${r} parts per box` }) },
  { rate: () => [3, 4, 5, 6, 8, 9, 10, 12], make: (r) => ({ q: `One tile covers ${r} square feet of floor. Which equation gives the number of tiles $T$ needed to cover $A$ square feet?`, out: "T", tot: "A", div: "tiles", num: "square feet", per: `${r} square feet per tile` }) },
  { rate: () => [5, 8, 10, 12, 15, 20, 24, 25], make: (r) => ({ q: `A subscription costs $${r}$ dollars per month. Which equation gives the number of months $m$ that can be paid for with a budget of $D$ dollars?`, out: "m", tot: "D", div: "months", num: "dollars", per: `${r} dollars per month` }) },
  { rate: () => [40, 50, 60, 75, 80, 100, 120, 150], make: (r) => ({ q: `A bus travels at a constant speed of ${r} miles per hour. Which equation gives the number of hours $h$ to travel $D$ miles?`, out: "h", tot: "D", div: "hours", num: "miles", per: `${r} miles per hour` }) },
];

function linfMedium(rng) {
  // multiplier story (a count of passes times a per-unit coverage) — the
  // structurally harder modeling item, like the reference "B = A/150".
  if (rng() < 0.4) {
    const story = pick(rng, [
      { k: "treatments", item: "bags", unit: "square yards", subj: "lawn", area: "A", verb: "treat" },
      { k: "coats", item: "cans", unit: "square feet", subj: "wall", area: "A", verb: "paint" },
    ]);
    const k = ri(rng, 2, 6);
    const base = pick(rng, [40, 50, 60, 75, 80, 100, 120, 150, 200, 250]);
    const cov = k * base;
    return {
      context: null,
      contextType: null,
      question: `A crew will ${story.verb} a ${story.subj} with total area $${story.area}$ ${story.unit}. They apply ${k} separate ${story.k} to the entire ${story.subj}, and one ${story.item.slice(0, -1)} covers ${cov} ${story.unit}. Which equation gives the total number of ${story.item} $B$ needed?`,
      answerText: `$B = \\dfrac{${story.area}}{${base}}$`,
      answerWhy: `One ${story.k.slice(0, -1)} needs $\\dfrac{${story.area}}{${cov}}$ ${story.item}; ${k} of them need $\\dfrac{${k}${story.area}}{${cov}} = \\dfrac{${story.area}}{${base}}$.`,
      distractors: [
        { text: `$B = \\dfrac{${story.area}}{${cov}}$`, why: `This covers the area only once and ignores the ${k} ${story.k}.` },
        { text: `$B = ${cov}${story.area}$`, why: `This multiplies by the coverage instead of dividing by it.` },
        { text: `$B = ${cov * k}${story.area}$`, why: `This multiplies the area by every number in the problem.` },
      ],
      steps: [
        `One ${story.k.slice(0, -1)} of $${story.area}$ ${story.unit} needs $\\dfrac{${story.area}}{${cov}}$ ${story.item}.`,
        `There are ${k} ${story.k}, so $B = ${k} \\cdot \\dfrac{${story.area}}{${cov}} = \\dfrac{${k}${story.area}}{${cov}}$.`,
        `Simplify: $\\dfrac{${k}${story.area}}{${cov}} = \\dfrac{${story.area}}{${base}}$.`,
      ],
      numeric: null,
      mathFormat: "function_mcq",
    };
  }
  const story = pick(rng, LIF_RATE_STORIES);
  const r = pick(rng, story.rate());
  const s = story.make(r);
  return {
    context: null,
    contextType: null,
    question: s.q,
    answerText: `$${s.out} = \\dfrac{${s.tot}}{${r}}$`,
    answerWhy: `${s.div[0].toUpperCase()}${s.div.slice(1)} $=$ total ${s.num} $\\div$ rate $= \\dfrac{${s.tot}}{${r}}$.`,
    distractors: [
      { text: `$${s.out} = ${r}${s.tot}$`, why: `This multiplies by the rate (${s.per}) instead of dividing by it.` },
      { text: `$${s.out} = \\dfrac{${r}}{${s.tot}}$`, why: `This is the ratio upside down.` },
      { text: `$${s.out} = ${s.tot} - ${r}$`, why: `Subtracting the rate does not give a count of ${s.div}.` },
    ],
    steps: [
      `The rate is ${s.per}, so ${s.div} $= \\dfrac{\\text{${s.num}}}{\\text{rate}}$.`,
      `So $${s.out} = \\dfrac{${s.tot}}{${r}}$.`,
    ],
    numeric: null,
    mathFormat: "function_mcq",
  };
}

function lifFractionEval(rng) {
  const m = pick(rng, [-6, -5, -4, -3, -2, 2, 3, 4, 5, 6]);
  const b = ri(rng, -8, 40);
  const x1 = -ri(rng, 1, 6);
  const x2 = ri(rng, 2, 8);
  const den = pick(rng, [2, 4]);
  const num = pick(rng, den === 2 ? [1] : [1, 3]);   // 1/2, 1/4, or 3/4
  const k = (m * num) / den + b;
  const x0 = `\\dfrac{${num}}{${den}}`;
  const table = lifTable([[x1, m * x1 + b], [x2, m * x2 + b]]);
  return {
    context: `${table}\n\nThe table shows two values of $x$ and their corresponding values of $y$ for a linear relationship. The graph of the line representing this relationship passes through the point $\\left(${x0},\\ k\\right)$.`,
    contextType: "table",
    question: `What is the value of $k$?`,
    answerText: `$${decStr(k)}$`,
    answerWhy: `The line is $y = ${m}x ${signed(b)}$, so at $x = ${x0}$, $k = ${decStr(k)}$.`,
    distractors: [
      { text: `$${decStr((-m * num) / den + b)}$`, why: `This uses the wrong sign for the slope.` },
      { text: `$${decStr((m * num) / den)}$`, why: `This multiplies by the slope but forgets to add the intercept ${b}.` },
      { text: `$${decStr(m * num + b)}$`, why: `This forgets to divide by the ${den} in $x = ${x0}$.` },
    ],
    steps: [
      `Slope $= \\dfrac{(${m * x2 + b}) - (${m * x1 + b})}{${x2} - (${x1})} = ${m}$.`,
      `Find the intercept with $(${x2},\\ ${m * x2 + b})$: $b = ${m * x2 + b} - ${m}(${x2}) = ${b}$, so $y = ${m}x ${signed(b)}$.`,
      `Evaluate at $x = ${x0}$: $k = ${m}\\left(${x0}\\right) ${signed(b)} = ${decStr(k)}$.`,
    ],
    numeric: decStr(k),
    mathFormat: "function_table",
  };
}

function linfChallenge(rng) {
  if (pick(rng, ["compose", "fraceval"]) === "fraceval") return lifFractionEval(rng);
  const a = pick(rng, [2, 3, 4, 5]);
  let b = ri(rng, -8, 8);
  if (b === 0) b = 3;
  const M = a * a;
  const N = b * (a + 1);
  const p = ri(rng, 1, 6);
  const fp = a * p + b;
  return {
    context: null,
    contextType: null,
    question: `A linear function $f$ satisfies $f(f(x)) = ${M}x ${signed(N)}$ for all $x$. If the slope of $f$ is positive, what is the value of $f(${p})$?`,
    answerText: `$${fp}$`,
    answerWhy: `Let $f(x) = ax + b$. Then $f(f(x)) = a^2x + b(a+1) = ${M}x ${signed(N)}$, so $a = ${a}$ and $b = ${b}$, giving $f(${p}) = ${fp}$.`,
    distractors: [
      { text: `$${-a * p + b}$`, why: `This takes the negative root $a = -${a}$, but the slope is positive.` },
      { text: `$${a * p}$`, why: `This finds the slope but drops the constant $b = ${b}$.` },
      { text: `$${M * p + N}$`, why: `This evaluates $f(f(${p}))$ instead of $f(${p})$.` },
    ],
    steps: [
      `Write $f(x) = ax + b$. Composing: $f(f(x)) = a(ax + b) + b = a^2x + b(a+1)$.`,
      `Match coefficients: $a^2 = ${M}$ so $a = ${a}$ (positive); $b(a+1) = ${N}$ so $b = ${b}$.`,
      `Then $f(${p}) = ${a}(${p}) ${signed(b)} = ${fp}$.`,
    ],
    numeric: String(fp),
    mathFormat: "function_mcq",
  };
}

function genLIF(rng, tier) {
  if (tier === "easy") return linfEasy(rng);
  if (tier === "medium") return linfMedium(rng);
  if (tier === "hard") return lifFractionEval(rng);
  return linfChallenge(rng);
}

// ---- LEQ: Linear equations in two variables -------------------------------
// easy = read an intercept/slope off a GRAPH (generated SVG), medium = interpret
// the slope/intercept of a context model, hard = parametric symbolic table ->
// y-intercept (grid-in), challenge = parametric system (no/infinite solution)
// and graph-to-equation.

/** Signed reduced fraction for a slope (sign pulled to the front). */
export function slopeTex(num, den) {
  const neg = num < 0 !== den < 0;
  const [n, d] = reduceFrac(Math.abs(num), Math.abs(den));
  const body = d === 1 ? `${n}` : `\\dfrac{${n}}{${d}}`;
  return neg ? `-${body}` : body;
}

/** The two points where y = m x + b crosses the [-R,R] box border. */
function lineBox(m, b, R) {
  const pts = [];
  for (const x of [-R, R]) {
    const y = m * x + b;
    if (y >= -R - 1e-9 && y <= R + 1e-9) pts.push([x, y]);
  }
  if (m !== 0) {
    for (const y of [-R, R]) {
      const x = (y - b) / m;
      if (x >= -R - 1e-9 && x <= R + 1e-9) pts.push([x, y]);
    }
  }
  const uniq = [];
  for (const p of pts) {
    if (!uniq.some((q) => Math.abs(q[0] - p[0]) < 1e-6 && Math.abs(q[1] - p[1]) < 1e-6)) uniq.push(p);
  }
  return uniq.slice(0, 2);
}

/** SVG of an xy-plane (grid, labeled axes, ticks, O) with y = m x + b drawn. */
const LINE_COLORS = ["#1d4ed8", "#b91c1c", "#047857"];

/** SVG xy-plane (grid, axes, ticks, O) plotting one or more lines {m,b}. */
export function coordGridMultiSvg(lines) {
  const U = 15, C = 165, S = 330, R = 10;
  const X = (x) => +(C + x * U).toFixed(1);
  const Y = (y) => +(C - y * U).toFixed(1);
  let el = "";
  for (let i = -R; i <= R; i++) {
    el += `<line x1="${X(i)}" y1="${Y(-R)}" x2="${X(i)}" y2="${Y(R)}" stroke="#e5e7eb" stroke-width="1"/>`;
    el += `<line x1="${X(-R)}" y1="${Y(i)}" x2="${X(R)}" y2="${Y(i)}" stroke="#e5e7eb" stroke-width="1"/>`;
  }
  el += `<line x1="${X(-R)}" y1="${Y(0)}" x2="${X(R)}" y2="${Y(0)}" stroke="#374151" stroke-width="1.6"/>`;
  el += `<line x1="${X(0)}" y1="${Y(-R)}" x2="${X(0)}" y2="${Y(R)}" stroke="#374151" stroke-width="1.6"/>`;
  el += `<polygon points="${X(R)},${Y(0)} ${X(R) - 7},${Y(0) - 4} ${X(R) - 7},${Y(0) + 4}" fill="#374151"/>`;
  el += `<polygon points="${X(-R)},${Y(0)} ${X(-R) + 7},${Y(0) - 4} ${X(-R) + 7},${Y(0) + 4}" fill="#374151"/>`;
  el += `<polygon points="${X(0)},${Y(R)} ${X(0) - 4},${Y(R) + 7} ${X(0) + 4},${Y(R) + 7}" fill="#374151"/>`;
  el += `<polygon points="${X(0)},${Y(-R)} ${X(0) - 4},${Y(-R) - 7} ${X(0) + 4},${Y(-R) - 7}" fill="#374151"/>`;
  for (let i = -R + 2; i <= R - 2; i += 2) {
    if (i === 0) continue;
    el += `<text x="${X(i)}" y="${Y(0) + 13}" font-size="9" fill="#6b7280" text-anchor="middle">${i}</text>`;
    el += `<text x="${X(0) - 6}" y="${Y(i) + 3}" font-size="9" fill="#6b7280" text-anchor="end">${i}</text>`;
  }
  el += `<text x="${X(0) - 6}" y="${Y(0) + 13}" font-size="9" fill="#6b7280" text-anchor="end">O</text>`;
  lines.forEach((ln, idx) => {
    const p = lineBox(ln.m, ln.b, R);
    if (p.length === 2) {
      el += `<line x1="${X(p[0][0])}" y1="${Y(p[0][1])}" x2="${X(p[1][0])}" y2="${Y(p[1][1])}" stroke="${LINE_COLORS[idx % LINE_COLORS.length]}" stroke-width="2.6"/>`;
    }
  });
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${S} ${S}" width="${S}" height="${S}" role="img" aria-label="${lines.length > 1 ? "Lines" : "A line"} graphed in the xy-plane">${el}</svg>`;
}

function coordGridSvg(m, b) {
  return coordGridMultiSvg([{ m, b }]);
}

function leqEasy(rng) {
  const xi = pick(rng, [-8, -6, -4, -3, -2, 2, 3, 4, 6, 8]);
  let yi = pick(rng, [-6, -4, -3, -2, 2, 3, 4, 6]);
  if (Math.abs(yi) === Math.abs(xi)) yi = yi > 0 ? yi + 1 : yi - 1;
  const m = -yi / xi, b = yi;
  const leadL = pick(rng, [
    `The graph of a line in the $xy$-plane is shown.`,
    `A line is graphed in the $xy$-plane, as shown.`,
    `The figure shows the graph of a line in the $xy$-plane.`,
    `In the $xy$-plane, the graph of a line is shown below.`,
    `The line shown is graphed in the $xy$-plane.`,
  ]);
  const context = `${leadL}\n\n${coordGridSvg(m, b)}`;
  const variant = pick(rng, ["xint", "yint", "slope"]);
  if (variant === "xint") {
    return {
      context, contextType: "figure",
      question: pick(rng, [`Based on the graph, what is the $x$-intercept of the line?`, `What is the $x$-intercept of the line shown?`, `At what point does the line shown cross the $x$-axis?`, `The graph of a line is shown. What is its $x$-intercept?`, `Based on the figure, what is the $x$-intercept of the line?`]),
      answerText: `$(${xi}, 0)$`,
      answerWhy: `The line crosses the $x$-axis at $(${xi}, 0)$.`,
      distractors: [
        { text: `$(${-xi}, 0)$`, why: `This has the wrong sign on the $x$-coordinate.` },
        { text: `$(0, ${yi})$`, why: `This is the $y$-intercept (where the line crosses the $y$-axis).` },
        { text: `$(0, ${xi})$`, why: `An $x$-intercept lies on the $x$-axis, so it has the form $(x, 0)$.` },
      ],
      steps: [`The $x$-intercept is where the line crosses the $x$-axis, so $y = 0$.`, `From the graph, that point is $(${xi}, 0)$.`],
      numeric: null, mathFormat: "graph_line",
    };
  }
  if (variant === "yint") {
    return {
      context, contextType: "figure",
      question: pick(rng, [`Based on the graph, what is the $y$-intercept of the line?`, `What is the $y$-intercept of the line shown?`, `At what point does the line shown cross the $y$-axis?`, `The graph of a line is shown. What is its $y$-intercept?`, `Based on the figure, what is the $y$-intercept of the line?`]),
      answerText: `$(0, ${yi})$`,
      answerWhy: `The line crosses the $y$-axis at $(0, ${yi})$.`,
      distractors: [
        { text: `$(0, ${-yi})$`, why: `This has the wrong sign on the $y$-coordinate.` },
        { text: `$(${xi}, 0)$`, why: `This is the $x$-intercept (where the line crosses the $x$-axis).` },
        { text: `$(${yi}, 0)$`, why: `A $y$-intercept lies on the $y$-axis, so it has the form $(0, y)$.` },
      ],
      steps: [`The $y$-intercept is where the line crosses the $y$-axis, so $x = 0$.`, `From the graph, that point is $(0, ${yi})$.`],
      numeric: null, mathFormat: "graph_line",
    };
  }
  return {
    context, contextType: "figure",
    question: pick(rng, [`Based on the graph, what is the slope of the line?`, `What is the slope of the line shown?`, `The graph of a line is shown. What is its slope?`, `Based on the two intercepts shown, what is the slope of the line?`, `Based on the figure, what is the slope of the line?`]),
    answerText: `$${slopeTex(-yi, xi)}$`,
    answerWhy: `Using $(${xi}, 0)$ and $(0, ${yi})$: slope $= \\dfrac{${yi} - 0}{0 - (${xi})} = ${slopeTex(-yi, xi)}$.`,
    distractors: [
      { text: `$${slopeTex(yi, xi)}$`, why: `This has the wrong sign for the slope.` },
      { text: `$${slopeTex(xi, yi)}$`, why: `This inverts the rise and the run.` },
      { text: `$${slopeTex(-xi, yi)}$`, why: `This both inverts the ratio and flips the sign.` },
    ],
    steps: [`Read two points off the line, such as $(${xi}, 0)$ and $(0, ${yi})$.`, `Slope $= \\dfrac{\\Delta y}{\\Delta x} = \\dfrac{${yi} - 0}{0 - (${xi})} = ${slopeTex(-yi, xi)}$.`],
    numeric: null, mathFormat: "graph_line",
  };
}

function leqMedium(rng) {
  const s = pick(rng, [
    { per: pick(rng, [60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 175, 180, 200, 225, 250]), unit: "pounds",
      bvals: [1200, 1500, 1800, 2000, 2200, 2400, 2500, 2800, 3000, 3200, 3500, 3800, 4000, 4200, 4500, 5000, 5500, 6000],
      ctx: (p, b) => `A truck transports identical storage units. Each unit weighs ${p} pounds, and the total weight $y$, in pounds, of the loaded truck with $x$ units is modeled by $y = ${p}x + ${b}$.`,
      correct: (b) => `The weight of the empty truck, with no storage units, is ${b} pounds.`,
      wrong: (p, b) => [`The truck is carrying ${b} storage units.`, `Each storage unit weighs ${b} pounds.`, `The total weight is always ${b} pounds, regardless of the load.`] },
    { per: pick(rng, [10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 75]), unit: "dollars",
      bvals: [20, 25, 30, 40, 45, 50, 60, 70, 75, 80, 90, 100, 120, 150],
      ctx: (p, b) => `A gym charges a one-time sign-up fee plus a monthly rate. The total cost $y$, in dollars, after $x$ months is modeled by $y = ${p}x + ${b}$.`,
      correct: (b) => `The one-time sign-up fee is ${b} dollars.`,
      wrong: (p, b) => [`The monthly rate is ${b} dollars.`, `The membership lasts ${b} months.`, `The total cost is always ${b} dollars.`] },
    { per: pick(rng, [2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15]), unit: "liters",
      bvals: [8, 10, 12, 15, 20, 25, 30, 40, 50, 60, 75, 80, 100],
      ctx: (p, b) => `A tank already contains some water and is filled further at a constant rate. The volume $y$, in liters, after $x$ minutes is modeled by $y = ${p}x + ${b}$.`,
      correct: (b) => `The tank already held ${b} liters before additional filling began.`,
      wrong: (p, b) => [`The tank is filled at ${b} liters per minute.`, `It takes ${b} minutes to fill the tank.`, `The tank holds at most ${b} liters.`] },
  ]);
  const b = pick(rng, s.bvals);
  return {
    context: null, contextType: null,
    question: `${s.ctx(s.per, b)} What is the best interpretation of ${b} in this context?`,
    answerText: s.correct(b),
    answerWhy: s.correct(b),
    distractors: s.wrong(s.per, b).map((w) => ({ text: w, why: `The constant ${b} is the value of $y$ when $x = 0$ (the starting amount), not this.` })),
    steps: [
      `In $y = ${s.per}x + ${b}$, the constant ${b} is the value of $y$ when $x = 0$.`,
      `That is the starting amount before any $x$ is added.`,
      `So ${b} represents the base value described in the context.`,
    ],
    numeric: null, mathFormat: "interpretation",
  };
}

function leqHard(rng) {
  const m = pick(rng, [-6, -5, -4, -3, -2, 2, 3, 4, 5, 6]);
  const e = ri(rng, 2, 6);            // p - e = 0  =>  p = e
  const d = ri(rng, 2, 9);
  const y1 = ri(rng, -30, 40);
  const y2 = y1 + m * d;
  const c = y1 - m * e;
  const table = `| $x$ | $y$ |\n| --- | --- |\n| $p$ | ${y1} |\n| $p + ${d}$ | ${y2} |`;
  return {
    context: `${table}\n\nThe table gives the coordinates of two points on a line in the $xy$-plane. The $y$-intercept of the line is $(p - ${e},\\ c)$, where $p$ and $c$ are constants.`,
    contextType: "table",
    question: `What is the value of $c$?`,
    answerText: `$${c}$`,
    answerWhy: `The $y$-intercept has $x = 0$, so $p - ${e} = 0$ and $p = ${e}$. With slope $${m}$, $c = ${y1} - ${m}(${e}) = ${c}$.`,
    distractors: [
      { text: `$${y1}$`, why: `This is the $y$-value at $x = p$, not at the $y$-intercept ($x = 0$).` },
      { text: `$${y1 + m * e}$`, why: `This adds $${m}\\cdot${e}$ instead of subtracting it.` },
      { text: `$${e}$`, why: `This is the value of $p$, not $c$.` },
    ],
    steps: [
      `A $y$-intercept lies on the $y$-axis, so its $x$-coordinate is $0$: $p - ${e} = 0$, giving $p = ${e}$.`,
      `Slope $= \\dfrac{${y2} - (${y1})}{(p + ${d}) - p} = \\dfrac{${y2 - y1}}{${d}} = ${m}$.`,
      `At $x = 0$: $c = ${y1} - ${m}(${e}) = ${c}$.`,
    ],
    numeric: String(c),
    mathFormat: "linear_table",
  };
}

function leqChallenge(rng) {
  if (pick(rng, ["system", "grapheqn"]) === "system") {
    let a = pick(rng, [2, 3, 4, 5]);
    let bb = pick(rng, [2, 3, 4, 6]);
    if (a === bb) bb += 1;
    const c = a * pick(rng, [2, 3, 4]) + bb * pick(rng, [1, 2, 3]);
    const sc = pick(rng, [2, 3]);
    const inf = rng() < 0.5;
    const rhs2 = inf ? sc * c : sc * c + pick(rng, [1, 2, 3]);
    const kAns = sc * bb;
    const goal = inf ? "infinitely many solutions" : "no solution";
    return {
      context: null, contextType: null,
      question: `In the system of equations $${a}x + ${bb}y = ${c}$ and $${sc * a}x + ky = ${rhs2}$, $k$ is a constant. For what value of $k$ does the system have ${goal}?`,
      answerText: `$${kAns}$`,
      answerWhy: `The second equation is $${sc}$ times the first exactly when $k = ${sc}\\cdot${bb} = ${kAns}$${inf ? " (and the constants also match, giving infinitely many solutions)" : " (but the constants do not match, giving no solution)"}.`,
      distractors: [
        { text: `$${bb}$`, why: `This is $b$ from the first equation, without scaling by $${sc}$.` },
        { text: `$${sc * a}$`, why: `This is the $x$-coefficient of the second equation, not the needed $y$-coefficient.` },
        { text: `$${kAns + sc}$`, why: `Off by one scaling step; the lines are not proportional here.` },
      ],
      steps: [
        `For the lines to be parallel or identical, the coefficients must be proportional: $\\dfrac{${sc * a}}{${a}} = ${sc}$.`,
        `So the $y$-coefficient must satisfy $\\dfrac{k}{${bb}} = ${sc}$, i.e. $k = ${kAns}$.`,
        inf ? `Since $${rhs2} = ${sc}\\cdot${c}$, the equations are identical and there are infinitely many solutions.` : `Since $${rhs2} \\neq ${sc}\\cdot${c}$, the lines are parallel and there is no solution.`,
      ],
      numeric: String(kAns),
      mathFormat: "system_mcq",
    };
  }
  // graph -> equation
  const xi = pick(rng, [-8, -6, -4, -3, -2, 2, 3, 4, 6, 8]);
  let yi = pick(rng, [-6, -4, -3, -2, 2, 3, 4, 6]);
  if (Math.abs(yi) === Math.abs(xi)) yi = yi > 0 ? yi + 1 : yi - 1;
  const m = -yi / xi;
  const eq = (sl, ic) => `$y = ${slopeTex(sl[0], sl[1])}x ${signed(ic)}$`;
  return {
    context: `The graph of a line in the $xy$-plane is shown.\n\n${coordGridSvg(m, yi)}`,
    contextType: "figure",
    question: `Which equation represents the line shown?`,
    answerText: eq([-yi, xi], yi),
    answerWhy: `The line has $y$-intercept $${yi}$ and slope $${slopeTex(-yi, xi)}$, so $y = ${slopeTex(-yi, xi)}x ${signed(yi)}$.`,
    distractors: [
      { text: eq([yi, xi], yi), why: `Correct intercept, but the slope has the wrong sign.` },
      { text: eq([-yi, xi], -yi), why: `Correct slope, but the wrong sign on the $y$-intercept.` },
      { text: eq([xi, yi], yi), why: `The slope is inverted (run over rise).` },
    ],
    steps: [
      `Read the $y$-intercept from the graph: $${yi}$.`,
      `Read the slope using $(${xi}, 0)$ and $(0, ${yi})$: $${slopeTex(-yi, xi)}$.`,
      `So the equation is $y = ${slopeTex(-yi, xi)}x ${signed(yi)}$.`,
    ],
    numeric: null, mathFormat: "graph_line",
  };
}

function genLEQ(rng, tier) {
  if (tier === "easy") return leqEasy(rng);
  if (tier === "medium") return leqMedium(rng);
  if (tier === "hard") return leqHard(rng);
  return leqChallenge(rng);
}

// ---- SYS: Systems of two linear equations ---------------------------------
// easy=number of solutions (context), medium=solve for the point, hard=match a
// two-line graph to a system, challenge=fractional system with infinitely many
// solutions -> a/c. Grid-in rows ("solve, find x") via the format param.

/** "y - m x = b" style line (integer m, b). */
export function eqLineStr(m, b) {
  const mt = Math.abs(m) === 1 ? "x" : `${Math.abs(m)}x`;
  return `y ${m >= 0 ? "-" : "+"} ${mt} = ${b}`;
}

/** A solvable 2x2 system with integer solution (x, y). */
function buildSystem(rng) {
  let x = ri(rng, -6, 6), y = ri(rng, -6, 6);
  if (x === 0) x = 2;
  if (y === 0) y = 3;
  if (Math.abs(x) === Math.abs(y)) y = y + (y > 0 ? 1 : -1);
  if (y === 0) y = 4;
  const m1 = pick(rng, [2, 3, 4, 5, 6]) * (rng() < 0.5 ? 1 : -1);
  const k1 = y - m1 * x;              // eq1: y - m1 x = k1
  const a2 = pick(rng, [1, 2, 3]);
  const b2 = pick(rng, [2, 3, 4]);
  const c2 = a2 * x + b2 * y;         // eq2: a2 x + b2 y = c2
  return { x, y, m1, k1, a2, b2, c2 };
}

function sysSolvePoint(rng) {
  const s = buildSystem(rng);
  return {
    context: `$$${eqLineStr(s.m1, s.k1)}$$\n$$${s.a2 === 1 ? "" : s.a2}x + ${s.b2}y = ${s.c2}$$`,
    contextType: "passage",
    question: `What is the solution $(x, y)$ to the system of equations above?`,
    answerText: `$(${s.x}, ${s.y})$`,
    answerWhy: `Substituting $y = ${s.m1}x + ${s.k1}$ into the second equation gives $x = ${s.x}$, then $y = ${s.y}$.`,
    distractors: [
      { text: `$(${s.y}, ${s.x})$`, why: `The coordinates are in the wrong order — this is $(y, x)$.` },
      { text: `$(${s.x}, ${-s.y})$`, why: `Sign error on the $y$-coordinate.` },
      { text: `$(${-s.x}, ${s.y})$`, why: `Sign error on the $x$-coordinate.` },
    ],
    steps: [
      `From the first equation, $y = ${s.m1}x + ${s.k1}$.`,
      `Substitute into $${s.a2 === 1 ? "" : s.a2}x + ${s.b2}y = ${s.c2}$ and solve: $x = ${s.x}$.`,
      `Then $y = ${s.m1}(${s.x}) + ${s.k1} = ${s.y}$, so the solution is $(${s.x}, ${s.y})$.`,
    ],
    numeric: null,
    mathFormat: "system_mcq",
  };
}

function sysSolveNumeric(rng) {
  const s = buildSystem(rng);
  return {
    context: `$$${eqLineStr(s.m1, s.k1)}$$\n$$${s.a2 === 1 ? "" : s.a2}x + ${s.b2}y = ${s.c2}$$`,
    contextType: "passage",
    question: pick(rng, [`What is the value of $x$ in the solution to the system of equations above?`, `The system above has a unique solution $(x, y)$. What is the value of $x$?`, `For the solution to the given system, what is the value of $x$?`, `If $(x, y)$ is the solution to the system shown, what is $x$?`, `What is the $x$-coordinate of the solution to the system above?`]),
    answerText: `$${s.x}$`,
    answerWhy: `Solving the system gives $x = ${s.x}$ (and $y = ${s.y}$).`,
    distractors: [
      { text: `$${s.y}$`, why: `This is the value of $y$, not $x$.` },
      { text: `$${-s.x}$`, why: `Sign error when solving for $x$.` },
      { text: `$${s.x + 1}$`, why: `Arithmetic slip — recheck the substitution.` },
    ],
    steps: [
      `From the first equation, $y = ${s.m1}x + ${s.k1}$.`,
      `Substitute into $${s.a2 === 1 ? "" : s.a2}x + ${s.b2}y = ${s.c2}$: solving gives $x = ${s.x}$.`,
    ],
    numeric: String(s.x),
    mathFormat: "system_mcq",
  };
}

function sysCount(rng) {
  const money = (v) => v.toFixed(2);
  const story = pick(rng, [
    (r1, f1, r2, f2) => ({
      desc: `Two delivery services charge for shipping a package based on the weight $w$, in pounds, of the package. Service A charges ${money(r1)} dollars per pound plus a flat fee of ${money(f1)} dollars. Service B charges ${money(r2)} dollars per pound plus a flat fee of ${money(f2)} dollars.`,
      q: `If the total charge for shipping a package is the same for both services, how many possible values for $w$ are there?`,
    }),
    (r1, f1, r2, f2) => ({
      desc: `Two phone plans charge based on the data used, $g$, in gigabytes. Plan A charges ${money(r1)} dollars per gigabyte plus a monthly fee of ${money(f1)} dollars. Plan B charges ${money(r2)} dollars per gigabyte plus a monthly fee of ${money(f2)} dollars.`,
      q: `If the total monthly cost is the same for both plans, how many possible values for $g$ are there?`,
    }),
    (r1, f1, r2, f2) => ({
      desc: `Two parking garages charge based on the time parked, $h$, in hours. Garage A charges ${money(r1)} dollars per hour plus an entry fee of ${money(f1)} dollars. Garage B charges ${money(r2)} dollars per hour plus an entry fee of ${money(f2)} dollars.`,
      q: `If the total charge is the same at both garages, how many possible values for $h$ are there?`,
    }),
  ]);
  const kase = pick(rng, ["zero", "one", "inf"]);
  const rate = pick(rng, [0.5, 0.75, 1, 1.25, 1.5, 2, 2.5, 3]);
  const f1 = ri(rng, 5, 25);
  let r1, r2, fee1, fee2, correct, why;
  if (kase === "zero") {
    r1 = r2 = rate; fee1 = f1; fee2 = f1 + ri(rng, 1, 8);
    correct = "Zero";
    why = `Both services charge the same rate (${rate.toFixed(2)} per unit) but different fixed fees, so the two lines are parallel and never intersect.`;
  } else if (kase === "one") {
    r1 = rate; r2 = pick(rng, [0.5, 0.75, 1, 1.25, 1.5, 2, 2.5, 3].filter((v) => v !== rate));
    fee1 = f1; fee2 = ri(rng, 5, 25);
    correct = "Exactly one";
    why = `The two services charge different rates, so the lines have different slopes and cross at exactly one point.`;
  } else {
    r1 = r2 = rate; fee1 = fee2 = f1;
    correct = "Infinitely many";
    why = `The two services charge the same rate and the same fixed fee, so the charges are equal for every value — the lines are identical.`;
  }
  const built = story(r1, fee1, r2, fee2);
  const all = ["Zero", "Exactly one", "Exactly two", "Infinitely many"];
  return {
    context: null,
    contextType: null,
    question: `${built.desc}\n\n${built.q}`,
    answerText: correct,
    answerWhy: why,
    distractors: all.filter((o) => o !== correct).map((o) => ({
      text: o,
      why: o === "Exactly two"
        ? `Two distinct lines can meet at most once, so a linear system never has exactly two solutions.`
        : `This does not match the relationship between the two charge equations.`,
    })),
    steps: [
      `Write each charge as a line: charge $= (\\text{rate}) \\cdot (\\text{amount}) + (\\text{fee})$.`,
      `Compare the slopes (rates) and intercepts (fees) of the two lines.`,
      `${why}`,
    ],
    numeric: null,
    mathFormat: "system_count",
  };
}

function sysFromGraph(rng) {
  const m1 = pick(rng, [1, 2]);
  const b1 = ri(rng, 1, 5);
  const m2 = -pick(rng, [1, 2]);
  let b2 = ri(rng, 1, 6);
  if (b2 === b1) b2 += 1;
  const svg = coordGridMultiSvg([{ m: m1, b: b1 }, { m: m2, b: b2 }]);
  const sys = (p, q, r, t) => `$\\begin{cases} ${eqLineStr(p, q)} \\\\ ${eqLineStr(r, t)} \\end{cases}$`;
  const leadS = pick(rng, [
    `The graph shows two lines in the $xy$-plane.`,
    `Two lines are graphed in the $xy$-plane, as shown.`,
    `The figure shows the graphs of two lines in the $xy$-plane.`,
    `In the $xy$-plane, the two lines shown are graphed below.`,
    `The $xy$-plane below shows two graphed lines.`,
  ]);
  return {
    context: `${leadS}\n\n${svg}`,
    contextType: "figure",
    question: pick(rng, [`Which system of linear equations is represented by the lines shown?`, `The graph shows two lines. Which system of linear equations do they represent?`, `Which of the following systems of linear equations is graphed?`, `Which system of equations has the two lines shown as its graph?`, `Based on the graph, which system of linear equations is shown?`, `The two lines shown are the graphs of which system of linear equations?`, `The pair of lines shown is the graph of which system of linear equations?`, `Which system of linear equations produces the two lines graphed above?`]),
    answerText: sys(m1, b1, m2, b2),
    answerWhy: `One line has slope $${m1}$ and $y$-intercept $${b1}$; the other has slope $${m2}$ and $y$-intercept $${b2}$.`,
    distractors: [
      { text: sys(-m1, b1, m2, b2), why: `The first line's slope has the wrong sign.` },
      { text: sys(m1, b1, -m2, b2), why: `The second line's slope has the wrong sign.` },
      { text: sys(m1, b2, m2, b1), why: `The two $y$-intercepts are swapped.` },
    ],
    steps: [
      `Read each line's $y$-intercept (where it crosses the $y$-axis) and its slope (rise over run).`,
      `Line 1: slope $${m1}$, intercept $${b1}$, i.e. $${eqLineStr(m1, b1)}$.`,
      `Line 2: slope $${m2}$, intercept $${b2}$, i.e. $${eqLineStr(m2, b2)}$.`,
    ],
    numeric: null,
    mathFormat: "system_graph",
  };
}

function sysRatio(rng) {
  const reduce = (n, d) => { const g = gcd(n, d) || 1; return [n / g, d / g]; };
  const fr = (p) => (p[1] === 1 ? `${p[0]}` : `\\dfrac{${p[0]}}{${p[1]}}`);
  const a1 = reduce(ri(rng, 1, 5), pick(rng, [2, 3, 4, 5, 6]));
  const a2 = reduce(ri(rng, 1, 5), pick(rng, [2, 3, 4, 5, 6]));
  let kn = pick(rng, [1, 2, 3]), kd = pick(rng, [1, 2, 3]);
  while (kn === kd) kd = pick(rng, [1, 2, 3]);   // scale k != 1
  [kn, kd] = reduce(kn, kd);
  const a3 = reduce(a1[0] * kn, a1[1] * kd);     // second x-coeff = k * first
  const ans = reduce(kd, kn);                    // a/c = 1/k
  const kFrac = [kn, kd];                        // c/a = k
  return {
    context: `$$${fr(a1)}x + ${fr(a2)}y = a$$\n$$${fr(a3)}x + by = c$$`,
    contextType: "passage",
    question: pick(rng, [
      `In the given system of equations, $a$, $b$, and $c$ are constants. The system has infinitely many solutions. What is the value of $\\dfrac{a}{c}$?`,
      `In the system shown, $a$, $b$, and $c$ are constants and the system has infinitely many solutions. What is $\\dfrac{a}{c}$?`,
      `The system of equations above has infinitely many solutions, where $a$, $b$, and $c$ are constants. What is the value of $\\dfrac{a}{c}$?`,
      `For the given system (with constants $a$, $b$, and $c$) to have infinitely many solutions, what must $\\dfrac{a}{c}$ equal?`,
    ]),
    answerText: `$${fr(ans)}$`,
    answerWhy: `For infinitely many solutions the equations are proportional. Dividing the $x$-coefficients, $${fr(a3)} \\div ${fr(a1)} = ${fr(kFrac)}$, so $c = ${fr(kFrac)}\\,a$ and $\\dfrac{a}{c} = ${fr(ans)}$.`,
    distractors: [
      { text: `$${fr(kFrac)}$`, why: `This is $\\dfrac{c}{a}$ (the scale factor), the reciprocal of $\\dfrac{a}{c}$.` },
      { text: `$1$`, why: `This would require $a = c$, but the equations scale by a factor other than 1.` },
      { text: `$-${fr(ans)}$`, why: `All coefficients are positive, so the ratio is positive.` },
    ],
    steps: [
      `Infinitely many solutions means the second equation is a constant multiple of the first.`,
      `Compare the $x$-coefficients: $${fr(a3)} = ${fr(kFrac)} \\cdot ${fr(a1)}$, so the multiple is $${fr(kFrac)}$.`,
      `Then $c = ${fr(kFrac)}\\,a$, so $\\dfrac{a}{c} = ${fr(ans)}$.`,
    ],
    numeric: null,
    mathFormat: "system_ratio",
  };
}

function genSYS(rng, tier, fmt) {
  if (fmt === "spr") return sysSolveNumeric(rng);
  if (tier === "easy") return sysCount(rng);
  if (tier === "medium") return sysSolvePoint(rng);
  if (tier === "hard") return sysFromGraph(rng);
  return sysRatio(rng);
}

// ---- INE: Linear inequalities in one or two variables --------------------
// Rebuilt to real Digital SAT variety (2026-06-14): smallest/largest integer
// satisfying a one-variable inequality, real-world optimization with a count
// and a budget/weight cap (the "cargo helicopter" type), testing an ordered
// pair against a two-variable system, and compound-range modeling. The
// "challenged" tier uses the constrained-optimization word problems.

function ineSmallestInt(rng, tier) {
  const a = band(tier, ri(rng, 2, 4), ri(rng, 2, 5), ri(rng, 3, 6), ri(rng, 4, 8));
  const x = band(tier, ri(rng, 3, 7), ri(rng, 4, 10), ri(rng, 5, 13), ri(rng, 7, 18));
  const b = band(tier, ri(rng, 1, 6), ri(rng, 2, 9), ri(rng, -6, 9), ri(rng, -10, 10));
  const c = a * x + b - 1; // x is the least integer with a*x + b > c
  const steps = [
    `Solve $${a}x ${signed(b)} > ${c}$.`,
    `Subtract ${b}: $${a}x > ${c - b}$.`,
    `Divide by ${a}: $x > ${((c - b) / a).toFixed(2)}$.`,
    `The smallest integer greater than ${((c - b) / a).toFixed(2)} is ${x}.`,
  ];
  return {
    context: null, contextType: null,
    question: pick(rng, [`What is the smallest integer value of $x$ that satisfies $${a}x ${signed(b)} > ${c}$?`, `What is the least integer $x$ for which $${a}x ${signed(b)} > ${c}$ is true?`, `Given $${a}x ${signed(b)} > ${c}$, what is the smallest integer value of $x$ that makes it true?`]),
    answerText: `$${x}$`,
    answerWhy: `Solving gives $x > ${((c - b) / a).toFixed(2)}$, so the least integer is ${x}.`,
    distractors: [
      { text: `$${x - 1}$`, why: `This satisfies $\\le$ but not the strict $>$; it is one too small.` },
      { text: `$${x + 1}$`, why: `This works, but it is not the smallest integer that does.` },
      { text: `$${x - 2}$`, why: `This makes the left side less than ${c}, so the inequality fails.` },
    ],
    steps: tier === "easy" ? steps.slice(1) : steps,
    numeric: String(x),
    mathFormat: "inequality_mcq",
  };
}

// Constrained optimization: at least N items total, total weight at most W,
// maximize the number of the heavier item. (The "cargo helicopter" SAT type.)
function ineWordMax(rng, tier) {
  const scen = pick(rng, [
    { lo: "100-pound", hi: "120-pound", a: 100, b: 120, who: "A cargo helicopter delivers only", unit: "packages", verb: "carry", per: "per trip" },
    { lo: "40-kilogram", hi: "55-kilogram", a: 40, b: 55, who: "A freight elevator carries only", unit: "crates", verb: "hold", per: "per load" },
    { lo: "25-pound", hi: "40-pound", a: 25, b: 40, who: "A delivery van carries only", unit: "boxes", verb: "carry", per: "per trip" },
  ]);
  const N = band(tier, ri(rng, 8, 12), ri(rng, 9, 14), ri(rng, 10, 16), ri(rng, 12, 20));
  const ymax = ri(rng, 2, N - 2);
  const W = scen.a * N + (scen.b - scen.a) * ymax; // forces the count constraint to bind
  const xAtOpt = N - ymax;
  return {
    context: `${scen.who} ${scen.lo} ${scen.unit} and ${scen.hi} ${scen.unit}. For each trip, the carrier must ${scen.verb} at least ${N} ${scen.unit}, and the total weight of the ${scen.unit} can be at most ${W.toLocaleString("en-US")} pounds.`,
    contextType: "passage",
    question: `What is the maximum number of ${scen.hi} ${scen.unit} that can be carried ${scen.per}?`,
    answerText: `$${ymax}$`,
    answerWhy: `With $x$ lighter and $y$ heavier items, $x + y \\ge ${N}$ and $${scen.a}x + ${scen.b}y \\le ${W}$. Using as few lighter items as allowed ($x = ${N} - y$) gives $y \\le ${ymax}$.`,
    distractors: [
      { text: `$${xAtOpt}$`, why: `This is the number of lighter ${scen.unit} ($${N} - ${ymax}$), not the heavier ones.` },
      { text: `$${Math.floor(W / scen.b)}$`, why: `This ignores the requirement of at least ${N} ${scen.unit} total.` },
      { text: `$${ymax + 1}$`, why: `One too many — the total weight would then exceed ${W.toLocaleString("en-US")} pounds.` },
    ],
    steps: [
      `Let $x$ be the number of ${scen.lo} ${scen.unit} and $y$ the number of ${scen.hi} ${scen.unit}. Then $x + y \\ge ${N}$ and $${scen.a}x + ${scen.b}y \\le ${W}$.`,
      `To maximize $y$, use the fewest lighter ${scen.unit}: $x = ${N} - y$. Substitute: $${scen.a}(${N} - y) + ${scen.b}y \\le ${W}$.`,
      `Simplify: $${scen.a * N} + ${scen.b - scen.a}y \\le ${W}$, so $y \\le ${ymax}$. The maximum is $${ymax}$.`,
    ],
    numeric: String(ymax),
    mathFormat: "inequality_mcq",
  };
}

// Test an ordered pair against a two-variable system (MCQ).
function ineSystemSolution(rng, tier) {
  const m1 = pick(rng, [-2, -1, 1, 2]), m2 = pick(rng, [-2, -1, 1, 2]);
  const x0 = ri(rng, -2, 4);
  // pick b1 < ... so that at x0 the feasible y-interval (lower, upper] contains y0
  const lower = m1 * x0 + ri(rng, -3, -1);   // y0 must be > this (C1: y > m1 x + b1)
  const b1 = lower - m1 * x0;
  const y0 = lower + ri(rng, 2, 4);
  const b2 = y0 + ri(rng, 1, 3) - m2 * x0;    // upper = m2 x0 + b2 > y0  (C2: y < m2 x + b2)
  const ineqText = `\\begin{cases} y > ${coefTerm(m1, "x")} ${signed(b1)} \\\\ y < ${coefTerm(m2, "x")} ${signed(b2)} \\end{cases}`;
  const ptText = (px, py) => `$(${px}, ${py})$`;
  const correct = [x0, y0];
  // All distractors share x = x0 so each provably violates exactly one bound.
  const cand = [
    [x0, m2 * x0 + b2 + ri(rng, 1, 3)],   // above upper bound -> fails C2
    [x0, m1 * x0 + b1 - ri(rng, 1, 3)],   // just below lower bound -> fails C1
    [x0, m1 * x0 + b1 - ri(rng, 4, 6)],   // further below lower bound -> fails C1
  ];
  return {
    context: null, contextType: null,
    question: `Which of the following ordered pairs $(x, y)$ is a solution to the system of inequalities $${ineqText}$?`,
    answerText: ptText(correct[0], correct[1]),
    answerWhy: `At $(${correct[0]}, ${correct[1]})$: $${correct[1]} > ${m1 * correct[0] + b1}$ and $${correct[1]} < ${m2 * correct[0] + b2}$ are both true.`,
    distractors: cand.map(([px, py]) => ({
      text: ptText(px, py),
      why: py <= m1 * px + b1
        ? `Here $y = ${py}$ is not greater than $${m1 * px + b1}$, so the first inequality fails.`
        : `Here $y = ${py}$ is not less than $${m2 * px + b2}$, so the second inequality fails.`,
    })),
    steps: [
      `A solution must satisfy BOTH inequalities at once.`,
      `Test $(${correct[0]}, ${correct[1]})$ in $y > ${coefTerm(m1, "x")} ${signed(b1)}$: $${correct[1]} > ${m1 * correct[0] + b1}$ ✓.`,
      `Test it in $y < ${coefTerm(m2, "x")} ${signed(b2)}$: $${correct[1]} < ${m2 * correct[0] + b2}$ ✓. Both hold, so it is a solution.`,
    ],
    numeric: null,
    mathFormat: "inequality_mcq",
  };
}

// Compound range modeling (MCQ): translate "at least L and at most U".
function ineCompoundRange(rng, tier) {
  const scen = pick(rng, [
    { thing: "the width $w$, in feet, of a standard parking space", v: "w", L: 7.5, U: 9.0 },
    { thing: "the mass $m$, in grams, of a regulation table-tennis ball", v: "m", L: 2.4, U: 2.53 },
    { thing: "the length $\\ell$, in centimeters, of an acceptable bolt", v: "\\ell", L: 12, U: 15 },
  ]);
  const v = scen.v;
  return {
    context: null, contextType: null,
    question: `A specification states that ${scen.thing} must be at least ${scen.L} and at most ${scen.U}. Which inequality represents all acceptable values?`,
    answerText: `$${scen.L} \\le ${v} \\le ${scen.U}$`,
    answerWhy: `"At least ${scen.L}" means $${v} \\ge ${scen.L}$ and "at most ${scen.U}" means $${v} \\le ${scen.U}$; together $${scen.L} \\le ${v} \\le ${scen.U}$.`,
    distractors: [
      { text: `$${scen.L} < ${v} < ${scen.U}$`, why: `"At least/at most" include the endpoints, so the inequalities are not strict.` },
      { text: `$${v} \\le ${scen.L}$ or $${v} \\ge ${scen.U}$`, why: `This describes values outside the range, not within it.` },
      { text: `$${scen.U} \\le ${v} \\le ${scen.L}$`, why: `The bounds are reversed; the lower limit must come first.` },
    ],
    steps: [
      `"At least ${scen.L}" translates to $${v} \\ge ${scen.L}$.`,
      `"At most ${scen.U}" translates to $${v} \\le ${scen.U}$.`,
      `Combine into a compound inequality: $${scen.L} \\le ${v} \\le ${scen.U}$.`,
    ],
    numeric: null,
    mathFormat: "inequality_mcq",
  };
}

function genINE(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return ineSmallestInt(rng, tier);
    if (tier === "medium") return pick(rng, [ineSmallestInt, ineWordMax])(rng, tier);
    return pick(rng, [ineWordMax, ineSmallestInt])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [ineSmallestInt, ineCompoundRange])(rng, tier);
  if (tier === "medium") return pick(rng, [ineSystemSolution, ineCompoundRange, ineSmallestInt])(rng, tier);
  if (tier === "hard") return pick(rng, [ineWordMax, ineSystemSolution, ineSmallestInt])(rng, tier);
  return pick(rng, [ineWordMax, ineSystemSolution])(rng, tier);
}

// ---- NRM: Nonlinear functions --------------------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): function evaluation, zeros
// and their product/sum, parabola vertex / minimum value, exponential
// growth/decay models (y-intercept, value after n periods, interpretation),
// graph transformations, and average rate of change. "challenged" tier uses
// composite parameters and interpretation, not just bigger numbers.

// Evaluate a quadratic (or cubic for harder tiers) at a point.
function nrmEvaluate(rng, tier) {
  const cubic = tier === "hard" || tier === "challenged" ? rng() < 0.5 : false;
  const k = band(tier, ri(rng, 1, 3), ri(rng, -2, 4), ri(rng, -3, 4), ri(rng, -4, 5));
  if (cubic) {
    const a = pick(rng, [1, 2]), b = ri(rng, -4, 4), c = ri(rng, -6, 6);
    const val = a * k ** 3 + b * k + c;
    return {
      context: null, contextType: null,
      question: `The function $f$ is defined by $f(x) = ${a === 1 ? "x^3" : `${a}x^3`}${b ? ` ${signed(b)}x` : ""}${c ? ` ${signed(c)}` : ""}$. What is the value of $f(${k})$?`,
      answerText: `$${val}$`,
      answerWhy: `Substitute $x = ${k}$: $f(${k}) = ${a}(${k})^3 ${b ? `${signed(b)}(${k}) ` : ""}${c ? signed(c) : ""} = ${val}$.`,
      distractors: [
        { text: `$${a * k * k + b * k + c}$`, why: `This squares $x$ instead of cubing it.` },
        { text: `$${val - 2 * c}$`, why: `This subtracts the constant ${c} instead of adding it.` },
        { text: `$${a * Math.abs(k) ** 3 + b * Math.abs(k) + c}$`, why: `This drops the sign of $x = ${k}$ when raising to an odd power.` },
      ],
      steps: [
        `Substitute $x = ${k}$ into $f(x)$.`,
        `Evaluate each term: $${a}(${k})^3 = ${a * k ** 3}$${b ? `, $${b}(${k}) = ${b * k}$` : ""}.`,
        `Add the results${c ? ` and the constant ${c}` : ""}: $f(${k}) = ${val}$.`,
      ],
      numeric: String(val),
      mathFormat: "function_mcq",
    };
  }
  const a = band(tier, 1, ri(rng, 1, 2), ri(rng, 1, 3), ri(rng, 2, 3));
  const b = ri(rng, -5, 5), c = ri(rng, -6, 8);
  const val = a * k * k + b * k + c;
  return {
    context: null, contextType: null,
    question: `The function $f$ is defined by $f(x) = ${quadTex(a, b, c)}$. What is the value of $f(${k})$?`,
    answerText: `$${val}$`,
    answerWhy: `Substituting $x = ${k}$ gives $f(${k}) = ${a}(${k})^2 ${b ? `${signed(b)}(${k}) ` : ""}${c ? signed(c) : ""} = ${val}$.`,
    distractors: [
      { text: `$${a * k * k - b * k + c}$`, why: `This flips the sign of the middle term when substituting.` },
      { text: `$${(a * k + b) * k}$`, why: `This drops the constant term ${c}.` },
      { text: `$${a * (2 * k) + b * k + c}$`, why: `This uses $2x$ in place of $x^2$.` },
    ],
    steps: [
      `Substitute $x = ${k}$ into $f(x) = ${quadTex(a, b, c)}$.`,
      `Square and multiply: $${a}(${k})^2 = ${a * k * k}$${b ? `, $${b}(${k}) = ${b * k}$` : ""}.`,
      `Combine all terms: $f(${k}) = ${val}$.`,
    ],
    numeric: String(val),
    mathFormat: "function_mcq",
  };
}

// Zeros of a factored quadratic: product (= c/a) or a specific intercept.
function nrmZeros(rng, tier) {
  let p = band(tier, ri(rng, 1, 4), ri(rng, -3, 4), ri(rng, -5, 5), ri(rng, -7, 6));
  let q = p + band(tier, ri(rng, 1, 5), ri(rng, 2, 6), ri(rng, 2, 8), ri(rng, 3, 9));
  const ask = pick(rng, ["product", "sum", "intercept"]);
  const fx = `(x ${signed(-p)})(x ${signed(-q)})`;
  if (ask === "intercept") {
    const t = pick(rng, [p, q]);
    return {
      context: null, contextType: null,
      question: `In the $xy$-plane, the graph of $f(x) = ${fx}$ intersects the $x$-axis at the points $(${p}, 0)$ and $(${q}, 0)$. Which is one of these $x$-values?`,
      answerText: `$${t}$`,
      answerWhy: `The graph crosses the $x$-axis where $f(x) = 0$, i.e. $x = ${p}$ or $x = ${q}$.`,
      distractors: [
        { text: `$${-t}$`, why: `Sign error: the factor $(x ${signed(-t)})$ gives $x = ${t}$, not $x = ${-t}$.` },
        { text: `$${p * q}$`, why: `This is the product of the zeros, not a zero.` },
        { text: `$${p + q}$`, why: `This is the sum of the zeros, not a zero.` },
      ],
      steps: [
        `The $x$-intercepts are the values of $x$ where $f(x) = 0$.`,
        `Set each factor equal to $0$: $x ${signed(-p)} = 0$ or $x ${signed(-q)} = 0$.`,
        `So the $x$-intercepts are $x = ${p}$ and $x = ${q}$.`,
      ],
      numeric: String(t),
      mathFormat: "function_mcq",
    };
  }
  const isProd = ask === "product";
  const val = isProd ? p * q : p + q;
  return {
    context: null, contextType: null,
    question: `The zeros of the function $f(x) = ${fx}$ are $${p}$ and $${q}$. What is the ${isProd ? "product" : "sum"} of the zeros of $f$?`,
    answerText: `$${val}$`,
    answerWhy: `The zeros are $${p}$ and $${q}$, so their ${isProd ? "product" : "sum"} is $${val}$.`,
    distractors: [
      { text: `$${isProd ? p + q : p * q}$`, why: `This is the ${isProd ? "sum" : "product"} of the zeros, not the ${isProd ? "product" : "sum"}.` },
      { text: `$${val + (isProd ? p : 1)}$`, why: `Arithmetic slip — recompute the ${isProd ? "product" : "sum"} carefully.` },
      { text: `$${-val}$`, why: `Sign error in combining $${p}$ and $${q}$.` },
    ],
    steps: [
      `The zeros are the solutions of $f(x) = 0$: $x = ${p}$ and $x = ${q}$.`,
      `${isProd ? "Multiply" : "Add"} the zeros: $${p} ${isProd ? `\\times ${q}` : signed(q)} = ${val}$.`,
      `So the ${isProd ? "product" : "sum"} of the zeros is $${val}$.`,
    ],
    numeric: String(val),
    mathFormat: "function_mcq",
  };
}

// Parabola in vertex form: minimum value or the x where the minimum occurs.
function nrmVertex(rng, tier) {
  const a = band(tier, 1, ri(rng, 1, 2), ri(rng, 1, 3), ri(rng, 2, 4));
  const h = band(tier, ri(rng, 1, 4), ri(rng, -3, 5), ri(rng, -5, 6), ri(rng, -6, 7));
  const k = band(tier, ri(rng, 1, 8), ri(rng, -4, 10), ri(rng, -6, 12), ri(rng, -8, 14));
  const askMin = rng() < 0.5;
  const fx = `${a === 1 ? "" : a}(x ${signed(-h)})^2 ${signed(k)}`;
  if (askMin) {
    return {
      context: null, contextType: null,
      question: `The function $f$ is defined by $f(x) = ${fx}$. What is the minimum value of $f(x)$?`,
      answerText: `$${k}$`,
      answerWhy: `In vertex form $a(x - h)^2 + k$ with $a > 0$, the squared term is at least $0$, so the minimum value is $k = ${k}$, reached at $x = ${h}$.`,
      distractors: [
        { text: `$${h}$`, why: `This is the $x$-value of the vertex, not the minimum output value.` },
        { text: `$${-k}$`, why: `Sign error: the minimum value is $k = ${k}$, not its opposite.` },
        { text: `$${a + k}$`, why: `This adds the leading coefficient; the minimum value is just $k$.` },
      ],
      steps: [
        `The function is in vertex form $a(x - h)^2 + k$ with $a = ${a} > 0$.`,
        `The smallest value of $(x ${signed(-h)})^2$ is $0$ (at $x = ${h}$).`,
        `So the minimum value of $f$ is $${a === 1 ? "" : `${a}(0) + `}${k} = ${k}$.`,
      ],
      numeric: String(k),
      mathFormat: "function_mcq",
    };
  }
  return {
    context: null, contextType: null,
    question: `The function $f$ is defined by $f(x) = ${fx}$. For what value of $x$ does $f(x)$ reach its minimum?`,
    answerText: `$${h}$`,
    answerWhy: `In vertex form $a(x - h)^2 + k$, the minimum occurs at $x = h = ${h}$.`,
    distractors: [
      { text: `$${-h}$`, why: `Sign error: $(x ${signed(-h)})^2$ is smallest at $x = ${h}$, not $x = ${-h}$.` },
      { text: `$${k}$`, why: `This is the minimum value of $f$, not the $x$ where it occurs.` },
      { text: `$0$`, why: `The vertex is at $x = ${h}$ here, not at the origin.` },
    ],
    steps: [
      `The function is in vertex form $a(x - h)^2 + k$.`,
      `The squared term $(x ${signed(-h)})^2$ is smallest (equal to $0$) when $x ${signed(-h)} = 0$.`,
      `So the minimum occurs at $x = ${h}$.`,
    ],
    numeric: String(h),
    mathFormat: "function_mcq",
  };
}

// Exponential model: y-intercept (= a) or value after n periods (= a*b^n).
function nrmExpValue(rng, tier) {
  const a = pick(rng, [2, 3, 4, 5, 10, 50, 100, 200, 500]);
  const b = pick(rng, [2, 3]);
  const askN = tier !== "easy" && rng() < 0.6;
  if (!askN) {
    return {
      context: `A quantity is modeled by $f(x) = ${a}(${b})^x$, where $x$ is the number of time periods.`,
      contextType: "passage",
      question: `What is the value of $f(0)$, the initial amount?`,
      answerText: `$${a}$`,
      answerWhy: `Any nonzero base to the $0$ power is $1$, so $f(0) = ${a}(${b})^0 = ${a}(1) = ${a}$.`,
      distractors: [
        { text: `$${a * b}$`, why: `This is $f(1)$, the value after one period, not the initial amount.` },
        { text: `$${b}$`, why: `This is the growth factor (base), not the initial amount.` },
        { text: `$0$`, why: `$f(0)$ uses the exponent $0$, which makes the power $1$, not $0$.` },
      ],
      steps: [
        `The initial amount is $f(0)$.`,
        `Substitute $x = 0$: $f(0) = ${a}(${b})^0$.`,
        `Since $(${b})^0 = 1$, $f(0) = ${a}$.`,
      ],
      numeric: String(a),
      mathFormat: "function_mcq",
    };
  }
  const n = band(tier, 1, ri(rng, 1, 2), ri(rng, 2, 3), ri(rng, 2, 3));
  const val = a * b ** n;
  return {
    context: `A quantity is modeled by $f(x) = ${a}(${b})^x$, where $x$ is the number of time periods.`,
    contextType: "passage",
    question: `What is the value of the quantity after $${n}$ time period${n === 1 ? "" : "s"}?`,
    answerText: `$${val}$`,
    answerWhy: `Substitute $x = ${n}$: $f(${n}) = ${a}(${b})^${n} = ${a}(${b ** n}) = ${val}$.`,
    distractors: [
      { text: `$${a * b * n}$`, why: `This multiplies by ${b}·${n} instead of raising ${b} to the power ${n}.` },
      { text: `$${a + b * n}$`, why: `This adds growth instead of compounding it (that would be linear, not exponential).` },
      { text: `$${b ** n}$`, why: `This drops the initial amount ${a}.` },
    ],
    steps: [
      `Substitute $x = ${n}$ into $f(x) = ${a}(${b})^x$.`,
      `Evaluate the power: $(${b})^${n} = ${b ** n}$.`,
      `Multiply by the initial amount: $${a} \\times ${b ** n} = ${val}$.`,
    ],
    numeric: String(val),
    mathFormat: "function_mcq",
  };
}

// Interpretation of an exponential model (MCQ): growth/decay factor meaning.
function nrmExpInterpret(rng, tier) {
  const a = pick(rng, [120, 200, 250, 400, 500, 1000]);
  const grow = rng() < 0.5;
  const b = grow ? pick(rng, [2, 3]) : pick(rng, ["\\tfrac{1}{2}", "\\tfrac{1}{3}"]);
  const word = grow ? `multiplied by ${b}` : `multiplied by ${b} (that is, it ${b === "\\tfrac{1}{2}" ? "halves" : "shrinks"})`;
  const correct = `Each time $x$ increases by $1$, the value is ${word}.`;
  return {
    context: `The function $f(x) = ${a}(${b})^x$ models a quantity, where $x$ is the number of years.`,
    contextType: "passage",
    question: `Which statement best describes how the quantity changes?`,
    answerText: correct,
    answerWhy: `In $f(x) = a\\,b^x$, the base $b = ${b}$ is the factor the quantity is multiplied by for each $1$-unit increase in $x$.`,
    distractors: [
      { text: `Each time $x$ increases by $1$, the value increases by ${a}.`, why: `Adding a constant each step is linear growth; this model is exponential (it multiplies).` },
      { text: `The quantity starts at ${grow ? b : "0"} and grows by ${a} each year.`, why: `The initial value is $f(0) = ${a}$, and the change is multiplicative, not additive.` },
      { text: `Each time $x$ increases by $1$, the value is increased by ${grow ? b : 2}%.`, why: `The base is a multiplying factor, not a percent added to the previous value.` },
    ],
    steps: [
      `Compare $f(x) = ${a}(${b})^x$ with the exponential form $a\\,b^x$.`,
      `Here $a = ${a}$ is the initial value and $b = ${b}$ is the growth/decay factor.`,
      `For every increase of $1$ in $x$, the output is multiplied by the base $b = ${b}$.`,
    ],
    numeric: null,
    mathFormat: "function_mcq",
  };
}

// Graph transformation (MCQ): vertical/horizontal shift of a known function.
function nrmTransform(rng, tier) {
  const k = ri(rng, 2, 6);
  const vert = rng() < 0.5;
  const up = rng() < 0.5;
  const g = vert
    ? `g(x) = f(x) ${up ? "+" : "-"} ${k}`
    : `g(x) = f(x ${up ? "-" : "+"} ${k})`;
  const correct = vert
    ? `The graph of $f$ shifted ${up ? "up" : "down"} by ${k} units.`
    : `The graph of $f$ shifted ${up ? "right" : "left"} by ${k} units.`;
  const wrong = [
    `The graph of $f$ shifted ${vert ? (up ? "down" : "up") : (up ? "left" : "right")} by ${k} units.`,
    `The graph of $f$ ${vert ? "shifted right" : "shifted up"} by ${k} units.`,
    `The graph of $f$ stretched vertically by a factor of ${k}.`,
  ];
  return {
    context: `The function $g$ is defined by $${g}$, where $f$ is a function.`,
    contextType: "passage",
    question: `Which best describes the graph of $g$ compared with the graph of $f$?`,
    answerText: correct,
    answerWhy: vert
      ? `Adding ${up ? "" : "a negative "}${k} to the output shifts the graph ${up ? "up" : "down"} by ${k}.`
      : `Replacing $x$ with $x ${up ? "-" : "+"} ${k}$ shifts the graph ${up ? "right" : "left"} by ${k} (horizontal shifts move opposite the sign).`,
    distractors: wrong.map((t) => ({ text: t, why: vert ? `Recheck the direction: a constant added outside $f$ moves the graph up, subtracted moves it down.` : `Recheck the direction: replacing $x$ with $x ${up ? "-" : "+"} ${k}$ moves the graph ${up ? "right" : "left"}, opposite the sign.` })),
    steps: [
      `Compare $g(x) = ${g}$ with $f(x)$.`,
      vert ? `A change ${up ? "added to" : "subtracted from"} the whole function shifts the graph vertically.` : `A change to the input $x$ shifts the graph horizontally, opposite the sign.`,
      `So $g$ is $f$ shifted ${vert ? (up ? "up" : "down") : (up ? "right" : "left")} by ${k} units.`,
    ],
    numeric: null,
    mathFormat: "function_mcq",
  };
}

// Average rate of change of a vertex-form quadratic over an interval.
function nrmARC(rng, tier) {
  const a = band(tier, 1, ri(rng, 1, 3), ri(rng, 2, 4), ri(rng, 2, 5));
  const h = band(tier, ri(rng, 2, 7), ri(rng, 2, 9), ri(rng, 3, 11), ri(rng, 3, 13));
  const k = band(tier, ri(rng, 2, 12), ri(rng, 3, 18), ri(rng, 4, 24), ri(rng, 5, 30));
  const t1 = h - 1;
  const t2 = h + band(tier, ri(rng, 3, 4), ri(rng, 3, 5), ri(rng, 3, 6), ri(rng, 3, 7));
  const y1 = a * (t1 - h) ** 2 + k;
  const y2 = a * (t2 - h) ** 2 + k;
  const arc = (y2 - y1) / (t2 - t1);
  return {
    context: `A model gives height $h(t) = ${a}(t - ${h})^2 + ${k}$ (feet) for time $t$ in seconds.`,
    contextType: "passage",
    question: pick(rng, [`What is the average rate of change of $h$ from $t = ${t1}$ to $t = ${t2}$, in feet per second?`, `Over the interval $t = ${t1}$ to $t = ${t2}$, what is the average rate of change of $h$, in feet per second?`]),
    answerText: `$${arc}$`,
    answerWhy: `The difference quotient over $[${t1}, ${t2}]$ equals $\\dfrac{${y2} - ${y1}}{${t2} - ${t1}} = ${arc}$.`,
    distractors: [
      { text: `$${a}$`, why: `This is the leading coefficient, not the average rate of change.` },
      { text: `$${y2 - y1}$`, why: `This is the change in height but is not divided by the change in time.` },
      { text: `$${-arc}$`, why: `This has the sign of the difference reversed.` },
    ],
    steps: [
      `Evaluate the endpoints: $h(${t1}) = ${a}(${t1 - h})^2 + ${k} = ${y1}$.`,
      `$h(${t2}) = ${a}(${t2 - h})^2 + ${k} = ${y2}$.`,
      `Average rate of change $= \\dfrac{${y2} - ${y1}}{${t2} - ${t1}} = \\dfrac{${y2 - y1}}{${t2 - t1}} = ${arc}$.`,
    ],
    numeric: String(arc),
    mathFormat: "function_mcq",
  };
}

function genNRM(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return pick(rng, [nrmEvaluate, nrmExpValue])(rng, tier);
    if (tier === "medium") return pick(rng, [nrmEvaluate, nrmZeros, nrmVertex, nrmExpValue])(rng, tier);
    if (tier === "hard") return pick(rng, [nrmVertex, nrmZeros, nrmARC, nrmEvaluate])(rng, tier);
    return pick(rng, [nrmARC, nrmVertex, nrmZeros, nrmEvaluate])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [nrmEvaluate, nrmExpValue, nrmZeros])(rng, tier);
  if (tier === "medium") return pick(rng, [nrmZeros, nrmVertex, nrmExpInterpret, nrmEvaluate])(rng, tier);
  if (tier === "hard") return pick(rng, [nrmVertex, nrmExpInterpret, nrmTransform, nrmARC])(rng, tier);
  return pick(rng, [nrmTransform, nrmARC, nrmVertex, nrmExpInterpret])(rng, tier);
}

// Render "a x^2 + b x + c" cleanly (omits zero terms, handles ±1 coefficients).
function quadTex(a, b, c) {
  let s = a === 1 ? "x^2" : a === -1 ? "-x^2" : `${a}x^2`;
  if (b !== 0) {
    const mag = Math.abs(b) === 1 ? "x" : `${Math.abs(b)}x`;
    s += b > 0 ? ` + ${mag}` : ` - ${mag}`;
  }
  if (c !== 0) s += c > 0 ? ` + ${c}` : ` - ${Math.abs(c)}`;
  return s;
}

// ---- NRE: Nonlinear equations in one variable ----------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): factoring, number of real
// solutions (discriminant), one-solution parameter, radical equations with an
// extraneous root, sum of roots via Vieta when the quadratic does not factor,
// and quadratic + linear system intersection counts. The "challenged" tier
// uses non-factorable quadratics, leading coefficients, and extraneous-root
// radical equations — genuinely harder methods, not just bigger numbers.

// Factor a monic (or near-monic) quadratic and report the greater/positive root.
function nreFactor(rng, tier) {
  let r1 = band(tier, ri(rng, 1, 6), ri(rng, -4, 4), ri(rng, -6, 5), ri(rng, -8, 6));
  const r2 = r1 + band(tier, ri(rng, 2, 7), ri(rng, 2, 8), ri(rng, 3, 9), ri(rng, 3, 11));
  const b = -(r1 + r2), c = r1 * r2;
  const oneNeg = r1 <= 0 && r2 > 0;
  const q = oneNeg
    ? pick(rng, [`What is the positive solution to $${quadTex(1, b, c)} = 0$?`, `If $${quadTex(1, b, c)} = 0$, what is the positive value of $x$?`])
    : pick(rng, [`What is the greater solution to $${quadTex(1, b, c)} = 0$?`, `The equation $${quadTex(1, b, c)} = 0$ has two solutions. What is the larger one?`, `What is the larger of the two solutions to $${quadTex(1, b, c)} = 0$?`, `If $${quadTex(1, b, c)} = 0$, what is the greater value of $x$?`]);
  return {
    context: null, contextType: null,
    question: q,
    answerText: `$${r2}$`,
    answerWhy: `The factors are $(x ${signed(-r1)})(x ${signed(-r2)})$, so the roots are $${r1}$ and $${r2}$; the ${oneNeg ? "positive" : "greater"} one is $${r2}$.`,
    distractors: [
      { text: `$${r1}$`, why: `This is the ${oneNeg ? "negative" : "smaller"} root, not the ${oneNeg ? "positive" : "greater"} one.` },
      { text: `$${r1 + r2}$`, why: `This is the sum of the roots $(-b)$, not a root itself.` },
      { text: `$${-r2}$`, why: `Sign error: the factor $(x ${signed(-r2)})$ gives $x = ${r2}$, not $x = ${-r2}$.` },
    ],
    steps: [
      `Factor the quadratic: $${quadTex(1, b, c)} = (x ${signed(-r1)})(x ${signed(-r2)})$.`,
      `Set each factor equal to $0$: $x = ${r1}$ or $x = ${r2}$.`,
      `The ${oneNeg ? "positive" : "greater"} solution is $x = ${r2}$.`,
    ],
    numeric: String(r2),
    mathFormat: "quadratic_mcq",
  };
}

// "How many distinct real solutions?" — discriminant reasoning (MCQ only).
function nreNumReal(rng, tier) {
  const a = band(tier, 1, 1, ri(rng, 1, 2), ri(rng, 1, 3));
  const which = pick(rng, ["two", "one", "none"]);
  let b, c;
  if (which === "two") { const p = ri(rng, -5, 3), q = p + ri(rng, 2, 7); b = -a * (p + q); c = a * p * q; }
  else if (which === "one") { const r = ri(rng, 1, 7); b = -2 * a * r; c = a * r * r; }
  else { b = ri(rng, -5, 5); c = Math.ceil((b * b) / (4 * a)) + ri(rng, 1, 6); }
  const D = b * b - 4 * a * c;
  const LABELS = {
    none: "Zero real solutions", one: "Exactly one real solution",
    two: "Exactly two real solutions", many: "More than two real solutions",
  };
  const pool = ["none", "one", "two", "many"].filter((k) => k !== which).slice(0, 3);
  return {
    context: null, contextType: null,
    question: pick(rng, [`How many distinct real solutions does the equation $${quadTex(a, b, c)} = 0$ have?`, `For the equation $${quadTex(a, b, c)} = 0$, how many distinct real solutions are there?`]),
    answerText: LABELS[which],
    answerWhy: `The discriminant is $b^2 - 4ac = (${b})^2 - 4(${a})(${c}) = ${D}$, which is ${D > 0 ? "positive (two real solutions)" : D === 0 ? "zero (one repeated real solution)" : "negative (no real solutions)"}.`,
    distractors: pool.map((k) => ({
      text: LABELS[k],
      why: k === "many" ? `A quadratic equation has at most two real solutions.` : `The sign of the discriminant $${D}$ does not give ${LABELS[k].toLowerCase()}.`,
    })),
    steps: [
      `Identify $a = ${a}$, $b = ${b}$, $c = ${c}$ in $ax^2 + bx + c = 0$.`,
      `Compute the discriminant $b^2 - 4ac = (${b})^2 - 4(${a})(${c}) = ${D}$.`,
      `Since the discriminant is ${D > 0 ? "positive" : D === 0 ? "zero" : "negative"}, there ${which === "two" ? "are two" : which === "one" ? "is one" : "are no"} real solution${which === "two" ? "s" : which === "one" ? "" : "s"}.`,
    ],
    numeric: null,
    mathFormat: "quadratic_mcq",
  };
}

// One-solution parameter: find the constant that makes the discriminant zero.
function nreDiscParam(rng, tier) {
  const a = band(tier, 1, 1, 1, pick(rng, [2, 3]));
  const m = band(tier, ri(rng, 2, 5), ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 11));
  // a x^2 + b x + k = 0 has one solution  <=>  k = b^2/(4a). Pick b = 2 a m so k = a m^2.
  const b = 2 * a * m, k = a * m * m;
  return {
    context: null, contextType: null,
    question: `In the equation $${quadTex(a, b, 0).replace(/ \+ 0$/, "")} + k = 0$, $k$ is a constant. If the equation has exactly one real solution, what is the value of $k$?`,
    answerText: `$${k}$`,
    answerWhy: `One real solution means the discriminant is $0$: $b^2 - 4ak = 0$, so $k = \\dfrac{b^2}{4a} = \\dfrac{${b * b}}{${4 * a}} = ${k}$.`,
    distractors: [
      { text: `$${b * b}$`, why: `This is $b^2$ but forgets to divide by $4a$.` },
      { text: `$${Math.round((b * b) / 4)}$`, why: `This divides by $4$ but ignores the leading coefficient $a = ${a}$.` },
      { text: `$${2 * m}$`, why: `This is $b/a$, not the constant that makes the discriminant zero.` },
    ],
    steps: [
      `A quadratic $ax^2 + bx + k = 0$ has exactly one real solution when its discriminant is $0$.`,
      `Set $b^2 - 4ak = 0$ with $a = ${a}$, $b = ${b}$: $${b * b} - ${4 * a}k = 0$.`,
      `Solve for $k$: $k = \\dfrac{${b * b}}{${4 * a}} = ${k}$.`,
    ],
    numeric: String(k),
    mathFormat: "quadratic_mcq",
  };
}

// Radical equation. Easy/medium: sqrt(ax+b)=c (no extraneous). Hard/challenged:
// sqrt(x+a)=x-b with an extraneous root to reject.
function nreRadical(rng, tier) {
  if (tier === "hard" || tier === "challenged") {
    const b = ri(rng, 1, 4);
    const v = b + ri(rng, 3, 7);            // valid solution, v > b
    const a = (v - b) * (v - b) - v;        // forces sqrt(v+a) = v-b
    const w = 2 * b + 1 - v;                // the extraneous root (sum of roots = 2b+1)
    return {
      context: null, contextType: null,
      question: `What is the solution to the equation $\\sqrt{x + ${a}} = x - ${b}$?`,
      answerText: `$${v}$`,
      answerWhy: `Squaring gives $x + ${a} = (x - ${b})^2$, i.e. $x^2 - ${2 * b + 1}x + ${b * b - a} = 0$, whose roots are $${v}$ and $${w}$; only $x = ${v}$ satisfies the original equation.`,
      distractors: [
        { text: `$${w}$`, why: `This is the extraneous root: $\\sqrt{${w} + ${a}} \\neq ${w} - ${b}$ because $${w} - ${b} < 0$.` },
        { text: `$${v + 1}$`, why: `Off by one — substitute back to check.` },
        { text: `$${b}$`, why: `This makes the right side $0$, but the left side is not $0$ here.` },
      ],
      steps: [
        `Square both sides: $x + ${a} = (x - ${b})^2 = x^2 - ${2 * b}x + ${b * b}$.`,
        `Rearrange: $x^2 - ${2 * b + 1}x + ${b * b - a} = 0$, which factors as $(x - ${v})(x - ${w}) = 0$.`,
        `Test both: $x = ${v}$ works, but $x = ${w}$ is extraneous (the right side would be negative). So $x = ${v}$.`,
      ],
      numeric: String(v),
      mathFormat: "quadratic_mcq",
    };
  }
  const a = pick(rng, [1, 2, 3]);
  const c = band(tier, ri(rng, 2, 5), ri(rng, 2, 7), ri(rng, 3, 8), ri(rng, 3, 9));
  const x = band(tier, ri(rng, 1, 6), ri(rng, 2, 9), ri(rng, 2, 11), ri(rng, 3, 12));
  const bb = c * c - a * x;                 // so that a*x + bb = c^2
  return {
    context: null, contextType: null,
    question: `If $\\sqrt{${coefTerm(a, "x")} ${signed(bb)}} = ${c}$, what is the value of $x$?`,
    answerText: `$${x}$`,
    answerWhy: `Squaring both sides gives $${coefTerm(a, "x")} ${signed(bb)} = ${c * c}$, so $x = ${x}$.`,
    distractors: [
      { text: `$${c * c}$`, why: `This is $${c}^2$ but does not finish solving the linear equation for $x$.` },
      { text: `$${x + c}$`, why: `This adds $${c}$ instead of squaring it correctly.` },
      { text: `$${a * x}$`, why: `This is $${a}x$, not $x$ — remember to divide by the coefficient.` },
    ],
    steps: [
      `Square both sides to remove the radical: $${coefTerm(a, "x")} ${signed(bb)} = ${c}^2 = ${c * c}$.`,
      `Solve the linear equation: $${coefTerm(a, "x")} = ${c * c - bb}$.`,
      `Divide by $${a}$: $x = ${x}$.`,
    ],
    numeric: String(x),
    mathFormat: "quadratic_mcq",
  };
}

// Sum of all solutions via Vieta — quadratic chosen so it does NOT factor over
// the integers, forcing the formula sum = -b/a. (challenged/hard)
function nreVietaSum(rng, tier) {
  const a = tier === "challenged" ? pick(rng, [1, 2]) : 1;
  let b = a * ri(rng, -6, 6) * 2;           // ensures -b/a is an integer
  if (b === 0) b = 2 * a;
  // pick c so the discriminant is positive but not a perfect square (won't factor)
  let c, D, tries = 0;
  do { c = ri(rng, -9, -1); D = b * b - 4 * a * c; tries++; }
  while ((Math.sqrt(D) % 1 === 0) && tries < 20);
  const sum = -b / a;
  return {
    context: null, contextType: null,
    question: pick(rng, [`What is the sum of the solutions to the equation $${quadTex(a, b, c)} = 0$?`, `The equation $${quadTex(a, b, c)} = 0$ has two real solutions. What is their sum?`]),
    answerText: `$${sum}$`,
    answerWhy: `For $ax^2 + bx + c = 0$ the sum of the solutions is $-\\dfrac{b}{a} = -\\dfrac{${b}}{${a}} = ${sum}$ (no need to find the roots themselves).`,
    distractors: [
      { text: `$${c}$`, why: `This is the constant term; the product of the roots is $c/a$, not their sum.` },
      { text: `$${-sum}$`, why: `Sign error: the sum is $-b/a$, not $b/a$.` },
      { text: `$${b}$`, why: `This is $b$ itself, not $-b/a$.` },
    ],
    steps: [
      `The discriminant $b^2 - 4ac = ${b * b - 4 * a * c}$ is not a perfect square, so the quadratic does not factor over the integers.`,
      `By Vieta's formulas, the sum of the solutions of $ax^2 + bx + c = 0$ is $-\\dfrac{b}{a}$.`,
      `Substitute $a = ${a}$, $b = ${b}$: sum $= -\\dfrac{${b}}{${a}} = ${sum}$.`,
    ],
    numeric: String(sum),
    mathFormat: "quadratic_mcq",
  };
}

// Quadratic + linear system: how many points of intersection (MCQ).
function nreSystemCount(rng, tier) {
  const which = pick(rng, ["two", "one", "none"]);
  let B, C; // resulting x^2 + Bx + C = 0 after setting equal
  if (which === "two") { const p = ri(rng, -4, 2), q = p + ri(rng, 2, 6); B = -(p + q); C = p * q; }
  else if (which === "one") { const r = ri(rng, -3, 3); B = -2 * r; C = r * r; }
  else { B = ri(rng, -4, 4); C = Math.ceil((B * B) / 4) + ri(rng, 1, 5); }
  // parabola y = x^2 + b1 x + c1 ; line y = m x + k ; with b1 - m = B, c1 - k = C
  const b1 = ri(rng, -3, 3), c1 = ri(rng, 1, 6);
  const m = b1 - B, k = c1 - C;
  const D = B * B - 4 * C;
  const LBL = { none: "Zero", one: "One", two: "Two" };
  const correct = which === "two" ? "Two" : which === "one" ? "One" : "Zero";
  const pool = [{ k: "Zero", t: "Zero" }, { k: "One", t: "One" }, { k: "Two", t: "Two" }, { k: "Inf", t: "Infinitely many" }]
    .filter((o) => o.t !== correct).slice(0, 3);
  return {
    context: null, contextType: null,
    question: `In the $xy$-plane, the graphs of $y = ${quadTex(1, b1, c1)}$ and $y = ${coefTerm(m, "x")} ${signed(k)}$ are drawn. How many points do the two graphs have in common?`,
    answerText: LBL[which],
    answerWhy: `Setting the expressions equal gives $${quadTex(1, B, C)} = 0$, whose discriminant is $${D}$ — ${D > 0 ? "two" : D === 0 ? "one" : "no"} real solution${D === 0 ? "" : "s"}, hence ${LBL[which].toLowerCase()} intersection point${which === "one" ? "" : "s"}.`,
    distractors: pool.map((o) => ({ text: o.t, why: o.k === "Inf" ? `A line and a parabola meet in at most two points.` : `The discriminant $${D}$ does not give ${o.t.toLowerCase()} intersection points.` })),
    steps: [
      `Set the two expressions equal: $${quadTex(1, b1, c1)} = ${coefTerm(m, "x")} ${signed(k)}$.`,
      `Move everything to one side: $${quadTex(1, B, C)} = 0$.`,
      `The discriminant is $(${B})^2 - 4(1)(${C}) = ${D}$, so there are ${LBL[which].toLowerCase()} intersection points.`,
    ],
    numeric: null,
    mathFormat: "quadratic_mcq",
  };
}

function genNRE(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return nreFactor(rng, tier);
    if (tier === "medium") return pick(rng, [nreFactor, nreRadical, nreDiscParam])(rng, tier);
    if (tier === "hard") return pick(rng, [nreDiscParam, nreRadical, nreVietaSum])(rng, tier);
    return pick(rng, [nreVietaSum, nreDiscParam, nreRadical])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [nreFactor, nreNumReal])(rng, tier);
  if (tier === "medium") return pick(rng, [nreFactor, nreNumReal, nreRadical, nreSystemCount])(rng, tier);
  if (tier === "hard") return pick(rng, [nreDiscParam, nreNumReal, nreSystemCount, nreRadical])(rng, tier);
  return pick(rng, [nreVietaSum, nreSystemCount, nreDiscParam, nreRadical])(rng, tier);
}

// ---- EQS: Equivalent expressions -----------------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): difference of squares,
// factoring, identity coefficient-matching (find a constant), exponent rules,
// and rational-expression simplification. EQS answers are expressions or ratio
// constants (not single grid-in numbers), so EQS stays MCQ-only.

// (ax+b)^2 - (ax-b)^2 = 4ab x  (difference of squares)
function eqsDiffSquares(rng, tier) {
  const a = band(tier, ri(rng, 2, 6), ri(rng, 2, 8), ri(rng, 3, 10), ri(rng, 3, 12));
  const b = band(tier, ri(rng, 3, 20), ri(rng, 4, 26), ri(rng, 5, 32), ri(rng, 6, 40));
  const ans = 4 * a * b;
  return {
    context: null, contextType: null,
    question: pick(rng, [`Which expression is equivalent to $(${a}x + ${b})^2 - (${a}x - ${b})^2$?`, `The expression $(${a}x + ${b})^2 - (${a}x - ${b})^2$ is equivalent to which of the following?`]),
    answerText: `$${ans}x$`,
    answerWhy: `By difference of squares the expression simplifies to $${ans}x$.`,
    distractors: [
      { text: `$${2 * a * b}x$`, why: `This uses $2ab$ instead of $4ab$ — only half the cross term.` },
      { text: `$${2 * a * a}x^2 + ${2 * b * b}$`, why: `This squares each binomial separately and keeps the squared terms, which actually cancel.` },
      { text: `$${4 * b}x$`, why: `This uses $4b$ and forgets the factor of $a$.` },
    ],
    steps: [
      `Let $u = ${a}x + ${b}$ and $v = ${a}x - ${b}$, so the expression is $u^2 - v^2 = (u + v)(u - v)$.`,
      `$u + v = ${2 * a}x$ and $u - v = ${2 * b}$.`,
      `Product: $(${2 * a}x)(${2 * b}) = ${ans}x$.`,
    ],
    numeric: null,
    mathFormat: "expression_mcq",
  };
}

// "Which is a factor of x^2 + bx + c?" (roots kept positive so distractors are
// guaranteed non-factors).
function eqsFactor(rng, tier) {
  const r1 = band(tier, ri(rng, 2, 4), ri(rng, 2, 6), ri(rng, 2, 8), ri(rng, 3, 9));
  const r2 = r1 + band(tier, ri(rng, 1, 4), ri(rng, 1, 5), ri(rng, 1, 6), ri(rng, 2, 7));
  const b = -(r1 + r2), c = r1 * r2;
  return {
    context: null, contextType: null,
    question: `Which of the following is a factor of the polynomial $${quadTex(1, b, c)}$?`,
    answerText: `$(x - ${r1})$`,
    answerWhy: `Since $${quadTex(1, b, c)} = (x - ${r1})(x - ${r2})$, both $(x - ${r1})$ and $(x - ${r2})$ are factors.`,
    distractors: [
      { text: `$(x + ${r1})$`, why: `$x = -${r1}$ is not a root, so $(x + ${r1})$ is not a factor.` },
      { text: `$(x - ${r1 + r2})$`, why: `$${r1 + r2}$ is the sum of the roots, not a root, so this is not a factor.` },
      { text: `$(x - ${c})$`, why: `$${c}$ is the product of the roots, not a root, so this is not a factor.` },
    ],
    steps: [
      `Look for two numbers that multiply to $${c}$ and add to $${-b}$: they are $${r1}$ and $${r2}$.`,
      `So $${quadTex(1, b, c)} = (x - ${r1})(x - ${r2})$.`,
      `Therefore $(x - ${r1})$ is a factor.`,
    ],
    numeric: null,
    mathFormat: "expression_mcq",
  };
}

// Identity coefficient-matching: expand (mx+p)(nx+q) and read off a coefficient.
function eqsIdentity(rng, tier) {
  const m = band(tier, 1, ri(rng, 1, 3), ri(rng, 2, 4), ri(rng, 2, 5));
  const n = band(tier, ri(rng, 1, 3), ri(rng, 1, 4), ri(rng, 2, 5), ri(rng, 2, 6));
  const p = ri(rng, -6, 6) || 2, q = ri(rng, -6, 6) || 3;
  const A = m * n, B = m * q + n * p, C = p * q;
  // Half the time a "which is equivalent" item; half the time "find the coefficient b".
  if (rng() < 0.5) {
    return {
      context: null, contextType: null,
      question: `Which of the following is equivalent to $(${coefTerm(m, "x")} ${signed(p)})(${coefTerm(n, "x")} ${signed(q)})$?`,
      answerText: `$${quadTex(A, B, C)}$`,
      answerWhy: `Expanding with FOIL: $${A}x^2 ${signed(B)}x ${signed(C)}$.`,
      distractors: [
        { text: `$${quadTex(A, m * q - n * p, C)}$`, why: `Sign slip in the cross term ($mq - np$ instead of $mq + np$).` },
        { text: `$${quadTex(A, 0, C).replace(/ \+ 0x/, "")}$`, why: `This forgets the middle (cross) term entirely.` },
        { text: `$${quadTex(A, B + m * n, C)}$`, why: `Arithmetic error when combining the outer and inner products.` },
      ],
      steps: [
        `Use FOIL: First $= ${A}x^2$; Outer $= ${m * q}x$; Inner $= ${n * p}x$; Last $= ${C}$.`,
        `Combine the middle terms: $${m * q}x ${signed(n * p)}x = ${B}x$.`,
        `So the product is $${quadTex(A, B, C)}$.`,
      ],
      numeric: null,
      mathFormat: "expression_mcq",
    };
  }
  return {
    context: null, contextType: null,
    question: `The equation $(${coefTerm(m, "x")} ${signed(p)})(${coefTerm(n, "x")} ${signed(q)}) = ${A === 1 ? "" : A}x^2 + bx ${signed(C)}$ is true for all $x$, where $b$ is a constant. What is the value of $b$?`,
    answerText: `$${B}$`,
    answerWhy: `Expanding the left side, the coefficient of $x$ is $mq + np = ${m * q} + ${n * p} = ${B}$.`,
    distractors: [
      { text: `$${m * q - n * p}$`, why: `Sign slip: this is $mq - np$, not $mq + np$.` },
      { text: `$${C}$`, why: `This is the constant term $pq$, not the coefficient of $x$.` },
      { text: `$${A}$`, why: `This is the coefficient of $x^2$, not of $x$.` },
    ],
    steps: [
      `Expand the left side with FOIL: $${A}x^2 + (${m * q} + ${n * p})x ${signed(C)}$.`,
      `Match the coefficient of $x$ on both sides: $b = ${m * q} + ${n * p}$.`,
      `So $b = ${B}$.`,
    ],
    numeric: null,
    mathFormat: "expression_mcq",
  };
}

// Exponent rules: product, power-of-a-power, or power-of-a-product.
function eqsExponent(rng, tier) {
  const m = ri(rng, 2, 6), n = ri(rng, 2, 6);
  const form = pick(rng, tier === "easy" ? ["product", "power"] : ["product", "power", "prodpow"]);
  if (form === "product") {
    return {
      context: null, contextType: null,
      question: `Which of the following is equivalent to $x^{${m}} \\cdot x^{${n}}$, where $x > 0$?`,
      answerText: `$x^{${m + n}}$`,
      answerWhy: `When multiplying powers with the same base, add the exponents: $x^{${m}} \\cdot x^{${n}} = x^{${m + n}}$.`,
      distractors: [
        { text: `$x^{${m * n}}$`, why: `This multiplies the exponents; that rule is for a power raised to a power.` },
        { text: `$x^{${Math.abs(m - n)}}$`, why: `This subtracts the exponents; subtraction is the rule for division.` },
        { text: `$${2}x^{${m + n}}$`, why: `The coefficient stays $1$; only the exponents add.` },
      ],
      steps: [
        `The bases are the same ($x$), and the powers are multiplied.`,
        `Add the exponents: $${m} + ${n} = ${m + n}$.`,
        `So $x^{${m}} \\cdot x^{${n}} = x^{${m + n}}$.`,
      ],
      numeric: null,
      mathFormat: "expression_mcq",
    };
  }
  if (form === "power") {
    return {
      context: null, contextType: null,
      question: `Which of the following is equivalent to $\\left(x^{${m}}\\right)^{${n}}$, where $x > 0$?`,
      answerText: `$x^{${m * n}}$`,
      answerWhy: `A power raised to a power multiplies the exponents: $\\left(x^{${m}}\\right)^{${n}} = x^{${m * n}}$.`,
      distractors: [
        { text: `$x^{${m + n}}$`, why: `This adds the exponents; addition is the rule for multiplying like bases.` },
        { text: `$x^{${m * n + 1}}$`, why: `Arithmetic slip — multiply the exponents exactly: $${m} \\times ${n} = ${m * n}$.` },
        { text: `$${n}x^{${m}}$`, why: `The outer exponent applies to the power, not as a coefficient.` },
      ],
      steps: [
        `A power raised to another power multiplies the exponents.`,
        `Multiply: $${m} \\times ${n} = ${m * n}$.`,
        `So $\\left(x^{${m}}\\right)^{${n}} = x^{${m * n}}$.`,
      ],
      numeric: null,
      mathFormat: "expression_mcq",
    };
  }
  const p = ri(rng, 2, 4);
  return {
    context: null, contextType: null,
    question: `Which of the following is equivalent to $\\left(${p}x^{${m}}y^{${n}}\\right)^{2}$, where $x > 0$ and $y > 0$?`,
    answerText: `$${p * p}x^{${2 * m}}y^{${2 * n}}$`,
    answerWhy: `Square each factor: $${p}^2 = ${p * p}$, $\\left(x^{${m}}\\right)^2 = x^{${2 * m}}$, $\\left(y^{${n}}\\right)^2 = y^{${2 * n}}$.`,
    distractors: [
      { text: `$${2 * p}x^{${2 * m}}y^{${2 * n}}$`, why: `This doubles the coefficient instead of squaring it.` },
      { text: `$${p * p}x^{${m}}y^{${n}}$`, why: `This squares only the coefficient and forgets to square the variable powers.` },
      { text: `$${p * p}x^{${m + 2}}y^{${n + 2}}$`, why: `This adds $2$ to each exponent instead of multiplying by $2$.` },
    ],
    steps: [
      `Raise each factor inside the parentheses to the power $2$.`,
      `Coefficient: $${p}^2 = ${p * p}$. Variables: multiply exponents by $2$.`,
      `Result: $${p * p}x^{${2 * m}}y^{${2 * n}}$.`,
    ],
    numeric: null,
    mathFormat: "expression_mcq",
  };
}

// Rational-expression simplification (x != excluded value).
function eqsRational(rng, tier) {
  if (rng() < 0.5) {
    const k = band(tier, ri(rng, 2, 5), ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 11));
    return {
      context: null, contextType: null,
      question: `Which of the following is equivalent to $\\dfrac{x^2 - ${k * k}}{x - ${k}}$, where $x \\neq ${k}$?`,
      answerText: `$x + ${k}$`,
      answerWhy: `The numerator is a difference of squares: $x^2 - ${k * k} = (x - ${k})(x + ${k})$, and the $(x - ${k})$ factors cancel.`,
      distractors: [
        { text: `$x - ${k}$`, why: `This cancels the wrong factor; the remaining factor is $(x + ${k})$.` },
        { text: `$x^2 - ${k}$`, why: `The denominator does not simply subtract from the numerator like this.` },
        { text: `$${k}$`, why: `The variable $x$ does not cancel; only the common binomial factor does.` },
      ],
      steps: [
        `Factor the numerator as a difference of squares: $x^2 - ${k * k} = (x - ${k})(x + ${k})$.`,
        `Cancel the common factor $(x - ${k})$ (valid since $x \\neq ${k}$).`,
        `What remains is $x + ${k}$.`,
      ],
      numeric: null,
      mathFormat: "expression_mcq",
    };
  }
  const r = band(tier, ri(rng, 1, 4), ri(rng, 1, 5), ri(rng, 2, 6), ri(rng, 2, 7));
  const s = r + band(tier, ri(rng, 1, 4), ri(rng, 1, 5), ri(rng, 2, 6), ri(rng, 2, 7));
  const b = -(r + s), c = r * s;
  return {
    context: null, contextType: null,
    question: `Which of the following is equivalent to $\\dfrac{${quadTex(1, b, c)}}{x - ${r}}$, where $x \\neq ${r}$?`,
    answerText: `$x - ${s}$`,
    answerWhy: `The numerator factors as $(x - ${r})(x - ${s})$; cancelling $(x - ${r})$ leaves $x - ${s}$.`,
    distractors: [
      { text: `$x + ${s}$`, why: `Sign error: the remaining factor is $(x - ${s})$, not $(x + ${s})$.` },
      { text: `$x - ${r}$`, why: `This is the factor that cancels with the denominator, not what remains.` },
      { text: `$x - ${r + s}$`, why: `This uses the sum of the roots instead of the remaining root $${s}$.` },
    ],
    steps: [
      `Factor the numerator: $${quadTex(1, b, c)} = (x - ${r})(x - ${s})$.`,
      `Cancel the common factor $(x - ${r})$ (valid since $x \\neq ${r}$).`,
      `What remains is $x - ${s}$.`,
    ],
    numeric: null,
    mathFormat: "expression_mcq",
  };
}

function genEQS(rng, tier) {
  if (tier === "easy") return pick(rng, [eqsFactor, eqsExponent, eqsIdentity])(rng, tier);
  if (tier === "medium") return pick(rng, [eqsDiffSquares, eqsIdentity, eqsExponent, eqsFactor])(rng, tier);
  if (tier === "hard") return pick(rng, [eqsIdentity, eqsRational, eqsDiffSquares, eqsExponent])(rng, tier);
  return pick(rng, [eqsRational, eqsIdentity, eqsDiffSquares])(rng, tier);
}

// ---- RAT: Ratios, rates, proportions, and units --------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): part-of-a-ratio splits,
// unit-rate conversions, rate computations, and direct proportions/scale.

function ratSplit(rng, tier) {
  let a = band(tier, ri(rng, 2, 5), ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 11));
  let b = band(tier, ri(rng, 2, 6), ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 5, 15));
  if (b === a) b += 1;
  const rate = band(tier, ri(rng, 2, 6), ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 5, 14));
  const hours = band(tier, ri(rng, 2, 6), ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 6, 16));
  const total = (a + b) * Math.max(1, Math.round((rate * hours) / (a + b)));
  const partA = (total * a) / (a + b);
  const partB = total - partA;
  return {
    context: `Two machines together produce ${total} parts, shared in the ratio $${a} : ${b}$ (first machine to second).`,
    contextType: "passage",
    question: pick(rng, [`How many parts does the first machine produce?`, `What is the number of parts produced by the first machine?`]),
    answerText: `$${partA}$`,
    answerWhy: `The first machine gets $\\dfrac{${a}}{${a + b}}$ of ${total}, which is ${partA}.`,
    distractors: [
      { text: `$${partB}$`, why: `This is the second machine's share, not the first.` },
      { text: `$${total}$`, why: `This is the combined total, not the first machine's part.` },
      { text: `$${partA + total / (a + b)}$`, why: `This counts one extra part for the first machine's share.` },
    ],
    steps: [
      `Total items $= ${total}$, split in the ratio $${a} : ${b}$ (that is ${a + b} equal parts).`,
      `One part $= ${total} \\div ${a + b} = ${total / (a + b)}$ items.`,
      `The first share is ${a} parts: $${a} \\times ${total / (a + b)} = ${partA}$.`,
    ],
    numeric: String(partA),
    mathFormat: "rate_context",
  };
}

function ratConvert(rng, tier) {
  const scen = pick(rng, [
    { thing: "A conveyor belt moves boxes", a: "minute", b: "hour", f: 60, unit: "boxes" },
    { thing: "A pump moves water", a: "second", b: "minute", f: 60, unit: "liters" },
    { thing: "A printer produces pages", a: "minute", b: "hour", f: 60, unit: "pages" },
    { thing: "A turbine rotates", a: "second", b: "minute", f: 60, unit: "revolutions" },
  ]);
  const r = band(tier, ri(rng, 2, 8), ri(rng, 3, 12), ri(rng, 4, 18), ri(rng, 6, 24));
  const ans = r * scen.f;
  return {
    context: null, contextType: null,
    question: `${scen.thing} at a rate of ${r} ${scen.unit} per ${scen.a}. At this rate, how many ${scen.unit} does it move per ${scen.b}?`,
    answerText: `$${ans}$`,
    answerWhy: `There are ${scen.f} ${scen.a}s in one ${scen.b}, so multiply: $${r} \\times ${scen.f} = ${ans}$.`,
    distractors: [
      { text: `$${r}$`, why: `This is the per-${scen.a} rate, not converted to per ${scen.b}.` },
      { text: `$${Math.round(r / scen.f * 100) / 100}$`, why: `This divides by ${scen.f} instead of multiplying.` },
      { text: `$${r + scen.f}$`, why: `Converting units requires multiplying by the conversion factor, not adding it.` },
    ],
    steps: [
      `Identify the conversion: $1$ ${scen.b} $= ${scen.f}$ ${scen.a}s.`,
      `Multiply the rate by the conversion factor: $${r} \\dfrac{\\text{${scen.unit}}}{\\text{${scen.a}}} \\times ${scen.f} \\dfrac{\\text{${scen.a}s}}{\\text{${scen.b}}}$.`,
      `The ${scen.a} units cancel, leaving $${ans}$ ${scen.unit} per ${scen.b}.`,
    ],
    numeric: String(ans),
    mathFormat: "rate_context",
  };
}

function ratRate(rng, tier) {
  const scen = pick(rng, [
    { thing: "A machine fills", unit: "bottles", per: "minutes", word: "bottles per minute" },
    { thing: "A car travels", unit: "miles", per: "hours", word: "miles per hour" },
    { thing: "A worker assembles", unit: "units", per: "hours", word: "units per hour" },
  ]);
  const rate = band(tier, ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 5, 16), ri(rng, 6, 20));
  const time = band(tier, ri(rng, 2, 5), ri(rng, 3, 7), ri(rng, 4, 9), ri(rng, 5, 12));
  const total = rate * time;
  return {
    context: null, contextType: null,
    question: `${scen.thing} ${total} ${scen.unit} in ${time} ${scen.per}. At this constant rate, how many ${scen.word} is this?`,
    answerText: `$${rate}$`,
    answerWhy: `Rate $= \\dfrac{\\text{total}}{\\text{time}} = \\dfrac{${total}}{${time}} = ${rate}$.`,
    distractors: [
      { text: `$${total}$`, why: `This is the total amount, not the per-unit rate.` },
      { text: `$${total * time}$`, why: `This multiplies by time instead of dividing by it.` },
      { text: `$${rate + 1}$`, why: `Arithmetic slip — divide ${total} by ${time} exactly.` },
    ],
    steps: [
      `A rate is amount divided by time.`,
      `Divide: $\\dfrac{${total} \\text{ ${scen.unit}}}{${time} \\text{ ${scen.per}}} = ${rate}$.`,
      `So the rate is $${rate}$ ${scen.word}.`,
    ],
    numeric: String(rate),
    mathFormat: "rate_context",
  };
}

function ratProportion(rng, tier) {
  const p = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7), ri(rng, 3, 9));
  const q = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7), ri(rng, 3, 9));
  const mult = band(tier, ri(rng, 2, 5), ri(rng, 3, 7), ri(rng, 4, 9), ri(rng, 5, 12));
  const B = q * mult, A = p * mult;
  return {
    context: null, contextType: null,
    question: `The ratio of $x$ to $y$ is $${p} : ${q}$. If $y = ${B}$, what is the value of $x$?`,
    answerText: `$${A}$`,
    answerWhy: `Set up the proportion $\\dfrac{x}{${B}} = \\dfrac{${p}}{${q}}$; cross-multiplying gives $x = ${A}$.`,
    distractors: [
      { text: `$${B * p}$`, why: `This multiplies by ${p} without dividing by ${q}.` },
      { text: `$${Math.round(B * q / p)}$`, why: `This uses the ratio upside down ($q : p$ instead of $p : q$).` },
      { text: `$${A + mult}$`, why: `This adds one extra group instead of scaling exactly by the ratio.` },
    ],
    steps: [
      `Write the ratio as a proportion: $\\dfrac{x}{y} = \\dfrac{${p}}{${q}}$.`,
      `Substitute $y = ${B}$: $\\dfrac{x}{${B}} = \\dfrac{${p}}{${q}}$.`,
      `Cross-multiply and solve: $x = \\dfrac{${p} \\times ${B}}{${q}} = ${A}$.`,
    ],
    numeric: String(A),
    mathFormat: "rate_context",
  };
}

function genRAT(rng, tier, fmt) {
  if (tier === "easy") return pick(rng, [ratConvert, ratRate, ratSplit])(rng, tier);
  if (tier === "medium") return pick(rng, [ratConvert, ratRate, ratProportion, ratSplit])(rng, tier);
  if (tier === "hard") return pick(rng, [ratProportion, ratConvert, ratSplit, ratRate])(rng, tier);
  return pick(rng, [ratProportion, ratConvert, ratSplit])(rng, tier);
}

// ---- PER: Percentages ----------------------------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): percent increase result,
// percent change between two values, total cost with tax, "X is P% of what",
// and sequential markup-then-discount.

function perIncrease(rng, tier) {
  const base = ri(rng, 4, 20) * 10;
  const pct = pick(rng, [10, 20, 25, 50]);
  const inc = (base * pct) / 100;
  const ans = base + inc;
  return {
    context: null, contextType: null,
    question: pick(rng, [`What is ${pct}% more than $${base}$?`, `Increasing $${base}$ by ${pct}% gives what value?`, `A quantity of $${base}$ is increased by ${pct}%. What is the result?`]),
    answerText: `$${ans}$`,
    answerWhy: `${pct}% of ${base} is ${inc}; adding gives ${ans}.`,
    distractors: [
      { text: `$${base}$`, why: `This is the original amount with no increase applied.` },
      { text: `$${inc}$`, why: `This is only the increase, not the new total.` },
      { text: `$${ans + inc}$`, why: `This adds the increase twice.` },
    ],
    steps: [
      `Find ${pct}% of ${base}: $${base} \\times ${pct / 100} = ${inc}$.`,
      `Add it on: $${base} + ${inc} = ${ans}$.`,
    ],
    numeric: String(ans),
    mathFormat: "percent_context",
  };
}

function perChange(rng, tier) {
  const v1 = ri(rng, 5, 40) * 20;
  const pct = pick(rng, band(tier, [5, 10, 20], [5, 10, 15, 20], [5, 12, 15, 25], [5, 8, 15, 35]));
  const inc = rng() < 0.5;
  // change magnitude computed directly (v1*pct/100) to avoid float subtraction noise
  const chg = (v1 * pct) / 100;
  const v2 = inc ? v1 + chg : v1 - chg;
  const dir = inc ? "increase" : "decrease";
  return {
    context: `A quantity changed from $${v1}$ to $${v2}$.`,
    contextType: "passage",
    question: `What was the percent ${dir} from $${v1}$ to $${v2}$?`,
    answerText: `$${pct}$%`,
    answerWhy: `Percent change $= \\dfrac{|${v2} - ${v1}|}{${v1}} \\times 100\\% = \\dfrac{${chg}}{${v1}} \\times 100\\% = ${pct}\\%$.`,
    distractors: [
      { text: `$${Math.round(chg / v2 * 100)}$%`, why: `This divides by the new value; percent change is relative to the original value.` },
      { text: `$${chg}$%`, why: `This is the raw change, not expressed as a percent of the original.` },
      { text: `$${pct + 5}$%`, why: `Arithmetic slip — divide the change by the original and convert to a percent.` },
    ],
    steps: [
      `Find the change: $|${v2} - ${v1}| = ${chg}$ (a ${dir} of ${chg}).`,
      `Divide by the ORIGINAL value: $\\dfrac{${chg}}{${v1}} = ${pct / 100}$.`,
      `Convert to a percent: $${pct / 100} \\times 100\\% = ${pct}\\%$.`,
    ],
    numeric: String(pct),
    mathFormat: "percent_context",
  };
}

function perTax(rng, tier) {
  const base = ri(rng, 2, 18) * 10;
  const pct = pick(rng, [5, 6, 8, 10, 15, 20]);
  const tax = (base * pct) / 100;
  const total = base + tax;
  return {
    context: null, contextType: null,
    question: `The price of an item is $\\$${base}$ before a ${pct}% sales tax is added. What is the total cost, including tax?`,
    answerText: `$\\$${total}$`,
    answerWhy: `The tax is ${pct}% of $\\$${base}$, which is $\\$${tax}$; the total is $\\$${base} + \\$${tax} = \\$${total}$.`,
    distractors: [
      { text: `$\\$${tax}$`, why: `This is just the tax amount, not the total cost.` },
      { text: `$\\$${base}$`, why: `This is the pre-tax price; the tax still needs to be added.` },
      { text: `$\\$${base + pct}$`, why: `This adds the percent number directly instead of ${pct}% of the price.` },
    ],
    steps: [
      `Compute the tax: ${pct}% of $\\$${base}$ is $${base} \\times ${pct / 100} = ${tax}$.`,
      `Add the tax to the price: $${base} + ${tax} = ${total}$.`,
    ],
    numeric: String(total),
    mathFormat: "percent_context",
  };
}

function perOfWhat(rng, tier) {
  const pct = pick(rng, [10, 20, 25, 40, 50]);
  const whole = ri(rng, 4, 30) * 10;
  const part = (whole * pct) / 100;
  return {
    context: null, contextType: null,
    question: `$${part}$ is ${pct}% of what number?`,
    answerText: `$${whole}$`,
    answerWhy: `If ${pct}% of $n$ is ${part}, then $n = \\dfrac{${part}}{${pct / 100}} = ${whole}$.`,
    distractors: [
      { text: `$${(part * pct) / 100}$`, why: `This takes ${pct}% of ${part} instead of solving for the whole.` },
      { text: `$${part * pct}$`, why: `This multiplies by ${pct} rather than dividing by ${pct / 100}.` },
      { text: `$${part}$`, why: `This is the part given, not the whole being asked for.` },
    ],
    steps: [
      `Let $n$ be the unknown number. Then ${pct}% of $n$ equals ${part}: $${pct / 100}n = ${part}$.`,
      `Divide both sides by $${pct / 100}$: $n = \\dfrac{${part}}{${pct / 100}}$.`,
      `So $n = ${whole}$.`,
    ],
    numeric: String(whole),
    mathFormat: "percent_context",
  };
}

function perMarkupDiscount(rng, tier) {
  const base = band(tier, ri(rng, 2, 8), ri(rng, 4, 14), ri(rng, 6, 20), ri(rng, 8, 24)) * 100;
  const upPct = pick(rng, [10, 20, 50]);
  const downPct = pick(rng, [10, 20, 50]);
  const after1 = base + (base * upPct) / 100;
  const final = after1 - (after1 * downPct) / 100;
  const naive = base + (base * (upPct - downPct)) / 100;
  return {
    context: `A retailer raises a price by ${upPct}%, then puts the new price on sale for ${downPct}% off.`,
    contextType: "passage",
    question: pick(rng, [`If the original price is $\\$${base}$, what is the final price after both changes?`, `Starting from $\\$${base}$, what is the price after both changes are applied in order?`]),
    answerText: `$\\$${final}$`,
    answerWhy: `Apply $\\times ${1 + upPct / 100}$ then $\\times ${1 - downPct / 100}$ to get ${final}.`,
    distractors: [
      { text: `$\\$${after1}$`, why: `This applies only the ${upPct}% markup and skips the discount.` },
      { text: `$\\$${naive}$`, why: `This nets the percents (${upPct}% − ${downPct}%); sequential changes don't subtract directly.` },
      { text: `$\\$${base}$`, why: `This is the original price with no changes applied.` },
    ],
    steps: [
      `After the markup: $${base} \\times (1 + ${upPct}/100) = ${after1}$.`,
      `Apply the discount to the new price: $${after1} \\times (1 - ${downPct}/100) = ${final}$.`,
      `Order matters — the discount is taken on ${after1}, not on ${base}.`,
    ],
    numeric: String(final),
    mathFormat: "percent_context",
  };
}

function genPER(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return pick(rng, [perIncrease, perTax])(rng, tier);
    if (tier === "medium") return pick(rng, [perChange, perTax, perOfWhat])(rng, tier);
    return pick(rng, [perChange, perOfWhat, perMarkupDiscount])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [perIncrease, perTax])(rng, tier);
  if (tier === "medium") return pick(rng, [perChange, perTax, perOfWhat, perIncrease])(rng, tier);
  if (tier === "hard") return pick(rng, [perMarkupDiscount, perChange, perOfWhat])(rng, tier);
  return pick(rng, [perMarkupDiscount, perChange, perOfWhat])(rng, tier);
}

// ---- OIA: One-variable data — distributions and measures -----------------
// Rebuilt to real Digital SAT variety (2026-06-14): median of a list, mean of
// a list, range, the effect of changing a value on mean/median/range, and the
// missing-value-from-mean problem.
function oiaMissingMean(rng, tier) {
  // 5 values, one unknown x, given the mean -> find x.
  const n = 5;
  const base = band(tier, ri(rng, 8, 24), ri(rng, 10, 34), ri(rng, 12, 44), ri(rng, 14, 54));
  const spread = pick(rng, band(tier, [2, 3, 4], [2, 3, 4, 5], [3, 4, 5, 6], [3, 4, 5, 6, 7]));
  const known = [base, base + spread, base + 2 * spread, base + 3 * spread];
  const x = band(tier, base + ri(rng, 1, 11), base + ri(rng, 2, 16), base + ri(rng, 3, 22), base + ri(rng, 4, 28));
  const sum = known.reduce((s, v) => s + v, 0) + x;
  const mean = sum / n;
  if (!Number.isInteger(mean)) {
    // nudge x so mean is integer
    const rem = sum % n;
    return genOIAfixed(rng, known, x - rem, n);
  }
  return genOIAfixed(rng, known, x, n);
}
function genOIAfixed(rng, known, x, n) {
  const sum = known.reduce((s, v) => s + v, 0) + x;
  const mean = sum / n;
  const knownSum = known.reduce((s, v) => s + v, 0);
  return {
    context: `A data set has the five values ${known.join(", ")}, and $x$, with a mean of ${mean}.`,
    contextType: "passage",
    question: pick(rng, [`What is the value of $x$?`, `What is the missing value $x$?`, `Find the value of $x$.`]),
    answerText: `$${x}$`,
    answerWhy: `The total must be $${mean} \\times ${n} = ${mean * n}$, so $x = ${x}$.`,
    distractors: [
      { text: `$${Math.round(mean)}$`, why: `This is (about) the mean itself, not the missing value.` },
      { text: `$${mean * n - knownSum - 2}$`, why: `This comes from an arithmetic slip in the total.` },
      { text: `$${knownSum}$`, why: `This is the sum of the known values, not $x$.` },
    ],
    steps: [
      `Mean $\\times$ count $= ${mean} \\times ${n} = ${mean * n}$ is the required total.`,
      `The known values add to $${knownSum}$.`,
      `So $x = ${mean * n} - ${knownSum} = ${x}$.`,
    ],
    numeric: String(x),
    mathFormat: "data_context",
  };
}

function oiaMedian(rng, tier) {
  const n = pick(rng, [5, 7]);
  const vals = [];
  for (let i = 0; i < n; i++) vals.push(band(tier, ri(rng, 2, 20), ri(rng, 2, 30), ri(rng, 2, 45), ri(rng, 2, 60)));
  const sorted = [...vals].sort((a, b) => a - b);
  const med = sorted[(n - 1) / 2];
  const mean = Math.round((vals.reduce((s, v) => s + v, 0) / n) * 10) / 10;
  return {
    context: null, contextType: null,
    question: `What is the median of the ${n} data values shown? $${vals.join(",\\ ")}$`,
    answerText: `$${med}$`,
    answerWhy: `Sorting the values gives $${sorted.join(",\\ ")}$; the middle value is $${med}$.`,
    distractors: [
      { text: `$${sorted[(n - 1) / 2 + 1]}$`, why: `This is one position past the middle of the sorted list.` },
      { text: `$${mean}$`, why: `This is the mean (average), not the median (middle value).` },
      { text: `$${sorted[n - 1] - sorted[0]}$`, why: `This is the range (max − min), not the median.` },
    ],
    steps: [
      `Order the values from least to greatest: $${sorted.join(",\\ ")}$.`,
      `With ${n} values, the median is the ${(n + 1) / 2}th one.`,
      `So the median is $${med}$.`,
    ],
    numeric: String(med),
    mathFormat: "data_context",
  };
}

function oiaMeanList(rng, tier) {
  const n = pick(rng, [4, 5]);
  const target = band(tier, ri(rng, 6, 16), ri(rng, 8, 22), ri(rng, 10, 30), ri(rng, 12, 40));
  // build n values that sum to n*target (mean = target exactly)
  const vals = [];
  let acc = 0;
  for (let i = 0; i < n - 1; i++) { const v = target + ri(rng, -3, 3); vals.push(v); acc += v; }
  vals.push(n * target - acc);
  return {
    context: null, contextType: null,
    question: `What is the mean (average) of the ${n} data values shown? $${vals.join(",\\ ")}$`,
    answerText: `$${target}$`,
    answerWhy: `The sum is $${vals.reduce((s, v) => s + v, 0)}$; dividing by ${n} gives $${target}$.`,
    distractors: [
      { text: `$${[...vals].sort((a, b) => a - b)[Math.floor(n / 2)]}$`, why: `This is a middle value (near the median), not the mean.` },
      { text: `$${vals.reduce((s, v) => s + v, 0)}$`, why: `This is the sum of the values, not divided by the count.` },
      { text: `$${target + 1}$`, why: `Arithmetic slip — divide the total by ${n} exactly.` },
    ],
    steps: [
      `Add the values: $${vals.join(" + ")} = ${vals.reduce((s, v) => s + v, 0)}$.`,
      `Divide by the number of values, ${n}: $\\dfrac{${vals.reduce((s, v) => s + v, 0)}}{${n}} = ${target}$.`,
    ],
    numeric: String(target),
    mathFormat: "data_context",
  };
}

function oiaRange(rng, tier) {
  const n = pick(rng, [5, 6]);
  const vals = [];
  for (let i = 0; i < n; i++) vals.push(band(tier, ri(rng, 5, 30), ri(rng, 5, 45), ri(rng, 5, 60), ri(rng, 5, 80)));
  const mx = Math.max(...vals), mn = Math.min(...vals);
  const range = mx - mn;
  return {
    context: null, contextType: null,
    question: `What is the range of the data values shown? $${vals.join(",\\ ")}$`,
    answerText: `$${range}$`,
    answerWhy: `Range $=$ maximum $-$ minimum $= ${mx} - ${mn} = ${range}$.`,
    distractors: [
      { text: `$${mx}$`, why: `This is the maximum value, not the range.` },
      { text: `$${mn}$`, why: `This is the minimum value, not the range.` },
      { text: `$${mx + mn}$`, why: `The range subtracts the minimum from the maximum; it does not add them.` },
    ],
    steps: [
      `Identify the maximum value: $${mx}$.`,
      `Identify the minimum value: $${mn}$.`,
      `Range $= ${mx} - ${mn} = ${range}$.`,
    ],
    numeric: String(range),
    mathFormat: "data_context",
  };
}

function oiaChangeEffect(rng, tier) {
  const n = 6;
  const vals = [];
  for (let i = 0; i < n; i++) vals.push(ri(rng, 10, 40));
  vals.sort((a, b) => a - b);
  const k = ri(rng, 10, 30);
  return {
    context: `A data set consists of the values $${vals.join(",\\ ")}$. The largest value is then increased by ${k}, and no other value changes.`,
    contextType: "passage",
    question: `How are the mean, median, and range of the data set affected?`,
    answerText: `The mean and range increase, but the median stays the same.`,
    answerWhy: `Raising only the maximum increases the total (so the mean rises) and widens the spread (so the range rises), but the two middle values are unchanged, so the median is unchanged.`,
    distractors: [
      { text: `The mean, median, and range all increase.`, why: `The median depends on the middle values, which do not change here.` },
      { text: `Only the range increases; the mean and median stay the same.`, why: `Changing a value changes the total, so the mean must change too.` },
      { text: `The mean and median increase, but the range stays the same.`, why: `Increasing the maximum increases max − min, so the range changes.` },
    ],
    steps: [
      `Mean: the total goes up by ${k}, so the mean increases.`,
      `Median: with 6 values, the median is the average of the 3rd and 4th values, which are unaffected — so the median is unchanged.`,
      `Range: the maximum increases while the minimum stays, so max − min (the range) increases.`,
    ],
    numeric: null,
    mathFormat: "data_context",
  };
}

function genOIA(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return pick(rng, [oiaMedian, oiaRange, oiaMeanList])(rng, tier);
    if (tier === "medium") return pick(rng, [oiaMedian, oiaMeanList, oiaRange, oiaMissingMean])(rng, tier);
    return pick(rng, [oiaMissingMean, oiaMeanList, oiaMedian, oiaRange])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [oiaMedian, oiaRange, oiaMeanList])(rng, tier);
  if (tier === "medium") return pick(rng, [oiaMedian, oiaMeanList, oiaChangeEffect, oiaMissingMean])(rng, tier);
  if (tier === "hard") return pick(rng, [oiaChangeEffect, oiaMissingMean, oiaMedian, oiaRange])(rng, tier);
  return pick(rng, [oiaChangeEffect, oiaMissingMean, oiaMeanList])(rng, tier);
}

// Scatterplot with a line of best fit, drawn from the same (m, b) as the stem.
export function scatterSvg(pts, m, b, xmax, ymax) {
  const ox = 38, oy = 152, pw = 200, ph = 126;
  const sx = (x) => ox + (x / xmax) * pw;
  const sy = (y) => oy - (y / ymax) * ph;
  const dots = pts.map((p) => `<circle cx="${sx(p[0]).toFixed(1)}" cy="${sy(p[1]).toFixed(1)}" r="3" fill="#1e40af"/>`).join("");
  const line = `<line x1="${sx(0).toFixed(1)}" y1="${sy(b).toFixed(1)}" x2="${sx(xmax).toFixed(1)}" y2="${sy(m * xmax + b).toFixed(1)}" stroke="#dc2626" stroke-width="2"/>`;
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 250 180" width="250" height="180" role="img" aria-label="Scatterplot with a line of best fit">
  <line x1="${ox}" y1="${oy}" x2="${ox + pw}" y2="${oy}" stroke="#374151" stroke-width="1"/>
  <line x1="${ox}" y1="${oy}" x2="${ox}" y2="${oy - ph}" stroke="#374151" stroke-width="1"/>
  <text x="${ox + pw / 2}" y="174" font-size="11" fill="#374151" text-anchor="middle">x</text>
  <text x="12" y="${oy - ph / 2}" font-size="11" fill="#374151">y</text>
  ${line}${dots}
</svg>`;
}

// ---- TVA: Two-variable data — models and scatterplots --------------------
// Rebuilt to real Digital SAT variety (2026-06-14): slope of a line of best
// fit, prediction from the line, interpreting the slope, and choosing the best
// model (linear vs. exponential). Includes a scatterplot figure.

function tvaPredict(rng, tier) {
  const m = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7), ri(rng, 3, 9));
  const b = band(tier, ri(rng, 2, 8), ri(rng, 3, 10), ri(rng, 4, 12), ri(rng, 5, 15));
  const xmax = 10;
  const pts = [];
  for (let x = 1; x <= 8; x += 1) { if (rng() < 0.7) pts.push([x, m * x + b + ri(rng, -2, 2)]); }
  const ymax = m * xmax + b + 4;
  const x0 = pick(rng, [9, 10]);
  const yhat = m * x0 + b;
  const leadP = pick(rng, [
    `The scatterplot shows the relationship between $x$ and $y$ for several data points, along with the line of best fit $y = ${m}x + ${b}$.`,
    `The scatterplot below shows several data points and the line of best fit $y = ${m}x + ${b}$.`,
    `For the data shown in the scatterplot, the line of best fit is $y = ${m}x + ${b}$.`,
    `The figure shows a scatterplot of $x$ and $y$ with line of best fit $y = ${m}x + ${b}$.`,
    `A scatterplot of the data is shown, together with its line of best fit $y = ${m}x + ${b}$.`,
  ]);
  return {
    context: `${leadP}\n\n${scatterSvg(pts, m, b, xmax, ymax)}`,
    contextType: "figure",
    question: pick(rng, [`Based on the line of best fit, what is the predicted value of $y$ when $x = ${x0}$?`, `Using the line of best fit, what is the predicted $y$-value when $x = ${x0}$?`, `According to the line of best fit, what value of $y$ is predicted at $x = ${x0}$?`, `Based on the line of best fit shown, what is the predicted $y$ when $x = ${x0}$?`]),
    answerText: `$${yhat}$`,
    answerWhy: `Substitute $x = ${x0}$ into $y = ${m}x + ${b}$: $y = ${m}(${x0}) + ${b} = ${yhat}$.`,
    distractors: [
      { text: `$${m * x0}$`, why: `This forgets to add the $y$-intercept $${b}$.` },
      { text: `$${m + b}$`, why: `This evaluates the line at $x = 1$, not at $x = ${x0}$.` },
      { text: `$${yhat + m}$`, why: `This uses $x = ${x0 + 1}$ instead of $x = ${x0}$.` },
    ],
    steps: [
      `Read the line of best fit: $y = ${m}x + ${b}$.`,
      `Substitute $x = ${x0}$: $y = ${m}(${x0}) + ${b}$.`,
      `Evaluate: $y = ${m * x0} + ${b} = ${yhat}$.`,
    ],
    numeric: null,
    mathFormat: "scatter_line",
  };
}

function tvaSlopeValue(rng, tier) {
  const m = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 8), ri(rng, 3, 10));
  const b = band(tier, ri(rng, 2, 8), ri(rng, 3, 10), ri(rng, 4, 12), ri(rng, 5, 15));
  const xmax = 10;
  const pts = [];
  for (let x = 1; x <= 8; x += 1) { if (rng() < 0.7) pts.push([x, m * x + b + ri(rng, -2, 2)]); }
  const ymax = m * xmax + b + 4;
  const x1 = 2, x2 = 7, y1 = m * x1 + b, y2 = m * x2 + b;
  const leadSl = pick(rng, [
    `The scatterplot shows a set of data points and a line of best fit. The line passes through $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
    `The scatterplot below shows data points and a line of best fit passing through $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
    `In the scatterplot, the line of best fit passes through the points $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
    `The figure shows a scatterplot whose line of best fit passes through $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
    `A line of best fit for the data shown passes through $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
  ]);
  return {
    context: `${leadSl}\n\n${scatterSvg(pts, m, b, xmax, ymax)}`,
    contextType: "figure",
    question: pick(rng, [`What is the slope of the line of best fit shown?`, `Based on the figure, what is the slope of the line of best fit?`, `What is the slope of the line of best fit for the data shown?`, `Using the two points given, what is the slope of the line of best fit?`]),
    answerText: `$${m}$`,
    answerWhy: `Slope $= \\dfrac{${y2} - ${y1}}{${x2} - ${x1}} = \\dfrac{${y2 - y1}}{${x2 - x1}} = ${m}$.`,
    distractors: [
      { text: `$${Math.round((x2 - x1) / (y2 - y1) * 100) / 100}$`, why: `This inverts the slope formula (run over rise).` },
      { text: `$${y2 - y1}$`, why: `This is the change in $y$ only, not divided by the change in $x$.` },
      { text: `$${b}$`, why: `This is the $y$-intercept, not the slope.` },
    ],
    steps: [
      `Pick two points on the line: $(${x1}, ${y1})$ and $(${x2}, ${y2})$.`,
      `Slope $= \\dfrac{\\text{change in } y}{\\text{change in } x} = \\dfrac{${y2} - ${y1}}{${x2} - ${x1}}$.`,
      `Simplify: $\\dfrac{${y2 - y1}}{${x2 - x1}} = ${m}$.`,
    ],
    numeric: null,
    mathFormat: "scatter_line",
  };
}

function tvaInterpret(rng, tier) {
  const slope = band(tier, ri(rng, 2, 7), ri(rng, 2, 9), ri(rng, 3, 12), ri(rng, 4, 15));
  const b = band(tier, ri(rng, 2, 14), ri(rng, 3, 20), ri(rng, 4, 28), ri(rng, 5, 36));
  const xs = [1, 2, 3, 4].map((d) => d * band(tier, 1, 1, 2, 2));
  const rows = xs.map((xx) => [xx, slope * xx + b]);
  const table = mdTable(["Hours ($x$)", "Cost ($y$, \\$)"], rows.map((r) => [String(r[0]), String(r[1])]));
  return {
    context: `The table shows the total cost $y$ (in dollars) of renting equipment for $x$ hours. The data fit the line $y = ${slope}x + ${b}$.\n\n${table}`,
    contextType: "table",
    question: pick(rng, [`In this model, what does the slope ${slope} represent?`, `In this context, what is the meaning of the slope ${slope}?`, `What does the slope of ${slope} represent in this situation?`, `The model has slope ${slope}. What does this value represent?`, `In terms of the situation, what does the slope ${slope} mean?`]),
    answerText: `The cost increases by \\$${slope} for each additional hour.`,
    answerWhy: `Slope is the change in $y$ per unit change in $x$ — dollars per hour here.`,
    distractors: [
      { text: `The fixed starting cost is \\$${slope}.`, why: `The starting cost is the intercept $${b}$, not the slope.` },
      { text: `The total cost is always \\$${slope}.`, why: `The total cost changes with $x$; the slope is a rate, not a total.` },
      { text: `The cost decreases by \\$${slope} per hour.`, why: `The slope is positive, so cost increases, not decreases.` },
    ],
    steps: [
      `In $y = mx + b$, the slope $m = ${slope}$ multiplies $x$ (hours).`,
      `A one-hour increase in $x$ raises $y$ by $${slope}$.`,
      `So the slope is the cost per additional hour: \\$${slope}/hour.`,
    ],
    numeric: null,
    mathFormat: "scatter_line",
  };
}

function tvaBestModel(rng, tier) {
  const exp = rng() < 0.5;
  const a = pick(rng, [2, 3, 5]);
  const desc = exp
    ? `roughly double from one $x$-value to the next (equal multiplicative steps)`
    : `increase by about the same amount from one $x$-value to the next (equal additive steps)`;
  const correct = exp ? `An exponential model, $y = a\\,b^x$.` : `A linear model, $y = mx + b$.`;
  return {
    context: `For a data set, the $y$-values ${desc} as $x$ increases by $1$.`,
    contextType: "passage",
    question: `Which type of model best fits this data?`,
    answerText: correct,
    answerWhy: exp
      ? `Equal multiplicative steps (a constant ratio) are the signature of exponential growth.`
      : `Equal additive steps (a constant difference) are the signature of a linear relationship.`,
    distractors: [
      { text: exp ? `A linear model, $y = mx + b$.` : `An exponential model, $y = a\\,b^x$.`, why: exp ? `A linear model adds a constant each step, but here the values multiply by a constant.` : `An exponential model multiplies by a constant each step, but here the values add a constant.` },
      { text: `A decreasing linear model with negative slope.`, why: `The values are increasing, so the model is not decreasing.` },
      { text: `No model can fit this data.`, why: `A clear constant-ratio or constant-difference pattern is exactly what a standard model captures.` },
    ],
    steps: [
      `Check how $y$ changes as $x$ increases by $1$.`,
      exp ? `A constant RATIO (each value a fixed multiple of the previous) indicates exponential growth.` : `A constant DIFFERENCE (each value a fixed amount more than the previous) indicates a linear relationship.`,
      `So the best model is ${exp ? "exponential" : "linear"}.`,
    ],
    numeric: null,
    mathFormat: "scatter_line",
  };
}

function genTVA(rng, tier) {
  if (tier === "easy") return pick(rng, [tvaSlopeValue, tvaInterpret, tvaPredict])(rng, tier);
  if (tier === "medium") return pick(rng, [tvaPredict, tvaSlopeValue, tvaBestModel, tvaInterpret])(rng, tier);
  if (tier === "hard") return pick(rng, [tvaPredict, tvaBestModel, tvaSlopeValue, tvaInterpret])(rng, tier);
  return pick(rng, [tvaBestModel, tvaPredict, tvaSlopeValue])(rng, tier);
}

// Two-way frequency table (markdown) with row/column totals.
function twoWayTable(rowName, rowCats, colCats, M) {
  const colTotals = colCats.map((_, j) => M.reduce((s, r) => s + r[j], 0));
  const grand = colTotals.reduce((s, v) => s + v, 0);
  const headers = [rowName, ...colCats, "Total"];
  const body = rowCats.map((rc, i) => [rc, ...M[i].map(String), String(M[i].reduce((s, v) => s + v, 0))]);
  body.push(["Total", ...colTotals.map(String), String(grand)]);
  return { table: mdTable(headers, body), colTotals, grand };
}

// ---- PRO: Probability and conditional probability ------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): probability from a two-way
// table (joint, marginal, and conditional) — the dominant SAT form — plus
// conditional probability for drawing without replacement.

function proTwoWay(rng, tier) {
  const scen = pick(rng, [
    { rowName: "Type", rows: ["Nonhybrid", "Hybrid"], cols: ["Lower priced", "Higher priced"], noun: "car", sel: "car" },
    { rowName: "Plan", rows: ["Basic", "Premium"], cols: ["Renewed", "Did not renew"], noun: "member", sel: "member" },
    { rowName: "Class", rows: ["Daytime", "Evening"], cols: ["Passed", "Did not pass"], noun: "student", sel: "student" },
  ]);
  const M = [
    [band(tier, ri(rng, 4, 9), ri(rng, 5, 12), ri(rng, 6, 16), ri(rng, 8, 20)), band(tier, ri(rng, 3, 8), ri(rng, 4, 11), ri(rng, 5, 14), ri(rng, 6, 18))],
    [band(tier, ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 5, 15)), band(tier, ri(rng, 3, 8), ri(rng, 4, 10), ri(rng, 5, 13), ri(rng, 6, 17))],
  ];
  const { table, grand } = twoWayTable(scen.rowName, scen.rows, scen.cols, M);
  const rowTot = M.map((r) => r[0] + r[1]);
  const colTot = [M[0][0] + M[1][0], M[0][1] + M[1][1]];
  const kind = pick(rng, tier === "easy" ? ["joint", "marginal"] : ["joint", "marginal", "conditional"]);
  const i = ri(rng, 0, 1), j = ri(rng, 0, 1);
  let q, num, den, why, steps;
  if (kind === "joint") {
    num = M[i][j]; den = grand;
    q = `If one ${scen.sel} is selected at random from all those in the table, what is the probability that it is ${scen.rows[i].toLowerCase()} and "${scen.cols[j].toLowerCase()}"?`;
    why = `There are $${num}$ such ${scen.noun}s out of $${den}$ total.`;
    steps = [`Find the cell for ${scen.rows[i]} and that column: $${num}$.`, `Divide by the grand total $${den}$.`, `Probability $= \\dfrac{${num}}{${den}} = ${fracTex(num, den)}$.`];
  } else if (kind === "marginal") {
    num = rowTot[i]; den = grand;
    q = `If one ${scen.sel} is selected at random from all those in the table, what is the probability that it is ${scen.rows[i].toLowerCase()}?`;
    why = `The ${scen.rows[i]} row totals $${num}$ out of $${den}$.`;
    steps = [`Add the ${scen.rows[i]} row: $${M[i][0]} + ${M[i][1]} = ${num}$.`, `Divide by the grand total $${den}$.`, `Probability $= \\dfrac{${num}}{${den}} = ${fracTex(num, den)}$.`];
  } else {
    num = M[i][j]; den = rowTot[i];
    q = `If one ${scen.sel} is selected at random from only the ${scen.rows[i].toLowerCase()} ${scen.noun}s, what is the probability it is "${scen.cols[j].toLowerCase()}"?`;
    why = `Among the $${den}$ ${scen.rows[i].toLowerCase()} ${scen.noun}s, $${num}$ are in that column.`;
    steps = [`Restrict to the ${scen.rows[i]} row; its total is $${den}$.`, `The matching cell is $${num}$.`, `Conditional probability $= \\dfrac{${num}}{${den}} = ${fracTex(num, den)}$.`];
  }
  // Build distractors from plausible wrong (numerator, denominator) pairs, then
  // drop any that reduce to the same fraction as the correct answer.
  const ansTex = fracTex(num, den);
  const candidates = [
    [M[i][j], grand], [num, rowTot[i]], [num, colTot[j]], [rowTot[i], grand],
    [colTot[j], grand], [M[i][j], rowTot[i]], [M[i][j], colTot[j]], [den - num + 1, den],
  ];
  const seen = new Set([ansTex]);
  const distractors = [];
  for (const [nn, dd] of candidates) {
    if (dd <= 0 || nn < 0) continue;
    const t = fracTex(nn, dd);
    if (seen.has(t)) continue;
    seen.add(t);
    distractors.push({ text: `$${t}$`, why: `This uses the wrong numerator or denominator for the probability requested — check whether you need the grand total, a row total, or a column total.` });
    if (distractors.length === 3) break;
  }
  return {
    context: `The table summarizes information about a group of ${scen.noun}s.\n\n${table}`,
    contextType: "table",
    question: q,
    answerText: `$${ansTex}$`,
    answerWhy: why,
    distractors,
    steps,
    numeric: null,
    mathFormat: "probability_mcq",
  };
}

function proNoReplace(rng, tier) {
  const red = band(tier, ri(rng, 2, 7), ri(rng, 2, 9), ri(rng, 3, 12), ri(rng, 4, 15));
  const blue = band(tier, ri(rng, 2, 9), ri(rng, 3, 13), ri(rng, 4, 17), ri(rng, 5, 21));
  const total = red + blue;
  const numAns = red - 1, denAns = total - 1;
  return {
    context: `A bag contains ${red} red chips and ${blue} blue chips. Two chips are drawn at random without replacement, and the first chip drawn is red.`,
    contextType: "passage",
    question: pick(rng, [`Given that the first chip is red, what is the probability that the second chip is also red?`, `If the first chip drawn is red, what is the probability the second chip is also red?`]),
    answerText: `$${fracTex(numAns, denAns)}$`,
    answerWhy: `After removing one red, ${numAns} reds remain out of ${denAns} chips.`,
    distractors: [
      { text: `$${fracTex(red, total)}$`, why: `This ignores that a red chip was already removed.` },
      { text: `$${fracTex(red, denAns)}$`, why: `This reduces the total but keeps the original red count in the numerator.` },
      { text: `$${fracTex(numAns, total)}$`, why: `This reduces the reds but forgets that the total also dropped by one.` },
    ],
    steps: [
      `Start with ${red} red out of ${total} chips.`,
      `One red is removed, leaving ${numAns} red and ${denAns} chips total.`,
      `So the conditional probability is $\\dfrac{${numAns}}{${denAns}}$.`,
    ],
    numeric: null,
    mathFormat: "probability_mcq",
  };
}

function genPRO(rng, tier) {
  if (tier === "easy") return pick(rng, [proTwoWay, proTwoWay, proNoReplace])(rng, tier);
  if (tier === "medium") return pick(rng, [proTwoWay, proNoReplace])(rng, tier);
  if (tier === "hard") return pick(rng, [proTwoWay, proNoReplace])(rng, tier);
  return pick(rng, [proTwoWay, proNoReplace])(rng, tier);
}

// ---- IEE: Inference from sample statistics and margin of error -----------
// Rebuilt to real Digital SAT variety (2026-06-14): estimating a population
// count from a sample proportion, and interpreting a margin of error / 95%
// confidence interval (for a percentage or a mean).

function ieeEstimateTotal(rng, tier) {
  const scen = pick(rng, [
    { pop: "city council members", N: 50, who: "reporter" },
    { pop: "registered members", N: 300, who: "organizer" },
    { pop: "employees at a company", N: 400, who: "manager" },
    { pop: "students at a school", N: 600, who: "principal" },
    { pop: "subscribers to a newsletter", N: 800, who: "editor" },
    { pop: "households in a town", N: 250, who: "surveyor" },
    { pop: "conference attendees", N: 150, who: "coordinator" },
    { pop: "factory workers", N: 500, who: "supervisor" },
    { pop: "library patrons", N: 350, who: "librarian" },
    { pop: "gym members", N: 200, who: "trainer" },
    { pop: "season-ticket holders", N: 450, who: "team's analyst" },
    { pop: "residents of a neighborhood", N: 100, who: "planner" },
  ]);
  const sample = pick(rng, [20, 25, 40, 50]);
  const frac = pick(rng, [[1, 4], [3, 10], [2, 5], [1, 2], [3, 5]]);
  const support = (sample * frac[0]) / frac[1];
  if (!Number.isInteger(support) || !Number.isInteger((scen.N * frac[0]) / frac[1])) {
    return ieeEstimateTotal(makeRng("IEE", tier, ri(rng, 1, 1e6)), tier);
  }
  const est = (scen.N * frac[0]) / frac[1];
  return {
    context: `A ${scen.who} polled a random sample of ${sample} of the ${scen.N} ${scen.pop} and found that ${support} of those polled supported a certain proposal.`,
    contextType: "passage",
    question: pick(rng, [
      `Based on the sample, which is the best estimate of the total number of the ${scen.N} ${scen.pop} who support the proposal?`,
      `Using the sample, what is the best estimate of how many of the ${scen.N} ${scen.pop} support the proposal?`,
      `Based on this sample, approximately how many of the ${scen.N} ${scen.pop} would be expected to support the proposal?`,
      `Which value best estimates the number of the ${scen.N} ${scen.pop} who support the proposal?`,
    ]),
    answerText: `$${est}$`,
    answerWhy: `The sample proportion is $\\dfrac{${support}}{${sample}} = ${fracTex(frac[0], frac[1])}$; applying it to all ${scen.N} gives $${est}$.`,
    distractors: [
      { text: `$${support}$`, why: `This is the number in the sample, not the estimate for the whole group.` },
      { text: `$${scen.N - est}$`, why: `This estimates those who do NOT support, not those who do.` },
      { text: `$${est + frac[1]}$`, why: `Arithmetic slip — scale the sample proportion to the full group of ${scen.N}.` },
    ],
    steps: [
      `Find the sample proportion: $\\dfrac{${support}}{${sample}} = ${fracTex(frac[0], frac[1])}$.`,
      `Assume the full group has the same proportion of supporters.`,
      `Estimate $= ${fracTex(frac[0], frac[1])} \\times ${scen.N} = ${est}$.`,
    ],
    numeric: null,
    mathFormat: "inference_mcq",
  };
}

function ieeMOE(rng, tier) {
  const isMean = rng() < 0.4;
  if (isMean) {
    const mean = band(tier, ri(rng, 8, 20), ri(rng, 10, 30), ri(rng, 12, 40), ri(rng, 15, 50));
    const moe = pick(rng, [0.5, 1, 1.5, 2]);
    const lo = mean - moe, hi = mean + moe;
    const ms = pick(rng, [
      { who: "A park ranger", grp: "visitors", q: "how far they hiked", unit: "miles" },
      { who: "A librarian", grp: "patrons", q: "how many books they borrow per month", unit: "books" },
      { who: "A dietitian", grp: "clients", q: "how much water they drink daily", unit: "cups" },
      { who: "A coach", grp: "athletes", q: "how long they train each day", unit: "hours" },
      { who: "A researcher", grp: "commuters", q: "how far they travel to work", unit: "miles" },
    ]);
    return {
      context: `${ms.who} asked a random sample of ${ms.grp} ${ms.q}. The estimated mean was ${mean} ${ms.unit}, with a margin of error of ${moe} ${ms.unit} at the 95% confidence level.`,
      contextType: "passage",
      question: pick(rng, [`Which statement is best supported by these results?`, `Which conclusion is best supported by these data?`, `Which of the following is most strongly supported by the sample?`, `Based on the confidence interval, which statement is best supported?`]),
      answerText: `The true mean is most plausibly between ${lo} and ${hi} ${ms.unit}.`,
      answerWhy: `A 95% confidence interval is the estimate ± margin of error: ${mean} ± ${moe} ${ms.unit}.`,
      distractors: [
        { text: `Every one of the ${ms.grp} measured exactly ${mean} ${ms.unit}.`, why: `The mean is an average estimate, not the value for every individual.` },
        { text: `The margin of error means the estimate cannot be trusted.`, why: `The margin of error quantifies uncertainty; it does not invalidate the estimate.` },
        { text: `The true mean is exactly ${mean} ${ms.unit}.`, why: `The sample mean estimates, but does not pin down exactly, the population mean.` },
      ],
      steps: [
        `A confidence interval is the estimate plus or minus the margin of error.`,
        `Lower: $${mean} - ${moe} = ${lo}$. Upper: $${mean} + ${moe} = ${hi}$.`,
        `So the true mean most plausibly lies between ${lo} and ${hi} ${ms.unit}.`,
      ],
      numeric: null,
      mathFormat: "inference_mcq",
    };
  }
  const pct = ri(rng, 48, 66);
  const moe = band(tier, 3, ri(rng, 2, 4), ri(rng, 2, 4), ri(rng, 2, 3));
  const nSurvey = pick(rng, [800, 1000, 1200, 1500, 2000]);
  const lo = pct - moe, hi = pct + moe;
  const ps = pick(rng, [
    { grp: "voters", act: "support a measure", noun: "support" },
    { grp: "shoppers", act: "prefer the new store layout", noun: "preference" },
    { grp: "students", act: "favor a later start time", noun: "support" },
    { grp: "residents", act: "approve of the proposed park", noun: "approval" },
    { grp: "customers", act: "would recommend the service", noun: "recommendation" },
  ]);
  return {
    context: `In a random sample of ${nSurvey} ${ps.grp}, ${pct}% said they ${ps.act}. The margin of error is ±${moe} percentage points at the 95% confidence level.`,
    contextType: "passage",
    question: pick(rng, [`Which statement is best supported by these results?`, `Which conclusion is best supported by these data?`, `Which of the following is most strongly supported by the survey?`, `Based on the margin of error, which statement is best supported?`]),
    answerText: `The plausible range for true ${ps.noun} is between ${lo}% and ${hi}%.`,
    answerWhy: `A 95% interval is the estimate ± margin of error: ${pct}% ± ${moe}%.`,
    distractors: [
      { text: `Exactly ${pct}% of all ${ps.grp} would respond the same way.`, why: `A sample percentage estimates, but does not exactly equal, the population value.` },
      { text: `The margin of error makes the result meaningless.`, why: `The margin of error quantifies uncertainty; it does not invalidate the estimate.` },
      { text: `More than ${hi}% of all ${ps.grp} would respond this way.`, why: `Values above ${hi}% lie outside the 95% confidence interval.` },
    ],
    steps: [
      `A confidence interval is the sample estimate plus or minus the margin of error.`,
      `Lower bound: $${pct} - ${moe} = ${lo}$%. Upper bound: $${pct} + ${moe} = ${hi}$%.`,
      `So true support most plausibly lies in $[${lo}\\%, ${hi}\\%]$.`,
    ],
    numeric: null,
    mathFormat: "inference_mcq",
  };
}

function genIEE(rng, tier) {
  if (tier === "easy") return pick(rng, [ieeMOE, ieeEstimateTotal])(rng, tier);
  if (tier === "medium") return pick(rng, [ieeEstimateTotal, ieeMOE])(rng, tier);
  return pick(rng, [ieeEstimateTotal, ieeMOE])(rng, tier);
}

function svgPlotTitle(label, cx, y) {
  if (label.length <= 16) {
    return `<text x="${cx.toFixed(1)}" y="${y}" font-size="11" fill="#111827" text-anchor="middle" font-weight="600">${label}</text>`;
  }
  const words = label.split(" ");
  const mid = Math.ceil(words.length / 2);
  const l1 = words.slice(0, mid).join(" ");
  const l2 = words.slice(mid).join(" ");
  return `<text x="${cx.toFixed(1)}" y="${y}" font-size="11" fill="#111827" text-anchor="middle" font-weight="600"><tspan x="${cx.toFixed(1)}" dy="0">${l1}</tspan><tspan x="${cx.toFixed(1)}" dy="13">${l2}</tspan></text>`;
}

function evaDotPlotGroup(label, start, counts, unit, ox, pw, baselineY, titleY) {
  const cellW = pw / counts.length;
  const dotGap = 10;
  let g = svgPlotTitle(label, ox + pw / 2, titleY);
  for (let i = 0; i < counts.length; i++) {
    const x = ox + cellW * (i + 0.5);
    for (let d = 0; d < counts[i]; d++) {
      g += `<circle cx="${x.toFixed(1)}" cy="${(baselineY - 8 - d * dotGap).toFixed(1)}" r="4" fill="#1e40af"/>`;
    }
    g += `<text x="${x.toFixed(1)}" y="${(baselineY + 14).toFixed(1)}" font-size="10" fill="#374151" text-anchor="middle">${start + i}</text>`;
  }
  g += `<line x1="${ox}" y1="${baselineY}" x2="${ox + pw}" y2="${baselineY}" stroke="#374151" stroke-width="1"/>`;
  g += `<text x="${(ox + pw / 2).toFixed(1)}" y="${(baselineY + 28).toFixed(1)}" font-size="10" fill="#374151" text-anchor="middle">${unit}</text>`;
  return g;
}

function svgDualDotPlots(aLabel, bLabel, startA, startB, countsA, countsB, unit) {
  const rightCounts = countsB ?? countsA;
  const maxC = Math.max(...countsA, ...rightCounts, 1);
  const baselineY = 30 + maxC * 10 + 10;
  const titleY = Math.max(aLabel.length, bLabel.length) > 16 ? 12 : 16;
  const svgH = baselineY + 34;
  const left = evaDotPlotGroup(aLabel, startA, countsA, unit, 10, 210, baselineY, titleY);
  const right = evaDotPlotGroup(bLabel, startB, rightCounts, unit, 250, 210, baselineY, titleY);
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 ${svgH}" width="480" height="${svgH}" role="img" aria-label="Dot plots comparing ${aLabel} and ${bLabel}">
  ${left}${right}
</svg>`;
}

function evaDotPlotStdDevEqual(rng, tier) {
  const pairs = [
    ["Lincoln High", "Roosevelt High", 1, 11, "Hours"],
    ["Oak Park Middle", "Riverview Middle", 2, 14, "Minutes"],
    ["North Campus", "South Campus", 0, 8, "Sessions"],
  ];
  const [a, b, startA, startB, unit] = pick(rng, pairs);
  const counts = [1, 2, 3, 4, 2, 1];
  const topic = pick(rng, ["weekly hours spent volunteering", "daily minutes spent reading", "weekly tutoring sessions attended"]);
  return {
    context: `The dot plots show ${topic} by each student in a random sample from two different schools, ${a} and ${b}.\n\n${svgDualDotPlots(a, b, startA, startB, counts, unit)}`,
    contextType: "figure",
    question: `Which statement best compares the standard deviation of the data for students at ${a} with the standard deviation of the data for students at ${b}?`,
    answerText: `The standard deviation for students at ${a} is equal to the standard deviation for students at ${b}.`,
    answerWhy: `Both distributions have the same shape and spread; ${b}'s values are a horizontal shift of ${a}'s, and adding a constant to every value does not change the standard deviation.`,
    distractors: [
      { text: `The standard deviation for students at ${a} is less than the standard deviation for students at ${b}.`, why: `The plots have identical spread; only the location on the axis differs.` },
      { text: `There is not enough information to compare the standard deviations of the two schools.`, why: `Every data value is shown in both dot plots, so spread can be compared directly.` },
      { text: `The standard deviation for students at ${a} is greater than the standard deviation for students at ${b}.`, why: `Shifting all values by a constant changes the mean but not the standard deviation.` },
    ],
    steps: [
      `Compare how far the dots spread above and below the center of each plot.`,
      `The two plots have the same frequencies at matching relative positions — one is a shift of the other.`,
      `A constant shift changes the mean but not the standard deviation, so the spreads are equal.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaDotPlotStdDevUnequal(rng, tier) {
  const pairs = [
    ["Greenfield High", "Summit High", "Hours"],
    ["East Library", "West Library", "Visits"],
  ];
  const [a, b, unit] = pick(rng, pairs);
  const tight = [0, 0, 6, 0, 0];
  const spread = [1, 2, 3, 4, 3, 2, 1];
  const topic = pick(rng, ["hours spent on homework each week", "library visits per month"]);
  const fig = svgDualDotPlots(a, b, 3, 1, tight, spread, unit);
  return {
    context: `The dot plots show ${topic} for random samples of students from ${a} and ${b}.\n\n${fig}`,
    contextType: "figure",
    question: `Which statement best compares the standard deviation of the data for ${a} with the standard deviation of the data for ${b}?`,
    answerText: `The standard deviation for ${a} is less than the standard deviation for ${b}.`,
    answerWhy: `${a}'s values cluster at one point while ${b}'s values are spread across several values, so ${b} has greater spread.`,
    distractors: [
      { text: `The standard deviation for ${a} is equal to the standard deviation for ${b}.`, why: `Equal standard deviation requires the same spread; these plots clearly differ in spread.` },
      { text: `The standard deviation for ${a} is greater than the standard deviation for ${b}.`, why: `The tighter cluster at ${a} indicates smaller spread, not larger.` },
      { text: `There is not enough information to compare the standard deviations.`, why: `Both dot plots display every value, so spread can be compared visually.` },
    ],
    steps: [
      `Standard deviation measures how spread out values are from the mean.`,
      `${a}'s dots stack at a single value; ${b}'s dots cover a wider range.`,
      `Greater spread means a larger standard deviation, so ${b} has the larger standard deviation.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaGeneralizeRewards(rng, tier) {
  const n = band(tier, ri(rng, 120, 180), ri(rng, 140, 220), ri(rng, 150, 260), ri(rng, 160, 300));
  const support = ri(rng, Math.floor(n * 0.55), Math.floor(n * 0.72));
  const stores = pick(rng, ["bookstore", "coffee shop", "grocery store"]);
  const loc = pick(rng, ["downtown", "airport", "university district"]);
  const correct = `All rewards program members at the specific ${stores} location in the ${loc}`;
  return {
    context: `A market researcher selected a random sample of ${n} rewards program members from a specific ${stores} location in the ${loc}. The selected members answered a questionnaire about their preferences, and ${support} stated they prefer hardcover books over paperbacks.`,
    contextType: "passage",
    question: `Which of the following is the largest population to which the results of the survey can be applied?`,
    answerText: correct,
    answerWhy: `The sample was drawn at random from rewards members at that one location, so that location's rewards members is the broadest justified population.`,
    distractors: [
      { text: `The ${n} rewards program members who were surveyed`, why: `That is the sample itself, not a population the results generalize to.` },
      { text: `All customers at the specific ${stores} location`, why: `Non-members were not in the sampling frame, so the results cannot be applied to all customers.` },
      { text: `All rewards program members of the ${stores} chain nationwide`, why: `The sample came from one location only, not a random nationwide draw.` },
    ],
    steps: [
      `Identify the sampling frame: who could have been selected?`,
      `Participants were random rewards members at one specific location.`,
      `Results can generalize to that location's rewards members, but not to broader groups outside the frame.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaGeneralizeWorkplace(rng, tier) {
  const n = band(tier, ri(rng, 80, 140), ri(rng, 100, 180), ri(rng, 120, 220), ri(rng, 140, 260));
  const city = pick(rng, ["Seattle", "Austin", "Denver", "Boston"]);
  const role = pick(rng, ["software engineers", "data analysts", "product designers"]);
  const correct = `All ${role} at technology companies in ${city}`;
  return {
    context: `A researcher conducted a survey using a sample of ${n} ${role} selected at random from technology companies in ${city}. The ${role} surveyed were asked to report their preferred programming language for backend development.`,
    contextType: "passage",
    question: `To which of the following populations can the results of this survey be most justifiably generalized?`,
    answerText: correct,
    answerWhy: `The sample was a random draw from ${role} at ${city} tech companies — that is exactly the population the design supports.`,
    distractors: [
      { text: `All ${role} in the United States`, why: `The sample was limited to one city, not a national random sample.` },
      { text: `All employees at technology companies in the United States`, why: `Only ${role} were sampled, not every employee role.` },
      { text: `All employees at technology companies in ${city}`, why: `The sample included ${role} only, not all job titles at those companies.` },
    ],
    steps: [
      `Match the conclusion to the group that was randomly sampled.`,
      `Here that group is ${role} at technology companies in ${city}.`,
      `Broader populations require a broader sampling design than was used.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaGeneralizeBranch(rng, tier) {
  const n = band(tier, ri(rng, 80, 140), ri(rng, 100, 180), ri(rng, 120, 220), ri(rng, 140, 260));
  const firm = pick(rng, ["international technology firm", "regional bank", "healthcare network"]);
  return {
    context: `A management consultant conducted a survey to assess whether offering remote work options improves employee job satisfaction. For the survey, the consultant selected a random sample of ${n} employees from the complete staff list of one specific branch of a large ${firm}. The results indicated a strong positive correlation between the number of remote work days and reported job satisfaction.`,
    contextType: "passage",
    question: `To which of the following groups can the results of this survey be most accurately generalized?`,
    answerText: `All employees at the specific branch of the firm`,
    answerWhy: `The random sample came from that branch's staff list, so the branch workforce is the supported population.`,
    distractors: [
      { text: `The ${n} employees who participated in the survey`, why: `That describes the sample, not the population for generalization.` },
      { text: `All employees of the ${firm}`, why: `Only one branch was sampled, not the entire organization.` },
      { text: `All employees in the technology industry`, why: `The study targeted one branch of one firm, not an industry-wide sample.` },
    ],
    steps: [
      `Find who was eligible to be selected: employees on one branch's staff list.`,
      `A random sample from that list supports inference about that branch.`,
      `Extending results beyond that branch requires a different sampling design.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaMustBeTrueTwo(rng, tier) {
  const n = band(tier, ri(rng, 400, 700), ri(rng, 500, 900), ri(rng, 600, 1200), ri(rng, 700, 1500));
  const pct = ri(rng, 52, 68);
  const org = pick(rng, ["regional fitness club chain", "state teachers association", "national alumni network"]);
  const proposal = pick(rng, ["extending the gym's operating hours", "offering a new mobile app", "raising membership dues"]);
  return {
    context: `Members of a ${org} were surveyed to determine whether they support ${proposal}. A random sample of ${n} members was selected. All ${n} responded, and ${pct}% indicated they support the proposal.`,
    contextType: "passage",
    question: `Based on this information, which of the following statements must be true?\n\nI. Of all the members, ${pct}% would support the proposal.\n\nII. If a different random sample of ${n} members were surveyed, ${pct}% would indicate they support the proposal.`,
    answerText: `Neither`,
    answerWhy: `A sample proportion estimates the population proportion but does not guarantee it equals ${pct}%, and a new sample would likely give a different proportion.`,
    distractors: [
      { text: `I only`, why: `Statement I treats the sample percentage as the exact population value, which is not guaranteed.` },
      { text: `I and II`, why: `Statement II ignores sampling variability — another random sample would rarely match ${pct}% exactly.` },
      { text: `II only`, why: `Statement II is not guaranteed because sample proportions vary from sample to sample.` },
    ],
    steps: [
      `Statement I equates a sample statistic with the population parameter — that is an estimate, not a certainty.`,
      `Statement II assumes the next sample would match this one exactly — sampling variability prevents that.`,
      `Neither statement must be true based on one survey result.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaMustBeTrueThree(rng, tier) {
  const n = band(tier, ri(rng, 1800, 2600), ri(rng, 2000, 3000), ri(rng, 2200, 3400), ri(rng, 2400, 3800));
  const pct = ri(rng, 52, 62);
  const state = pick(rng, ["Colorado", "Ohio", "Virginia", "Oregon"]);
  const neighbor = pick(rng, ["Utah", "Pennsylvania", "West Virginia", "Washington"]);
  return {
    context: `A consumer research firm recently surveyed ${n} registered voters who were selected at random from ${state} and asked each voter, "Do you support the proposed legislation to increase funding for public parks?" Of those surveyed, ${pct} percent responded that they supported the legislation.`,
    contextType: "passage",
    question: `Based on the results of the survey, which of the following statements must be true?\n\nI. Of all registered voters in ${state}, ${pct} percent support the proposed legislation.\n\nII. If another ${n} registered voters selected at random from ${state} were surveyed, ${pct} percent of them would report they support the legislation.\n\nIII. If ${n} registered voters selected at random from ${neighbor} were surveyed, ${pct} percent of them would report they support the legislation.`,
    answerText: `None`,
    answerWhy: `Sample results do not pin down population percentages exactly, repeat samples vary, and voters in another state are a different population.`,
    distractors: [
      { text: `II and III only`, why: `Neither a repeat sample in ${state} nor a sample in ${neighbor} is guaranteed to match ${pct}%.` },
      { text: `I and II only`, why: `Statement I overstates what one sample proves, and II ignores sampling variability.` },
      { text: `I only`, why: `The sample proportion is an estimate, not proof that exactly ${pct}% of all voters support the measure.` },
    ],
    steps: [
      `Statement I: a sample percentage estimates but does not prove the population percentage.`,
      `Statement II: another random sample would almost certainly yield a different percentage.`,
      `Statement III: ${neighbor} voters were not sampled, so ${state}'s result cannot dictate their response rate.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaSamplingBiasGroup(rng, tier) {
  const n = band(tier, ri(rng, 250, 360), ri(rng, 280, 420), ri(rng, 300, 480), ri(rng, 320, 520));
  const scenarios = [
    {
      ctx: `The parks department of a large town wanted to assess the opinions of all town residents regarding a proposal to convert a local golf course into a nature preserve. The department surveyed a sample of ${n} town residents who are members of a local bird-watching society. The survey results indicated that the vast majority of those sampled supported the proposal.`,
      q: `Which of the following is true about the parks department's survey?`,
      good: `The survey sample is biased because it is not representative of all town residents.`,
      bads: [
        [`The survey sample should have consisted entirely of residents who play golf.`, `Golf players alone would also be a biased subset, not representative of all residents.`],
        [`The survey sample should have included a larger number of bird-watching society members.`, `More members of a biased group would increase bias, not fix it.`],
        [`It demonstrates that the majority of town residents support the nature preserve.`, `A non-representative sample cannot justify a claim about all residents.`],
      ],
    },
    {
      ctx: `A city council wanted to learn whether residents support extending public transit hours. Officials surveyed ${n} residents who attended a downtown music festival on a Saturday night. Most respondents favored longer hours.`,
      q: `Which of the following best evaluates the council's use of the survey results?`,
      good: `The sample is biased because festival attendees are not representative of all city residents.`,
      bads: [
        [`The sample is valid because ${n} responses is a large number.`, `Sample size does not correct selection bias from a non-representative group.`],
        [`The sample proves most city residents support longer transit hours.`, `Festival attendees may differ systematically from the general population.`],
        [`The survey would be valid if it were repeated on another Saturday night.`, `Repeating the same biased selection method still yields a biased sample.`],
      ],
    },
  ];
  const sc = pick(rng, scenarios);
  return {
    context: sc.ctx,
    contextType: "passage",
    question: sc.q,
    answerText: sc.good,
    answerWhy: sc.good,
    distractors: sc.bads.map(([text, why]) => ({ text, why })),
    steps: [
      `Ask whether the sample resembles the population of interest.`,
      `A specialty group is unlikely to represent all residents.`,
      `Conclusions about all residents require a representative random sample of residents.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaTwoWayGeneralize(rng, tier) {
  const sampleN = band(tier, ri(rng, 140, 180), ri(rng, 160, 200), ri(rng, 180, 220), ri(rng, 200, 240));
  const subN = sampleN - ri(rng, 25, 45);
  const a = ri(rng, 28, 42), b = ri(rng, 10, 22), c = ri(rng, 14, 28), d = ri(rng, 55, 85);
  const cert = pick(rng, ["a specific professional certification", "at least two years of experience", "a completed leadership credential"]);
  const firm = pick(rng, ["nationwide insurance firm", "national retail chain", "regional consulting company"]);
  const { table } = twoWayTable("Workshops attended", ["0 to 2 workshops", "3 or more workshops"], ["Less than \\$500,000", "\\$500,000 or more"], [[a, b], [c, d]]);
  return {
    context: `A corporate executive wanted to study the relationship between the number of leadership workshops attended and the annual sales revenue generated by associates. For the study, the executive selected ${sampleN} sales associates at random from all sales associates employed by a ${firm}. The table displays the information for the ${subN} associates in the sample who had ${cert}.\n\n${table}`,
    contextType: "table",
    question: `Which of the following is the largest population to which the results of the study can be generalized?`,
    answerText: `All sales associates employed by the ${firm}`,
    answerWhy: `The original ${sampleN} associates were chosen at random from the entire firm, so the firm-wide workforce is the supported population even though the table shows a subset.`,
    distractors: [
      { text: `The ${subN} sales associates in the sample who had ${cert}`, why: `That is a subgroup within the sample, not the population for generalization.` },
      { text: `The ${sampleN} sales associates in the sample`, why: `The sample itself is not a population; inference targets the group it was drawn from.` },
      { text: `All sales associates employed by the firm who generated \\$500,000 or more in revenue`, why: `High earners were not the sampling frame; associates were selected at random from the whole firm.` },
    ],
    steps: [
      `The study began with a random sample of ${sampleN} associates from the entire ${firm}.`,
      `The table filters to ${subN} certified associates, but generalization follows the original sampling frame.`,
      `That frame is all sales associates at the firm.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaAppropriateInference(rng, tier) {
  const n = band(tier, ri(rng, 400, 700), ri(rng, 500, 800), ri(rng, 550, 900), ri(rng, 600, 1000));
  const pct = ri(rng, 68, 78);
  const app = pick(rng, ["photo-editing application", "language-learning application", "fitness tracking application"]);
  return {
    context: `A software company selected ${n} users at random from a list of customers who had purchased a specific ${app}. The ${n} users were given a beta version of a new update to test and were then asked whether they were satisfied with the update's performance. Of those surveyed, ${pct}% indicated that they were satisfied with the update.`,
    contextType: "passage",
    question: `Which of the following inferences can appropriately be drawn from this survey result?`,
    answerText: `Most people who purchased this ${app} will be satisfied with this update.`,
    answerWhy: `The sample was randomly drawn from purchasers of this app, so a majority satisfied in the sample supports inferring a majority among purchasers — with the usual sampling caveat.`,
    distractors: [
      { text: `At least ${pct}% of people who use computers will be satisfied with this update.`, why: `Computer users generally were not sampled — only purchasers of this specific app.` },
      { text: `Most people who did not purchase this ${app} will be dissatisfied with this update.`, why: `Non-purchasers were not surveyed, so no inference about them is supported.` },
      { text: `At least ${pct}% of people who buy software applications will be satisfied with this update.`, why: `The sample was limited to one app's customers, not all software buyers.` },
    ],
    steps: [
      `Identify the sampling frame: customers who purchased this ${app}.`,
      `${pct}% satisfied in a random sample from that frame supports a cautious inference about purchasers.`,
      `Broader groups (all computer users, all software buyers) require broader sampling.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaVoluntaryResponse(rng, tier) {
  const favor = ri(rng, 18, 28);
  const against = ri(rng, 68, 78);
  const topic = pick(rng, ["a proposed federal law regulating artificial intelligence", "a proposed ban on single-use plastics", "a proposed increase in public transit funding"]);
  return {
    context: `During a broadcast of a popular technology podcast, the hosts invited listeners to complete a survey on the podcast's social media page regarding ${topic}. In a subsequent episode, the hosts announced that ${favor}% of respondents voted "In Favor" and ${against}% voted "Against."`,
    contextType: "passage",
    question: `Which of the following best explains why the results are unlikely to represent the sentiments of the population of the United States?`,
    answerText: `The respondents to the survey did not constitute a random sample of the United States population.`,
    answerWhy: `Listeners who choose to respond on social media are self-selected and not a random cross-section of all US residents.`,
    distractors: [
      { text: `The total of the reported percentages does not equal 100%, invalidating any statistical findings.`, why: `Undecided or other responses can account for the remainder; the key issue is who responded.` },
      { text: `The podcast hosts did not allow listeners sufficient time to submit their responses.`, why: `More response time would not turn a voluntary online sample into a random national sample.` },
      { text: `The results did not show a 50% split between the "In Favor" and "Against" votes.`, why: `Real opinions need not split evenly; representativeness depends on how people were selected.` },
    ],
    steps: [
      `Representative national results require a random sample of US residents.`,
      `Social-media respondents are self-selected podcast listeners, not a random draw.`,
      `Self-selection bias makes the results poor estimates of national sentiment.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaConvenienceSample(rng, tier) {
  const n = band(tier, ri(rng, 45, 70), ri(rng, 50, 80), ri(rng, 55, 90), ri(rng, 60, 100));
  const mean = band(tier, ri(rng, 10, 16), ri(rng, 12, 18), ri(rng, 14, 20), ri(rng, 15, 22));
  const surveyor = pick(rng, ["Wei", "Morgan", "Jordan", "Priya"]);
  const places = pick(rng, ["the city's main library", "a downtown bookstore", "a community literacy festival"]);
  return {
    context: `To estimate the mean number of books read per year by residents of a city, ${surveyor} surveyed ${n} adults at ${places}. For the ${n} adults surveyed, the mean number of books read per year was ${mean}.`,
    contextType: "passage",
    question: `Which of the following statements must be true?`,
    answerText: `The sampling method is flawed and may produce a biased estimate of the mean number of books read per year by residents of the city.`,
    answerWhy: `People at ${places} likely read more than typical residents, so the convenience sample may overestimate citywide reading.`,
    distractors: [
      { text: `The mean number of books read per year by residents of the city is ${mean}.`, why: `A sample mean does not prove the population mean equals ${mean}.` },
      { text: `A determination about the mean number of books read per year by residents of the city should not be made because the sample size is too small.`, why: `${n} may be adequate in size; the problem is where people were sampled, not how many.` },
      { text: `The sampling method is not flawed and is likely to produce an unbiased estimate of the mean number of books read per year by residents of the city.`, why: `Convenience sampling at a book-oriented location tends to over-represent heavy readers.` },
    ],
    steps: [
      `An unbiased estimate requires a random sample of all city residents.`,
      `${places} attracts people who read more than average.`,
      `That convenience sample may be biased even if the sample size is reasonable.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaRandomAssignment(rng, tier) {
  const n = band(tier, ri(rng, 80, 200), ri(rng, 100, 240), ri(rng, 120, 280), ri(rng, 140, 320));
  const treatment = pick(rng, ["a new study app", "a mindfulness training program", "an adaptive practice tool"]);
  const outcome = pick(rng, ["higher test scores", "lower stress levels", "greater problem-solving accuracy"]);
  return {
    context: `A researcher randomly assigned ${n} volunteers to either ${treatment} or no treatment and then concluded that ${treatment} caused ${outcome}.`,
    contextType: "passage",
    question: `Which choice best evaluates the researcher's conclusion?`,
    answerText: `Because treatment was randomly assigned, a cause-and-effect conclusion about ${treatment} is reasonable.`,
    answerWhy: `Random assignment helps isolate the effect of the treatment by balancing other factors across groups.`,
    distractors: [
      { text: `The conclusion is invalid because the sample was not random.`, why: `Random assignment to treatment groups was used; that supports causal inference.` },
      { text: `No conclusion is possible from any experiment.`, why: `Well-designed randomized experiments are the standard method for supporting causal claims.` },
      { text: `The result generalizes to everyone on Earth.`, why: `Causal findings apply to populations the volunteers represent, not literally every person.` },
    ],
    steps: [
      `Random assignment creates comparable treatment and control groups.`,
      `Comparable groups allow attributing outcome differences to the treatment.`,
      `So a causal conclusion about ${treatment} is reasonable for the population studied.`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function evaSelfSelected(rng, tier) {
  const n = band(tier, ri(rng, 100, 300), ri(rng, 120, 340), ri(rng, 140, 380), ri(rng, 160, 420));
  const page = pick(rng, ["one fan page", "a single online forum thread", "a celebrity's social media post"]);
  return {
    context: `A researcher surveyed ${n} people who volunteered by clicking a link on ${page} and then concluded that most people in the country favor the proposal.`,
    contextType: "passage",
    question: `Which choice best evaluates the researcher's conclusion?`,
    answerText: `The sample is self-selected and not representative, so it cannot support a claim about the whole country.`,
    answerWhy: `Visitors who choose to click a link on ${page} are not a random cross-section of the national population.`,
    distractors: [
      { text: `The claim is valid because the sample size is large.`, why: `A large self-selected sample is still biased.` },
      { text: `The claim is valid because online users represent everyone.`, why: `Online users, especially on one page, do not represent the entire country.` },
      { text: `The claim is valid because one page reflects all opinions.`, why: `A single page's audience is far too narrow to represent national opinion.` },
    ],
    steps: [
      `National claims require a representative sample of the country.`,
      `Self-selected respondents from ${page} over-represent engaged visitors.`,
      `The design cannot support a conclusion about "most people in the country."`,
    ],
    numeric: null,
    mathFormat: "study_eval",
  };
}

function genEVA(rng, tier) {
  const figureTemplates = [evaDotPlotStdDevEqual, evaDotPlotStdDevUnequal];
  const easyText = [evaGeneralizeRewards, evaSamplingBiasGroup, evaRandomAssignment, evaSelfSelected, evaVoluntaryResponse];
  const mediumText = [evaGeneralizeWorkplace, evaGeneralizeBranch, evaMustBeTrueTwo, evaAppropriateInference, evaConvenienceSample, evaTwoWayGeneralize];
  const hardText = [evaMustBeTrueThree, evaTwoWayGeneralize, evaGeneralizeBranch, evaAppropriateInference, evaSamplingBiasGroup];
  if (rng() < 0.3) return pick(rng, figureTemplates)(rng, tier);
  if (tier === "easy") return pick(rng, easyText)(rng, tier);
  if (tier === "medium") return pick(rng, mediumText)(rng, tier);
  if (tier === "hard") return pick(rng, hardText)(rng, tier);
  return pick(rng, [...hardText, ...figureTemplates])(rng, tier);
}

function svgCylinder(rLabel, hLabel) {
  return `<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 170 180" width="170" height="180" role="img" aria-label="Right circular cylinder, radius ${rLabel}, height ${hLabel}">
  <ellipse cx="75" cy="34" rx="48" ry="15" fill="none" stroke="#1e40af" stroke-width="2"/>
  <line x1="27" y1="34" x2="27" y2="146" stroke="#1e40af" stroke-width="2"/>
  <line x1="123" y1="34" x2="123" y2="146" stroke="#1e40af" stroke-width="2"/>
  <path d="M27 146 A48 15 0 0 0 123 146" fill="none" stroke="#1e40af" stroke-width="2"/>
  <path d="M27 146 A48 15 0 0 1 123 146" fill="none" stroke="#1e40af" stroke-width="1" stroke-dasharray="4 3"/>
  <line x1="75" y1="34" x2="123" y2="34" stroke="#dc2626" stroke-width="1.5"/>
  <text x="92" y="28" font-size="12" fill="#dc2626">${rLabel}</text>
  <line x1="133" y1="34" x2="133" y2="146" stroke="#6b7280" stroke-width="1"/>
  <text x="137" y="94" font-size="12" fill="#374151">${hLabel}</text>
</svg>`;
}

// ---- ARE: Area and volume ------------------------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): open-top box volume,
// rectangular prism volume, right-circular-cylinder volume (in terms of pi)
// and solving for a radius, and similar-figure perimeter scaling. Figures are
// emitted from the same parameters as the stem.

function areBox(rng, tier) {
  const cut = band(tier, ri(rng, 2, 3), ri(rng, 2, 3), ri(rng, 2, 4), ri(rng, 2, 5));
  const w = band(tier, ri(rng, 8, 18), ri(rng, 10, 24), ri(rng, 12, 30), ri(rng, 14, 36));
  const h = band(tier, ri(rng, 8, 16), ri(rng, 9, 22), ri(rng, 11, 28), ri(rng, 12, 32));
  const baseW = w - 2 * cut, baseH = h - 2 * cut;
  const vol = baseW * baseH * cut;
  return {
    context: `An open-top box is made from a ${w} in by ${h} in rectangular sheet by cutting a ${cut} in by ${cut} in square from each corner and folding up the sides.\n\n${svgSheetWithCorners(w, h, cut)}`,
    contextType: "figure",
    question: pick(rng, [`What is the volume of the box, in cubic inches?`, `Find the volume of the box, in cubic inches.`]),
    answerText: `$${vol}$`,
    answerWhy: `The base is $${baseW} \\times ${baseH}$ and the height is ${cut}, so volume $= ${vol}$.`,
    distractors: [
      { text: `$${w * h}$`, why: `This is the area of the flat sheet, not the box's volume.` },
      { text: `$${baseW * baseH}$`, why: `This is the base area but is not multiplied by the height ${cut}.` },
      { text: `$${w * h * cut}$`, why: `This uses the full sheet dimensions instead of subtracting the cut corners.` },
    ],
    steps: [
      `Folding removes ${cut} in from each end, so the base is $(${w} - 2 \\cdot ${cut}) \\times (${h} - 2 \\cdot ${cut}) = ${baseW} \\times ${baseH}$.`,
      `The height of the box equals the cut size, ${cut} in.`,
      `Volume $= ${baseW} \\times ${baseH} \\times ${cut} = ${vol}$ cubic inches.`,
    ],
    numeric: String(vol),
    mathFormat: "geometry_figure",
  };
}

function arePrism(rng, tier) {
  const l = band(tier, ri(rng, 3, 8), ri(rng, 4, 10), ri(rng, 5, 12), ri(rng, 6, 15));
  const w = band(tier, ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 11), ri(rng, 5, 13));
  const h = band(tier, ri(rng, 2, 6), ri(rng, 3, 8), ri(rng, 4, 10), ri(rng, 5, 12));
  const vol = l * w * h;
  return {
    context: null, contextType: null,
    question: `A right rectangular prism has length ${l}, width ${w}, and height ${h}. What is the volume of the prism?`,
    answerText: `$${vol}$`,
    answerWhy: `Volume of a rectangular prism is length × width × height $= ${l} \\times ${w} \\times ${h} = ${vol}$.`,
    distractors: [
      { text: `$${2 * (l * w + l * h + w * h)}$`, why: `This is the surface area, not the volume.` },
      { text: `$${l + w + h}$`, why: `This adds the dimensions instead of multiplying them.` },
      { text: `$${l * w}$`, why: `This is the area of one face, not the volume.` },
    ],
    steps: [
      `The volume of a rectangular prism is $V = \\ell w h$.`,
      `Substitute: $V = ${l} \\times ${w} \\times ${h}$.`,
      `$V = ${vol}$.`,
    ],
    numeric: String(vol),
    mathFormat: "geometry_figure",
  };
}

function areCylinderVol(rng, tier) {
  const r = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7), ri(rng, 3, 8));
  const h = band(tier, ri(rng, 2, 6), ri(rng, 3, 8), ri(rng, 4, 10), ri(rng, 5, 12));
  const coef = r * r * h;
  return {
    context: null, contextType: null,
    question: `A right circular cylinder has a radius of ${r} and a height of ${h}. What is the volume of the cylinder, in terms of $\\pi$?`,
    answerText: `$${coef}\\pi$`,
    answerWhy: `Volume of a cylinder is $\\pi r^2 h = \\pi(${r})^2(${h}) = ${coef}\\pi$.`,
    distractors: [
      { text: `$${2 * r * h}\\pi$`, why: `This uses $2rh$ (related to lateral surface area), not $r^2 h$.` },
      { text: `$${r * h}\\pi$`, why: `This forgets to square the radius.` },
      { text: `$${r * r}\\pi$`, why: `This is the base area $\\pi r^2$, not multiplied by the height.` },
    ],
    steps: [
      `The volume of a cylinder is $V = \\pi r^2 h$.`,
      `Substitute $r = ${r}$, $h = ${h}$: $V = \\pi(${r})^2(${h})$.`,
      `$V = \\pi(${r * r})(${h}) = ${coef}\\pi$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

function areCylinderRadius(rng, tier) {
  const r = band(tier, ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7), ri(rng, 3, 8));
  const h = band(tier, ri(rng, 2, 6), ri(rng, 3, 8), ri(rng, 4, 10), ri(rng, 5, 12));
  const coef = r * r * h; // volume = coef * pi
  return {
    context: null, contextType: null,
    question: `A right circular cylinder has a volume of $${coef}\\pi$ and a height of ${h}. What is the radius of the cylinder?`,
    answerText: `$${r}$`,
    answerWhy: `From $\\pi r^2 h = ${coef}\\pi$, divide by $\\pi$ and ${h}: $r^2 = ${r * r}$, so $r = ${r}$.`,
    distractors: [
      { text: `$${r * r}$`, why: `This is $r^2$; take the square root to get the radius.` },
      { text: `$${coef / h}$`, why: `This is $r^2$ found from $V/(\\pi h)$ but not square-rooted.` },
      { text: `$${r + 1}$`, why: `Arithmetic slip — solve $r^2 = ${r * r}$ exactly.` },
    ],
    steps: [
      `Use $V = \\pi r^2 h$ with $V = ${coef}\\pi$ and $h = ${h}$: $\\pi r^2 (${h}) = ${coef}\\pi$.`,
      `Divide both sides by $\\pi$ and by ${h}: $r^2 = ${r * r}$.`,
      `Take the positive square root: $r = ${r}$.`,
    ],
    numeric: String(r),
    mathFormat: "circle_svg",
  };
}

function areSimilar(rng, tier) {
  const a = band(tier, ri(rng, 2, 4), ri(rng, 2, 5), ri(rng, 2, 6), ri(rng, 3, 7));
  const k = band(tier, ri(rng, 2, 4), ri(rng, 2, 5), ri(rng, 3, 6), ri(rng, 3, 7));
  const b = a * k;
  const Psmall = a * band(tier, ri(rng, 3, 6), ri(rng, 4, 8), ri(rng, 5, 10), ri(rng, 6, 12));
  const Plarge = Psmall * k;
  return {
    context: `Triangle $R$ is similar to triangle $S$. A pair of corresponding sides have lengths ${a} and ${b}, and the perimeter of triangle $R$ (the smaller one) is ${Psmall}.`,
    contextType: "passage",
    question: `What is the perimeter of triangle $S$?`,
    answerText: `$${Plarge}$`,
    answerWhy: `Similar figures scale all lengths by the same ratio $${b}:${a} = ${k}$, so the perimeter scales by ${k}: $${Psmall} \\times ${k} = ${Plarge}$.`,
    distractors: [
      { text: `$${Psmall + (b - a)}$`, why: `This adds the side difference instead of scaling by the ratio.` },
      { text: `$${Math.round(Psmall / k)}$`, why: `This divides by the ratio; triangle $S$ is larger, so multiply.` },
      { text: `$${Psmall}$`, why: `This is the perimeter of triangle $R$, not $S$.` },
    ],
    steps: [
      `Find the scale factor from corresponding sides: $\\dfrac{${b}}{${a}} = ${k}$.`,
      `In similar figures, the perimeter scales by the same factor.`,
      `Perimeter of $S = ${Psmall} \\times ${k} = ${Plarge}$.`,
    ],
    numeric: String(Plarge),
    mathFormat: "geometry_figure",
  };
}

// Similar 3-D solids: surface area scales by k^2, volume by k^3. (text, SPR-able)
function areSimilarPrism(rng, tier) {
  const k = band(tier, 2, 2, ri(rng, 2, 3), ri(rng, 2, 4));
  const saSmall = band(tier, ri(rng, 5, 12), ri(rng, 6, 16), ri(rng, 8, 20), ri(rng, 10, 26));
  const saLarge = saSmall * k * k;
  const volLarge = band(tier, ri(rng, 60, 200), ri(rng, 100, 400), ri(rng, 150, 600), ri(rng, 200, 900));
  const volSmall = Math.round(volLarge / (k * k * k));
  if (volSmall * k * k * k !== volLarge) return areSimilarPrism(makeRng("ARE", tier, ri(rng, 1, 1e6)), tier);
  const total = volLarge + volSmall;
  return {
    context: null, contextType: null,
    question: `Right rectangular prism $X$ is similar to right rectangular prism $Y$. The surface area of prism $X$ is ${saSmall} square units, and the surface area of prism $Y$ is ${saLarge} square units. The volume of prism $Y$ is ${volLarge} cubic units. What is the volume of prism $X$, in cubic units?`,
    answerText: `$${volSmall}$`,
    answerWhy: `Surface area scales by $k^2$: $k^2 = ${saLarge}/${saSmall} = ${k * k}$, so $k = ${k}$. Volume scales by $k^3 = ${k * k * k}$, so $V_X = ${volLarge} / ${k * k * k} = ${volSmall}$.`,
    distractors: [
      { text: `$${Math.round(volLarge / (k * k))}$`, why: `This divides by $k^2$ (the area ratio) instead of $k^3$ (the volume ratio).` },
      { text: `$${volLarge}$`, why: `This is the volume of prism $Y$, not $X$.` },
      { text: `$${total}$`, why: `This is the sum of both volumes, not the volume of $X$.` },
    ],
    steps: [
      `For similar solids, surface areas scale by $k^2$ and volumes by $k^3$.`,
      `From the surface areas, $k^2 = ${saLarge}/${saSmall} = ${k * k}$, so $k = ${k}$.`,
      `Volume of $X = \\dfrac{${volLarge}}{k^3} = \\dfrac{${volLarge}}{${k * k * k}} = ${volSmall}$.`,
    ],
    numeric: String(volSmall),
    mathFormat: "geometry_figure",
  };
}

// Only the box-folding type carries a figure; everything else is text, matching
// the real bank where area/volume questions are largely text.
function genARE(rng, tier, fmt) {
  if (fmt === "spr") {
    if (tier === "easy") return pick(rng, [arePrism, areBox])(rng, tier);
    if (tier === "medium") return pick(rng, [arePrism, areSimilar, areBox])(rng, tier);
    return pick(rng, [areSimilarPrism, areCylinderRadius, areSimilar, arePrism])(rng, tier);
  }
  if (tier === "easy") return pick(rng, [arePrism, areCylinderVol, areBox])(rng, tier);
  if (tier === "medium") return pick(rng, [areCylinderVol, arePrism, areSimilar, areBox])(rng, tier);
  if (tier === "hard") return pick(rng, [areSimilarPrism, areCylinderRadius, areSimilar, areCylinderVol])(rng, tier);
  return pick(rng, [areSimilarPrism, areCylinderRadius, areSimilar, areCylinderVol])(rng, tier);
}

// ---- LIN_G: Lines, angles, and triangles ---------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): triangle angle sum,
// exterior-angle theorem, isosceles base angles, and parallel lines cut by a
// transversal. Triangle figures are emitted from the same three angles as the
// stem (and always sum to 180).

function lgTriangleSum(rng, tier) {
  let aA, aB, angleC, guard = 0;
  do {
    aA = band(tier, ri(rng, 40, 70), ri(rng, 35, 72), ri(rng, 28, 76), ri(rng, 24, 80));
    aB = band(tier, ri(rng, 40, 70), ri(rng, 30, 72), ri(rng, 26, 76), ri(rng, 22, 80));
    angleC = 180 - aA - aB;
    guard++;
  } while ((Math.abs(aA - aB) < 3 || angleC < 20 || angleC > 120) && guard < 60);
  return {
    context: `In triangle $ABC$, $m\\angle A = ${aA}°$ and $m\\angle B = ${aB}°$.\n\n${svgTriangle(aA, aB, angleC)}`,
    contextType: "figure",
    question: pick(rng, [`What is the measure, in degrees, of $\\angle C$?`, `What is $m\\angle C$, in degrees?`]),
    answerText: `$${angleC}°$`,
    answerWhy: `The angles of a triangle sum to $180°$, so $m\\angle C = 180 - ${aA} - ${aB} = ${angleC}$.`,
    distractors: [
      { text: `$${aA}°$`, why: `This is $m\\angle A$, copied from the figure rather than computed.` },
      { text: `$${180 - angleC}°$`, why: `This is $m\\angle A + m\\angle B$ (the exterior angle at $C$), not $\\angle C$.` },
      { text: `$${Math.abs(aA - aB)}°$`, why: `This subtracts the two given angles instead of using the 180° sum.` },
    ],
    steps: [
      `The interior angles of any triangle add to $180°$.`,
      `So $m\\angle C = 180 - m\\angle A - m\\angle B = 180 - ${aA} - ${aB}$.`,
      `$m\\angle C = ${angleC}°$.`,
    ],
    numeric: String(angleC),
    mathFormat: "triangle_svg",
  };
}

function lgExterior(rng, tier) {
  let aA, aB, angleC, guard = 0;
  do {
    aA = band(tier, ri(rng, 35, 65), ri(rng, 32, 68), ri(rng, 28, 72), ri(rng, 25, 75));
    aB = band(tier, ri(rng, 35, 65), ri(rng, 30, 68), ri(rng, 26, 72), ri(rng, 24, 75));
    angleC = 180 - aA - aB;
    guard++;
  } while ((Math.abs(aA - aB) < 3 || angleC < 25 || angleC > 110) && guard < 60);
  const ext = aA + aB; // exterior angle at C = sum of the two remote interior angles
  return {
    context: `In triangle $ABC$, $m\\angle A = ${aA}°$ and $m\\angle B = ${aB}°$. One side is extended to form an exterior angle at vertex $C$.\n\n${svgTriangle(aA, aB, angleC)}`,
    contextType: "figure",
    question: pick(rng, [`What is the measure, in degrees, of the exterior angle at $C$?`, `In degrees, what is the measure of the exterior angle at vertex $C$?`, `What is the measure of the exterior angle at $C$, in degrees?`, `Based on the figure, what is the measure (in degrees) of the exterior angle at $C$?`]),
    answerText: `$${ext}°$`,
    answerWhy: `An exterior angle equals the sum of the two remote interior angles: $${aA} + ${aB} = ${ext}$.`,
    distractors: [
      { text: `$${angleC}°$`, why: `This is the interior angle $\\angle C$, not the exterior angle.` },
      { text: `$${Math.abs(aA - aB)}°$`, why: `The exterior angle is the sum, not the difference, of the remote interior angles.` },
      { text: `$${180 - aA}°$`, why: `This is supplementary to $\\angle A$, not the exterior angle at $C$.` },
    ],
    steps: [
      `The exterior angle at a vertex equals the sum of the two non-adjacent (remote) interior angles.`,
      `Those are $\\angle A = ${aA}°$ and $\\angle B = ${aB}°$.`,
      `Exterior angle $= ${aA} + ${aB} = ${ext}°$.`,
    ],
    numeric: String(ext),
    mathFormat: "triangle_svg",
  };
}

function lgIsosceles(rng, tier) {
  // isosceles: apex angle given, find a base angle (or vice versa)
  const apex = band(tier, pick(rng, [40, 50, 70, 80]), pick(rng, [36, 44, 64, 76]), pick(rng, [38, 54, 66, 84]), pick(rng, [32, 48, 72, 88]));
  const baseAng = (180 - apex) / 2;
  if (!Number.isInteger(baseAng)) return lgIsosceles(makeRng("LIN_G", tier, ri(rng, 1, 1e6)), tier);
  return {
    context: `In isosceles triangle $ABC$, side $AB$ equals side $AC$, and the apex angle $\\angle A$ measures $${apex}°$.\n\n${svgTriangle(baseAng, baseAng, apex)}`,
    contextType: "figure",
    question: `What is the measure, in degrees, of base angle $\\angle B$?`,
    answerText: `$${baseAng}°$`,
    answerWhy: `The two base angles are equal and the angles sum to $180°$, so each base angle is $\\dfrac{180 - ${apex}}{2} = ${baseAng}$.`,
    distractors: [
      { text: `$${apex}°$`, why: `This is the apex angle, not a base angle.` },
      { text: `$${180 - apex}°$`, why: `This is the total of the two base angles, not one of them.` },
      { text: `$${baseAng + apex}°$`, why: `This adds the apex angle instead of splitting the remaining $180 - ${apex}$ in half.` },
    ],
    steps: [
      `In an isosceles triangle the angles opposite the equal sides (the base angles) are equal.`,
      `The three angles sum to $180°$: $${apex} + 2x = 180$.`,
      `Solve: $x = \\dfrac{180 - ${apex}}{2} = ${baseAng}°$.`,
    ],
    numeric: String(baseAng),
    mathFormat: "triangle_svg",
  };
}

function lgParallel(rng, tier) {
  const a = band(tier, ri(rng, 40, 75), ri(rng, 35, 78), ri(rng, 30, 80), ri(rng, 25, 82));
  const rel = pick(rng, [
    { name: "corresponding angles", equal: true },
    { name: "alternate interior angles", equal: true },
    { name: "vertical angles", equal: true },
    { name: "co-interior (same-side interior) angles", equal: false },
    { name: "a linear pair", equal: false },
  ]);
  const x = rel.equal ? a : 180 - a;
  return {
    context: `In a figure, lines $m$ and $n$ are parallel and are cut by a transversal. One of the angles formed measures $${a}°$, and angle $x$ and that angle are ${rel.name}.`,
    contextType: "passage",
    question: `What is the value of $x$, in degrees?`,
    answerText: `$${x}°$`,
    answerWhy: rel.equal
      ? `${rel.name.charAt(0).toUpperCase() + rel.name.slice(1)} are congruent, so $x = ${a}$.`
      : `${rel.name.charAt(0).toUpperCase() + rel.name.slice(1)} are supplementary, so $x = 180 - ${a} = ${x}$.`,
    distractors: [
      { text: `$${rel.equal ? 180 - a : a}°$`, why: rel.equal ? `These angles are equal, not supplementary.` : `These angles are supplementary, not equal.` },
      { text: `$${Math.round(a / 2)}°$`, why: `The relationship does not halve the angle.` },
      { text: `$${rel.equal ? a + 10 : 180 - a + 10}°$`, why: `Arithmetic slip — apply the angle relationship exactly.` },
    ],
    steps: [
      `Parallel lines cut by a transversal create equal and supplementary angle pairs.`,
      rel.equal ? `${rel.name.charAt(0).toUpperCase() + rel.name.slice(1)} are congruent.` : `${rel.name.charAt(0).toUpperCase() + rel.name.slice(1)} sum to $180°$.`,
      rel.equal ? `So $x = ${a}°$.` : `So $x = 180 - ${a} = ${x}°$.`,
    ],
    numeric: String(x),
    mathFormat: "triangle_svg",
  };
}

// Which extra fact proves two triangles similar (AA). Text, no figure — mirrors
// the bank's reasoning items.
function lgSimilarProve(rng, tier) {
  const A = pick(rng, [60, 50, 70, 45, 40]);
  const known = pick(rng, [40, 50, 55, 65, 35].filter((x) => x !== A));
  const third = 180 - A - known;
  // vary the two triangles' vertex labels so items don't all share one template
  const [p, q, r, u, v, w] = pick(rng, [
    ["L", "M", "N", "R", "S", "T"], ["A", "B", "C", "D", "E", "F"],
    ["P", "Q", "R", "X", "Y", "Z"], ["G", "H", "J", "K", "L", "M"], ["D", "E", "F", "U", "V", "W"],
  ]);
  const T1 = `${p}${q}${r}`, T2 = `${u}${v}${w}`;
  return {
    context: `In triangles $${T1}$ and $${T2}$, angles $${p}$ and $${u}$ each measure $${A}°$.`,
    contextType: "passage",
    question: pick(rng, [
      `Which additional piece of information is sufficient to prove that triangle $${T1}$ is similar to triangle $${T2}$?`,
      `Which additional fact would be enough to prove that triangle $${T1}$ is similar to triangle $${T2}$?`,
      `What additional information is sufficient to conclude that triangles $${T1}$ and $${T2}$ are similar?`,
      `Which of the following, if true, proves that triangle $${T1}$ is similar to triangle $${T2}$?`,
    ]),
    answerText: `The measures of angles $${q}$ and $${w}$ are $${known}°$ and $${third}°$, respectively.`,
    answerWhy: `If angle $${q} = ${known}°$, then angle $${r} = ${third}°$; and if angle $${w} = ${third}°$, then angle $${v} = ${known}°$. So all three pairs of angles are congruent (AA similarity).`,
    distractors: [
      { text: `The lengths of $${q}${r}$ and $${v}${w}$ are equal.`, why: `Equal side lengths give congruence at most, and one pair of sides is not enough for similarity without an included angle.` },
      { text: `The measures of angles $${q}$ and $${v}$ are both $${known}°$.`, why: `This pairs angle $${q}$ with $${v}$ (non-corresponding); it does not establish corresponding angle congruence.` },
      { text: `The perimeter of $${T1}$ equals the perimeter of $${T2}$.`, why: `Equal perimeters say nothing about the angles or the shape, so they cannot prove similarity.` },
    ],
    steps: [
      `Two triangles are similar if two pairs of corresponding angles are congruent (AA).`,
      `Angles $${p}$ and $${u}$ already match. We need another pair of CORRESPONDING angles to match.`,
      `Knowing angle $${q} = ${known}°$ (so $${r} = ${third}°$) and angle $${w} = ${third}°$ (so $${v} = ${known}°$) makes all corresponding angles equal.`,
    ],
    numeric: null,
    mathFormat: "triangle_svg",
  };
}

// About half of LIN_G items carry a triangle figure (matching the bank);
// parallel-line and similarity-reasoning items are text.
function genLIN_G(rng, tier, fmt) {
  if (tier === "easy") return pick(rng, [lgTriangleSum, lgIsosceles, lgParallel])(rng, tier);
  if (tier === "medium") return pick(rng, [lgTriangleSum, lgExterior, lgParallel, lgSimilarProve])(rng, tier);
  if (tier === "hard") return pick(rng, [lgExterior, lgIsosceles, lgSimilarProve, lgParallel])(rng, tier);
  return pick(rng, [lgSimilarProve, lgExterior, lgParallel, lgIsosceles])(rng, tier);
}

// Pythagorean triples for clean right-triangle items (legs then hypotenuse).
const PYTH_TRIPLES = [
  [3, 4, 5], [6, 8, 10], [5, 12, 13], [9, 12, 15], [8, 15, 17],
  [12, 16, 20], [7, 24, 25], [10, 24, 26], [20, 21, 29], [15, 20, 25],
  [18, 24, 30], [16, 30, 34], [21, 28, 35], [9, 40, 41], [12, 35, 37],
  [15, 36, 39], [24, 32, 40], [11, 60, 61], [28, 45, 53], [33, 56, 65],
  [16, 63, 65], [48, 55, 73], [13, 84, 85], [36, 77, 85],
];

// ---- RIG: Right triangles and trigonometry -------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14): sine/cosine/tangent ratios,
// finding a missing side with the Pythagorean theorem, the cofunction identity
// (sin X = cos of the complement), and the isosceles right (45-45-90) triangle.
// RIG answers are ratios/radicals, so RIG stays MCQ-only.

function rigRatio(rng, tier) {
  const pool = band(tier, PYTH_TRIPLES.slice(0, 12), PYTH_TRIPLES.slice(0, 17), PYTH_TRIPLES.slice(0, 21), PYTH_TRIPLES);
  const [p, q, hyp] = pick(rng, pool);
  const flip = rng() < 0.5;
  const adj = flip ? q : p, opp = flip ? p : q;
  const which = pick(rng, ["sin", "cos", "tan"]);
  const map = {
    sin: { num: opp, den: hyp, fn: "\\sin", side: "opposite", denName: "hypotenuse" },
    cos: { num: adj, den: hyp, fn: "\\cos", side: "adjacent", denName: "hypotenuse" },
    tan: { num: opp, den: adj, fn: "\\tan", side: "opposite", denName: "adjacent" },
  };
  const cfg = map[which];
  const reduced = fracTex(cfg.num, cfg.den);
  const raw = `\\dfrac{${cfg.num}}{${cfg.den}}`;
  const ratioTex = reduced === raw ? raw : `${raw} = ${reduced}`;
  const wrongs = [
    { key: "sin", t: fracTex(opp, hyp) }, { key: "cos", t: fracTex(adj, hyp) }, { key: "tan", t: fracTex(opp, adj) },
  ].filter((w) => w.key !== which).map((w) => ({ text: `$${w.t}$`, why: `This is $\\${w.key}\\theta$, a different ratio than ${which}.` }));
  const lead = pick(rng, [
    `In right triangle $ABC$, the right angle is at $C$ and $\\theta$ is the angle at $A$. The side lengths are shown.`,
    `Right triangle $ABC$ has its right angle at $C$, with $\\theta$ marking the angle at vertex $A$. The side lengths are labeled in the figure.`,
    `The figure shows right triangle $ABC$ with the right angle at $C$; $\\theta$ is the acute angle at $A$.`,
    `In the right triangle $ABC$ shown, angle $C$ is the right angle and $\\theta$ denotes the angle at $A$.`,
    `Triangle $ABC$ shown below is right-angled at $C$, and $\\theta$ is the measure of the angle at $A$.`,
  ]);
  return {
    context: `${lead}\n\n${svgRightTriangle(adj, opp, hyp)}\nNote: Figure not drawn to scale.`,
    contextType: "figure",
    question: pick(rng, [`What is the value of $${cfg.fn}\\,\\theta$?`, `Based on the figure, what is $${cfg.fn}\\,\\theta$?`, `What is $${cfg.fn}\\theta$ for the triangle shown?`, `Using the side lengths shown, what is the value of $${cfg.fn}\\,\\theta$?`]),
    answerText: `$${reduced}$`,
    answerWhy: `$${cfg.fn}\\theta = \\dfrac{\\text{${cfg.side}}}{\\text{${cfg.denName}}} = ${ratioTex}$.`,
    distractors: [...wrongs, { text: `$${fracTex(cfg.den, cfg.num)}$`, why: `This inverts the ratio.` }].slice(0, 3),
    steps: [
      `Relative to $\\theta$: opposite $= ${opp}$, adjacent $= ${adj}$, hypotenuse $= ${hyp}$.`,
      `$${cfg.fn}\\theta = \\dfrac{\\text{${cfg.side}}}{\\text{${cfg.denName}}} = ${ratioTex}$.`,
      `Check: $${adj}^2 + ${opp}^2 = ${adj * adj + opp * opp} = ${hyp}^2$. ✓`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

function rigFindSide(rng, tier) {
  const pool = band(tier, PYTH_TRIPLES.slice(0, 12), PYTH_TRIPLES.slice(0, 17), PYTH_TRIPLES.slice(0, 21), PYTH_TRIPLES);
  const [p, q, hyp] = pick(rng, pool);
  const findHyp = rng() < 0.5;
  if (findHyp) {
    const lead = pick(rng, [
      `In the right triangle shown, the two legs measure ${p} and ${q}.`,
      `The right triangle shown has legs of length ${p} and ${q}.`,
      `A right triangle has two perpendicular legs measuring ${p} and ${q}, as shown.`,
      `In the figure, a right triangle has legs of ${p} and ${q}.`,
      `The two legs of the right triangle shown are ${p} and ${q} units long.`,
      `As shown, a right triangle has legs measuring ${p} and ${q}.`,
    ]);
    return {
      context: `${lead}\n\n${svgRightTriangle(p, q, "?", false)}\nNote: Figure not drawn to scale.`,
      contextType: "figure",
      question: pick(rng, [`What is the length of the hypotenuse?`, `What is the length of the hypotenuse of the triangle shown?`, `In the right triangle shown, what is the length of the hypotenuse?`, `The two legs are shown. What is the length of the hypotenuse?`, `What is the length of the longest side of the right triangle shown?`, `Based on the figure, what is the length of the hypotenuse?`]),
      answerText: `$${hyp}$`,
      answerWhy: `By the Pythagorean theorem, hypotenuse $= \\sqrt{${p}^2 + ${q}^2} = \\sqrt{${p * p + q * q}} = ${hyp}$.`,
      distractors: [
        { text: `$${p + q}$`, why: `This adds the legs; the Pythagorean theorem uses their squares.` },
        { text: `$${p * p + q * q}$`, why: `This is $${p}^2 + ${q}^2$ but is not square-rooted.` },
        { text: `$${Math.abs(q - p)}$`, why: `This subtracts the legs instead of using $a^2 + b^2 = c^2$.` },
      ],
      steps: [
        `The Pythagorean theorem: $a^2 + b^2 = c^2$ for legs $a, b$ and hypotenuse $c$.`,
        `$${p}^2 + ${q}^2 = ${p * p} + ${q * q} = ${p * p + q * q}$.`,
        `$c = \\sqrt{${p * p + q * q}} = ${hyp}$.`,
      ],
      numeric: null,
      mathFormat: "right_triangle_svg",
    };
  }
  const knownLeg = rng() < 0.5 ? p : q;
  const other = knownLeg === p ? q : p;
  const lead2 = pick(rng, [
    `In the right triangle shown, the hypotenuse measures ${hyp} and one leg measures ${knownLeg}.`,
    `The right triangle shown has a hypotenuse of ${hyp} and one leg of ${knownLeg}.`,
    `A right triangle has hypotenuse ${hyp} and one leg of length ${knownLeg}, as shown.`,
    `In the figure, a right triangle has a hypotenuse of ${hyp} and one leg equal to ${knownLeg}.`,
    `As shown, a right triangle has a hypotenuse measuring ${hyp} and one leg measuring ${knownLeg}.`,
  ]);
  return {
    context: `${lead2}\n\n${svgRightTriangle(knownLeg, "?", hyp, false)}\nNote: Figure not drawn to scale.`,
    contextType: "figure",
    question: pick(rng, [`What is the length of the other leg?`, `What is the length of the other leg of the right triangle?`, `In the right triangle shown, what is the length of the unknown leg?`, `One leg and the hypotenuse are shown. What is the length of the remaining leg?`, `What is the length of the missing leg of the triangle shown?`, `Based on the figure, what is the length of the other leg?`]),
    answerText: `$${other}$`,
    answerWhy: `By the Pythagorean theorem, the other leg $= \\sqrt{${hyp}^2 - ${knownLeg}^2} = \\sqrt{${hyp * hyp - knownLeg * knownLeg}} = ${other}$.`,
    distractors: [
      { text: `$${hyp - knownLeg}$`, why: `This subtracts the lengths directly; the theorem uses squares.` },
      { text: `$${hyp * hyp - knownLeg * knownLeg}$`, why: `This is $${hyp}^2 - ${knownLeg}^2$ but is not square-rooted.` },
      { text: `$${hyp + knownLeg}$`, why: `This adds the lengths instead of using $c^2 - a^2 = b^2$.` },
    ],
    steps: [
      `The Pythagorean theorem gives leg$^2 = $ hypotenuse$^2 - $ (other leg)$^2$.`,
      `$${hyp}^2 - ${knownLeg}^2 = ${hyp * hyp} - ${knownLeg * knownLeg} = ${hyp * hyp - knownLeg * knownLeg}$.`,
      `Take the square root: $\\sqrt{${hyp * hyp - knownLeg * knownLeg}} = ${other}$.`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

// Given a trig ratio and the hypotenuse, find a side (uses the ratio, then the
// Pythagorean theorem for the other leg). Mirrors the bank's "sin(B)=5/13,
// AB=26, find BC" item. Has a figure.
const PRIMITIVE_TRIPLES = [[3, 4, 5], [5, 12, 13], [8, 15, 17], [7, 24, 25], [20, 21, 29], [9, 40, 41], [12, 35, 37], [11, 60, 61]];
function rigRatioFindSide(rng, tier) {
  const [p, q, h] = pick(rng, band(tier, PRIMITIVE_TRIPLES.slice(0, 3), PRIMITIVE_TRIPLES.slice(0, 5), PRIMITIVE_TRIPLES, PRIMITIVE_TRIPLES));
  const m = band(tier, 1, ri(rng, 1, 2), ri(rng, 1, 3), ri(rng, 2, 3));
  const hyp = h * m, opp = q * m, adj = p * m; // theta at A: opposite = q*m, adjacent = p*m
  const askOpp = rng() < 0.5;
  const ans = askOpp ? opp : adj;
  const figure = svgRightTriangle(askOpp ? "?" : `${adj}`, askOpp ? `${opp}` : "?", `${hyp}`);
  const lead3 = pick(rng, [
    `In right triangle $ABC$, the right angle is at $C$ and $\\sin\\theta = ${fracTex(q, h)}$, where $\\theta$ is the angle at $A$. The hypotenuse $AB = ${hyp}$.`,
    `Right triangle $ABC$ has its right angle at $C$, and for the angle $\\theta$ at $A$, $\\sin\\theta = ${fracTex(q, h)}$. The hypotenuse $AB = ${hyp}$.`,
    `In the figure, right triangle $ABC$ is right-angled at $C$; the angle $\\theta$ at $A$ satisfies $\\sin\\theta = ${fracTex(q, h)}$, and $AB = ${hyp}$.`,
    `Triangle $ABC$ shown is right-angled at $C$. The angle at $A$ is $\\theta$ with $\\sin\\theta = ${fracTex(q, h)}$, and the hypotenuse $AB = ${hyp}$.`,
  ]);
  return {
    context: `${lead3}\n\n${figure}\nNote: Figure not drawn to scale.`,
    contextType: "figure",
    question: askOpp
      ? pick(rng, [`What is the length of the side opposite $\\theta$?`, `In the triangle shown, what is the length of the side opposite angle $\\theta$?`, `What is the length of the leg opposite $\\theta$?`, `Based on the figure, what is the length of the side opposite $\\theta$?`])
      : pick(rng, [`What is the length of the side adjacent to $\\theta$ (segment $CA$)?`, `What is the length of the leg adjacent to $\\theta$ (segment $CA$)?`, `In the triangle shown, what is the length of the side adjacent to angle $\\theta$ (segment $CA$)?`, `Based on the figure, what is the length of the side adjacent to $\\theta$ (segment $CA$)?`]),
    answerText: `$${ans}$`,
    answerWhy: askOpp
      ? `$\\sin\\theta = \\dfrac{\\text{opposite}}{\\text{hypotenuse}}$, so opposite $= \\sin\\theta \\cdot AB = ${fracTex(q, h)} \\cdot ${hyp} = ${opp}$.`
      : `First the opposite side $= ${fracTex(q, h)} \\cdot ${hyp} = ${opp}$; then by the Pythagorean theorem the adjacent side $= \\sqrt{${hyp}^2 - ${opp}^2} = ${adj}$.`,
    distractors: [
      { text: `$${askOpp ? adj : opp}$`, why: `This is the ${askOpp ? "adjacent" : "opposite"} side, not the one asked for.` },
      { text: `$${hyp}$`, why: `This is the hypotenuse, not a leg.` },
      { text: `$${ans + m}$`, why: `Arithmetic slip — recompute the side from the ratio and the hypotenuse.` },
    ],
    steps: [
      `$\\sin\\theta = \\dfrac{\\text{opposite}}{\\text{hypotenuse}} = ${fracTex(q, h)}$, and the hypotenuse is $${hyp}$.`,
      `So the opposite side $= ${fracTex(q, h)} \\cdot ${hyp} = ${opp}$.`,
      askOpp ? `The side opposite $\\theta$ is $${opp}$.` : `By the Pythagorean theorem, adjacent $= \\sqrt{${hyp}^2 - ${opp}^2} = \\sqrt{${hyp * hyp - opp * opp}} = ${adj}$.`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

// Trig + area: area of a right triangle expressed as k*tan(D degrees). Text
// (a specific angle measure like 33 degrees cannot be drawn to scale).
function rigTrigArea(rng, tier) {
  const D = pick(rng, [28, 33, 37, 42, 53, 58, 62]);
  const n = band(tier, ri(rng, 3, 6), ri(rng, 4, 8), ri(rng, 5, 11), ri(rng, 6, 14)) * 2; // even
  const k = (n * n) / 2;
  return {
    context: null, contextType: null,
    question: `In triangle $XYZ$, angle $Y$ is a right angle, the measure of angle $Z$ is $${D}°$, and the length of $\\overline{YZ}$ is $${n}$. If the area, in square units, of triangle $XYZ$ can be represented by the expression $k\\tan ${D}°$, where $k$ is a constant, what is the value of $k$?`,
    answerText: `$${k}$`,
    answerWhy: `Side $XY = YZ\\tan ${D}° = ${n}\\tan ${D}°$, so area $= \\tfrac{1}{2}(YZ)(XY) = \\tfrac{1}{2}(${n})(${n}\\tan ${D}°) = ${k}\\tan ${D}°$. Thus $k = ${k}$.`,
    distractors: [
      { text: `$${n * n}$`, why: `This forgets the factor of $\\tfrac{1}{2}$ in the area formula.` },
      { text: `$${n}$`, why: `This is the length of $\\overline{YZ}$, not the constant $k$.` },
      { text: `$${n / 2}$`, why: `This halves the leg instead of using $\\tfrac{1}{2}(YZ)(XY)$.` },
    ],
    steps: [
      `In right triangle $XYZ$, $\\tan Z = \\dfrac{XY}{YZ}$, so $XY = YZ\\tan ${D}° = ${n}\\tan ${D}°$.`,
      `Area $= \\tfrac{1}{2}(YZ)(XY) = \\tfrac{1}{2}(${n})(${n}\\tan ${D}°)$.`,
      `$= ${k}\\tan ${D}°$, so $k = ${k}$.`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

function rigCofunction(rng, tier) {
  return {
    context: `In a right triangle, $\\angle X$ and $\\angle Y$ are the two acute angles (so they are complementary).`,
    contextType: "passage",
    question: `Which expression has the same value as $\\sin X$?`,
    answerText: `$\\cos Y$`,
    answerWhy: `Since $\\angle X$ and $\\angle Y$ are complementary, the side opposite $X$ is the side adjacent to $Y$, so $\\sin X = \\cos Y$.`,
    distractors: [
      { text: `$\\sin Y$`, why: `$\\sin Y$ uses the side opposite $Y$, which is adjacent to $X$ — that equals $\\cos X$, not $\\sin X$.` },
      { text: `$\\cos X$`, why: `$\\cos X$ is the adjacent-over-hypotenuse ratio for $X$, not equal to $\\sin X$ in general.` },
      { text: `$\\tan Y$`, why: `$\\tan Y$ is a leg-to-leg ratio and is not equal to $\\sin X$.` },
    ],
    steps: [
      `In a right triangle the two acute angles are complementary: $X + Y = 90°$.`,
      `The side opposite $X$ is the side adjacent to $Y$, and they share the same hypotenuse.`,
      `Therefore $\\sin X = \\dfrac{\\text{opp } X}{\\text{hyp}} = \\dfrac{\\text{adj } Y}{\\text{hyp}} = \\cos Y$.`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

function rigIsoRight(rng, tier) {
  const L = band(tier, ri(rng, 3, 9), ri(rng, 4, 12), ri(rng, 5, 15), ri(rng, 6, 18));
  const lead4 = pick(rng, [
    `In the right triangle shown, the right angle is at $C$ and the two legs are equal, each with length ${L}.`,
    `The right triangle shown is isosceles: the right angle is at $C$ and both legs measure ${L}.`,
    `In the figure, a right triangle has its right angle at $C$ and two equal legs, each ${L}.`,
    `The right triangle shown has a right angle at $C$ and two congruent legs of length ${L}.`,
    `As shown, an isosceles right triangle has its right angle at $C$ and each leg equal to ${L}.`,
  ]);
  return {
    context: `${lead4}\n\n${svgRightTriangle(`${L}`, `${L}`, "?", false)}\nNote: Figure not drawn to scale.`,
    contextType: "figure",
    question: pick(rng, [`What is the length of the hypotenuse?`, `What is the length of the hypotenuse of this isosceles right triangle?`, `Based on the figure, what is the length of the hypotenuse?`, `In the triangle shown, what is the length of the hypotenuse?`]),
    answerText: `$${L}\\sqrt{2}$`,
    answerWhy: `In a 45°-45°-90° triangle the hypotenuse is $\\sqrt{2}$ times a leg: $${L}\\sqrt{2}$.`,
    distractors: [
      { text: `$${2 * L}$`, why: `This doubles a leg; the hypotenuse is leg $\\times \\sqrt{2}$, not $\\times 2$.` },
      { text: `$${L}\\sqrt{3}$`, why: `The $\\sqrt{3}$ ratio comes from a 30°-60°-90° triangle, not 45°-45°-90°.` },
      { text: `$${L}$`, why: `This is the length of a leg, not the hypotenuse.` },
    ],
    steps: [
      `By the Pythagorean theorem, hypotenuse $= \\sqrt{${L}^2 + ${L}^2} = \\sqrt{2 \\cdot ${L}^2}$.`,
      `$\\sqrt{2 \\cdot ${L}^2} = ${L}\\sqrt{2}$.`,
      `So the hypotenuse is $${L}\\sqrt{2}$.`,
    ],
    numeric: null,
    mathFormat: "right_triangle_svg",
  };
}

// Almost all RIG items carry a right-triangle figure (matching the bank). The
// only text-only types are rigTrigArea (a specific drawn-to-scale-impossible
// angle measure) and rigCofunction, kept to a minority in hard/challenge.
function genRIG(rng, tier) {
  if (tier === "easy") return pick(rng, [rigRatio, rigFindSide, rigRatioFindSide])(rng, tier);
  if (tier === "medium") return pick(rng, [rigRatio, rigFindSide, rigRatioFindSide, rigIsoRight])(rng, tier);
  if (tier === "hard") return pick(rng, [rigRatio, rigRatioFindSide, rigFindSide, rigIsoRight, rigTrigArea])(rng, tier);
  return pick(rng, [rigRatioFindSide, rigRatio, rigIsoRight, rigTrigArea, rigCofunction])(rng, tier);
}

// ---- CIR: Circles --------------------------------------------------------
// Rebuilt to real Digital SAT variety (2026-06-14). Most circle questions in
// the real bank are ALGEBRAIC and text-only — circle equations in standard and
// general (complete-the-square) form, the range of a coordinate for a point on
// the circle, and radius from an equation — so only the arc/sector items carry
// a figure. CIR answers involve pi or coordinates, so CIR stays MCQ-only.

// Zero-safe renderers for circle equations: a squared term "(x - h)^2" that
// collapses to "x^2" when h = 0, and a linear term that vanishes when its
// coefficient is 0 (so "+ 0y" never appears).
function sqTerm(v, vr) { return v === 0 ? `${vr}^2` : `(${vr} ${signed(-v)})^2`; }
function linTerm(coef, vr) { return coef === 0 ? "" : ` ${signed(coef)}${vr}`; }

function cirArea(rng, tier) {
  const r = band(tier, ri(rng, 3, 25), ri(rng, 4, 40), ri(rng, 5, 55), ri(rng, 6, 70));
  return {
    context: null, contextType: null,
    question: pick(rng, [`A circle has a radius of ${r}. What is the area of the circle, in terms of $\\pi$?`, `In terms of $\\pi$, what is the area of a circle with radius ${r}?`]),
    answerText: `$${r * r}\\pi$`,
    answerWhy: `Area $= \\pi r^2 = \\pi(${r})^2 = ${r * r}\\pi$.`,
    distractors: [
      { text: `$${2 * r}\\pi$`, why: `This is the circumference $2\\pi r$, not the area.` },
      { text: `$${r}\\pi$`, why: `This uses $\\pi r$ instead of $\\pi r^2$.` },
      { text: `$${4 * r * r}\\pi$`, why: `This squares the diameter instead of the radius.` },
    ],
    steps: [`Area of a circle is $\\pi r^2$.`, `Substitute $r = ${r}$: $\\pi (${r})^2$.`, `$= ${r * r}\\pi$.`],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

function cirCirc(rng, tier) {
  const r = band(tier, ri(rng, 3, 25), ri(rng, 4, 40), ri(rng, 5, 55), ri(rng, 6, 70));
  return {
    context: null, contextType: null,
    question: pick(rng, [`A circle has a radius of ${r}. What is the circumference of the circle, in terms of $\\pi$?`, `In terms of $\\pi$, what is the circumference of a circle with radius ${r}?`]),
    answerText: `$${2 * r}\\pi$`,
    answerWhy: `Circumference $= 2\\pi r = 2\\pi(${r}) = ${2 * r}\\pi$.`,
    distractors: [
      { text: `$${r * r}\\pi$`, why: `This is the area $\\pi r^2$, not the circumference.` },
      { text: `$${r}\\pi$`, why: `This uses $\\pi r$ (one radius) instead of $2\\pi r$.` },
      { text: `$${4 * r}\\pi$`, why: `This uses $4\\pi r$ — twice the correct circumference.` },
    ],
    steps: [`Circumference of a circle is $2\\pi r$.`, `Substitute $r = ${r}$: $2\\pi(${r})$.`, `$= ${2 * r}\\pi$.`],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

// Circle equation in general form -> complete the square -> center. (text)
function cirCenterGeneral(rng, tier) {
  let h = band(tier, ri(rng, -4, 5), ri(rng, -6, 6), ri(rng, -8, 8), ri(rng, -9, 9));
  let k = band(tier, ri(rng, -4, 5), ri(rng, -6, 6), ri(rng, -8, 8), ri(rng, -9, 9));
  if (h === 0) h = 3;
  if (k === 0) k = -2;
  if (k === h) k = h + 1;
  const r = band(tier, ri(rng, 3, 7), ri(rng, 3, 9), ri(rng, 4, 11), ri(rng, 4, 12));
  const a = -2 * h, b = -2 * k, C = r * r - h * h - k * k;
  const eq = `x^2${linTerm(a, "x")} + y^2${linTerm(b, "y")} = ${C}`;
  return {
    context: null, contextType: null,
    question: `The equation $${eq}$ defines a circle in the $xy$-plane. What are the coordinates of the center of the circle?`,
    answerText: `$(${h}, ${k})$`,
    answerWhy: `Completing the square gives $${sqTerm(h, "x")} + ${sqTerm(k, "y")} = ${r * r}$, so the center is $(${h}, ${k})$.`,
    distractors: [
      { text: `$(${a}, ${b})$`, why: `These are the coefficients of $x$ and $y$; the center uses half their opposites.` },
      { text: `$(${-h}, ${-k})$`, why: `Sign error — after completing the square the center is $(${h}, ${k})$.` },
      { text: `$(${k}, ${h})$`, why: `The coordinates are swapped.` },
    ],
    steps: [
      `Group and complete the square: $x^2${linTerm(a, "x")}$ needs $${h * h}$, and $y^2${linTerm(b, "y")}$ needs $${k * k}$.`,
      `This gives $${sqTerm(h, "x")} + ${sqTerm(k, "y")} = ${C} + ${h * h} + ${k * k} = ${r * r}$.`,
      `In standard form the center is $(h, k) = (${h}, ${k})$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

// Point on a circle: range of a coordinate. (text)
function cirPointRange(rng, tier) {
  let h = band(tier, ri(rng, -3, 5), ri(rng, -5, 6), ri(rng, -7, 8), ri(rng, -9, 9));
  let k = band(tier, ri(rng, -3, 5), ri(rng, -5, 6), ri(rng, -7, 8), ri(rng, -9, 9));
  if (h === 0) h = 4;
  const r = band(tier, ri(rng, 3, 6), ri(rng, 4, 8), ri(rng, 5, 10), ri(rng, 6, 12));
  const lo = h - r, hi = h + r;
  const correct = h - r + ri(rng, 1, Math.max(1, 2 * r - 1)); // strictly inside [lo, hi]
  const eq = `${sqTerm(h, "x")} + ${sqTerm(k, "y")} = ${r * r}`;
  return {
    context: null, contextType: null,
    question: `The graph of the equation $${eq}$ is a circle in the $xy$-plane. The point $(a, b)$ lies on the circle. Which of the following is a possible value of $a$?`,
    answerText: `$${correct}$`,
    answerWhy: `The circle has center $(${h}, ${k})$ and radius $${r}$, so every point's $x$-coordinate satisfies $${lo} \\le a \\le ${hi}$. Only $${correct}$ is in this range.`,
    distractors: [
      { text: `$${hi + ri(rng, 1, 3)}$`, why: `This is greater than the largest possible $x$-value, $${hi}$.` },
      { text: `$${lo - ri(rng, 1, 3)}$`, why: `This is less than the smallest possible $x$-value, $${lo}$.` },
      { text: `$${hi + r}$`, why: `This exceeds the maximum $x$-coordinate $h + r = ${hi}$.` },
    ],
    steps: [
      `The equation is in standard form, so the center is $(${h}, ${k})$ and the radius is $${r}$.`,
      `The $x$-coordinates of points on the circle range from $h - r = ${lo}$ to $h + r = ${hi}$.`,
      `So a possible value of $a$ must satisfy $${lo} \\le a \\le ${hi}$; that is $${correct}$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

// Radius from a circle equation. (text)
function cirRadius(rng, tier) {
  let h = band(tier, ri(rng, -3, 5), ri(rng, -5, 6), ri(rng, -7, 8), ri(rng, -9, 9));
  let k = band(tier, ri(rng, -3, 5), ri(rng, -5, 6), ri(rng, -7, 8), ri(rng, -9, 9));
  const r = band(tier, ri(rng, 2, 7), ri(rng, 3, 9), ri(rng, 4, 11), ri(rng, 5, 13));
  const eq = `${sqTerm(h, "x")} + ${sqTerm(k, "y")} = ${r * r}`;
  return {
    context: null, contextType: null,
    question: `The equation $${eq}$ defines a circle in the $xy$-plane. What is the radius of the circle?`,
    answerText: `$${r}$`,
    answerWhy: `In standard form $(x - h)^2 + (y - k)^2 = r^2$, the right side is $r^2 = ${r * r}$, so $r = \\sqrt{${r * r}} = ${r}$.`,
    distractors: [
      { text: `$${r * r}$`, why: `This is $r^2$; the radius is its square root.` },
      { text: `$${Math.round(r * r / 2)}$`, why: `The radius is $\\sqrt{r^2}$, not half of $r^2$.` },
      { text: `$${2 * r}$`, why: `This is the diameter, not the radius.` },
    ],
    steps: [
      `Compare with $(x - h)^2 + (y - k)^2 = r^2$.`,
      `The right-hand side is $r^2 = ${r * r}$.`,
      `So $r = \\sqrt{${r * r}} = ${r}$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

function cirArc(rng, tier) {
  const angle = pick(rng, [90, 180]);
  const r = angle === 90 ? band(tier, ri(rng, 2, 6), ri(rng, 2, 9), ri(rng, 3, 12), ri(rng, 4, 16)) * 2
                         : band(tier, ri(rng, 3, 10), ri(rng, 4, 16), ri(rng, 5, 22), ri(rng, 6, 30));
  const coef = angle === 180 ? r : r / 2; // arc = (angle/360)*2*pi*r
  return {
    context: `In a circle with radius ${r}, an arc subtends a central angle of $${angle}°$.\n\n${svgCircle(`r = ${r}`)}`,
    contextType: "figure",
    question: `What is the length of the arc, in terms of $\\pi$?`,
    answerText: `$${coef}\\pi$`,
    answerWhy: `Arc length $= \\dfrac{${angle}}{360} \\cdot 2\\pi r = \\dfrac{${angle}}{360} \\cdot 2\\pi(${r}) = ${coef}\\pi$.`,
    distractors: [
      { text: `$${2 * r}\\pi$`, why: `This is the full circumference, not the fraction for a $${angle}°$ arc.` },
      { text: `$${r * r}\\pi$`, why: `This is the area $\\pi r^2$, not an arc length.` },
      { text: `$${angle === 180 ? r * 2 : r}\\pi$`, why: `This uses the wrong fraction of the circumference for $${angle}°$.` },
    ],
    steps: [
      `An arc for a central angle of $${angle}°$ is $\\dfrac{${angle}}{360}$ of the full circumference.`,
      `Circumference $= 2\\pi(${r}) = ${2 * r}\\pi$.`,
      `Arc $= \\dfrac{${angle}}{360} \\times ${2 * r}\\pi = ${coef}\\pi$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

function cirSector(rng, tier) {
  const angle = pick(rng, [90, 180]);
  const r = band(tier, ri(rng, 2, 6), ri(rng, 2, 8), ri(rng, 3, 10), ri(rng, 4, 12)) * 2;
  const coef = angle === 180 ? (r * r) / 2 : (r * r) / 4; // r even -> integer
  return {
    context: `In a circle with radius ${r}, a sector has a central angle of $${angle}°$.\n\n${svgCircle(`r = ${r}`)}`,
    contextType: "figure",
    question: `What is the area of the sector, in terms of $\\pi$?`,
    answerText: `$${coef}\\pi$`,
    answerWhy: `Sector area $= \\dfrac{${angle}}{360} \\cdot \\pi r^2 = \\dfrac{${angle}}{360} \\cdot ${r * r}\\pi = ${coef}\\pi$.`,
    distractors: [
      { text: `$${r * r}\\pi$`, why: `This is the area of the whole circle, not the $${angle}°$ sector.` },
      { text: `$${2 * r}\\pi$`, why: `This is the circumference, not a sector area.` },
      { text: `$${angle === 180 ? (r * r) / 4 : (r * r) / 2}\\pi$`, why: `This uses the wrong fraction of the circle's area for $${angle}°$.` },
    ],
    steps: [
      `A sector with central angle $${angle}°$ is $\\dfrac{${angle}}{360}$ of the circle's area.`,
      `Circle area $= \\pi(${r})^2 = ${r * r}\\pi$.`,
      `Sector area $= \\dfrac{${angle}}{360} \\times ${r * r}\\pi = ${coef}\\pi$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

function cirCenter(rng, tier) {
  let h = band(tier, ri(rng, 1, 5), ri(rng, -5, 6), ri(rng, -7, 7), ri(rng, -9, 9));
  let k = band(tier, ri(rng, 1, 5), ri(rng, -5, 6), ri(rng, -7, 7), ri(rng, -9, 9));
  if (h === 0) h = 2;
  if (k === 0) k = 3;
  if (k === h) k = h + 1;
  const r = band(tier, ri(rng, 2, 6), ri(rng, 2, 8), ri(rng, 3, 10), ri(rng, 3, 12));
  const eq = `${sqTerm(h, "x")} + ${sqTerm(k, "y")} = ${r * r}`;
  return {
    context: null, contextType: null,
    question: `The equation $${eq}$ defines a circle in the $xy$-plane. What are the coordinates of the center of the circle?`,
    answerText: `$(${h}, ${k})$`,
    answerWhy: `In standard form $(x - h)^2 + (y - k)^2 = r^2$, the center is $(h, k) = (${h}, ${k})$.`,
    distractors: [
      { text: `$(${-h}, ${-k})$`, why: `Sign error: $(x ${signed(-h)})^2$ is zero at $x = ${h}$, not $x = ${-h}$.` },
      { text: `$(${k}, ${h})$`, why: `The coordinates are $(h, k)$ in that order; these are swapped.` },
      { text: `$(${h}, ${-k})$`, why: `Sign error in the $y$-coordinate: $(y ${signed(-k)})^2$ is zero at $y = ${k}$.` },
    ],
    steps: [
      `Compare with the standard form $(x - h)^2 + (y - k)^2 = r^2$.`,
      `Here $x ${signed(-h)}$ gives $h = ${h}$, and $y ${signed(-k)}$ gives $k = ${k}$.`,
      `So the center is $(${h}, ${k})$.`,
    ],
    numeric: null,
    mathFormat: "circle_svg",
  };
}

// Circles are mostly algebraic/text in the real bank; only arc/sector items
// carry a figure, so most CIR questions have no picture.
function genCIR(rng, tier) {
  if (tier === "easy") return pick(rng, [cirArea, cirCirc, cirRadius, cirArc])(rng, tier);
  if (tier === "medium") return pick(rng, [cirCenter, cirRadius, cirArea, cirArc])(rng, tier);
  if (tier === "hard") return pick(rng, [cirCenterGeneral, cirPointRange, cirCenter, cirSector])(rng, tier);
  return pick(rng, [cirCenterGeneral, cirPointRange, cirRadius, cirSector])(rng, tier);
}

const GENERATORS = {
  LIN: genLIN, LIF: genLIF, LEQ: genLEQ, SYS: genSYS, INE: genINE,
  NRM: genNRM, NRE: genNRE, EQS: genEQS,
  RAT: genRAT, PER: genPER, OIA: genOIA, TVA: genTVA, PRO: genPRO, IEE: genIEE, EVA: genEVA,
  ARE: genARE, LIN_G: genLIN_G, RIG: genRIG, CIR: genCIR,
};

// ---------------------------------------------------------------------------
// Question-type variants (the master-prompts doc asks for many styles). These
// reuse a skill's already-verified computation, so the answer key stays correct.
// ---------------------------------------------------------------------------

/** "Comparison" type: ask how the computed value compares with a number N. */
function makeComparisonCore(core, rng) {
  const V = Number(core.numeric);
  const off = (1 + Math.floor(rng() * 5)) * (rng() < 0.5 ? -1 : 1);
  let B = V + off;
  if (B === V) B += 1;
  const greater = V > B;
  const rel = greater ? "greater than" : "less than";
  const correctText = greater ? `It is greater than ${B}.` : `It is less than ${B}.`;
  const wrongIneq = greater ? `It is less than ${B}.` : `It is greater than ${B}.`;
  return {
    context: core.context,
    contextType: core.contextType,
    question: `${core.question} Then determine how this value compares with ${B}.`,
    answerText: correctText,
    answerWhy: `The value works out to ${core.numeric}, which is ${rel} ${B}.`,
    distractors: [
      { text: wrongIneq, why: `The value is ${core.numeric}, so this reverses the comparison.` },
      { text: `It is equal to ${B}.`, why: `The value is ${core.numeric}, which is not ${B}.` },
      { text: `There is not enough information to compare.`, why: `Every quantity is given, so the value is fully determined and can be compared.` },
    ],
    steps: [...core.steps, `The value is ${core.numeric}, which is ${rel} ${B}.`],
    numeric: null,
    mathFormat: core.mathFormat,
  };
}

// ---------------------------------------------------------------------------
// Public entry
// ---------------------------------------------------------------------------

export function generateItem({ skill, tier, seed, format, variant }) {
  const gen = GENERATORS[skill];
  if (!gen) throw new Error(`No generator for skill ${skill}`);
  const fmt = format === "spr" && SPR_ELIGIBLE.has(skill) ? "spr" : "mcq";
  // Use a fresh rng seeded by all inputs; consume one value before the core so
  // the same seed yields a stable but varied item.
  const rng = makeRng(skill, tier, seed);
  let core = gen(rng, tier, fmt);
  // ~1 in 4 numeric MCQ items become a "comparison" question for type variety.
  const canCompare = fmt === "mcq" && core.numeric != null;
  const useComparison = canCompare && (variant === "comparison" || (variant == null && rng() < 0.25));
  if (useComparison) core = makeComparisonCore(core, rng);
  const questionVariant = useComparison ? "comparison" : "direct";
  const item = assemble(rng, core, { skill, tier, format: fmt });

  const meta = SKILL_META[skill];
  return {
    ...item,
    difficulty: tier === "challenged" ? "hard" : tier,
    tier,
    questionVariant,
    skill_id: skill,
    math_skill_code: skill,
    topic: meta.topic,
    subtopic: meta.subtopic,
    domain_id: meta.domain_id,
    has_figure: item.stimulus_type === "figure",
    calculator_allowed: true,
  };
}

// ---------------------------------------------------------------------------
// Strict structural validator + generate-with-retry
// ---------------------------------------------------------------------------

// allow newline; forbid tab/other control chars and unrendered template leaks
const CTRL_RE = /[\x00-\x09\x0B-\x1F\x7F]/;
const LEAK_RE = /\$\{/;

export function validateItem(item) {
  const reasons = [];
  const strings = [item.question_text, item.stimulus_text ?? "", item.explanation];
  for (const o of item.options) {
    strings.push(o.text, o.explanation);
  }
  for (const s of strings) {
    if (typeof s !== "string") { reasons.push("non_string_field"); continue; }
    if (LEAK_RE.test(s)) reasons.push("template_literal_leak");
    if (CTRL_RE.test(s)) reasons.push("control_char");
    if (/\bundefined\b|\bNaN\b|\bnull\b/.test(s)) reasons.push("bad_token");
  }
  if (!item.question_text || !item.question_text.trim()) reasons.push("empty_question");
  if (!/Step\s*1/.test(item.explanation)) reasons.push("missing_steps");

  if (item.question_type === "grid_in") {
    if (!item.correct_answer || !/^-?\d+(\.\d+)?$/.test(String(item.correct_answer))) reasons.push("spr_answer_not_number");
    const spr = item.options.find((o) => o.id === "SPR");
    if (!spr || spr.text !== String(item.correct_answer)) reasons.push("spr_answer_mismatch");
  } else {
    if (!Array.isArray(item.options) || item.options.length !== 4) reasons.push("mcq_not_4_options");
    const correct = item.options.filter((o) => o.is_correct);
    if (correct.length !== 1) reasons.push("mcq_not_one_correct");
    const texts = item.options.map((o) => o.text);
    if (new Set(texts).size !== texts.length) reasons.push("duplicate_options");
    if (correct[0] && item.correct_answer !== correct[0].id) reasons.push("correct_answer_id_mismatch");
    const ids = item.options.map((o) => o.id).join("");
    if (ids !== "ABCD") reasons.push("bad_option_ids");
  }
  // figure consistency: every numeric label drawn in the SVG must appear in
  // the stimulus text near the figure (they share the same string), and the
  // triangle angles must sum to 180.
  if (item.stimulus_text && item.stimulus_text.includes("<svg")) {
    const m = item.skill_id;
    if (m === "LIN_G") {
      const nums = [...item.stimulus_text.matchAll(/>(\d+)°</g)].map((x) => Number(x[1]));
      if (nums.length === 3 && nums[0] + nums[1] + nums[2] !== 180) reasons.push("triangle_angles_not_180");
    }
  }
  return { ok: reasons.length === 0, reasons: [...new Set(reasons)] };
}

/** Generate a valid item, bumping the seed on rare structural collisions. */
export function generateValidItem({ skill, tier, seed, format }, maxTries = 60) {
  let lastReasons = [];
  for (let t = 0; t < maxTries; t++) {
    const item = generateItem({ skill, tier, seed: seed + t * 100003, format });
    const v = validateItem(item);
    if (v.ok) return { item, tries: t + 1 };
    lastReasons = v.reasons;
  }
  throw new Error(`Could not generate valid ${skill}/${tier}/${format} after ${maxTries} tries: ${lastReasons.join(",")}`);
}
