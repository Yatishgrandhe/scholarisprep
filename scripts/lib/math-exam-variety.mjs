/**
 * Math context/phrasing variety layer.
 *
 * The base math templates use one fixed stem + scenario per skill, so every
 * question of a skill reads identically ("What is the volume of the box?" ×N).
 * This layer rewrites the *framing* — the real-world scenario noun and the stem
 * wording — by an index, while leaving every number/expression untouched, so
 * each item reads as a distinct problem.
 */

const pick = (arr, n) => arr[((n % arr.length) + arr.length) % arr.length];
const cap = (s) => s.charAt(0).toUpperCase() + s.slice(1);

/** Scenario nouns swapped globally (after per-skill passes) so they vary anywhere. */
const GLOBAL_NOUNS = [
  { base: /\bvehicle\b/g, salt: 1, pool: ["cyclist", "delivery van", "passenger ferry", "freight train", "cargo drone", "tour bus"] },
  { base: /\bcar\b/g, salt: 2, pool: ["van", "truck", "scooter", "sedan", "bus"] },
  { base: /\bball\b/g, salt: 3, pool: ["marble", "bead", "token", "tile", "counter"] },
];

/**
 * Per-skill diversification. `noun` swaps replace a scenario word everywhere it
 * appears (stimulus + stem); `stems` fully replace fixed-phrasing stems (those
 * carry no inline numbers, so replacement is safe).
 */
const SKILL_VARIETY = {
  ARE: {
    noun: { base: /\bbox\b/g, pool: ["shipping crate", "glass aquarium", "storage bin", "packing carton", "planter box", "steel locker", "cooler chest"] },
    stems: [
      "What is the volume of the {noun}, in cubic inches?",
      "How many cubic inches does the {noun} hold?",
      "Find the volume of the {noun}, in cubic inches.",
      "What is the capacity of the {noun}, in cubic inches?",
    ],
  },
  CIR: {
    ctx: ["a circular running track", "a round garden fountain", "a Ferris wheel", "a circular pizza", "a roundabout", "a satellite's circular orbit", "a clock face"],
    stems: [
      "Halfway around {ctx}, how far have you traveled? (Use $\\pi \\approx 3.14$.)",
      "What is the length of a semicircular arc of {ctx}? (Use $\\pi \\approx 3.14$.)",
      "How far is half the way around {ctx}? (Use $\\pi \\approx 3.14$.)",
      "Across {ctx}, what is half its circumference? (Use $\\pi \\approx 3.14$.)",
    ],
  },
  RAT: {
    noun: { base: /\bvehicle\b/g, pool: ["cyclist", "delivery van", "passenger ferry", "freight train", "long-distance runner", "cargo drone", "tour bus"] },
    stems: [
      "If the {noun} keeps the same rate, what is $d$ when $t=${x2}$?",
      "Traveling at this steady rate, what distance $d$ does the {noun} cover by $t=${x2}$?",
      "At the same constant rate, find $d$ for the {noun} when $t=${x2}$.",
    ],
  },
  PER: {
    noun: { base: /\bprice\b/g, pool: ["fare", "subscription fee", "ticket price", "rental rate", "membership cost", "list price"] },
    stems: [
      "If the original {noun} is $${base}$, what is the final {noun} after both changes?",
      "Starting from a {noun} of $${base}$, what is the {noun} after the two successive changes?",
      "A {noun} of $${base}$ undergoes both changes — what is the resulting {noun}?",
    ],
  },
  INE: {
    noun: { base: /sensor reading/gi, pool: ["water level", "battery charge", "signal strength", "reservoir depth", "soil-moisture reading", "pressure gauge"] },
  },
  OIA: {
    ctx: ["five quiz scores", "a week of daily step counts", "six monthly rainfall totals", "a set of lab measurements", "seven days of ticket sales"],
    stems: [
      "Given {ctx}, what is the missing value $x$?",
      "For {ctx} with one entry hidden, what is $x$?",
      "What value of $x$ completes {ctx} as described?",
    ],
  },
  PRO: {
    noun: { base: /\bchip\b/g, pool: ["marble", "token", "card", "bead", "ticket", "ball"] },
    stems: [
      "Given the first {noun} drawn is red, what is the probability the second is also red?",
      "If the first {noun} is red, find the probability the next {noun} is red too.",
      "After drawing one red {noun}, what is the chance the second {noun} is red?",
    ],
  },
  EVA: {
    ctx: ["a researcher's claim about the new fertilizer", "a company's claim about its battery life", "a study's claim about the tutoring program", "a manufacturer's claim about the coating", "an analyst's claim about the ad campaign"],
    stems: [
      "Which choice best evaluates {ctx} using the data?",
      "Based on the data, which choice most fairly assesses {ctx}?",
      "Which statement best weighs the evidence for {ctx}?",
    ],
  },
  IEE: {
    ctx: ["the survey of registered voters", "the poll of recent customers", "the sample of city commuters", "the study of participating students", "the survey of small-business owners"],
    stems: [
      "From {ctx}, which conclusion is best supported?",
      "Which conclusion does {ctx} most justify?",
      "Based on {ctx}, which inference is most defensible?",
    ],
  },
  RIG: {
    noun: { base: /\bladder\b/g, pool: ["ramp", "support cable", "leaning beam", "guy wire", "zip line", "fire escape" ] },
  },
};

/**
 * Fixed stems (no inline numbers) that repeat regardless of skill mapping.
 * Keyed by the exact base stem; rotated by index.
 */
const GENERIC_STEMS = {
  "How many tasks did the first worker complete?": [
    "How many units did the first crew assemble?",
    "How many orders did the first team fill?",
    "How many parts did the first machine produce?",
    "How many deliveries did the first driver make?",
    "How many tasks did the first worker complete?",
  ],
  "Which equation models the line, and what does the slope represent?": [
    "Which equation models the line, and what does its slope mean in context?",
    "Which equation fits the line, and how should the slope be interpreted?",
    "Which equation describes the line, and what does the slope tell you?",
  ],
  "What is the missing score $x$?": [
    "What is the missing value $x$?",
    "Which value of $x$ completes the data set?",
    "What must $x$ be for the set described?",
  ],
};

/**
 * Rewrite a generated math question's framing by index. Numbers and expressions
 * are preserved; only scenario nouns and stem wording change.
 */
export function diversifyMathQuestion(q, skill, index) {
  const baseStem = (q.question_text ?? "").trim();
  const generic = GENERIC_STEMS[baseStem];
  if (generic) {
    return { ...q, question_text: pick(generic, index) };
  }
  const spec = SKILL_VARIETY[skill] ?? {};
  let questionText = q.question_text ?? "";
  let stimulusText = q.stimulus_text ?? "";

  // Scenario context phrase (CIR/OIA/EVA/IEE style) selected by index.
  const ctx = spec.ctx ? pick(spec.ctx, index) : null;

  // Noun swap applied to both stimulus and stem.
  let nounWord = null;
  if (spec.noun) {
    nounWord = pick(spec.noun.pool, index);
    stimulusText = stimulusText.replace(spec.noun.base, nounWord);
    questionText = questionText.replace(spec.noun.base, nounWord);
  }

  // Stem phrasing variant (fixed-phrasing stems only — no inline numbers, so the
  // template tokens {noun}/{ctx} are filled and the rest is literal). Variants
  // that reference ${...} keep the original number-bearing fragments verbatim, so
  // we only swap the stem when it has no ${} placeholders to interpolate.
  if (spec.stems) {
    let variant = pick(spec.stems, index);
    if (!/\$\{/.test(variant)) {
      variant = variant
        .replace(/\{noun\}/g, nounWord ?? "object")
        .replace(/\{ctx\}/g, ctx ?? "the figure");
      questionText = variant;
    }
  }

  // Global noun pass — catches scenario nouns wherever they appear, regardless of
  // which skill produced them (per-skill swaps above already consumed their own,
  // so this only diversifies stragglers like the "vehicle" stem under LEQ).
  for (const g of GLOBAL_NOUNS) {
    const repl = pick(g.pool, index + g.salt);
    stimulusText = stimulusText.replace(g.base, repl);
    questionText = questionText.replace(g.base, repl);
  }

  return { ...q, question_text: questionText, stimulus_text: stimulusText };
}
