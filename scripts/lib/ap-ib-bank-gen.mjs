/**
 * Reusable AP/IB question bank generator.
 * Reads course-research blueprints; emits platform question rows with
 * SAT-parity Step 1/2/3 + distractor explanations, unit_code, calculator_allowed,
 * FRQ rubrics, source scholaris_ib_gen / scholaris_ap_gen, unique external_id.
 */
import { createHash, randomUUID } from "node:crypto";
import { readFileSync, existsSync } from "node:fs";
import { join } from "node:path";

export const IB_SOURCE = "scholaris_ib_gen";
export const AP_SOURCE = "scholaris_ap_gen";
export const UNIT_TEST_SOURCE = "unit_test";
export const FULL_FORM_SOURCE = "full_exam_form";
export const GENERATOR = "generate-ap-ib-bank.mjs";

const LETTERS = ["A", "B", "C", "D"];
const DIFFS = ["easy", "medium", "hard"];
const FORM_LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"];

/** Scenario wrappers so stems are not identical clones of the concept bank. */
const STEM_CONTEXTS = [
  (topic, n) => `In a lab investigation of ${topic} (trial ${n})`,
  (topic, n) => `A field team studying ${topic} records dataset #${n}`,
  (topic, n) => `During Paper-style practice on ${topic}, item ${n}`,
  (topic, n) => `An IA draft examining ${topic} (case ${n})`,
  (topic, n) => `At a clinic/workshop on ${topic}, scenario ${n}`,
  (topic, n) => `Comparing two models of ${topic} (pair ${n})`,
  (topic, n) => `After a calibration error related to ${topic} (log ${n})`,
  (topic, n) => `A policy brief citing ${topic} evidence (memo ${n})`,
];

const HUM_CONTEXTS = [
  (topic, n) => `Source set ${n} on ${topic}`,
  (topic, n) => `Case study ${n} involving ${topic}`,
  (topic, n) => `Seminar debate ${n}: ${topic}`,
  (topic, n) => `Archive packet ${n} about ${topic}`,
  (topic, n) => `Simulation round ${n} focused on ${topic}`,
  (topic, n) => `Comparative brief ${n} on ${topic}`,
];

const MATH_CONTEXTS = [
  (topic, n) => `Exam-style item ${n} (${topic})`,
  (topic, n) => `GDC-allowed drill ${n} on ${topic}`,
  (topic, n) => `No-calculator fluency check ${n}: ${topic}`,
  (topic, n) => `Exploration warm-up ${n} (${topic})`,
  (topic, n) => `Paper 3-style enquiry ${n} about ${topic}`,
];

function contextWrap(family, topic, seq, stem) {
  const n = seq + 1;
  if (family === "math") {
    const w = MATH_CONTEXTS[seq % MATH_CONTEXTS.length](topic, n);
    return `${w}. ${stem}`;
  }
  if (family === "science") {
    const w = STEM_CONTEXTS[seq % STEM_CONTEXTS.length](topic, n);
    return `${w}: ${stem}`;
  }
  const w = HUM_CONTEXTS[seq % HUM_CONTEXTS.length](topic, n);
  return `${w}. ${stem}`;
}

export const BATCH3_PRIORITY = [
  "IB_MATH_AA_HL",
  "IB_MATH_AI_HL",
  "IB_BIOLOGY_HL",
  "IB_CHEMISTRY_HL",
  "IB_PHYSICS_HL",
  "IB_HISTORY_HL",
  "IB_ECONOMICS_HL",
  "IB_PSYCHOLOGY_HL",
  "IB_TOK",
];

/** Wave R research batch 1 — 28 AP courses */
export const BATCH1_COURSES = [
  "AP_SEMINAR",
  "AP_RESEARCH",
  "AP_ART_HISTORY",
  "AP_MUSIC_THEORY",
  "AP_2D_ART_DESIGN",
  "AP_3D_ART_DESIGN",
  "AP_DRAWING",
  "AP_ENGLISH_LANG",
  "AP_ENGLISH_LIT",
  "AP_AFRICAN_AMERICAN_STUDIES",
  "AP_COMPARATIVE_GOVERNMENT",
  "AP_EUROPEAN_HISTORY",
  "AP_HUMAN_GEOGRAPHY",
  "AP_MACROECONOMICS",
  "AP_MICROECONOMICS",
  "AP_PSYCHOLOGY",
  "AP_US_GOVERNMENT",
  "AP_US_HISTORY",
  "AP_WORLD_HISTORY",
  "AP_CALCULUS_AB",
  "AP_CALCULUS_BC",
  "AP_PRECALCULUS",
  "AP_STATISTICS",
  "AP_COMPUTER_SCIENCE_A",
  "AP_COMPUTER_SCIENCE_PRINCIPLES",
  "AP_BIOLOGY",
  "AP_CHEMISTRY",
  "AP_ENVIRONMENTAL_SCIENCE",
];

export const BATCH1_PRIORITY = [
  "AP_CALCULUS_AB",
  "AP_CALCULUS_BC",
  "AP_STATISTICS",
  "AP_BIOLOGY",
  "AP_CHEMISTRY",
  "AP_ENGLISH_LANG",
  "AP_ENGLISH_LIT",
  "AP_US_HISTORY",
  "AP_PSYCHOLOGY",
  "AP_MACROECONOMICS",
  "AP_MICROECONOMICS",
];

/** Placeholder options so chk_valid_options accepts FRQ rows (≥2 entries). */
export function frqPlaceholderOptions() {
  return [
    { id: "RUBRIC", text: "Scored by rubric (free response)", is_correct: true },
    { id: "_", text: "(student free response)", is_correct: false },
  ];
}

function mulberry32(a) {
  return function () {
    let t = (a += 0x6d2b79f5);
    t = Math.imul(t ^ (t >>> 15), t | 1);
    t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

function seedInt(...parts) {
  const h = createHash("sha256").update(parts.join("|")).digest();
  return h.readUInt32BE(0);
}

function pick(rng, arr) {
  return arr[Math.floor(rng() * arr.length)];
}

function shuffle(rng, arr) {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

function esc(s) {
  return String(s ?? "").replace(/'/g, "''");
}

function sqlLit(s) {
  if (s == null) return "NULL";
  return `'${esc(s)}'`;
}

function sqlJson(obj) {
  if (obj == null) return "NULL";
  return `'${esc(JSON.stringify(obj))}'::jsonb`;
}

function sqlArr(arr) {
  if (!arr?.length) return "NULL";
  return `ARRAY[${arr.map((x) => sqlLit(x)).join(",")}]::text[]`;
}

function onePrepMcq({ step1, step2, step3, correctId, distractors }) {
  let expl = `Step 1 — ${step1.title}\n${step1.body}\n\nStep 2 — ${step2.title}\n${step2.body}\n\nStep 3 — ${step3.title}\n${step3.body}\n\nDistractor analysis:`;
  for (const [id, reason] of Object.entries(distractors)) {
    expl += `\n- ${id}: ${reason}`;
  }
  return expl;
}

function onePrepFrq({ step1, step2, step3 }) {
  return `Step 1 — ${step1.title}\n${step1.body}\n\nStep 2 — ${step2.title}\n${step2.body}\n\nStep 3 — ${step3.title}\n${step3.body}\n\nMarking guidance:\nAward marks for accurate use of syllabus terms, clear reasoning, and (where required) a justified conclusion. Partial credit for correct method with arithmetic slips.`;
}

function defaultRubric(maxPoints = 6) {
  const a = Math.max(1, Math.floor(maxPoints / 3));
  const b = Math.max(1, Math.floor(maxPoints / 3));
  const c = Math.max(1, maxPoints - a - b);
  return {
    criteria: [
      {
        id: "knowledge",
        name: "Knowledge & understanding",
        max_points: a,
        descriptors: "Accurate use of course concepts, definitions, and terminology.",
      },
      {
        id: "application",
        name: "Application & analysis",
        max_points: b,
        descriptors: "Applies concepts to the stimulus/context; shows analytical steps.",
      },
      {
        id: "evaluation",
        name: "Synthesis & evaluation",
        max_points: c,
        descriptors: "Justified conclusion, evaluation, or reflection where required.",
      },
    ],
    max_points: maxPoints,
    scale: "IB_markband_v1",
  };
}

/** DB chk_valid_options requires options array length ≥ 2 with id+text even for FRQ. */
function frqOptionsPlaceholder(maxPoints) {
  return [
    { id: "response", text: "Student free-response answer" },
    { id: "rubric", text: `Mark against rubric (max ${maxPoints} points)` },
  ];
}

/** questions_subject_check only allows math | reading_writing | NULL */
function subjectForExam(examType) {
  if (/MATH_AA|MATH_AI|AP_CALCULUS|AP_PRECALCULUS|AP_STATISTICS/.test(examType)) return "math";
  if (/AP_ENGLISH|IB_ENG_A/.test(examType)) return "reading_writing";
  return null;
}

function calcAllowed(bp, sectionIdx, qIndex, questionType = null) {
  // AP Wave R blueprints: calculator_policy.sections (Calc AB/BC Part A/B rules)
  const apPol = bp.calculator_policy;
  if (apPol?.sections?.length) {
    const withFlag = apPol.sections.filter((s) => typeof s.calculator_allowed === "boolean");
    if (withFlag.length) {
      const et = String(bp.exam_type || "");
      if (et === "AP_CALCULUS_AB" || et === "AP_CALCULUS_BC") {
        // Official mix ≈ 1/3 calculator (MCQ Part B 15/45; FRQ Part A 2/6).
        if (questionType === "free_response" || questionType === "short_answer") {
          return qIndex % 3 === 0; // ~33% calc FRQ ≈ Part A
        }
        return qIndex % 3 === 2; // ~33% calc MCQ ≈ Part B
      }
      const sec = withFlag[sectionIdx % withFlag.length];
      return Boolean(sec.calculator_allowed);
    }
    if (apPol.default === "graphing" || apPol.default === "scientific") return true;
    if (apPol.default === "none") return false;
  }

  const calc = bp.calculator ?? {};
  const per = calc.per_section ?? [];
  if (per.length) {
    const sec = per[sectionIdx % per.length];
    if (typeof sec.calculator_allowed === "boolean") return sec.calculator_allowed;
  }
  if (calc.policy === "graphing" || calc.policy === "scientific") return true;
  if (calc.policy === "graphing_split") {
    // AA: alternate no-GDC / GDC papers
    return qIndex % 3 !== 0;
  }
  return Boolean(calc.default_calculator_allowed);
}

/** Normalize research blueprint section_map → assembler module slots. */
function normalizeSectionMap(bp) {
  const sm = bp.full_exam_forms?.section_map ?? [];
  const appKeys = {
    AP_BIOLOGY: ["section_1_mcq", "section_2_frq"],
  };
  return sm.map((s, i) => {
    const formatRaw = String(s.format || s.question_format || "").toLowerCase();
    const label = String(s.label || s.section || s.section_id || "");
    const isFrq =
      /frq|free|saq|dbq|leq|aaq|ebq|short|essay/.test(formatRaw) ||
      /frq|saq|dbq|leq|aaq|ebq|free.?response/.test(label.toLowerCase()) ||
      /frq|saq|dbq|leq|aaq|ebq/.test(String(s.section_id || ""));
    const slotCount =
      Number(s.slot_count ?? s.slots ?? (isFrq ? 4 : 20)) || (isFrq ? 4 : 20);
    let calculator_allowed = s.calculator_allowed;
    if (typeof calculator_allowed !== "boolean") {
      const c = String(s.calculator || "").toLowerCase();
      if (c === "none" || c === "no" || c === "false") calculator_allowed = false;
      else if (c) calculator_allowed = true;
      else calculator_allowed = !(String(bp.exam_type).includes("CALCULUS") && /no.?calc|part.?a/i.test(label));
    }
    const module_key =
      appKeys[bp.exam_type]?.[i] || s.section_id || s.key || `section_${i + 1}`;
    return {
      module_key,
      label: label || module_key,
      format: isFrq ? "frq" : "mcq",
      slot_count: slotCount,
      calculator_allowed: Boolean(calculator_allowed),
    };
  });
}

function sectionFor(bp, idx) {
  const apSecs = bp.calculator_policy?.sections?.map((s) => s.section_id || s.label).filter(Boolean);
  if (apSecs?.length) return apSecs[idx % apSecs.length];
  const secs = bp.sections?.length ? bp.sections : ["Paper 1"];
  return secs[idx % secs.length];
}

function familyOf(examType) {
  const et = String(examType || "");
  if (/MATH_AA|MATH_AI|AP_CALCULUS|AP_PRECALCULUS|AP_STATISTICS/.test(et)) return "math";
  if (
    /BIOLOGY|CHEMISTRY|PHYSICS|SEHS|ESS|COMPUTER_SCIENCE|DESIGN_TECHNOLOGY|ENVIRONMENTAL_SCIENCE/.test(
      et,
    )
  )
    return "science";
  if (
    /VISUAL_ARTS|MUSIC|THEATRE|FILM|DANCE|AP_ART_HISTORY|AP_MUSIC_THEORY|AP_2D_ART|AP_3D_ART|AP_DRAWING/.test(
      et,
    )
  )
    return "arts";
  if (/LANG_|CLASSICAL|ENG_|SPANISH|FRENCH|TOK|EE|AP_ENGLISH|AP_SEMINAR|AP_RESEARCH/.test(et))
    return "language_core";
  return "humanities";
}

function mcqShareOf(bp) {
  const m = bp.question_mix ?? {};
  if (typeof m.mcq_ratio === "number") return m.mcq_ratio;
  if (typeof m.mcq === "number") return m.mcq;
  return 0.5;
}

// ─── Concept banks (parametric) ─────────────────────────────────────────────

const MATH_TEMPLATES = [
  {
    id: "seq_sum",
    build(rng, unit) {
      const a = 2 + Math.floor(rng() * 8);
      const d = 1 + Math.floor(rng() * 5);
      const n = 8 + Math.floor(rng() * 12);
      const sum = (n / 2) * (2 * a + (n - 1) * d);
      const wrong = [sum + d, sum - a, (n / 2) * (a + n * d), a + (n - 1) * d];
      return {
        stem: `An arithmetic sequence has first term $a=${a}$ and common difference $d=${d}$. What is the sum of the first ${n} terms?`,
        correct: String(sum),
        wrongs: wrong.map(String),
        steps: {
          step1: { title: "Recall the sum formula", body: `For an arithmetic series, $S_n=\\frac{n}{2}\\bigl(2a+(n-1)d\\bigr)$.` },
          step2: {
            title: "Substitute values",
            body: `$S_{${n}}=\\frac{${n}}{2}\\bigl(2(${a})+(${n}-1)(${d})\\bigr)=\\frac{${n}}{2}\\bigl(${2 * a}+${(n - 1) * d}\\bigr)$.`,
          },
          step3: { title: "Evaluate", body: `$S_{${n}}=${sum}$.` },
        },
        topicHint: unit.topics?.[0] ?? "sequences",
      };
    },
  },
  {
    id: "quad_root",
    build(rng, unit) {
      const r1 = -4 + Math.floor(rng() * 9);
      const r2 = r1 + 1 + Math.floor(rng() * 5);
      const b = -(r1 + r2);
      const c = r1 * r2;
      const correct = `x=${r1} or x=${r2}`;
      return {
        stem: `Solve $x^2 ${b >= 0 ? `+ ${b}` : `- ${-b}`}x ${c >= 0 ? `+ ${c}` : `- ${-c}`}=0$.`,
        correct,
        wrongs: [
          `x=${-r1} or x=${-r2}`,
          `x=${r1 + r2} or x=${r1 * r2}`,
          `x=${r1} only`,
          `x=${b} or x=${c}`,
        ].slice(0, 3),
        steps: {
          step1: { title: "Factor or use quadratic formula", body: `Look for integers with product ${c} and sum ${-b}.` },
          step2: { title: "Factor", body: `$(x${r1 >= 0 ? `-${r1}` : `+${-r1}`})(x${r2 >= 0 ? `-${r2}` : `+${-r2}`})=0$.` },
          step3: { title: "Roots", body: `Therefore ${correct}.` },
        },
        topicHint: unit.topics?.[0] ?? "functions",
      };
    },
  },
  {
    id: "derivative",
    build(rng, unit) {
      const a = 1 + Math.floor(rng() * 5);
      const n = 2 + Math.floor(rng() * 4);
      const x0 = 1 + Math.floor(rng() * 4);
      const val = a * n * x0 ** (n - 1);
      return {
        stem: `If $f(x)=${a}x^{${n}}$, what is $f'(${x0})$?`,
        correct: String(val),
        wrongs: [String(a * x0 ** n), String(a * n * x0 ** n), String(a * (n - 1) * x0 ** (n - 1))],
        steps: {
          step1: { title: "Differentiate power", body: `$f'(x)=${a}\\cdot${n}x^{${n - 1}}=${a * n}x^{${n - 1}}$.` },
          step2: { title: "Evaluate at $x=${x0}$", body: `$f'(${x0})=${a * n}(${x0})^{${n - 1}}$.` },
          step3: { title: "Simplify", body: `$f'(${x0})=${val}$.` },
        },
        topicHint: unit.topics?.[0] ?? "calculus",
      };
    },
  },
  {
    id: "binom_prob",
    build(rng, unit) {
      const n = 5 + Math.floor(rng() * 4);
      const k = 1 + Math.floor(rng() * Math.min(3, n - 1));
      const p = [0.2, 0.25, 0.3, 0.4][Math.floor(rng() * 4)];
      const C = (nn, kk) => {
        let num = 1,
          den = 1;
        for (let i = 0; i < kk; i++) {
          num *= nn - i;
          den *= i + 1;
        }
        return num / den;
      };
      const prob = C(n, k) * p ** k * (1 - p) ** (n - k);
      const rounded = Math.round(prob * 1000) / 1000;
      return {
        stem: `A random variable $X\\sim B(${n},${p})$. Approximate $P(X=${k})$ to 3 d.p.`,
        correct: String(rounded),
        wrongs: [
          String(Math.round(C(n, k) * p ** k * 1000) / 1000),
          String(Math.round(p ** k * 1000) / 1000),
          String(Math.round(C(n, k) * p * 1000) / 1000),
        ],
        steps: {
          step1: {
            title: "Binomial PMF",
            body: `$P(X=k)=\\binom{n}{k}p^k(1-p)^{n-k}$.`,
          },
          step2: {
            title: "Substitute",
            body: `$\\binom{${n}}{${k}}(${p})^{${k}}(${1 - p})^{${n - k}}$.`,
          },
          step3: { title: "Compute", body: `≈ ${rounded} (3 d.p.).` },
        },
        topicHint: unit.topics?.[0] ?? "probability",
      };
    },
  },
  {
    id: "log_solve",
    build(rng, unit) {
      const b = [2, 3, 5, 10][Math.floor(rng() * 4)];
      const exp = 2 + Math.floor(rng() * 3);
      const x = b ** exp;
      return {
        stem: `Solve $\\log_{${b}} x = ${exp}$.`,
        correct: String(x),
        wrongs: [String(b * exp), String(exp ** b), String(b + exp)],
        steps: {
          step1: { title: "Convert to exponential", body: `$\\log_b x = k \\iff x=b^k$.` },
          step2: { title: "Apply", body: `$x=${b}^{${exp}}$.` },
          step3: { title: "Evaluate", body: `$x=${x}$.` },
        },
        topicHint: unit.topics?.[0] ?? "exponentials/logs",
      };
    },
  },
  {
    id: "trig_exact",
    build(rng, unit) {
      const angles = [
        { deg: 30, sin: "1/2", cos: "√3/2" },
        { deg: 45, sin: "√2/2", cos: "√2/2" },
        { deg: 60, sin: "√3/2", cos: "1/2" },
      ];
      const a = pick(rng, angles);
      const useSin = rng() < 0.5;
      const correct = useSin ? a.sin : a.cos;
      const fn = useSin ? "sin" : "cos";
      return {
        stem: `Exact value of $${fn}(${a.deg}^\\circ)$?`,
        correct,
        wrongs: shuffle(rng, [a.sin, a.cos, "1", "0", "√3", "1/√2"].filter((x) => x !== correct)).slice(0, 3),
        steps: {
          step1: { title: "Recall special angles", body: `Use the ${a.deg}°–${90 - a.deg}°–90° triangle ratios.` },
          step2: { title: "Identify ratio", body: `$${fn}(${a.deg}^\\circ)=${correct}$.` },
          step3: { title: "Confirm", body: `No calculator needed for exact special-angle values.` },
        },
        topicHint: unit.topics?.[0] ?? "trigonometry",
      };
    },
  },
  {
    id: "exp_growth",
    build(rng, unit) {
      const P0 = 100 + Math.floor(rng() * 400);
      const r = [0.02, 0.05, 0.08, 0.1][Math.floor(rng() * 4)];
      const t = 2 + Math.floor(rng() * 6);
      const val = Math.round(P0 * (1 + r) ** t * 100) / 100;
      return {
        stem: `A quantity starts at ${P0} and grows by ${r * 100}% each year. Approximate its value after ${t} years (2 d.p.).`,
        correct: String(val),
        wrongs: [
          String(Math.round(P0 * (1 + r * t) * 100) / 100),
          String(Math.round(P0 * r ** t * 100) / 100),
          String(Math.round(P0 * (1 + r) * t * 100) / 100),
        ],
        steps: {
          step1: { title: "Compound growth", body: `$P(t)=P_0(1+r)^t$.` },
          step2: { title: "Substitute", body: `$P(${t})=${P0}(1+${r})^{${t}}$.` },
          step3: { title: "Evaluate", body: `≈ ${val}.` },
        },
        topicHint: unit.topics?.[0] ?? "exponentials",
      };
    },
  },
  {
    id: "vec_dot",
    build(rng, unit) {
      const a1 = 1 + Math.floor(rng() * 5);
      const a2 = 1 + Math.floor(rng() * 5);
      const b1 = 1 + Math.floor(rng() * 5);
      const b2 = -3 + Math.floor(rng() * 7);
      const dot = a1 * b1 + a2 * b2;
      return {
        stem: `If $\\mathbf{a}=\\langle ${a1},${a2}\\rangle$ and $\\mathbf{b}=\\langle ${b1},${b2}\\rangle$, find $\\mathbf{a}\\cdot\\mathbf{b}$.`,
        correct: String(dot),
        wrongs: [String(a1 * b1 - a2 * b2), String(a1 + a2 + b1 + b2), String(a1 * b2 + a2 * b1)],
        steps: {
          step1: { title: "Dot product", body: `$\\mathbf{a}\\cdot\\mathbf{b}=a_1b_1+a_2b_2$.` },
          step2: { title: "Compute", body: `${a1}(${b1})+${a2}(${b2}).` },
          step3: { title: "Result", body: `${dot}.` },
        },
        topicHint: unit.topics?.[0] ?? "vectors",
      };
    },
  },
  {
    id: "integral_poly",
    build(rng, unit) {
      const a = 1 + Math.floor(rng() * 4);
      const n = 2 + Math.floor(rng() * 3);
      const x1 = 1;
      const x2 = 2 + Math.floor(rng() * 3);
      const F = (x) => (a / (n + 1)) * x ** (n + 1);
      const val = F(x2) - F(x1);
      const rounded = Math.round(val * 1000) / 1000;
      return {
        stem: `Evaluate $\\displaystyle\\int_{${x1}}^{${x2}} ${a}x^{${n}}\\,dx$.`,
        correct: String(rounded),
        wrongs: [
          String(Math.round((a * (x2 ** n - x1 ** n)) * 1000) / 1000),
          String(Math.round((a * n * (x2 - x1)) * 1000) / 1000),
          String(Math.round(F(x2) * 1000) / 1000),
        ],
        steps: {
          step1: { title: "Antiderivative", body: `$\\int ${a}x^{${n}}dx=\\frac{${a}}{${n + 1}}x^{${n + 1}}+C$.` },
          step2: { title: "Evaluate bounds", body: `F(${x2})-F(${x1}).` },
          step3: { title: "Simplify", body: `${rounded}.` },
        },
        topicHint: unit.topics?.[0] ?? "integration",
      };
    },
  },
  {
    id: "normal_z",
    build(rng, unit) {
      const mu = 50 + Math.floor(rng() * 40);
      const sigma = 5 + Math.floor(rng() * 10);
      const x = mu + sigma * (1 + Math.floor(rng() * 2));
      const z = Math.round(((x - mu) / sigma) * 100) / 100;
      return {
        stem: `If $X\\sim N(${mu},${sigma}^2)$, the z-score of $x=${x}$ is:`,
        correct: String(z),
        wrongs: [
          String(Math.round(((mu - x) / sigma) * 100) / 100),
          String(Math.round(((x - mu) / (sigma * sigma)) * 100) / 100),
          String(x - mu),
        ],
        steps: {
          step1: { title: "Standardize", body: `$z=\\frac{x-\\mu}{\\sigma}$.` },
          step2: { title: "Substitute", body: `$z=\\frac{${x}-${mu}}{${sigma}}$.` },
          step3: { title: "Compute", body: `$z=${z}$.` },
        },
        topicHint: unit.topics?.[0] ?? "distributions",
      };
    },
  },
];

const SCIENCE_FACTS = {
  biology: [
    {
      q: "Which organelle is the primary site of ATP synthesis via oxidative phosphorylation?",
      correct: "Mitochondrion",
      wrong: ["Ribosome", "Golgi apparatus", "Lysosome"],
      why: "The inner mitochondrial membrane houses the electron transport chain and ATP synthase.",
    },
    {
      q: "During DNA replication, which enzyme unwinds the double helix?",
      correct: "Helicase",
      wrong: ["Ligase", "Primase", "DNA polymerase I"],
      why: "Helicase breaks hydrogen bonds between base pairs ahead of the replication fork.",
    },
    {
      q: "Which process produces the greatest net ATP per glucose under aerobic conditions?",
      correct: "Oxidative phosphorylation",
      wrong: ["Glycolysis", "Krebs cycle substrate-level only", "Fermentation"],
      why: "Most ATP comes from chemiosmosis driven by the ETC, not substrate-level phosphorylation.",
    },
    {
      q: "In meiosis I, homologous chromosomes separate during which stage?",
      correct: "Anaphase I",
      wrong: ["Metaphase II", "Prophase I", "Telophase II"],
      why: "Homologues separate in anaphase I; sister chromatids separate in anaphase II.",
    },
    {
      q: "Which bond links adjacent amino acids in a polypeptide?",
      correct: "Peptide bond",
      wrong: ["Glycosidic bond", "Phosphodiester bond", "Hydrogen bond only"],
      why: "Condensation between carboxyl and amino groups forms a covalent peptide (amide) bond.",
    },
    {
      q: "Stomatal opening is primarily driven by which ion influx into guard cells?",
      correct: "K⁺",
      wrong: ["Na⁺", "Ca²⁺ only", "Cl⁻ efflux alone"],
      why: "K⁺ uptake lowers water potential; water enters by osmosis and turgor opens the pore.",
    },
    {
      q: "Which blood vessel carries oxygenated blood from the lungs to the left atrium?",
      correct: "Pulmonary vein",
      wrong: ["Pulmonary artery", "Vena cava", "Aorta"],
      why: "Pulmonary veins return O₂-rich blood; pulmonary arteries carry deoxygenated blood to lungs.",
    },
    {
      q: "Antibodies are produced by which differentiated cell type?",
      correct: "Plasma cells (B lymphocytes)",
      wrong: ["Helper T cells only", "Neutrophils", "Erythrocytes"],
      why: "Activated B cells differentiate into antibody-secreting plasma cells.",
    },
    {
      q: "Which statement best describes natural selection?",
      correct: "Differential reproductive success of heritable variants",
      wrong: ["Individuals adapt their genes within one lifetime", "Mutation is always harmful", "Populations never change allele frequencies"],
      why: "Selection filters heritable variation; it does not create directed mutation on demand.",
    },
    {
      q: "In C3 photosynthesis, carbon fixation is catalyzed by:",
      correct: "Rubisco",
      wrong: ["ATP synthase", "Helicase", "Pepsin"],
      why: "Rubisco carboxylates RuBP in the Calvin cycle.",
    },
    {
      q: "Homeostasis of blood glucose after a meal primarily involves:",
      correct: "Insulin-mediated glucose uptake into tissues",
      wrong: ["Only glucagon release", "ADH only", "Thyroxine shutting glycolysis"],
      why: "Insulin promotes glycogenesis/uptake; glucagon dominates in fasting.",
    },
  ],
  chemistry: [
    {
      q: "Which statement correctly describes a Brønsted–Lowry acid?",
      correct: "A proton (H⁺) donor",
      wrong: ["An electron-pair donor", "A hydroxide donor", "An oxidizing agent only"],
      why: "Brønsted–Lowry acids donate H⁺; bases accept H⁺.",
    },
    {
      q: "For the reaction $N_2+3H_2\\rightleftharpoons 2NH_3$, increasing pressure at constant T favors:",
      correct: "Forward reaction (more NH₃)",
      wrong: ["Reverse reaction", "No shift", "Complete decomposition of NH₃"],
      why: "Fewer gas moles on product side; Le Chatelier shifts right.",
    },
    {
      q: "Oxidation number of S in $SO_4^{2-}$ is:",
      correct: "+6",
      wrong: ["+4", "+2", "−2"],
      why: "O is −2 ×4 = −8; ion charge −2 ⇒ S = +6.",
    },
    {
      q: "Which intermolecular force is strongest in pure HF?",
      correct: "Hydrogen bonding",
      wrong: ["London dispersion only", "Ionic bonding", "Metallic bonding"],
      why: "H bonded to highly electronegative F enables H-bonding.",
    },
    {
      q: "In electrolytic cells, reduction occurs at the:",
      correct: "Cathode",
      wrong: ["Anode", "Salt bridge", "Voltmeter"],
      why: "Reduction always at cathode (gain of electrons), whether galvanic or electrolytic.",
    },
    {
      q: "A first-order reaction has half-life independent of:",
      correct: "Initial concentration",
      wrong: ["Rate constant", "Temperature", "Activation energy"],
      why: "$t_{1/2}=\\ln2/k$ depends only on k for first-order kinetics.",
    },
    {
      q: "Which particle is transferred in a redox reaction?",
      correct: "Electrons",
      wrong: ["Neutrons only", "Photons only", "Atomic nuclei intact"],
      why: "Oxidation is loss of electrons; reduction is gain of electrons.",
    },
    {
      q: "Buffer solutions resist pH change because they contain:",
      correct: "A weak acid and its conjugate base (or vice versa)",
      wrong: ["Only strong acid", "Only strong base", "Pure water"],
      why: "Both components neutralize added H⁺ or OH⁻ within capacity.",
    },
  ],
  physics: [
    {
      q: "If net force on a body is zero, which must be true?",
      correct: "Acceleration is zero (velocity constant)",
      wrong: ["Velocity is zero", "Kinetic energy is zero", "Momentum is zero"],
      why: "Newton I: zero net force ⇒ zero acceleration; velocity may be nonzero constant.",
    },
    {
      q: "Work done by a constant force equals:",
      correct: "$W=Fd\\cos\\theta$",
      wrong: ["$W=Fd\\sin\\theta$ only", "$W=F/d$", "$W=mv$"],
      why: "Work is force component along displacement times distance.",
    },
    {
      q: "In SHM, maximum acceleration magnitude occurs at:",
      correct: "Maximum displacement (amplitude)",
      wrong: ["Equilibrium position", "Half amplitude only", "When velocity is max"],
      why: "$a=-\\omega^2 x$; |a| max when |x| max.",
    },
    {
      q: "Snell's law relates angles of incidence/refraction to:",
      correct: "Refractive indices of the two media",
      wrong: ["Only wavelengths in vacuum", "Only amplitudes", "Only frequencies"],
      why: "$n_1\\sin\\theta_1=n_2\\sin\\theta_2$.",
    },
    {
      q: "Kirchhoff's loop rule is a statement of conservation of:",
      correct: "Energy",
      wrong: ["Charge only", "Momentum", "Mass"],
      why: "Sum of PD around a closed loop is zero (energy conservation for charges).",
    },
    {
      q: "Photon energy is given by:",
      correct: "$E=hf$",
      wrong: ["$E=hc/\\lambda^2$", "$E=mv$", "$E=\\frac12kx^2$"],
      why: "Planck relation: energy proportional to frequency.",
    },
    {
      q: "For two resistors in series, equivalent resistance is:",
      correct: "Sum of the individual resistances",
      wrong: ["Product over sum only", "Always less than either", "Independent of values"],
      why: "$R_s=R_1+R_2$; series adds resistances.",
    },
    {
      q: "Gravitational potential energy near Earth is approximately:",
      correct: "$m g h$ (relative to a chosen zero)",
      wrong: ["$\\frac12 mv^2$ only", "$F=ma$ alone", "$p=mv$"],
      why: "Near-surface PE change equals weight times height change.",
    },
  ],
  generic: [
    {
      q: "Which experimental change most improves reliability of a measurement?",
      correct: "Repeat trials and report mean with uncertainty",
      wrong: ["Use one trial only", "Ignore outliers without reason", "Change two variables at once"],
      why: "Replication reduces random error and supports uncertainty estimates.",
    },
    {
      q: "A control in an investigation is best described as:",
      correct: "A baseline condition for comparison",
      wrong: ["Any dependent variable", "The hypothesis itself", "A random number"],
      why: "Controls isolate the effect of the independent variable.",
    },
  ],
};

const HUM_SCENARIOS = [
  {
    domain: "history",
    stem: "A historian evaluating two sources on the same event should first:",
    correct: "Compare provenance, purpose, and content for corroboration and bias",
    wrong: [
      "Accept the longer source as more accurate",
      "Ignore dates of production",
      "Assume official sources are always neutral",
    ],
    why: "OPVL/source criticism begins with origin, purpose, value, and limitation.",
  },
  {
    domain: "economics",
    stem: "If demand is price-inelastic and a per-unit tax is imposed, the tax burden falls more on:",
    correct: "Consumers",
    wrong: ["Producers only", "Neither side", "Government only"],
    why: "Inelastic demand ⇒ consumers less able to reduce quantity; incidence tilts to buyers.",
  },
  {
    domain: "psychology",
    stem: "A study lacks ecological validity when:",
    correct: "Artificial lab conditions limit generalization to real settings",
    wrong: ["Sample size is large", "Ethics board approved it", "Results are statistically significant"],
    why: "Ecological validity concerns realism and transfer beyond the lab.",
  },
  {
    domain: "geography",
    stem: "In the demographic transition model, Stage 2 is characterized by:",
    correct: "Falling death rates with still-high birth rates",
    wrong: ["Low birth and death rates", "Rising death rates only", "Zero population growth always"],
    why: "Stage 2: mortality falls first → rapid natural increase.",
  },
  {
    domain: "politics",
    stem: "Soft power differs from hard power primarily because it relies on:",
    correct: "Attraction and persuasion rather than coercion or payment",
    wrong: ["Military force alone", "Sanctions exclusively", "Ignoring culture and institutions"],
    why: "Nye: soft power = co-opt through culture, values, and policies.",
  },
  {
    domain: "business",
    stem: "Contribution per unit equals:",
    correct: "Selling price − variable cost per unit",
    wrong: ["Fixed cost − variable cost", "Revenue − fixed cost only", "Profit margin on assets"],
    why: "Contribution covers fixed costs and profit after variable costs.",
  },
  {
    domain: "philosophy",
    stem: "A utilitarian assessing an action focuses primarily on:",
    correct: "Consequences for overall welfare/happiness",
    wrong: ["Whether a maxim can be universalized only", "Divine command alone", "Virtue of the agent only"],
    why: "Utilitarianism evaluates actions by aggregate utility of outcomes.",
  },
  {
    domain: "anthropology",
    stem: "Cultural relativism urges anthropologists to:",
    correct: "Interpret practices in their own cultural context before judging",
    wrong: ["Endorse every practice uncritically", "Ignore ethnographic data", "Rank cultures on a single scale"],
    why: "Methodological relativism suspends ethnocentric judgment to understand meaning.",
  },
  {
    domain: "digital",
    stem: "An algorithmic filter bubble primarily risks:",
    correct: "Narrowing exposure to diverse viewpoints",
    wrong: ["Increasing offline social capital only", "Eliminating all bias", "Guaranteeing accuracy of news"],
    why: "Personalization can reinforce existing preferences and reduce viewpoint diversity.",
  },
  {
    domain: "religion",
    stem: "When comparing sacred texts across traditions, a strong analytical approach is to:",
    correct: "Situate passages in historical, literary, and ritual contexts",
    wrong: ["Quote only modern headlines", "Assume identical meanings across languages", "Ignore lived practice"],
    why: "Comparative religion requires contextual reading, not surface proof-texting.",
  },
  {
    domain: "history",
    stem: "A claim that a single cause fully explains a complex historical change is weak because:",
    correct: "Multicausal explanations better capture interacting economic, social, and political factors",
    wrong: ["History never uses causation", "Only biographies matter", "Chronology is irrelevant"],
    why: "IB history rewards nuanced, multicausal analysis over monocausal narratives.",
  },
  {
    domain: "economics",
    stem: "A binding price ceiling below equilibrium typically creates:",
    correct: "A shortage (QD > QS)",
    wrong: ["A surplus", "No rationing pressure", "Higher producer surplus only"],
    why: "Price held below market-clearing level → excess demand.",
  },
  {
    domain: "psychology",
    stem: "Demand characteristics threaten validity when:",
    correct: "Participants guess the hypothesis and alter behavior",
    wrong: ["Random assignment is used", "Double-blind designs are applied", "Effect sizes are reported"],
    why: "Cue-reading can inflate or distort measured effects.",
  },
  {
    domain: "tok",
    stem: "A knowledge claim is better justified when it:",
    correct: "Survives scrutiny from relevant methods and counterevidence in that AOK",
    wrong: ["Is repeated often online", "Comes from a celebrity", "Avoids all uncertainty"],
    why: "TOK emphasizes standards of evidence, perspective, and fallibilism.",
  },
];

const ARTS_PROMPTS = [
  "Analyze how formal elements (line, color, composition) construct meaning in the given work.",
  "Evaluate how cultural context shapes audience reception of the work.",
  "Compare two works and argue how medium-specific choices alter interpretation.",
  "Discuss the relationship between process documentation and resolved artwork.",
  "Explain how intention, convention, and innovation interact in the creative process.",
  "Assess ethical considerations when representing community or identity in art.",
  "Describe how rhythm, motif, or motif development structures the piece.",
  "Critique staging/cinematography/choreography choices relative to thematic aims.",
];

const LANG_PROMPTS = [
  {
    skill: "receptive",
    stem: "Based on the text, which inference is best supported?",
    correct: "The narrator’s attitude shifts from uncertainty toward measured confidence",
    wrong: [
      "The narrator rejects all prior experiences",
      "The setting is irrelevant to meaning",
      "The text proves a scientific law",
    ],
  },
  {
    skill: "productive",
    stem: "Which revision most improves clarity of the thesis?",
    correct: "State a specific claim and preview two supporting reasons",
    wrong: [
      "Add unrelated anecdotes",
      "Remove all topic sentences",
      "Replace evidence with slogans",
    ],
  },
  {
    skill: "interactive",
    stem: "In a formal oral interaction, the most appropriate move after disagreement is to:",
    correct: "Acknowledge the point, then offer evidence-based counter-reasoning",
    wrong: [
      "Interrupt and raise volume",
      "Ignore the interlocutor",
      "Change language register abruptly without purpose",
    ],
  },
];

const TOK_PROMPTS = [
  {
    title: "Knowledge and the knower",
    prompt:
      "To what extent does personal perspective limit the possibility of shared knowledge? Discuss with reference to one AOK and one real-life situation.",
  },
  {
    title: "Knowledge and technology",
    prompt:
      "Does reliance on algorithmic systems strengthen or weaken justification in the natural sciences? Argue with a concrete example.",
  },
  {
    title: "Knowledge and language",
    prompt:
      "In what ways can metaphor both enable and distort knowledge claims in the human sciences?",
  },
  {
    title: "Knowledge and politics",
    prompt:
      "How should societies balance expert authority and democratic contestation when public knowledge claims conflict?",
  },
  {
    title: "Knowledge and religion",
    prompt:
      "Can faith-based knowledge claims be evaluated with the same standards as scientific claims? Defend your position.",
  },
  {
    title: "AOKs comparison",
    prompt:
      "Compare how evidence functions differently in history and in the arts when supporting a knowledge claim.",
  },
];

const EE_PROMPTS = [
  "Refine a research question so it is focused, arguable, and feasible within EE scope.",
  "Outline how you would evaluate source reliability for your investigation.",
  "Explain how your methodology aligns with your subject’s assessment criteria.",
  "Identify a potential bias in your approach and propose a mitigation.",
  "Draft a structure that balances analysis with description for a 4,000-word EE.",
  "Discuss ethical considerations for primary data collection in your topic.",
];

function scienceBucket(examType) {
  if (/BIOLOGY|SEHS|ESS/.test(examType)) return "biology";
  if (/CHEMISTRY/.test(examType)) return "chemistry";
  if (/PHYSICS/.test(examType)) return "physics";
  return "generic";
}

function humDomain(examType) {
  if (/HISTORY/.test(examType)) return "history";
  if (/ECONOMICS/.test(examType)) return "economics";
  if (/PSYCHOLOGY/.test(examType)) return "psychology";
  if (/GEOGRAPHY/.test(examType)) return "geography";
  if (/GLOBAL_POLITICS/.test(examType)) return "politics";
  if (/BUSINESS/.test(examType)) return "business";
  if (/PHILOSOPHY/.test(examType)) return "philosophy";
  if (/ANTHROPOLOGY/.test(examType)) return "anthropology";
  if (/DIGITAL/.test(examType)) return "digital";
  if (/RELIGION/.test(examType)) return "religion";
  if (/TOK/.test(examType)) return "tok";
  return "history";
}

function allocateUnits(units, total) {
  const quotas = units.map((u) => Math.max(1, u.quota ?? 1));
  const sum = quotas.reduce((a, b) => a + b, 0);
  const raw = quotas.map((q) => (q / sum) * total);
  const floors = raw.map((x) => Math.floor(x));
  let rem = total - floors.reduce((a, b) => a + b, 0);
  const order = raw
    .map((x, i) => ({ i, frac: x - floors[i] }))
    .sort((a, b) => b.frac - a.frac);
  const out = [...floors];
  for (let k = 0; k < rem; k++) out[order[k % order.length].i]++;
  return out;
}

function makeMcqOptions(correctText, wrongTexts, rng, stepWhy) {
  const correctId = pick(rng, LETTERS);
  const uniqWrong = [];
  const seen = new Set([String(correctText)]);
  for (const w of shuffle(rng, wrongTexts)) {
    const t = String(w);
    if (seen.has(t)) continue;
    seen.add(t);
    uniqWrong.push(t);
    if (uniqWrong.length === 3) break;
  }
  let pad = 1;
  while (uniqWrong.length < 3) {
    const t = `Alternate value ${pad++}`;
    if (seen.has(t)) continue;
    seen.add(t);
    uniqWrong.push(t);
  }
  const texts = {};
  texts[correctId] = String(correctText);
  let wi = 0;
  for (const L of LETTERS) {
    if (L === correctId) continue;
    texts[L] = uniqWrong[wi++];
  }
  const options = LETTERS.map((id) => ({
    id,
    text: texts[id],
    is_correct: id === correctId,
    explanation:
      id === correctId
        ? `Correct. ${stepWhy}`
        : `Incorrect. This conflicts with the key idea: ${stepWhy.slice(0, 120)}`,
  }));
  return { correctId, options };
}

function buildMathItem(rng, bp, unit, seq, sectionIdx) {
  const tmpl = MATH_TEMPLATES[Math.floor(rng() * MATH_TEMPLATES.length)];
  const built = tmpl.build(rng, unit);
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? built.topicHint;
  const stem = contextWrap("math", flavor, seq, built.stem);
  const { correctId, options } = makeMcqOptions(built.correct, built.wrongs, rng, built.steps.step3.body);
  const distractors = {};
  for (const o of options) {
    if (!o.is_correct) distractors[o.id] = o.explanation;
  }
  return {
    question_type: "multiple_choice",
    question_text: stem,
    stimulus_text: null,
    stimulus_type: null,
    options,
    correct_answer: correctId,
    explanation: onePrepMcq({
      ...built.steps,
      correctId,
      distractors,
    }),
    hint: `Review ${built.topicHint} methods from ${unit.unit_name}.`,
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: built.topicHint,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: calcAllowed(bp, sectionIdx, seq, "multiple_choice"),
    rubric: null,
    max_points: null,
    skill_id: unit.unit_code,
  };
}

function buildScienceMcq(rng, bp, unit, seq, sectionIdx) {
  const bucket = scienceBucket(bp.exam_type);
  const bank = [...(SCIENCE_FACTS[bucket] ?? []), ...SCIENCE_FACTS.generic];
  const fact = bank[Math.floor(rng() * bank.length)];
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? unit.unit_name;
  const stem = contextWrap("science", flavor, seq, fact.q);
  const { correctId, options } = makeMcqOptions(fact.correct, fact.wrong, rng, fact.why);
  const distractors = {};
  for (const o of options) if (!o.is_correct) distractors[o.id] = o.explanation;
  return {
    question_type: "multiple_choice",
    question_text: stem,
    stimulus_text: null,
    stimulus_type: null,
    options,
    correct_answer: correctId,
    explanation: onePrepMcq({
      step1: { title: "Identify the concept", body: `This item targets ${flavor} within ${unit.unit_name}.` },
      step2: { title: "Apply syllabus knowledge", body: fact.why },
      step3: { title: "Select the best match", body: `Choice ${correctId} (${fact.correct}) is correct.` },
      correctId,
      distractors,
    }),
    hint: `Link the stem to core definitions in ${unit.unit_name}.`,
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: calcAllowed(bp, sectionIdx, seq, "multiple_choice"),
    rubric: null,
    max_points: null,
    skill_id: unit.unit_code,
  };
}

function buildScienceFrq(rng, bp, unit, seq, sectionIdx) {
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? "core idea";
  const maxPts = 6 + (seq % 3) * 2;
  const n = 3 + Math.floor(rng() * 8);
  const prompt = contextWrap(
    "science",
    flavor,
    seq,
    `Using ideas from ${unit.unit_name}, explain ${flavor} for a ${n}-step investigation. Include definitions, a reasoned mechanism/process, and one evaluative comment on limitations or assumptions.`,
  );
  return {
    question_type: "free_response",
    question_text: prompt,
    stimulus_text: `Stimulus ${seq + 1}: Investigators vary one factor related to ${flavor} while controlling ${n - 1} others in an IB ${bp.display_name} context.`,
    stimulus_type: "passage",
    options: frqOptionsPlaceholder(maxPts),
    correct_answer: null,
    explanation: onePrepFrq({
      step1: { title: "Define key terms", body: `Open with precise definitions tied to ${flavor}.` },
      step2: {
        title: "Explain mechanism / process",
        body: `Link cause→effect using syllabus pathways; quantify or qualify where possible.`,
      },
      step3: {
        title: "Evaluate",
        body: `State a limitation (model assumptions, measurement error, or scope) and why it matters.`,
      },
    }),
    hint: `Structure: define → explain → evaluate (${maxPts} marks).`,
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: calcAllowed(bp, sectionIdx, seq, "free_response"),
    rubric: defaultRubric(maxPts),
    max_points: maxPts,
    skill_id: unit.unit_code,
  };
}

function buildHumMcq(rng, bp, unit, seq, sectionIdx) {
  const dom = humDomain(bp.exam_type);
  const pool = HUM_SCENARIOS.filter((s) => s.domain === dom);
  const base = pool.length
    ? pool[Math.floor(rng() * pool.length)]
    : HUM_SCENARIOS[Math.floor(rng() * HUM_SCENARIOS.length)];
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? unit.unit_name;
  const stem = contextWrap("humanities", flavor, seq, base.stem);
  const { correctId, options } = makeMcqOptions(base.correct, base.wrong, rng, base.why);
  const distractors = {};
  for (const o of options) if (!o.is_correct) distractors[o.id] = o.explanation;
  return {
    question_type: "multiple_choice",
    question_text: stem,
    stimulus_text: null,
    stimulus_type: null,
    options,
    correct_answer: correctId,
    explanation: onePrepMcq({
      step1: { title: "Frame the disciplinary question", body: `Identify what ${dom} concepts the stem tests within ${flavor}.` },
      step2: { title: "Apply the key principle", body: base.why },
      step3: { title: "Choose", body: `Choice ${correctId} best matches the principle.` },
      correctId,
      distractors,
    }),
    hint: `Use ${unit.unit_name} vocabulary precisely.`,
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: null,
    max_points: null,
    skill_id: unit.unit_code,
  };
}

function buildHumFrq(rng, bp, unit, seq, sectionIdx) {
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? "theme";
  const maxPts = 8;
  const prompt = `Using ${unit.unit_name}, analyze ${flavor} with reference to a specific case/example (set ${seq + 1}). Structure: (a) define and contextualize, (b) apply two analytical points, (c) evaluate one counterargument or limitation.`;
  return {
    question_type: "free_response",
    question_text: prompt,
    stimulus_text: `Stimulus brief ${seq + 1}: Consider a contemporary or historical case involving ${flavor} appropriate to ${bp.display_name}.`,
    stimulus_type: "passage",
    options: frqOptionsPlaceholder(maxPts),
    correct_answer: null,
    explanation: onePrepFrq({
      step1: { title: "Define & contextualize", body: `Open with syllabus-accurate definitions and scope.` },
      step2: { title: "Apply analysis", body: `Develop two evidence-linked analytical points on ${flavor}.` },
      step3: { title: "Evaluate", body: `Weigh a counterargument or limitation; conclude with justified judgment.` },
    }),
    hint: "PEEL/PEE paragraphs; name theorists/models where relevant.",
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: defaultRubric(maxPts),
    max_points: maxPts,
    skill_id: unit.unit_code,
  };
}

function buildArtsFrq(rng, bp, unit, seq, sectionIdx) {
  const promptBase = ARTS_PROMPTS[seq % ARTS_PROMPTS.length];
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? unit.unit_name;
  const maxPts = 10;
  return {
    question_type: "free_response",
    question_text: `${promptBase} Address ${flavor} in ${unit.unit_name} (portfolio reflection ${seq + 1}).`,
    stimulus_text: `Respond with reference to your own process/work or a named exemplar appropriate to ${bp.display_name}.`,
    stimulus_type: "passage",
    options: frqOptionsPlaceholder(maxPts),
    correct_answer: null,
    explanation: onePrepFrq({
      step1: { title: "Describe with precision", body: "Use medium-specific vocabulary; avoid vague praise." },
      step2: { title: "Analyze choices", body: `Connect formal/process decisions to intended meaning regarding ${flavor}.` },
      step3: { title: "Evaluate impact", body: "Judge effectiveness; note audience/context and possible alternatives." },
    }),
    hint: "Criteria: artistry, analysis, reflection.",
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: defaultRubric(maxPts),
    max_points: maxPts,
    skill_id: unit.unit_code,
  };
}

function buildLangMcq(rng, bp, unit, seq, sectionIdx) {
  const base = LANG_PROMPTS[seq % LANG_PROMPTS.length];
  const flavor = unit.topics?.[seq % (unit.topics?.length || 1)] ?? unit.unit_name;
  const { correctId, options } = makeMcqOptions(base.correct, base.wrong, rng, `Targets ${base.skill} skills.`);
  const distractors = {};
  for (const o of options) if (!o.is_correct) distractors[o.id] = o.explanation;
  return {
    question_type: "multiple_choice",
    question_text: `[${flavor}] ${base.stem}`,
    stimulus_text: `Short stimulus ${seq + 1} for ${bp.display_name}: A speaker reflects on ${flavor}, shifting tone across three paragraphs to negotiate meaning with an audience.`,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: onePrepMcq({
      step1: { title: "Read for purpose", body: `Identify communicative purpose related to ${flavor}.` },
      step2: { title: "Match skill criterion", body: `This item assesses ${base.skill} competence.` },
      step3: { title: "Select", body: `Choice ${correctId} best fits.` },
      correctId,
      distractors,
    }),
    hint: `Focus on ${base.skill} markers.`,
    difficulty: pick(rng, DIFFS),
    topic: unit.unit_name,
    subtopic: flavor,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: null,
    max_points: null,
    skill_id: unit.unit_code,
  };
}

function buildTokFrq(rng, bp, unit, seq, sectionIdx) {
  const base = TOK_PROMPTS[seq % TOK_PROMPTS.length];
  const maxPts = 10;
  return {
    question_type: "free_response",
    question_text: `${base.prompt} (Unit: ${unit.unit_name}; variation ${seq + 1})`,
    stimulus_text: `Prescribed focus: ${base.title}. Use TOK vocabulary (justification, perspective, evidence, bias).`,
    stimulus_type: "passage",
    options: frqOptionsPlaceholder(maxPts),
    correct_answer: null,
    explanation: onePrepFrq({
      step1: { title: "Unpack the KQ", body: "Define key terms; state a clear knowledge claim stance." },
      step2: { title: "Develop AOKs/RLS", body: "Use one AOK and a real-life situation with analysis, not description only." },
      step3: { title: "Implications", body: "Weigh counterclaims; conclude with implications for knowledge." },
    }),
    hint: "Claim → evidence → counterclaim → implication.",
    difficulty: pick(rng, ["medium", "hard"]),
    topic: unit.unit_name,
    subtopic: base.title,
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: defaultRubric(maxPts),
    max_points: maxPts,
    skill_id: unit.unit_code,
  };
}

function buildEeFrq(rng, bp, unit, seq, sectionIdx) {
  const prompt = EE_PROMPTS[seq % EE_PROMPTS.length];
  const maxPts = 6;
  return {
    question_type: "free_response",
    question_text: `${prompt} Relate your response to ${unit.unit_name} (checkpoint ${seq + 1}).`,
    stimulus_text: "EE core: research question, methodology, analysis, academic honesty.",
    stimulus_type: "passage",
    options: frqOptionsPlaceholder(maxPts),
    correct_answer: null,
    explanation: onePrepFrq({
      step1: { title: "Clarify scope", body: "State what the EE criterion expects at this checkpoint." },
      step2: { title: "Apply to your topic", body: `Connect ${unit.unit_name} guidance to a concrete decision.` },
      step3: { title: "Self-assess", body: "Note a risk and a next action." },
    }),
    hint: "Be specific to a feasible investigation.",
    difficulty: "medium",
    topic: unit.unit_name,
    subtopic: "EE process",
    section: sectionFor(bp, sectionIdx),
    calculator_allowed: false,
    rubric: defaultRubric(maxPts),
    max_points: maxPts,
    skill_id: unit.unit_code,
  };
}

function buildItem(bp, unit, seq, globalIdx) {
  const rng = mulberry32(seedInt(bp.exam_type, unit.unit_code, String(seq), "v2"));
  const family = familyOf(bp.exam_type);
  const mcqShare = mcqShareOf(bp);
  const wantMcq = rng() < mcqShare && mcqShare > 0;
  const sectionIdx = globalIdx;

  if (bp.exam_type === "IB_TOK") return buildTokFrq(rng, bp, unit, seq, sectionIdx);
  if (bp.exam_type === "IB_EE") return buildEeFrq(rng, bp, unit, seq, sectionIdx);

  if (family === "math") {
    if (wantMcq) return buildMathItem(rng, bp, unit, seq, sectionIdx);
    // FRQ math
    const tmpl = pick(rng, MATH_TEMPLATES);
    const built = tmpl.build(rng, unit);
    const maxPts = 6;
    return {
      question_type: "free_response",
      question_text: `${built.stem} Show full working. [variant ${seq + 1}]`,
      stimulus_text: null,
      stimulus_type: null,
      options: frqOptionsPlaceholder(maxPts),
      correct_answer: "RUBRIC",
      explanation: onePrepFrq(built.steps),
      hint: "Communicate method clearly; box the final answer.",
      difficulty: pick(rng, DIFFS),
      topic: unit.unit_name,
      subtopic: built.topicHint,
      section: sectionFor(bp, sectionIdx),
      calculator_allowed: calcAllowed(bp, sectionIdx, seq, "free_response"),
      rubric: defaultRubric(maxPts),
      max_points: maxPts,
      skill_id: unit.unit_code,
    };
  }

  if (family === "science") {
    return wantMcq
      ? buildScienceMcq(rng, bp, unit, seq, sectionIdx)
      : buildScienceFrq(rng, bp, unit, seq, sectionIdx);
  }

  if (family === "arts") {
    if (wantMcq && rng() < 0.5) {
      // rare conceptual MCQ for arts
      const { correctId, options } = makeMcqOptions(
        "Formal analysis linked to cultural context",
        [
          "Biography alone without visual evidence",
          "Ignoring medium-specific techniques",
          "Ranking artworks by sale price only",
        ],
        rng,
        "Arts assessment values analysis of form+context.",
      );
      const distractors = {};
      for (const o of options) if (!o.is_correct) distractors[o.id] = o.explanation;
      return {
        question_type: "multiple_choice",
        question_text: `Which approach best aligns with IB ${bp.display_name} critical study expectations for ${unit.unit_name}?`,
        stimulus_text: null,
        stimulus_type: null,
        options,
        correct_answer: correctId,
        explanation: onePrepMcq({
          step1: { title: "Recall criteria", body: "Critical study balances formal and contextual analysis." },
          step2: { title: "Eliminate weak approaches", body: "Price or biography-only answers miss artistic evidence." },
          step3: { title: "Select", body: `Choice ${correctId} is strongest.` },
          correctId,
          distractors,
        }),
        hint: "Form + context + meaning.",
        difficulty: pick(rng, DIFFS),
        topic: unit.unit_name,
        subtopic: unit.topics?.[0] ?? "critical study",
        section: sectionFor(bp, sectionIdx),
        calculator_allowed: false,
        rubric: null,
        max_points: null,
        skill_id: unit.unit_code,
      };
    }
    return buildArtsFrq(rng, bp, unit, seq, sectionIdx);
  }

  if (family === "language_core") {
    if (bp.exam_type === "IB_PHILOSOPHY_SL" || bp.exam_type === "IB_PHILOSOPHY_HL" || mcqShare === 0) {
      return buildHumFrq(rng, bp, unit, seq, sectionIdx);
    }
    return wantMcq
      ? buildLangMcq(rng, bp, unit, seq, sectionIdx)
      : buildHumFrq(rng, bp, unit, seq, sectionIdx);
  }

  // humanities
  if (mcqShare === 0) return buildHumFrq(rng, bp, unit, seq, sectionIdx);
  return wantMcq
    ? buildHumMcq(rng, bp, unit, seq, sectionIdx)
    : buildHumFrq(rng, bp, unit, seq, sectionIdx);
}

export function loadBlueprint(repoRoot, examType) {
  const p = join(repoRoot, "scripts/data/course-research", `${examType}.blueprint.json`);
  if (!existsSync(p)) throw new Error(`missing blueprint: ${examType}`);
  return JSON.parse(readFileSync(p, "utf8"));
}

export function generateCourseRows(bp, { count, startSeq = 0 } = {}) {
  const units = bp.units ?? [];
  if (!units.length) throw new Error(`no units for ${bp.exam_type}`);
  const perUnit = allocateUnits(units, count);
  const source = String(bp.exam_type).startsWith("IB_") ? IB_SOURCE : AP_SOURCE;
  const rows = [];
  let globalIdx = startSeq;
  for (let ui = 0; ui < units.length; ui++) {
    const unit = units[ui];
    const n = perUnit[ui];
    for (let s = 0; s < n; s++) {
      const seq = startSeq + rows.length;
      const item = buildItem(bp, unit, seq, globalIdx++);
      const external_id = `${bp.exam_type.toLowerCase()}_${unit.unit_code}_${String(seq + 1).padStart(4, "0")}`;
      rows.push(
        finalizeRow(bp, unit, item, {
          external_id,
          source,
          pool_key: "ap_ib_bank_v1",
          tags: [bp.exam_type, unit.unit_code, item.question_type, "wave_r_bank"],
          source_metadata: {
            explanation_v2: true,
            generator: GENERATOR,
            blueprint_exam: bp.exam_type,
            unit_code: unit.unit_code,
            unit_name: unit.unit_name,
            catalog_category: bp.category ?? null,
            fingerprint: fingerprintOf(item, unit),
            bank_mode: bp.bank_mode,
            tranche: String(bp.exam_type).startsWith("AP_") ? "batch1_ap" : "batch3_ib",
            pool: "unit_bank",
          },
        }),
      );
    }
  }
  dedupeStems(rows);
  return rows;
}

function fingerprintOf(item, unit) {
  return createHash("sha256")
    .update([item.question_text, item.stimulus_text ?? "", item.correct_answer ?? "", unit.unit_code].join("¦"))
    .digest("hex")
    .slice(0, 16);
}

function finalizeRow(bp, unit, item, extras) {
  return {
    id: randomUUID(),
    ...item,
    exam_type: bp.exam_type,
    unit_code: unit.unit_code,
    is_platform_question: true,
    ai_generated: true,
    challenge_only: false,
    diagnostic_eligible: true,
    subject: subjectForExam(bp.exam_type),
    domain_id: familyOf(bp.exam_type),
    ...extras,
  };
}

function dedupeStems(rows) {
  const seen = new Set();
  for (const r of rows) {
    const key = `${r.unit_code}|${r.question_text}|${r.correct_answer ?? ""}`;
    if (seen.has(key)) {
      r.question_text = `${r.question_text} [uid ${r.external_id}]`;
    }
    seen.add(`${r.unit_code}|${r.question_text}|${r.correct_answer ?? ""}`);
    if (r.question_type === "free_response" || r.question_type === "short_answer") {
      if (!Array.isArray(r.options) || r.options.length < 2) {
        r.options = frqPlaceholderOptions();
      }
      if (!r.correct_answer) r.correct_answer = "RUBRIC";
    }
  }
}

/**
 * Dedicated unit_test pool — supports AP `unit_test` and IB `unit_tests` shapes.
 */
export function generateUnitTestRows(bp, { maxPerUnit = null } = {}) {
  const units = bp.units ?? [];
  if (!units.length) return [];
  const apUt = bp.unit_test || {};
  const ibUt = bp.unit_tests || {};
  const variants = Number(apUt.variants ?? ibUt.variants ?? 2) || 2;
  const qPerVariant =
    Number(apUt.questions_per_variant ?? ibUt.question_count ?? 12) || 12;
  const mcqTarget =
    Number(apUt.mcq_count ?? Math.ceil(qPerVariant * 0.6)) || Math.ceil(qPerVariant * 0.6);

  const specs =
    ibUt.per_unit?.length > 0
      ? ibUt.per_unit
      : units.map((u) => ({
          unit_code: u.unit_code,
          variants,
          question_count: qPerVariant,
          mcq_count: mcqTarget,
        }));

  const rows = [];
  let globalIdx = 900000;
  const tranche = String(bp.exam_type).startsWith("AP_") ? "batch1_ap" : "batch3_ib";
  for (const spec of specs) {
    const unit = units.find((u) => u.unit_code === spec.unit_code) ?? units[0];
    const vCount = spec.variants ?? variants;
    let qCount = spec.question_count ?? qPerVariant;
    if (maxPerUnit != null) qCount = Math.min(qCount, maxPerUnit);
    const mcqN = spec.mcq_count ?? mcqTarget;
    for (let v = 1; v <= vCount; v++) {
      for (let i = 0; i < qCount; i++) {
        const seq = 5000 + rows.length;
        const forceFrq = i >= mcqN;
        let item = buildItem(bp, unit, seq, globalIdx++);
        if (forceFrq && item.question_type === "multiple_choice") {
          const fam = familyOf(bp.exam_type);
          const rng = mulberry32(seedInt(bp.exam_type, "utfrq", String(seq)));
          if (fam === "science" || fam === "math") {
            item = { ...item, ...buildScienceFrq(rng, bp, unit, seq, globalIdx) };
            if (fam === "math") {
              item.question_text = contextWrap(
                "math",
                unit.topics?.[0] ?? unit.unit_name,
                seq,
                `Show full working for a multi-step ${unit.unit_name} problem.`,
              );
              item.calculator_allowed = calcAllowed(bp, globalIdx, seq, "free_response");
            }
          } else {
            item = { ...item, ...buildHumFrq(rng, bp, unit, seq, globalIdx) };
          }
        }
        const external_id = `${bp.exam_type.toLowerCase()}_ut_v${v}_${unit.unit_code}_${String(i + 1).padStart(3, "0")}`;
        rows.push(
          finalizeRow(bp, unit, item, {
            external_id,
            source: UNIT_TEST_SOURCE,
            pool_key: "ap_ib_unit_test_v1",
            tags: [bp.exam_type, unit.unit_code, "unit_test", `V${v}`],
            source_metadata: {
              explanation_v2: true,
              generator: GENERATOR,
              blueprint_exam: bp.exam_type,
              unit_code: unit.unit_code,
              unit_name: unit.unit_name,
              fingerprint: fingerprintOf(item, unit),
              pool: "unit_test",
              variant: `V${v}`,
              tranche,
            },
          }),
        );
      }
    }
  }
  dedupeStems(rows);
  return rows;
}

/**
 * Forms A–J full_exam_form pool.
 * Supports AP `{ form_ids, section_map }` and IB `[{ form_id, sections }]`.
 */
export function generateFormPoolRows(bp, { formLetters = FORM_LETTERS } = {}) {
  const units = bp.units ?? [];
  if (!units.length) throw new Error(`no units for ${bp.exam_type}`);
  const tranche = String(bp.exam_type).startsWith("AP_") ? "batch1_ap" : "batch3_ib";

  let formDefs = [];
  if (Array.isArray(bp.full_exam_forms)) {
    formDefs = bp.full_exam_forms
      .map((f) => ({
        letter: String(f.form_id || "").replace(/^FORM_/i, "").toUpperCase(),
        sections: (f.sections ?? []).map((sec) => ({
          key: sec.key || sec.section_id || "section_1",
          format: sec.question_format || sec.format || "multiple_choice",
          n: sec.question_count ?? sec.slot_count ?? sec.slots ?? 10,
          calculator_allowed: sec.calculator_allowed,
          mcq_hint: sec.mcq_hint,
        })),
      }))
      .filter((f) => formLetters.includes(f.letter));
  } else if (bp.full_exam_forms?.form_ids || bp.full_exam_forms?.section_map) {
    const ids = (bp.full_exam_forms.form_ids ?? FORM_LETTERS).map((id) =>
      String(id).replace(/^FORM_/i, "").toUpperCase(),
    );
    const sections = normalizeSectionMap(bp).map((s) => ({
      key: s.module_key,
      format: s.format === "frq" ? "free_response" : "multiple_choice",
      n: s.slot_count,
      calculator_allowed: s.calculator_allowed,
      mcq_hint: s.format === "mcq" ? s.slot_count : 0,
    }));
    const secs =
      sections.length > 0
        ? sections
        : [
            {
              key: "section_1",
              format: "multiple_choice",
              n: 40,
              calculator_allowed: true,
              mcq_hint: 40,
            },
            {
              key: "section_2",
              format: "free_response",
              n: 6,
              calculator_allowed: true,
              mcq_hint: 0,
            },
          ];
    formDefs = ids
      .filter((letter) => formLetters.includes(letter))
      .map((letter) => ({ letter, sections: secs }));
  }

  const rows = [];
  let globalIdx = 800000;
  for (const form of formDefs) {
    const letter = form.letter;
    for (const sec of form.sections) {
      const n = Number(sec.n) || 10;
      const isFrqSec = /frq|free|saq|dbq|leq|aaq|ebq/i.test(String(sec.format || ""));
      const mcqHint = sec.mcq_hint ?? (isFrqSec ? 0 : n);
      for (let slot = 1; slot <= n; slot++) {
        const unit = units[(slot + letter.charCodeAt(0)) % units.length];
        const seq = 7000 + rows.length;
        const wantFrq = isFrqSec || slot > mcqHint;
        let item = buildItem(bp, unit, seq, globalIdx++);
        if (wantFrq && item.question_type === "multiple_choice") {
          const fam = familyOf(bp.exam_type);
          const rng = mulberry32(seedInt(bp.exam_type, "form", letter, String(slot)));
          if (fam === "science") item = { ...item, ...buildScienceFrq(rng, bp, unit, seq, globalIdx) };
          else if (fam === "math") {
            const maxPts = 6;
            item = {
              ...item,
              question_type: "free_response",
              question_text: contextWrap(
                "math",
                unit.topics?.[0] ?? unit.unit_name,
                seq,
                `Show full working for a multi-step ${unit.unit_name} problem involving ${unit.topics?.[slot % (unit.topics?.length || 1)] ?? "core skills"}.`,
              ),
              stimulus_text: `Form ${letter} ${sec.key} slot ${slot}`,
              stimulus_type: "passage",
              options: frqOptionsPlaceholder(maxPts),
              correct_answer: null,
              explanation: onePrepFrq({
                step1: { title: "Plan", body: "Identify given data and required result." },
                step2: { title: "Execute", body: "Show algebraic/calculus steps clearly." },
                step3: { title: "Check", body: "Verify units/domain and reasonableness." },
              }),
              hint: "Full working; state final answer clearly.",
              rubric: defaultRubric(maxPts),
              max_points: maxPts,
            };
          } else if (bp.exam_type === "IB_TOK" || bp.exam_type === "IB_EE") {
            item = {
              ...item,
              ...buildTokFrq(
                mulberry32(seedInt(bp.exam_type, "formtok", letter, String(slot))),
                bp,
                unit,
                seq,
                globalIdx,
              ),
            };
          } else {
            item = {
              ...item,
              ...buildHumFrq(
                mulberry32(seedInt(bp.exam_type, "formhum", letter, String(slot))),
                bp,
                unit,
                seq,
                globalIdx,
              ),
            };
          }
        }
        if (typeof sec.calculator_allowed === "boolean") {
          item.calculator_allowed = sec.calculator_allowed;
        } else {
          item.calculator_allowed = calcAllowed(bp, globalIdx, seq, item.question_type);
        }
        item.section = sec.key || sectionFor(bp, slot);
        const external_id = `${bp.exam_type.toLowerCase()}_form${letter}_${sec.key || "sec"}_${String(slot).padStart(3, "0")}`;
        rows.push(
          finalizeRow(bp, unit, item, {
            external_id,
            source: FULL_FORM_SOURCE,
            pool_key: "ap_ib_full_form_v1",
            tags: [bp.exam_type, `form_${letter}`, sec.key || "sec", item.question_type],
            source_metadata: {
              explanation_v2: true,
              generator: GENERATOR,
              blueprint_exam: bp.exam_type,
              unit_code: unit.unit_code,
              fingerprint: fingerprintOf(item, unit),
              pool: `form_${letter}`,
              form_letter: letter,
              module_key: sec.key || "section_1",
              slot,
              tranche,
            },
          }),
        );
      }
    }
  }
  dedupeStems(rows);
  return rows;
}

export function rowToSql(row) {
  return `(
    ${sqlLit(row.id)},
    ${sqlLit(row.question_text)},
    ${sqlLit(row.question_type)}::question_type,
    ${sqlJson(row.options)},
    ${sqlLit(row.correct_answer)},
    ${sqlLit(row.explanation)},
    ${sqlLit(row.hint)},
    ${sqlLit(row.stimulus_text)},
    ${sqlLit(row.stimulus_type)},
    ${sqlLit(row.section)},
    ${sqlLit(row.topic)},
    ${sqlLit(row.difficulty)}::difficulty,
    ${sqlLit(row.exam_type)}::exam_type,
    ${row.is_platform_question ? "true" : "false"},
    ${row.ai_generated ? "true" : "false"},
    ${row.calculator_allowed ? "true" : "false"},
    ${sqlLit(row.subject)},
    ${sqlLit(row.subtopic)},
    ${sqlLit(row.domain_id)},
    ${sqlLit(row.skill_id)},
    ${sqlLit(row.pool_key)},
    ${row.diagnostic_eligible ? "true" : "false"},
    ${row.challenge_only ? "true" : "false"},
    ${sqlArr(row.tags)},
    ${sqlLit(row.external_id)},
    ${sqlLit(row.source)},
    ${sqlJson(row.source_metadata)},
    ${sqlLit(row.unit_code)},
    ${sqlJson(row.rubric)},
    ${row.max_points == null ? "NULL" : Number(row.max_points)}
  )`;
}

export const INSERT_COLS = `id, question_text, question_type, options, correct_answer, explanation, hint,
    stimulus_text, stimulus_type, section, topic, difficulty, exam_type,
    is_platform_question, ai_generated, calculator_allowed, subject, subtopic,
    domain_id, skill_id, pool_key, diagnostic_eligible, challenge_only, tags,
    external_id, source, source_metadata, unit_code, rubric, max_points`;

export function rowsToSqlFile(rows, { chunkComment = "" } = {}) {
  const parts = [];
  parts.push(`-- ${GENERATOR} ${chunkComment}\n`);
  const BATCH = 25;
  for (let i = 0; i < rows.length; i += BATCH) {
    const slice = rows.slice(i, i + BATCH);
    parts.push(`INSERT INTO public.questions (\n    ${INSERT_COLS}\n  ) VALUES\n`);
    parts.push(slice.map(rowToSql).join(",\n"));
    parts.push(`\nON CONFLICT (source, external_id) WHERE external_id IS NOT NULL AND source IS NOT NULL\nDO UPDATE SET\n  question_text = EXCLUDED.question_text,\n  question_type = EXCLUDED.question_type,\n  options = EXCLUDED.options,\n  correct_answer = EXCLUDED.correct_answer,\n  explanation = EXCLUDED.explanation,\n  hint = EXCLUDED.hint,\n  stimulus_text = EXCLUDED.stimulus_text,\n  stimulus_type = EXCLUDED.stimulus_type,\n  section = EXCLUDED.section,\n  topic = EXCLUDED.topic,\n  subtopic = EXCLUDED.subtopic,\n  difficulty = EXCLUDED.difficulty,\n  unit_code = EXCLUDED.unit_code,\n  skill_id = EXCLUDED.skill_id,\n  rubric = EXCLUDED.rubric,\n  max_points = EXCLUDED.max_points,\n  calculator_allowed = EXCLUDED.calculator_allowed,\n  source_metadata = EXCLUDED.source_metadata,\n  tags = EXCLUDED.tags,\n  pool_key = EXCLUDED.pool_key,\n  updated_at = now();\n\n`);
  }
  return parts.join("");
}

export function validateRow(row) {
  const reasons = [];
  if (!row.external_id) reasons.push("no_external_id");
  if (!row.unit_code) reasons.push("no_unit_code");
  if (!row.explanation?.includes("Step 1 —")) reasons.push("no_step1");
  if (!row.explanation?.includes("Step 2 —")) reasons.push("no_step2");
  if (!row.explanation?.includes("Step 3 —")) reasons.push("no_step3");
  if (row.question_type === "multiple_choice") {
    if (!row.explanation?.includes("Distractor analysis:")) reasons.push("no_distractors");
    if (!Array.isArray(row.options) || row.options.length !== 4) reasons.push("bad_options");
  }
  if (row.question_type === "free_response") {
    if (!row.rubric?.max_points) reasons.push("no_rubric");
    if (row.max_points == null) reasons.push("no_max_points");
    if (!Array.isArray(row.options) || row.options.length < 2) reasons.push("frq_options_placeholder");
  }
  if (typeof row.calculator_allowed !== "boolean") reasons.push("no_calc_flag");
  return { ok: reasons.length === 0, reasons };
}
