/**
 * Deterministic AP/IB question generators for Wave R batch 2.
 * Produces SAT-parity explanations (**Goal.** / **Step N.** / **Answer:**)
 * and optional **In Desmos.** when calculator is graphing-allowed.
 */
import { createHash, randomUUID } from "node:crypto";

export const BATCH2_COURSES = [
  "AP_PHYSICS_1",
  "AP_PHYSICS_2",
  "AP_PHYSICS_C_MECHANICS",
  "AP_PHYSICS_C_EM",
  "AP_CHINESE",
  "AP_FRENCH",
  "AP_GERMAN",
  "AP_ITALIAN",
  "AP_JAPANESE",
  "AP_LATIN",
  "AP_SPANISH_LANG",
  "AP_SPANISH_LIT",
  "AP_PHYSICS",
  "AP_ENGLISH",
  "AP_ECONOMICS",
  "AP_COMPUTER_SCIENCE",
  "IB_ENG_A_LIT_SL",
  "IB_ENG_A_LIT_HL",
  "IB_ENG_A_LAL_SL",
  "IB_ENG_A_LAL_HL",
  "IB_LANG_A_LIT_PACK",
  "IB_LANG_A_LAL_PACK",
  "IB_ENG_B_SL",
  "IB_ENG_B_HL",
  "IB_SPANISH_B_SL",
  "IB_SPANISH_B_HL",
  "IB_FRENCH_B_SL",
  "IB_FRENCH_B_HL",
];

export const UNIT_BANK_SOURCE_AP = "scholaris_ap_gen";
export const UNIT_BANK_SOURCE_IB = "scholaris_ib_gen";
export const FULL_FORM_SOURCE = "full_exam_form";
export const UNIT_TEST_SOURCE = "unit_test";

const DIFFS = ["easy", "medium", "hard"];
const LETTERS = ["A", "B", "C", "D"];
export const FORM_LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];

/** Scenario wrappers so large banks are not identical stem clones. */
const STEM_CONTEXTS = [
  (topic, n) => `Lab trial ${n} (${topic})`,
  (topic, n) => `Practice set ${n} on ${topic}`,
  (topic, n) => `Field dataset #${n} for ${topic}`,
  (topic, n) => `Exam-style item ${n}: ${topic}`,
  (topic, n) => `Workshop scenario ${n} (${topic})`,
  (topic, n) => `Calibration log ${n} — ${topic}`,
  (topic, n) => `Model comparison ${n} (${topic})`,
  (topic, n) => `Clinic drill ${n} focused on ${topic}`,
];

const HUM_CONTEXTS = [
  (topic, n) => `Source set ${n} on ${topic}`,
  (topic, n) => `Case study ${n} involving ${topic}`,
  (topic, n) => `Seminar debate ${n}: ${topic}`,
  (topic, n) => `Archive packet ${n} about ${topic}`,
  (topic, n) => `Simulation round ${n} focused on ${topic}`,
  (topic, n) => `Comparative brief ${n} on ${topic}`,
];

function contextWrap(examType, topic, seq, stem) {
  const n = (seq % 997) + 1;
  const fam = familyOf(examType);
  const wrappers =
    fam === "physics" || fam === "cs" || fam === "econ" ? STEM_CONTEXTS : HUM_CONTEXTS;
  const w = wrappers[seq % wrappers.length](topic, n);
  if (!stem || stem.startsWith(w)) return stem;
  return `${w}. ${stem}`;
}

/** Mulberry32 */
export function rng(seed) {
  let t = seed >>> 0;
  return () => {
    t += 0x6d2b79f5;
    let r = Math.imul(t ^ (t >>> 15), 1 | t);
    r ^= r + Math.imul(r ^ (r >>> 7), 61 | r);
    return ((r ^ (r >>> 14)) >>> 0) / 4294967296;
  };
}

export function seedFrom(...parts) {
  const h = createHash("sha256").update(parts.join("|")).digest();
  return h.readUInt32BE(0);
}

function pick(r, arr) {
  return arr[Math.floor(r() * arr.length) % arr.length];
}

function shuffle(r, arr) {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(r() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function int(r, lo, hi) {
  return lo + Math.floor(r() * (hi - lo + 1));
}

function externalId(examType, pool, unitCode, index) {
  return `${examType.toLowerCase()}_${pool}_${unitCode}_${String(index).padStart(4, "0")}`;
}

function bankSource(examType) {
  return examType.startsWith("IB_") ? UNIT_BANK_SOURCE_IB : UNIT_BANK_SOURCE_AP;
}

function calcAllowed(blueprint, format) {
  const rules = blueprint.calculator?.section_rules ?? [];
  const hit = rules.find(
    (s) =>
      s.section === format ||
      s.section === "all" ||
      (format === "mcq" && s.section === "mcq") ||
      (format === "frq" && s.section === "frq"),
  );
  if (hit) return Boolean(hit.calculator_allowed);
  return Boolean(blueprint.calculator?.per_question_default);
}

function wantsDesmos(blueprint) {
  return (
    blueprint.calculator?.policy === "graphing" &&
    Boolean(blueprint.calculator?.desmos_recommended)
  );
}

function desmosBlock(blueprint, tip) {
  if (!wantsDesmos(blueprint) || !tip) return "";
  return `\n\n**In Desmos.**\n1. ${tip}\n2. Confirm the intersection or value matches the worked answer.`;
}

function buildExplanation({ goal, steps, answer, distractors, desmosTip, blueprint }) {
  const stepLines = steps
    .map((s, i) => `**Step ${i + 1}.** ${s}`)
    .join("\n\n");
  const dist =
    distractors?.length > 0
      ? `\n\n**Why the other choices are wrong:**\n${distractors
          .map((d) => `- **${d.id})** ${d.text} — ${d.why}`)
          .join("\n")}`
      : "";
  return (
    `**Goal.** ${goal}\n\n${stepLines}\n\n**Answer:** ${answer}` +
    dist +
    desmosBlock(blueprint, desmosTip)
  );
}

function mcqRow({
  examType,
  blueprint,
  unit,
  skillId,
  index,
  pool,
  difficulty,
  stem,
  stimulus,
  stimulusType,
  choices,
  correctId,
  goal,
  steps,
  hint,
  desmosTip,
  metaExtra = {},
  format = "mcq",
}) {
  const options = choices.map((c) => ({
    id: c.id,
    text: c.text,
    is_correct: c.id === correctId,
    explanation:
      c.id === correctId
        ? `Correct. ${c.why}`
        : c.why || "Does not match the correct reasoning.",
  }));
  const correct = options.find((o) => o.is_correct);
  const distractors = options
    .filter((o) => !o.is_correct)
    .map((o) => ({ id: o.id, text: o.text, why: o.explanation.replace(/^Incorrect\.\s*/i, "") }));

  const explanation = buildExplanation({
    goal,
    steps,
    answer: `${correct.id}) ${correct.text}`,
    distractors,
    desmosTip,
    blueprint,
  });

  const allowed = calcAllowed(blueprint, format);
  const source =
    pool === "unit_test"
      ? UNIT_TEST_SOURCE
      : pool.startsWith("form_")
        ? FULL_FORM_SOURCE
        : bankSource(examType);

  return {
    id: randomUUID(),
    question_text: stem,
    stimulus_text: stimulus ?? null,
    stimulus_type: stimulusType ?? null,
    options,
    correct_answer: correctId,
    explanation,
    hint: hint || "Identify the governing principle, then eliminate choices that violate it.",
    topic: unit.unit_name,
    subtopic: (unit.topics && unit.topics[0]) || unit.unit_name,
    section: format === "frq" ? "frq" : "mcq",
    domain_id: unit.unit_code,
    skill_id: skillId,
    math_skill_code: null,
    difficulty,
    calculator_allowed: allowed,
    desmos_recommended: wantsDesmos(blueprint) && allowed,
    exam_type: examType,
    question_type: "multiple_choice",
    is_platform_question: true,
    ai_generated: true,
    source,
    external_id: externalId(examType, pool, unit.unit_code, index),
    unit_code: unit.unit_code,
    rubric: null,
    max_points: null,
    source_metadata: {
      wave: "R",
      batch: 2,
      generator: "generate-ap-ib-bank.mjs",
      explanation_v2: true,
      pool,
      unit_code: unit.unit_code,
      unit_name: unit.unit_name,
      skill_id: skillId,
      original: true,
      ...metaExtra,
    },
  };
}

function frqRow({
  examType,
  blueprint,
  unit,
  skillId,
  index,
  pool,
  difficulty,
  stem,
  stimulus,
  stimulusType,
  modelAnswer,
  rubricPoints,
  goal,
  steps,
  hint,
  metaExtra = {},
  maxPoints = 4,
}) {
  const options = [
    {
      id: "MODEL",
      text: modelAnswer.slice(0, 280),
      is_correct: true,
      explanation: `Model response direction: ${modelAnswer}`,
    },
    {
      id: "_",
      text: "(student free response)",
      is_correct: false,
      explanation: "FRQ scored from the written response against the rubric.",
    },
  ];
  const explanation = buildExplanation({
    goal,
    steps,
    answer: modelAnswer,
    distractors: [],
    desmosTip: null,
    blueprint,
  });
  const source =
    pool === "unit_test"
      ? UNIT_TEST_SOURCE
      : pool.startsWith("form_")
        ? FULL_FORM_SOURCE
        : bankSource(examType);

  return {
    id: randomUUID(),
    question_text: stem,
    stimulus_text: stimulus ?? null,
    stimulus_type: stimulusType ?? null,
    options,
    correct_answer: "MODEL",
    explanation,
    hint: hint || "Outline claims, evidence, and reasoning before writing.",
    topic: unit.unit_name,
    subtopic: (unit.topics && unit.topics[0]) || unit.unit_name,
    section: "frq",
    domain_id: unit.unit_code,
    skill_id: skillId,
    math_skill_code: null,
    difficulty,
    calculator_allowed: calcAllowed(blueprint, "frq"),
    desmos_recommended: false,
    exam_type: examType,
    question_type: "free_response",
    is_platform_question: true,
    ai_generated: true,
    source,
    external_id: externalId(examType, pool, unit.unit_code, index),
    unit_code: unit.unit_code,
    rubric: { points: rubricPoints, max_points: maxPoints },
    max_points: maxPoints,
    source_metadata: {
      wave: "R",
      batch: 2,
      generator: "generate-ap-ib-bank.mjs",
      explanation_v2: true,
      pool,
      unit_code: unit.unit_code,
      format: "frq",
      original: true,
      ...metaExtra,
    },
  };
}

// ---------------------------------------------------------------------------
// Domain generators
// ---------------------------------------------------------------------------

function physicsMcq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const name = unit.unit_name.toLowerCase();
  const code = unit.unit_code.toLowerCase();

  // Family of parametric physics items keyed loosely by unit themes
  const builders = [];

  if (/kinematic|motion|projectile|velocity/.test(name + code)) {
    builders.push(() => {
      const v0 = int(r, 4, 18);
      const a = int(r, 1, 5);
      const t = int(r, 2, 6);
      const d = v0 * t + 0.5 * a * t * t;
      const wrong = [v0 * t, v0 * t + a * t * t, d + a, Math.abs(d - v0)];
      const entries = shuffle(r, [
        { text: String(d), why: `Use $d=v_0t+\\tfrac12 at^2$ → ${v0}·${t}+½·${a}·${t}²=${d}.`, correct: true },
        { text: String(wrong[0]), why: "Omits the ½at² term.", correct: false },
        { text: String(wrong[1]), why: "Uses at² without the 1/2 factor.", correct: false },
        { text: String(wrong[2]), why: "Adds acceleration with no time factor.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
      const correctId = options.find((o) => o.correct).id;
      return {
        stem: `A cart starts at speed $${v0}\\,\\mathrm{m/s}$ and accelerates at $${a}\\,\\mathrm{m/s^2}$ for $${t}\\,\\mathrm{s}$. What is its displacement (m)?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId,
        goal: "Find displacement under constant acceleration.",
        steps: [
          `Identify knowns: $v_0=${v0}$, $a=${a}$, $t=${t}$.`,
          `Apply $d=v_0 t + \\tfrac12 a t^2$.`,
          `Compute $d=${v0}\\cdot${t}+\\tfrac12\\cdot${a}\\cdot${t}^2=${d}$.`,
        ],
        hint: "Displacement needs both $v_0t$ and $\\tfrac12 at^2$.",
        desmosTip: `Graph y=${v0}*x+0.5*${a}*x^2 and read y at x=${t}.`,
      };
    });
  }

  if (/dynamic|newton|friction|force|fbd/.test(name + code)) {
    builders.push(() => {
      const m = int(r, 2, 12);
      const a = int(r, 1, 5);
      const F = m * a;
      const entries = shuffle(r, [
        { text: String(F), why: `Newton II: $F_{net}=ma=${m}\\cdot${a}=${F}\\,\\mathrm{N}$.`, correct: true },
        { text: String(m + a), why: "Adds mass and acceleration instead of multiplying.", correct: false },
        { text: String(F * 2), why: "Doubles the net force without justification.", correct: false },
        { text: String(Math.max(1, F - m)), why: "Subtracts mass from ma.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text + " N", why: e.why, correct: e.correct }));
      return {
        stem: `A ${m} kg crate on a frictionless surface accelerates at ${a} m/s². What net force acts on the crate?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Apply Newton’s second law to find net force.",
        steps: [`Write $F_{net}=ma$.`, `Substitute $m=${m}$, $a=${a}$.`, `Obtain $F_{net}=${F}\\,\\mathrm{N}$.`],
        hint: "Net force is mass times acceleration.",
      };
    });
  }

  if (/energy|work|power|potential|kinetic/.test(name + code)) {
    builders.push(() => {
      const m = int(r, 2, 10);
      const v = int(r, 2, 12);
      const K = 0.5 * m * v * v;
      const entries = shuffle(r, [
        { text: String(K), why: `$K=\\tfrac12 mv^2=\\tfrac12(${m})(${v})^2=${K}\\,\\mathrm{J}$.`, correct: true },
        { text: String(m * v * v), why: "Forgot the factor of 1/2.", correct: false },
        { text: String(m * v), why: "Uses mv instead of ½mv².", correct: false },
        { text: String(K / 2), why: "Extra division by 2.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text + " J", why: e.why, correct: e.correct }));
      return {
        stem: `What is the kinetic energy of a ${m} kg object moving at ${v} m/s?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Compute translational kinetic energy.",
        steps: [`Recall $K=\\tfrac12 mv^2$.`, `Substitute values.`, `Simplify to ${K} J.`],
        hint: "Kinetic energy scales with $v^2$.",
      };
    });
  }

  if (/momentum|impulse|collision/.test(name + code)) {
    builders.push(() => {
      const m = int(r, 2, 8);
      const v = int(r, 3, 15);
      const p = m * v;
      const entries = shuffle(r, [
        { text: String(p), why: `$p=mv=${m}\\cdot${v}=${p}\\,\\mathrm{kg\\cdot m/s}$.`, correct: true },
        { text: String(m + v), why: "Adds instead of multiplying.", correct: false },
        { text: String(0.5 * m * v), why: "Inserts an erroneous 1/2.", correct: false },
        { text: String(p * 2), why: "Doubles momentum.", correct: false },
      ]);
      const options = entries.map((e, i) => ({
        id: LETTERS[i],
        text: e.text + " kg·m/s",
        why: e.why,
        correct: e.correct,
      }));
      return {
        stem: `A ${m} kg cart moves at ${v} m/s. What is its momentum magnitude?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Compute linear momentum $p=mv$.",
        steps: [`Write $p=mv$.`, `Substitute $m=${m}$, $v=${v}$.`, `Get $p=${p}$.`],
        hint: "Momentum is mass times velocity.",
      };
    });
  }

  if (/circuit|electric|magnet|field|capacitor|current|voltage|charge/.test(name + code) || /em|electro/.test(examType.toLowerCase())) {
    builders.push(() => {
      const V = int(r, 6, 24);
      const R = int(r, 2, 12);
      const I = V / R;
      const Istr = Number.isInteger(I) ? String(I) : I.toFixed(2);
      const entries = shuffle(r, [
        { text: Istr, why: `Ohm’s law: $I=V/R=${V}/${R}=${Istr}\\,\\mathrm{A}$.`, correct: true },
        { text: String(V * R), why: "Multiplies V and R instead of dividing.", correct: false },
        { text: String(V + R), why: "Adds voltage and resistance.", correct: false },
        { text: String(R / V), why: "Inverts Ohm’s law.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text + " A", why: e.why, correct: e.correct }));
      return {
        stem: `A resistor of ${R} Ω is connected across a ${V} V battery. What is the current?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Apply Ohm’s law $I=V/R$.",
        steps: [`Identify $V=${V}$, $R=${R}$.`, `Compute $I=V/R$.`, `Obtain ${Istr} A.`],
        hint: "Current equals voltage divided by resistance.",
      };
    });
  }

  if (/fluid|pressure|buoyancy|bernoulli|density/.test(name + code)) {
    builders.push(() => {
      const rho = pick(r, [1000, 800, 1200]);
      const h = int(r, 2, 10);
      const g = 10;
      const P = rho * g * h;
      const entries = shuffle(r, [
        { text: String(P), why: `$P=\\rho g h=${rho}\\cdot${g}\\cdot${h}=${P}\\,\\mathrm{Pa}$.`, correct: true },
        { text: String(rho * h), why: "Omits g.", correct: false },
        { text: String(rho * g), why: "Omits depth h.", correct: false },
        { text: String(P / 2), why: "Halves the hydrostatic pressure.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text + " Pa", why: e.why, correct: e.correct }));
      return {
        stem: `Estimate the gauge pressure (Pa) at depth ${h} m in a fluid of density ${rho} kg/m³. Use g=${g} m/s².`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Apply hydrostatic pressure $P=\\rho gh$.",
        steps: [`Write $P=\\rho g h$.`, `Substitute values.`, `Compute ${P} Pa.`],
        hint: "Pressure increases linearly with depth.",
      };
    });
  }

  if (/circular|gravitation|orbit|shm|harmonic|spring|pendulum|torque|rotational|angular/.test(name + code)) {
    builders.push(() => {
      const k = int(r, 20, 80);
      const x = int(r, 2, 8) / 10;
      const F = Math.round(k * x * 10) / 10;
      const entries = shuffle(r, [
        { text: String(F), why: `Hooke: $|F|=kx=${k}\\cdot${x}=${F}\\,\\mathrm{N}$.`, correct: true },
        { text: String(k + x), why: "Adds k and x.", correct: false },
        { text: String(k / x), why: "Divides instead of multiplying.", correct: false },
        { text: String(F * 2), why: "Doubles the restoring force.", correct: false },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text + " N", why: e.why, correct: e.correct }));
      return {
        stem: `A spring with constant ${k} N/m is stretched ${x} m from equilibrium. Magnitude of the restoring force?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Use Hooke’s law for restoring force.",
        steps: [`Write $|F|=kx$.`, `Substitute $k=${k}$, $x=${x}$.`, `Obtain ${F} N.`],
        hint: "Force is proportional to displacement from equilibrium.",
      };
    });
  }

  // Fallback conceptual physics
  if (builders.length === 0) {
    builders.push(() => {
      const n = int(r, 2, 5);
      const entries = shuffle(r, [
        {
          text: "Net force is zero while velocity may be nonzero",
          why: "Equilibrium means zero net force; constant velocity is allowed.",
          correct: true,
        },
        {
          text: "Velocity must be zero",
          why: "Confuses static rest with dynamic equilibrium.",
          correct: false,
        },
        {
          text: "Acceleration must be nonzero",
          why: "Opposite of Newton I/II for zero net force.",
          correct: false,
        },
        {
          text: `Mass must equal ${n} kg`,
          why: "Mass is unconstrained by equilibrium alone.",
          correct: false,
        },
      ]);
      const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
      return {
        stem: `In unit “${unit.unit_name}”, which statement about an object in equilibrium is always true?`,
        choices: options.map(({ id, text, why }) => ({ id, text, why })),
        correctId: options.find((o) => o.correct).id,
        goal: "Distinguish equilibrium from rest.",
        steps: [
          "Equilibrium means $\\sum F=0$ (and $\\sum\\tau=0$ if rotation matters).",
          "Newton I: zero net force ⇒ constant velocity, which may be nonzero.",
          "Select the statement that matches that definition.",
        ],
        hint: "Zero net force does not require zero velocity.",
      };
    });
  }

  const built = pick(r, builders)();
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: built.stem,
    choices: built.choices,
    correctId: built.correctId,
    goal: built.goal,
    steps: built.steps,
    hint: built.hint,
    desmosTip: built.desmosTip,
  });
}

function physicsFrq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const m = int(r, 2, 8);
  const v = int(r, 3, 12);
  const stem = `(${unit.unit_name}) A ${m} kg object moves at ${v} m/s on a horizontal surface.
(a) Calculate its kinetic energy.
(b) If a constant friction force of ${m} N acts opposite the motion, find the distance traveled before stopping.
(c) State whether mechanical energy is conserved and justify.`;
  const K = 0.5 * m * v * v;
  const d = K / m;
  return frqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem,
    modelAnswer: `(a) K=½mv²=${K} J. (b) W_fric=-f d=-K ⇒ d=${d} m. (c) Mechanical energy not conserved because friction does nonconservative work.`,
    rubricPoints: [
      { id: "a", points: 1, desc: "Correct kinetic energy expression and value" },
      { id: "b", points: 2, desc: "Work–energy with friction; distance" },
      { id: "c", points: 1, desc: "Conservation judgment with justification" },
    ],
    goal: "Apply energy methods to a friction problem.",
    steps: [
      `Compute $K=\\tfrac12 mv^2=${K}\\,\\mathrm{J}$.`,
      `Use $\\Delta K=W_{nc}=-fd$ to solve for $d=${d}\\,\\mathrm{m}$.`,
      "Note friction removes mechanical energy, so ME is not conserved.",
    ],
    hint: "Relate work by friction to the change in kinetic energy.",
  });
}

const LANG_PASSAGES = {
  AP_ENGLISH: [
    "Each summer the town market draws craftspeople who sell handmade goods. Visitors admire the bright pottery and talk with the vendors about how the fair began.",
    "In a recent article, a journalist explains how local libraries host Saturday workshops that help teenagers build digital portfolios for college applications.",
  ],
  AP_FRENCH: [
    "Chaque été, le marché de la ville attire des artisans qui vendent des objets faits main. Les visiteurs admirent la poterie colorée et discutent avec les vendeurs.",
    "Dans un article récent, une journaliste explique comment les bibliothèques locales organisent des ateliers pour les adolescents le samedi matin.",
  ],
  AP_SPANISH_LANG: [
    "Cada verano, el mercado del pueblo atrae a artesanos que venden objetos hechos a mano. Los visitantes admiran la cerámica colorida y conversan con los vendedores.",
    "En un artículo reciente, una periodista explica cómo las bibliotecas locales organizan talleres para adolescentes los sábados por la mañana.",
  ],
  AP_GERMAN: [
    "Jeden Sommer zieht der Stadtmarkt Handwerker an, die selbst gemachte Waren verkaufen. Besucher bewundern die bunte Keramik und sprechen mit den Verkäufern.",
    "In einem aktuellen Artikel erklärt eine Journalistin, wie örtliche Bibliotheken samstags Workshops für Jugendliche organisieren.",
  ],
  AP_ITALIAN: [
    "Ogni estate il mercato della città attira artigiani che vendono oggetti fatti a mano. I visitatori ammirano la ceramica colorata e parlano con i venditori.",
    "In un articolo recente, una giornalista spiega come le biblioteche locali organizzano laboratori per adolescenti il sabato mattina.",
  ],
  AP_CHINESE: [
    "每年夏天，市集吸引许多手工艺人售卖自制物品。游客欣赏色彩鲜艳的陶器，并与摊主交谈。",
    "最近一篇文章介绍了当地图书馆如何在周六上午为青少年举办工作坊。",
  ],
  AP_JAPANESE: [
    "毎年夏になると、町の市には手作りの品を売る職人が集まる。訪問者は色鮮やかな陶器を眺め、売り手と話す。",
    "最近の記事では、地域の図書館が土曜の午前に青少年向けのワークショップを開く様子が紹介されている。",
  ],
  AP_LATIN: [
    "Aestate mercato urbis artifices conveniunt qui opera manu facta vendunt. Visitatores figlinam coloratam mirantur et cum venditoribus colloquuntur.",
    "In recentissimo articulo scriptrix explicat quomodo bibliothecae locales die Saturni officinas adolescentibus parent.",
  ],
};

function languageMcq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  // Passage language key only — never remap examType (that would flip IB → AP source tags).
  const key =
    ctx.langKey ||
    (LANG_PASSAGES[examType] && examType) ||
    (examType.includes("SPANISH")
      ? "AP_SPANISH_LANG"
      : examType.includes("FRENCH")
        ? "AP_FRENCH"
        : examType.includes("GERMAN")
          ? "AP_GERMAN"
          : examType.includes("ITALIAN")
            ? "AP_ITALIAN"
            : examType.includes("CHINESE")
              ? "AP_CHINESE"
              : examType.includes("JAPANESE")
                ? "AP_JAPANESE"
                : examType.includes("LATIN")
                  ? "AP_LATIN"
                  : examType.includes("ENG")
                    ? "AP_ENGLISH"
                    : "AP_FRENCH");
  const passages = LANG_PASSAGES[key] || LANG_PASSAGES.AP_FRENCH;
  const passage = passages[index % passages.length];
  const focus = pick(r, [
    {
      q: "What is the primary focus of the passage?",
      correct: "Community cultural activity involving craftspeople and visitors",
      wrong: [
        "A scientific experiment in a laboratory",
        "A political campaign speech",
        "Instructions for repairing a machine",
      ],
    },
    {
      q: "Which inference is best supported?",
      correct: "The setting brings people together around handmade goods or learning",
      wrong: [
        "The events occur only at midnight",
        "No one speaks to anyone else",
        "The passage criticizes all markets and libraries",
      ],
    },
  ]);
  const entries = shuffle(r, [
    { text: focus.correct, why: "Matches the concrete details about markets/libraries and social exchange.", correct: true },
    ...focus.wrong.map((w) => ({ text: w, why: "Not supported by the passage details.", correct: false })),
  ]);
  const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: focus.q,
    stimulus: passage,
    stimulusType: "passage",
    choices: options.map(({ id, text, why }) => ({ id, text, why })),
    correctId: options.find((o) => o.correct).id,
    goal: "Demonstrate interpretive reading of a short authentic-style passage.",
    steps: [
      "Skim for setting, participants, and purpose.",
      "Match each choice against explicit details.",
      "Select the option that is both accurate and central.",
    ],
    hint: "Anchor your answer in specific nouns and verbs from the text.",
  });
}

function languageFrq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const prompt = pick(r, [
    `Write a short email to a friend describing a cultural event related to “${unit.unit_name}”. Include greeting, two details, and a closing question.`,
    `In a paragraph, compare two perspectives on a community issue connected to “${unit.unit_name}”. Support each with a concrete example.`,
  ]);
  return frqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: prompt,
    modelAnswer:
      "Opens with appropriate register; develops two specific, on-topic details; uses transitional language; ends with a clear question or comparative claim.",
    rubricPoints: [
      { id: "task", points: 1, desc: "Addresses the prompt fully" },
      { id: "detail", points: 2, desc: "Two concrete details / examples" },
      { id: "lang", points: 1, desc: "Comprehensible language appropriate to level" },
    ],
    goal: "Produce a coherent interpersonal/presentational response on the unit theme.",
    steps: [
      "Plan greeting/claim + two details + closing.",
      "Write with register appropriate to the exam.",
      "Check that both required details are present.",
    ],
  });
}

function englishMcq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const n = int(r, 3, 19);
  const passages = [
    `Critics of urban tree-planting programs often focus on maintenance costs, yet city ${n}'s recent audit found that shaded streets cut peak summer energy demand enough to offset those costs within five years. Residents also reported longer evening walks once canopy cover increased. The report stops short of claiming trees alone can meet climate targets, but it frames greening as a measurable infrastructure investment rather than a purely aesthetic amenity.`,
    `In her essay on archival silence, historian Rivera argues that missing plantation ledgers do not prove enslaved people left no economic trace. Instead, she reads shipping manifests and church registers as negative spaces that still encode labor patterns. Rivera's method treats absence as evidence requiring interpretation, not as a void that ends inquiry.`,
  ];
  const passage = passages[index % passages.length];
  const entries = shuffle(r, [
    {
      text: "To present greening (or archival method) as a reasoned, evidence-based practice rather than a soft preference",
      why: "The passage cites measurable outcomes / interpretive method.",
      correct: true,
    },
    {
      text: "To argue that no data can ever support public policy",
      why: "Contradicts the audit/evidence framing.",
      correct: false,
    },
    {
      text: "To narrate a personal childhood anecdote without analysis",
      why: "The passage is analytical, not memoir.",
      correct: false,
    },
    {
      text: "To list unrelated chemical formulas",
      why: "No chemistry content appears.",
      correct: false,
    },
  ]);
  const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: "Which choice best describes the author's primary purpose?",
    stimulus: passage,
    stimulusType: "passage",
    choices: options.map(({ id, text, why }) => ({ id, text, why })),
    correctId: options.find((o) => o.correct).id,
    goal: "Identify rhetorical purpose from evidence and framing.",
    steps: [
      "Note the claim structure and what evidence is offered.",
      "Eliminate choices that invent content or tone.",
      "Select the purpose that matches the passage's argumentative move.",
    ],
    hint: "Purpose is revealed by what the author tries to make the reader accept.",
  });
}

function englishFrq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  return frqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: `Rhetorical analysis (${unit.unit_name}): In a focused essay, analyze how the writer of a short argument about community spaces uses evidence and tone to persuade. Use specific references to strategy (diction, structure, appeals).`,
    modelAnswer:
      "Thesis names strategies; body paragraphs link diction/structure/appeals to persuasive effect with quoted/paraphrased evidence; conclusion ties strategies to audience impact.",
    rubricPoints: [
      { id: "thesis", points: 1, desc: "Defensible thesis on rhetorical choices" },
      { id: "evidence", points: 2, desc: "Specific evidence + commentary" },
      { id: "sophistication", points: 1, desc: "Nuanced understanding of purpose/audience" },
    ],
    goal: "Produce a thesis-driven rhetorical analysis.",
    steps: [
      "Identify audience, purpose, and 2–3 strategies.",
      "Develop commentary that connects strategy → effect.",
      "Close by synthesizing how strategies work together.",
    ],
  });
}

function econMcq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const P = int(r, 4, 20);
  const Qd = int(r, 20, 80);
  const Qs = Qd - int(r, 5, 15);
  const entries = shuffle(r, [
    {
      text: "Shortage; upward pressure on price",
      why: `At price ${P}, Qd>${Qs} implies shortage, so price tends to rise.`,
      correct: true,
    },
    {
      text: "Surplus; downward pressure on price",
      why: "Would require Qs>Qd.",
      correct: false,
    },
    {
      text: "Market already at long-run equilibrium with zero trade",
      why: "Unequal quantities contradict equilibrium.",
      correct: false,
    },
    {
      text: "Demand must be perfectly inelastic",
      why: "Slope of demand is not determined by one point comparison.",
      correct: false,
    },
  ]);
  const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: `At a price of $${P}, quantity demanded is ${Qd} and quantity supplied is ${Qs}. Which outcome is most likely in a competitive market?`,
    choices: options.map(({ id, text, why }) => ({ id, text, why })),
    correctId: options.find((o) => o.correct).id,
    goal: "Diagnose shortage vs surplus from Qd and Qs.",
    steps: [
      `Compare Qd=${Qd} with Qs=${Qs}.`,
      "Qd>Qs ⇒ shortage.",
      "Shortages create upward pressure on price toward equilibrium.",
    ],
    hint: "Whichever quantity is larger tells shortage vs surplus.",
  });
}

function econFrq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const tax = int(r, 2, 8);
  return frqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: `(${unit.unit_name}) A per-unit tax of $${tax} is placed on sellers in a competitive market.
(a) Show on a supply–demand diagram how the supply curve shifts.
(b) Identify the new consumer and producer prices.
(c) Shade tax revenue and deadweight loss.
(d) Explain how elasticities affect tax incidence.`,
    modelAnswer: `Supply shifts up by $${tax}. Vertical gap between buyer price and seller net price equals tax. Revenue = tax×Qt; DWL is foregone surplus from reduced quantity. More inelastic side bears larger share.`,
    rubricPoints: [
      { id: "shift", points: 1, desc: "Correct supply shift" },
      { id: "prices", points: 1, desc: "Buyer/seller prices labeled" },
      { id: "areas", points: 1, desc: "Revenue and DWL identified" },
      { id: "incidence", points: 1, desc: "Elasticity–incidence link" },
    ],
    goal: "Analyze a per-unit tax with graph and incidence reasoning.",
    steps: [
      "Shift supply vertically by the tax.",
      "Read new Pb and Ps from the graph.",
      "Connect incidence to relative elasticities.",
    ],
  });
}

function csMcq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const n = int(r, 3, 9);
  const code = unit.unit_code.toLowerCase();

  if (/recur/.test(code)) {
    const entries = shuffle(r, [
      {
        text: `Returns ${n} after ${n} decrements to the base case`,
        why: "Each call subtracts 1 until base case 0, then unwinds summing 1 n times.",
        correct: true,
      },
      { text: "Infinite recursion with no output", why: "Base case at 0 terminates.", correct: false },
      { text: "Always returns 0", why: "Ignores additive unwind.", correct: false },
      { text: `Returns ${n * n}`, why: "Confuses with a quadratic recurrence.", correct: false },
    ]);
    const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
    return mcqRow({
      examType,
      blueprint,
      unit,
      skillId,
      index,
      pool,
      difficulty,
      stem: `Consider: int f(int x){ if(x==0) return 0; return 1+f(x-1);} What does f(${n}) return?`,
      stimulus: "int f(int x){\n  if (x == 0) return 0;\n  return 1 + f(x - 1);\n}",
      stimulusType: "code",
      choices: options.map(({ id, text, why }) => ({ id, text, why })),
      correctId: options.find((o) => o.correct).id,
      goal: "Trace a simple linear recursion.",
      steps: [
        "Identify base case x==0 → 0.",
        `Each recursive step adds 1 while decreasing x.`,
        `After ${n} steps the sum is ${n}.`,
      ],
      hint: "Count how many times 1 is added before hitting the base case.",
    });
  }

  const arr = Array.from({ length: 4 }, () => int(r, 1, 9));
  const sum = arr.reduce((a, b) => a + b, 0);
  const entries = shuffle(r, [
    { text: String(sum), why: `Loop accumulates ${arr.join("+")}=${sum}.`, correct: true },
    { text: String(arr[0]), why: "Returns only the first element.", correct: false },
    { text: String(arr.length), why: "Confuses length with sum.", correct: false },
    { text: String(sum + arr.length), why: "Adds length to the sum incorrectly.", correct: false },
  ]);
  const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: `What value is printed after summing array {${arr.join(", ")}} with a standard indexed for-loop?`,
    choices: options.map(({ id, text, why }) => ({ id, text, why })),
    correctId: options.find((o) => o.correct).id,
    goal: "Trace array traversal accumulation.",
    steps: [
      "Initialize sum=0.",
      `Add each element: ${arr.join(", ")}.`,
      `Final sum is ${sum}.`,
    ],
    hint: "Track the running total after each iteration.",
  });
}

function csFrq(ctx) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  return frqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: `(${unit.unit_name}) Write a method that returns the count of even integers in a 1D array. Then explain one edge case (empty array or null—choose one consistent with AP CSA assumptions) and state the return value.`,
    modelAnswer:
      "Initialize count=0; for each value if value%2==0 count++; return count. Empty array → 0. Mentions loop bounds and no mutation required.",
    rubricPoints: [
      { id: "header", points: 1, desc: "Correct method signature/return type" },
      { id: "loop", points: 2, desc: "Correct traversal + even check" },
      { id: "edge", points: 1, desc: "Edge case handled/stated" },
    ],
    goal: "Implement and reason about an array traversal method.",
    steps: [
      "Write a clear loop over indices or for-each.",
      "Increment on even values.",
      "State empty → 0.",
    ],
  });
}

function ibLitMcqOrFrq(ctx, asFrq) {
  const { r, unit, examType, blueprint, index, pool, difficulty } = ctx;
  const skillId = pick(r, unit.skill_ids);
  const excerpt = pick(r, [
    `The narrator describes the harbor lights as "coins scattered on black cloth," then admits the metaphor collapses when fog erases the shoreline. Still, the speaker keeps counting—an act that feels less like inventory and more like prayer.`,
    `In the panel discussion, one critic calls the novel's ending "a refusal of closure," while another insists the final chapter simply relocates the conflict into the reader's unanswered questions.`,
  ]);
  if (asFrq || (blueprint.question_mix?.mcq_fraction ?? 1) < 0.05) {
    return frqRow({
      examType,
      blueprint,
      unit,
      skillId,
      index,
      pool,
      difficulty,
      stem: `Guided literary analysis (${unit.unit_name}): Using the excerpt, discuss how imagery and structure shape the reader's understanding of uncertainty. Develop a clear interpretive claim with two pieces of textual evidence.`,
      stimulus: excerpt,
      stimulusType: "passage",
      modelAnswer:
        "Claim: uncertainty is staged as incomplete knowing. Evidence 1: collapsing metaphor/fog. Evidence 2: counting-as-prayer or unresolved ending. Commentary links form to effect; closes by tying to global issue of meaning-making.",
      rubricPoints: [
        { id: "claim", points: 1, desc: "Clear interpretive claim" },
        { id: "evidence", points: 2, desc: "Two well-chosen references + analysis" },
        { id: "cohesion", points: 1, desc: "Coherent line of argument" },
      ],
      goal: "Produce a criterion-aligned literary interpretation.",
      steps: [
        "Form a precise claim about how the text works.",
        "Select two details that enact that claim.",
        "Analyze technique → effect → meaning.",
      ],
    });
  }
  const entries = shuffle(r, [
    {
      text: "It highlights the limits of figurative language when reality (fog/unresolved ending) intrudes",
      why: "The excerpt stages metaphor collapse / refusal of closure.",
      correct: true,
    },
    {
      text: "It proves the narrator is primarily interested in maritime insurance rates",
      why: "No financial analysis is present.",
      correct: false,
    },
    {
      text: "It establishes a comic tone through slapstick dialogue",
      why: "Tone is reflective/critical, not slapstick.",
      correct: false,
    },
    {
      text: "It argues that counting is always literal bookkeeping",
      why: "Counting is framed metaphorically as prayer.",
      correct: false,
    },
  ]);
  const options = entries.map((e, i) => ({ id: LETTERS[i], text: e.text, why: e.why, correct: e.correct }));
  return mcqRow({
    examType,
    blueprint,
    unit,
    skillId,
    index,
    pool,
    difficulty,
    stem: "Which statement best captures the effect of the excerpt's central image or critical claim?",
    stimulus: excerpt,
    stimulusType: "passage",
    choices: options.map(({ id, text, why }) => ({ id, text, why })),
    correctId: options.find((o) => o.correct).id,
    goal: "Interpret how imagery/structure produces meaning.",
    steps: [
      "Locate the key image or critical tension.",
      "Ask what readerly effect it creates.",
      "Choose the option that matches that effect without inventing content.",
    ],
  });
}

function ibLangB(ctx, asFrq) {
  if (asFrq) return languageFrq(ctx);
  return languageMcq({ ...ctx, langKey: examTypeLangKey(ctx.examType) });
}

function examTypeLangKey(examType) {
  if (examType.includes("SPANISH")) return "AP_SPANISH_LANG";
  if (examType.includes("FRENCH")) return "AP_FRENCH";
  if (examType.includes("ENG_B") || examType.includes("ENG_A")) return "AP_ENGLISH";
  return "AP_FRENCH";
}

function familyOf(examType) {
  // Language B before broader ENG_A / LIT substring checks
  if (/_B_(SL|HL)$/.test(examType) || /_B_SL$|_B_HL$/.test(examType)) return "ib_b";
  if (examType.includes("PHYSICS")) return "physics";
  if (
    examType.includes("CHINESE") ||
    examType.includes("FRENCH") ||
    examType.includes("GERMAN") ||
    examType.includes("ITALIAN") ||
    examType.includes("JAPANESE") ||
    examType.includes("LATIN") ||
    examType === "AP_SPANISH_LANG"
  )
    return "language";
  if (examType.includes("SPANISH_LIT")) return "lit";
  if (examType.includes("ECONOMICS")) return "econ";
  if (examType.includes("COMPUTER")) return "cs";
  if (
    examType.includes("LANG_A") ||
    examType.includes("ENG_A") ||
    examType.includes("LIT_PACK") ||
    examType.includes("LAL_PACK")
  )
    return "ib_lit";
  if (examType.includes("ENGLISH") || examType.includes("ENG_A")) return "english";
  return "english";
}

export function generateOneQuestion(ctx) {
  const family = familyOf(ctx.examType);
  const wantFrq = ctx.forceFrq === true || (ctx.forceFrq !== false && ctx.format === "frq");

  let q;
  if (family === "physics") q = wantFrq ? physicsFrq(ctx) : physicsMcq(ctx);
  else if (family === "language") q = wantFrq ? languageFrq(ctx) : languageMcq(ctx);
  else if (family === "lit" || family === "ib_lit") q = ibLitMcqOrFrq(ctx, wantFrq);
  else if (family === "english") q = wantFrq ? englishFrq(ctx) : englishMcq(ctx);
  else if (family === "econ") q = wantFrq ? econFrq(ctx) : econMcq(ctx);
  else if (family === "cs") q = wantFrq ? csFrq(ctx) : csMcq(ctx);
  else if (family === "ib_b") q = ibLangB(ctx, wantFrq);
  else q = wantFrq ? englishFrq(ctx) : englishMcq(ctx);

  // Uniqueness: wrap stem with rotating scenario so large banks / form slots differ
  const topic = ctx.unit?.unit_name || ctx.unit?.unit_code || ctx.examType;
  const seq = (ctx.index ?? 1) + (ctx.slot ?? 0) * 17;
  q.question_text = contextWrap(ctx.examType, topic, seq, q.question_text);
  return q;
}

export function validateQuestion(q) {
  const reasons = [];
  if (!q.question_text?.trim()) reasons.push("empty_stem");
  if (!q.explanation?.trim()) reasons.push("empty_explanation");
  if (!/\*\*Goal\.\*\*/i.test(q.explanation ?? "")) reasons.push("missing_goal");
  if (!/\*\*Step\s+1\.\*\*/i.test(q.explanation ?? "")) reasons.push("missing_step1");
  if (!/\*\*Answer:\*\*/i.test(q.explanation ?? "")) reasons.push("missing_answer");
  if (!q.hint?.trim()) reasons.push("empty_hint");
  if (!q.unit_code) reasons.push("missing_unit_code");
  if (!q.external_id) reasons.push("missing_external_id");
  if (!q.source) reasons.push("missing_source");
  if (!Array.isArray(q.options) || q.options.length < 2) reasons.push("options_<2");
  for (const o of q.options ?? []) {
    if (!o.id || !o.text) reasons.push("option_missing_id_text");
    if (!o.explanation?.trim()) reasons.push("option_empty_explanation");
  }
  if (q.question_type === "multiple_choice") {
    const correct = (q.options ?? []).filter((o) => o.is_correct);
    if (correct.length !== 1) reasons.push("mcq_need_one_correct");
    if (q.correct_answer && !q.options.some((o) => o.id === q.correct_answer))
      reasons.push("correct_answer_mismatch");
  }
  if (q.desmos_recommended && !/\*\*In Desmos\.\*\*/i.test(q.explanation ?? "")) {
    // soft: only if graphing policy — still flag
    reasons.push("desmos_flag_without_block");
  }
  return { ok: reasons.length === 0, reasons };
}

function distribute(units, total) {
  const sumQ = units.reduce((s, u) => s + (u.quota || 1), 0);
  const plan = units.map((u) => ({
    unit: u,
    n: Math.max(1, Math.floor((total * (u.quota || 1)) / sumQ)),
  }));
  let assigned = plan.reduce((s, p) => s + p.n, 0);
  let i = 0;
  while (assigned < total) {
    plan[i % plan.length].n++;
    assigned++;
    i++;
  }
  while (assigned > total && plan.some((p) => p.n > 1)) {
    const p = plan[i % plan.length];
    if (p.n > 1) {
      p.n--;
      assigned--;
    }
    i++;
  }
  return plan;
}

function pickUnitFromSpread(units, spread, slot) {
  const entry = spread[(slot - 1) % spread.length];
  const uCode = entry?.unit_code;
  return units.find((u) => u.unit_code === uCode) ?? units[0];
}

function sectionIsMcq(sec) {
  if (!sec) return false;
  if (sec.format === "mcq") return true;
  if (sec.format === "frq" || sec.format === "oral") return false;
  return /mcq|interpretive|listening|reading|multiple/i.test(sec.key || "");
}

/**
 * Generate unit bank + unit-test + full-exam form pools (Forms A–J).
 * @param {object} blueprint
 * @param {{
 *   unitBank?: number,
 *   unitTestPerUnit?: number,
 *   formAMcq?: number,
 *   formAFrq?: number,
 *   formLetters?: string[],
 *   formFromBlueprint?: boolean,
 *   formMcqCap?: number,
 *   formFrqCap?: number,
 *   startIndex?: number
 * }} opts
 */
export function generateCourseBank(blueprint, opts = {}) {
  const examType = blueprint.exam_type;
  const units = blueprint.units ?? [];
  const unitBankTarget = opts.unitBank ?? 48;
  const utPerUnit = opts.unitTestPerUnit ?? 1; // V1 skeleton
  const formLetters = (opts.formLetters ?? ["A"]).map((l) => String(l).toUpperCase());
  const formFromBlueprint = opts.formFromBlueprint !== false;
  const formMcqCap = opts.formMcqCap ?? 60;
  const formFrqCap = opts.formFrqCap ?? 8;
  const startIndex = opts.startIndex ?? 1;

  const mcqFrac = blueprint.question_mix?.mcq_fraction ?? 0.5;
  const rows = [];
  const plan = distribute(units, unitBankTarget);
  let idx = startIndex;

  for (const { unit, n } of plan) {
    for (let k = 0; k < n; k++) {
      const r = rng(seedFrom(examType, "bank", unit.unit_code, idx));
      const difficulty = DIFFS[idx % 3];
      const forceFrq = mcqFrac <= 0 ? true : r() > mcqFrac;
      const q = generateOneQuestion({
        r,
        unit,
        examType,
        blueprint,
        index: idx,
        pool: "unit_bank",
        difficulty,
        forceFrq,
        format: forceFrq ? "frq" : "mcq",
      });
      const v = validateQuestion(q);
      if (!v.ok) {
        // retry once as MCQ
        const q2 = generateOneQuestion({
          r: rng(seedFrom(examType, "bank_retry", unit.unit_code, idx)),
          unit,
          examType,
          blueprint,
          index: idx,
          pool: "unit_bank",
          difficulty,
          forceFrq: false,
          format: "mcq",
        });
        rows.push(q2);
      } else {
        rows.push(q);
      }
      idx++;
    }
  }

  // Unit-test V1 skeleton: utPerUnit questions per unit, source=unit_test
  for (const unit of units) {
    for (let k = 0; k < utPerUnit; k++) {
      const r = rng(seedFrom(examType, "ut", unit.unit_code, k, idx));
      const q = generateOneQuestion({
        r,
        unit,
        examType,
        blueprint,
        index: idx,
        pool: "unit_test",
        difficulty: "medium",
        forceFrq: false,
        format: "mcq",
      });
      q.source = UNIT_TEST_SOURCE;
      q.source_metadata = {
        ...q.source_metadata,
        pool: "unit_test",
        variant: "V1",
        unit_code: unit.unit_code,
      };
      q.external_id = externalId(examType, "ut_v1", unit.unit_code, k + 1);
      rows.push(q);
      idx++;
    }
  }

  // Forms A–J additive pools (blueprint section lengths when available)
  const allForms = blueprint.full_exam_forms ?? [];
  for (const letter of formLetters) {
    const form =
      allForms.find((f) => f.form_id === letter) ??
      (letter === "A" ? allForms[0] : null);
    if (!form?.sections?.length) continue;

    const spread = form.unit_spread?.length
      ? form.unit_spread
      : units.map((u) => ({ unit_code: u.unit_code, target_share: 1 / Math.max(1, units.length) }));

    const mcqSecs = form.sections.filter((s) => sectionIsMcq(s));
    const frqSecs = form.sections.filter((s) => !sectionIsMcq(s));

    // Fallback skeleton sizes if blueprint counts missing / formFromBlueprint off
    let defaultMcq = opts.formAMcq ?? 6;
    let defaultFrq = opts.formAFrq ?? 1;
    if (formFromBlueprint) {
      const bpMcq = mcqSecs.reduce((s, sec) => s + (sec.question_count || 0), 0);
      const bpFrq = frqSecs.reduce((s, sec) => s + (sec.question_count || 0), 0);
      if (bpMcq > 0) defaultMcq = Math.min(bpMcq, formMcqCap);
      if (bpFrq > 0) defaultFrq = Math.min(bpFrq, formFrqCap);
      // IB-style all-FRQ forms: treat paper/io/hle counts as FRQ pool
      if (bpMcq === 0 && bpFrq > 0) {
        defaultMcq = 0;
        defaultFrq = Math.min(bpFrq, formFrqCap);
      }
    }

    // Distribute MCQ slots across MCQ sections (or first section)
    const mcqTargets = mcqSecs.length
      ? mcqSecs.map((sec) => ({
          sec,
          n: formFromBlueprint
            ? Math.min(sec.question_count || 0, formMcqCap)
            : Math.ceil(defaultMcq / mcqSecs.length),
        }))
      : defaultMcq > 0
        ? [{ sec: form.sections[0], n: defaultMcq }]
        : [];

    // If blueprint per-section sum was capped oddly, ensure we hit defaultMcq
    let mcqAssigned = mcqTargets.reduce((s, t) => s + t.n, 0);
    if (formFromBlueprint && mcqSecs.length && mcqAssigned === 0 && defaultMcq > 0) {
      mcqTargets.push({ sec: mcqSecs[0] || form.sections[0], n: defaultMcq });
      mcqAssigned = defaultMcq;
    }
    if (mcqAssigned > defaultMcq && defaultMcq > 0) {
      // trim to cap
      let left = defaultMcq;
      for (const t of mcqTargets) {
        t.n = Math.min(t.n, left);
        left -= t.n;
      }
    }

    let slot = 0;
    for (const { sec, n } of mcqTargets) {
      for (let i = 0; i < n; i++) {
        slot++;
        const unit = pickUnitFromSpread(units, spread, slot);
        const r = rng(seedFrom(examType, `form${letter}`, "mcq", slot));
        const q = generateOneQuestion({
          r,
          unit,
          examType,
          blueprint,
          index: idx,
          slot,
          pool: `form_${letter}`,
          difficulty: DIFFS[slot % 3],
          forceFrq: false,
          format: "mcq",
        });
        q.source = FULL_FORM_SOURCE;
        q.section = sec?.key ?? "mcq";
        q.external_id = externalId(examType, `form${letter}_mcq`, unit.unit_code, slot);
        q.source_metadata = {
          ...q.source_metadata,
          pool: `form_${letter}`,
          form_letter: letter,
          module_key: sec?.key ?? "mcq",
          slot,
          unit_code: unit.unit_code,
        };
        rows.push(q);
        idx++;
      }
    }

    const frqTargets = frqSecs.length
      ? frqSecs.map((sec) => ({
          sec,
          n: formFromBlueprint
            ? Math.min(sec.question_count || 0, formFrqCap)
            : Math.ceil(defaultFrq / frqSecs.length),
        }))
      : defaultFrq > 0
        ? [{ sec: form.sections[form.sections.length - 1], n: defaultFrq }]
        : [];

    let frqAssigned = frqTargets.reduce((s, t) => s + t.n, 0);
    if (formFromBlueprint && frqSecs.length && frqAssigned === 0 && defaultFrq > 0) {
      frqTargets.push({ sec: frqSecs[0], n: defaultFrq });
      frqAssigned = defaultFrq;
    }
    if (frqAssigned > defaultFrq && defaultFrq > 0) {
      let left = defaultFrq;
      for (const t of frqTargets) {
        t.n = Math.min(t.n, left);
        left -= t.n;
      }
    }

    let frqSlot = 0;
    for (const { sec, n } of frqTargets) {
      for (let i = 0; i < n; i++) {
        frqSlot++;
        const unit = pickUnitFromSpread(units, spread, frqSlot);
        const r = rng(seedFrom(examType, `form${letter}`, "frq", frqSlot));
        const q = generateOneQuestion({
          r,
          unit,
          examType,
          blueprint,
          index: idx,
          slot: frqSlot,
          pool: `form_${letter}`,
          difficulty: "hard",
          forceFrq: true,
          format: "frq",
        });
        q.source = FULL_FORM_SOURCE;
        q.section = sec?.key ?? "frq";
        q.external_id = externalId(examType, `form${letter}_frq`, unit.unit_code, frqSlot);
        q.source_metadata = {
          ...q.source_metadata,
          pool: `form_${letter}`,
          form_letter: letter,
          module_key: sec?.key ?? "frq",
          slot: frqSlot,
          unit_code: unit.unit_code,
        };
        rows.push(q);
        idx++;
      }
    }
  }

  return rows;
}

export function summarizeRows(rows) {
  const bySource = {};
  const byUnit = {};
  for (const q of rows) {
    bySource[q.source] = (bySource[q.source] ?? 0) + 1;
    byUnit[q.unit_code] = (byUnit[q.unit_code] ?? 0) + 1;
  }
  return { total: rows.length, bySource, byUnit };
}
