/**
 * Exam Simulator — fresh Digital SAT forms (4 × 98 questions).
 * Questions are tagged source=exam_simulator, is_platform_question=false
 * so they stay separate from the practice bank.
 */

import { randomUUID } from "node:crypto";

/** Mirrors `src/lib/exam/digitalSat.ts` — keep in sync. */
const DIGITAL_SAT_MODULES = [
  {
    key: "rw_module_1",
    label: "Reading and Writing — Module 1",
    durationMinutes: 32,
    questionCount: 27,
    filterSection: "reading_writing",
    moduleIndex: 1,
  },
  {
    key: "rw_module_2",
    label: "Reading and Writing — Module 2",
    durationMinutes: 32,
    questionCount: 27,
    filterSection: "reading_writing",
    moduleIndex: 2,
  },
  {
    key: "math_module_1",
    label: "Math — Module 1",
    durationMinutes: 35,
    questionCount: 22,
    filterSection: "math",
    moduleIndex: 1,
  },
  {
    key: "math_module_2",
    label: "Math — Module 2",
    durationMinutes: 35,
    questionCount: 22,
    filterSection: "math",
    moduleIndex: 2,
  },
];
import {
  DSAT_SUBTYPE_SPECS,
  SKILLS,
  difficultyForCell,
  generateDsatRwQuestion,
  validateDsatRwQuestion,
} from "./dsat-rw-blueprint.mjs";
import {
  generateConventionsBatch,
  validateConventionsRow,
} from "./dsat-conventions-bank.mjs";
import {
  MATH_SKILLS,
  SKILLS as MATH_SKILL_META,
  generateDsatMathQuestion,
  validateDsatMathQuestion,
} from "./dsat-math-blueprint.mjs";
import { diversifyMathQuestion } from "./math-exam-variety.mjs";

export const SIMULATOR_FORM_COUNT = 10;
export const SIMULATOR_SOURCE = "exam_simulator";

const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);

/**
 * Six module buckets per form. Module 1 is the adaptive baseline; Module 2 has an
 * Easy and a Hard variant so the exam can route students by their Module-1 score.
 */
export const MODULE_BUCKETS = [
  { key: "rw_module_1", section: "reading_writing", count: 27, moduleIndex: 1, variant: null },
  { key: "rw_module_2_easy", section: "reading_writing", count: 27, moduleIndex: 2, variant: "easy" },
  { key: "rw_module_2_hard", section: "reading_writing", count: 27, moduleIndex: 2, variant: "hard" },
  { key: "math_module_1", section: "math", count: 22, moduleIndex: 1, variant: null },
  { key: "math_module_2_easy", section: "math", count: 22, moduleIndex: 2, variant: "easy" },
  { key: "math_module_2_hard", section: "math", count: 22, moduleIndex: 2, variant: "hard" },
];

/**
 * Difficulty mix per slot, shaped by the bucket variant and the form's gradient
 * position (form 1 gentler → form 10 hardest).
 */
function difficultyForBucket(bucket, slot, formIndex) {
  const g = formIndex / Math.max(1, SIMULATOR_FORM_COUNT - 1); // 0..1 hardness
  let easyFrac;
  let medFrac;
  if (bucket.moduleIndex === 1) {
    easyFrac = 0.4 - 0.2 * g; // 0.40 → 0.20
    medFrac = 0.4; // hard 0.20 → 0.40
  } else if (bucket.variant === "easy") {
    easyFrac = 0.55 - 0.15 * g; // 0.55 → 0.40
    medFrac = 0.35; // hard 0.10 → 0.25
  } else {
    easyFrac = 0.1 - 0.05 * g; // 0.10 → 0.05
    medFrac = 0.3 - 0.1 * g; // hard 0.60 → 0.90
  }
  const t = (slot + 0.5) / bucket.count;
  if (t < easyFrac) return "easy";
  if (t < easyFrac + medFrac) return "medium";
  return "hard";
}

function validateRwRow(row) {
  if (CONVENTIONS_SKILLS.has(row.skill_id)) {
    return validateConventionsRow(row);
  }
  return validateDsatRwQuestion(row);
}

/** Seed distinct from the practice bank and challenge pool (offset 5,000,000+). */
function slotSeed(formIndex, bucketIndex, slot) {
  return 5_000_000 + formIndex * 100_000 + bucketIndex * 7_919 + slot * 137;
}

function generateRwSlot({ formIndex, bucket, bucketIndex, slot }) {
  const spec = DSAT_SUBTYPE_SPECS[slot % DSAT_SUBTYPE_SPECS.length];
  const difficulty = difficultyForBucket(bucket, slot, formIndex);
  const seed = slotSeed(formIndex, bucketIndex, slot);

  if (CONVENTIONS_SKILLS.has(spec.skill)) {
    const batch = generateConventionsBatch({
      skill: spec.skill,
      count: 1,
      startIndex: seed,
    });
    const base = batch[0];
    if (!base) return null;
    return {
      ...base,
      difficulty,
      rw_subtype: spec.rw_subtype,
    };
  }

  let q = null;
  for (let attempt = 0; attempt < 12; attempt++) {
    q = generateDsatRwQuestion({
      spec,
      index: seed + attempt * 991,
      difficulty,
    });
    const v = validateRwRow(q);
    if (v.ok) break;
  }
  return q;
}

function generateMathSlot({ formIndex, bucket, bucketIndex, slot }) {
  const skill = MATH_SKILLS[slot % MATH_SKILLS.length];
  const difficulty = difficultyForBucket(bucket, slot, formIndex);
  const seed = slotSeed(formIndex, bucketIndex, slot);

  // Exams are multiple-choice only: the exam scoring path compares a selected
  // option to the correct option, so grid-in (open-response) items can't be
  // graded mid-exam. Prefer an MC item; fall back to any valid item if needed.
  let mc = null;
  let anyValid = null;
  for (let attempt = 0; attempt < 30; attempt++) {
    const cand = generateDsatMathQuestion({
      skill,
      index: seed + attempt * 997,
      difficulty,
    });
    if (!validateDsatMathQuestion(cand).ok) continue;
    anyValid = anyValid ?? cand;
    if (cand.question_type !== "grid_in") {
      mc = cand;
      break;
    }
  }
  const q = mc ?? anyValid;
  if (!q) return null;
  // Diversify the real-world framing so repeated questions of a skill don't read
  // identically (numbers/expressions are preserved; only scenario/stem wording
  // changes). Index varies per form/bucket/slot so each occurrence differs.
  // Coprime-ish multipliers so the same skill's occurrences across buckets/forms
  // land on different variants (avoids a stride that divides the small pools).
  const varied = diversifyMathQuestion(
    q,
    skill,
    formIndex * 53 + bucketIndex * 13 + slot * 7,
  );
  return { ...varied, skill_id: skill };
}

function rowFromGenerated({ formIndex, bucket, slot, generated }) {
  if (!generated) return null;
  const isMath = bucket.section === "math";
  const skillMeta = isMath
    ? MATH_SKILL_META[generated.skill_id]
    : SKILLS[generated.skill_id];

  const { _challenged, ...body } = generated;
  const options = body.options ?? [];
  const correct =
    body.correct_answer ??
    options.find((o) => o.is_correct)?.id ??
    options.find((o) => o.is_correct)?.text ??
    "A";

  return {
    id: randomUUID(),
    question_text: body.question_text,
    stimulus_text: body.stimulus_text ?? null,
    stimulus_type: body.stimulus_type ?? null,
    options,
    correct_answer: correct,
    explanation: body.explanation ?? "See step-by-step rationale after you submit the full exam.",
    hint: null,
    topic: skillMeta?.topic ?? (isMath ? "Algebra" : "Craft and Structure"),
    subtopic: skillMeta?.subtopic ?? generated.skill_id,
    section: isMath ? "math" : "reading_writing",
    domain_id: skillMeta?.domain_id ?? null,
    skill_id: generated.skill_id,
    difficulty: body.difficulty ?? "medium",
    calculator_allowed: isMath,
    exam_type: "SAT",
    question_type: body.question_type ?? "multiple_choice",
    is_platform_question: false,
    ai_generated: true,
    source: SIMULATOR_SOURCE,
    source_metadata: {
      exam_simulator_v1: true,
      simulator_form: formIndex + 1,
      module_key: bucket.key,
      slot,
      filter_section: bucket.section,
      module_index: bucket.moduleIndex,
      m2_variant: bucket.variant,
      form_hardness: formIndex + 1,
      difficulty_band: body.difficulty ?? "medium",
    },
  };
}

export function generateSimulatorForm(formIndex) {
  const rows = [];
  const byModule = {};

  for (let bucketIndex = 0; bucketIndex < MODULE_BUCKETS.length; bucketIndex++) {
    const bucket = MODULE_BUCKETS[bucketIndex];
    byModule[bucket.key] = [];
    for (let slot = 0; slot < bucket.count; slot++) {
      const generated =
        bucket.section === "math"
          ? generateMathSlot({ formIndex, bucket, bucketIndex, slot })
          : generateRwSlot({ formIndex, bucket, bucketIndex, slot });
      const row = rowFromGenerated({ formIndex, bucket, slot, generated });
      if (row) {
        rows.push(row);
        byModule[bucket.key].push(row.id);
      }
    }
  }

  return { rows, byModule, formIndex: formIndex + 1 };
}

export function generateAllSimulatorForms() {
  const allRows = [];
  const forms = [];
  for (let f = 0; f < SIMULATOR_FORM_COUNT; f++) {
    const form = generateSimulatorForm(f);
    allRows.push(...form.rows);
    forms.push({
      form: form.formIndex,
      total: form.rows.length,
      modules: Object.fromEntries(
        Object.entries(form.byModule).map(([k, v]) => [k, v.length]),
      ),
    });
  }
  return { rows: allRows, forms };
}
