/**
 * Digital SAT Reading & Writing Item Generation Blueprint v1.
 * Domain specs, difficulty matrices, passage validators, OnePrep explanations.
 */

import {
  generateRwQuestion,
  metadataFromQuestion,
  mkOpts,
  mkChallengedOpts,
  TIER23_WORDS,
  longTraOptions,
  hardPassage,
  longPassage,
  sentenceCount,
  optionWordCount,
  charLen,
} from "./english-rw-templates.mjs";
import {
  SUBTYPE_PASSAGE_WORD_TARGETS,
  DISTRACTOR_FORMULAS,
  formatDistractorExplanation,
  validateSubtypePassageWords,
  validateDistractorFormulaTags,
} from "./dsat-rw-master-prompt.mjs";

export {
  SUBTYPE_PASSAGE_WORD_TARGETS,
  DISTRACTOR_FORMULAS,
  formatDistractorExplanation,
  validateSubtypePassageWords,
  validateDistractorFormulaTags,
} from "./dsat-rw-master-prompt.mjs";

export const PROJECT_ID = "aioyzumxxsepbnfivvdd";
export const BLUEPRINT_VERSION = "dsat_blueprint_v1";

/** Standard bank size per rw_subtype bucket. */
export const DEFAULT_TARGET_PER_SUBTYPE = 300;

/** Ultra-hard challenged items per rw_subtype (tagged in source_metadata). */
export const CHALLENGED_PER_SUBTYPE = 25;

/** Target buckets: 300+ per rw_subtype (13 buckets → 3900 items). */
export const DSAT_SUBTYPE_SPECS = [
  { skill: "WIC", rw_subtype: "vocabulary_in_context", domain: "craft", label: "Words in Context" },
  { skill: "TSP", rw_subtype: "structure", domain: "craft", label: "Text Structure & Purpose" },
  { skill: "CTC", rw_subtype: "cross_text_response", domain: "craft", label: "Cross-Text Connections" },
  { skill: "CID", rw_subtype: "main_idea", domain: "information", label: "Central Ideas & Details" },
  { skill: "COE", rw_subtype: "textual_evidence", domain: "information", label: "Command of Evidence (Textual)" },
  { skill: "COE", rw_subtype: "quantitative_table", domain: "information", label: "Command of Evidence (Quantitative)" },
  { skill: "INF", rw_subtype: "general", domain: "information", label: "Inferences (General)" },
  { skill: "INF", rw_subtype: "prediction", domain: "information", label: "Inferences (Prediction)" },
  { skill: "INF", rw_subtype: "implication", domain: "information", label: "Inferences (Implication)" },
  { skill: "TRA", rw_subtype: "transition", domain: "expression", label: "Transitions" },
  { skill: "SYN", rw_subtype: "notes_synthesis", domain: "expression", label: "Rhetorical Synthesis" },
  { skill: "BOU", rw_subtype: "boundaries", domain: "conventions", label: "Boundaries" },
  { skill: "FSS", rw_subtype: "form_structure_sense", domain: "conventions", label: "Form/Structure/Sense" },
];

/** Difficulty share per subtype (Digital SAT module scaling). */
export const DIFFICULTY_MIX = {
  easy: 0.42,
  medium: 0.35,
  hard: 0.23,
};

export const PASSAGE_WORD_TARGETS = {
  easy: { min: 25, max: 65 },
  medium: { min: 66, max: 110 },
  hard: { min: 111, max: 150 },
  challenged: { min: 130, max: 200 },
  ctc_each: { min: 50, max: 90 },
  challenged_ctc_each: { min: 111, max: 200 },
  /** Master Manual §7 — Inferences (all INF subtypes) */
  inf: { min: 80, max: 130 },
};

/** Sentence-count gates for hard vs challenged Digital SAT calibration. */
export const SENTENCE_TARGETS = {
  hard: {
    ctcEach: { min: 6 },
    wicPassage: { min: 6, max: 8 },
    traOptionWords: 10,
  },
  challenged: {
    ctcEach: { min: 8, max: 10 },
    stimulus: { min: 8, max: 10 },
    synBullets: { min: 8, max: 10 },
    traOptionWords: 10,
    optionSentences: 2,
  },
};

const SIMPLE_TRANSITIONS = new Set([
  "however", "nevertheless", "yet", "therefore", "thus", "consequently",
  "similarly", "moreover", "furthermore", "for example", "for instance",
]);

/** Sentence-count floors/ceilings aligned to College Board hard-module signals. */
export const PASSAGE_SENTENCE_TARGETS = {
  hard: { min: 6, max: 8 },
  hard_ctc_each: { min: 6, max: null },
  challenged: { min: 8, max: 10 },
  challenged_ctc_each: { min: 8, max: 10 },
};

export const HARD_TRA_OPTION_MIN_WORDS = 10;
export const CHALLENGED_OPTION_MIN_SENTENCES = 2;

const SENTENCE_PADS = [
  "The authors caution that replication remains necessary before treating the finding as settled.",
  "Follow-up work will test whether the pattern holds across additional sites and populations.",
  "Readers should weigh the evidence against limitations the passage explicitly acknowledges.",
  "The conclusion rests on converging observations rather than a single anecdotal report.",
  "Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.",
  "Independent reviewers noted that alternative explanations have not yet been fully excluded.",
  "The team recommends interpreting the result as provisional until broader samples confirm it.",
  "Policy implications depend on whether the observed effect persists under varied conditions.",
];

export const TOPIC_ROTATION = ["literature", "science", "social_studies"];

/** Canonical rw_format per subtype bucket (required in source_metadata). */
export const RW_FORMAT_BY_SUBTYPE = {
  vocabulary_in_context: "passage_mc",
  structure: "passage_mc",
  cross_text_response: "text_1_text_2",
  main_idea: "passage_mc",
  textual_evidence: "supporting_finding",
  quantitative_table: "table_chart",
  general: "passage_mc",
  prediction: "passage_mc",
  implication: "passage_mc",
  transition: "transition_blank",
  notes_synthesis: "bullet_notes",
  boundaries: "grammar_blank",
  form_structure_sense: "grammar_blank",
};

const VALID_SUBTYPES = new Set(DSAT_SUBTYPE_SPECS.map((s) => s.rw_subtype));
const PASSAGE_SUBTYPES = new Set([
  "vocabulary_in_context",
  "structure",
  "main_idea",
  "textual_evidence",
  "general",
  "prediction",
  "implication",
]);
const GRAMMAR_SUBTYPES = new Set(["transition", "boundaries", "form_structure_sense"]);
const GRAMMAR_NO_STIMULUS = new Set(["boundaries", "form_structure_sense"]);

export const SKILLS = {
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
};

const SCIENCE_OPENERS = [
  (n) => `Researchers studying ecosystem ${n} documented that`,
  (n) => `In a controlled trial ${n}, investigators found that`,
  (n) => `A longitudinal analysis of dataset ${n} indicates that`,
];

const SOCIAL_OPENERS = [
  (n) => `Historians examining archive ${n} argue that`,
  (n) => `Policy analysts reviewing program ${n} conclude that`,
  (n) => `Urban planners evaluating corridor ${n} propose that`,
];

const LIT_OPENERS = [
  (n) => `In the memoir excerpt ${n}, the narrator suggests that`,
  (n) => `The novelist writing in passage ${n} emphasizes that`,
  (n) => `The essayist reflecting on experience ${n} contends that`,
];

const PASSAGE_CLOSERS = [
  "The authors caution that replication remains necessary before treating the finding as settled.",
  "Follow-up work will test whether the pattern holds across additional sites and populations.",
  "Readers should weigh the evidence against limitations the passage explicitly acknowledges.",
  "The conclusion rests on converging observations rather than a single anecdotal report.",
  "Stakeholders may use the finding to guide practice while monitoring for contextual exceptions.",
];

const TABLE_HEADERS = [
  ["Year", "Sample size", "Mean score", "Std. dev."],
  ["Group", "Hours studied", "Post-test %", "Gain"],
  ["Site", "Temperature (°C)", "Recruitment rate", "Algae cover %"],
  ["Quarter", "Units sold", "Return rate %", "Margin %"],
];

export function wordCount(text) {
  if (!text) return 0;
  return String(text).trim().split(/\s+/).filter(Boolean).length;
}

/** Count prose sentences (split on . ! ? followed by whitespace). */
export function countSentences(text) {
  return sentenceCount(text);
}

export function splitCtcTexts(stimulusText) {
  const prose = String(stimulusText ?? "").trim();
  const parts = prose.split(/\n\nText 2\n/i);
  const t1 = parts[0]?.replace(/^Text 1\n/i, "").trim() ?? "";
  const t2 = parts[1]?.trim() ?? "";
  return { t1, t2 };
}

export function countBulletNotes(text) {
  return (String(text ?? "").match(/^•\s/gm) ?? []).length;
}

export function padToSentenceRange(text, min, max) {
  let result = String(text ?? "").trim();
  let count = countSentences(result);
  let i = 0;
  while (count < min && i < 24) {
    result = `${result} ${PASSAGE_CLOSERS[i % PASSAGE_CLOSERS.length]}`;
    count = countSentences(result);
    i++;
  }
  if (count > max) {
    result = result
      .split(/(?<=[.!?])\s+/)
      .filter((s) => s.trim().length > 0)
      .slice(0, max)
      .join(" ");
  }
  return result.trim();
}

function isChallengedQuestion(q) {
  const meta = q.source_metadata ?? {};
  return (
    meta.challenged_problem === true ||
    meta.challenged_problem === "true" ||
    q._challenged === true ||
    meta.difficulty_tier === "challenged"
  );
}

/**
 * Sentence / option-length quality gates for hard and challenged tiers.
 * @returns {{ ok: boolean, reasons: string[] }}
 */
export function validateContentQuality(q) {
  const reasons = [];
  const meta = q.source_metadata ?? {};
  const rwSubtype = q.rw_subtype ?? meta.rw_subtype;
  const rwFormat = resolveRwFormat(rwSubtype, q.rw_format ?? meta.rw_format, q._index ?? 0);
  const challenged = isChallengedQuestion(q);
  const difficulty = challenged ? "challenged" : q.difficulty;

  if (rwSubtype === "cross_text_response" && q.stimulus_text) {
    const { t1, t2 } = splitCtcTexts(q.stimulus_text);
    const s1 = countSentences(t1);
    const s2 = countSentences(t2);
    if (challenged) {
      const { min, max } = SENTENCE_TARGETS.challenged.ctcEach;
      if (s1 < min || s1 > max) reasons.push(`ctc_t1_sentences:${s1}`);
      if (s2 < min || s2 > max) reasons.push(`ctc_t2_sentences:${s2}`);
    } else if (difficulty === "hard") {
      const { min } = SENTENCE_TARGETS.hard.ctcEach;
      if (s1 < min) reasons.push(`ctc_t1_sentences:${s1}`);
      if (s2 < min) reasons.push(`ctc_t2_sentences:${s2}`);
    }
  }

  if (challenged) {
    if (rwSubtype === "notes_synthesis") {
      const bullets = countBulletNotes(q.stimulus_text ?? "");
      const { min, max } = SENTENCE_TARGETS.challenged.synBullets;
      if (bullets < min || bullets > max) reasons.push(`syn_bullets:${bullets}`);
    } else if (q.stimulus_text && rwFormat !== "text_1_text_2") {
      const prose = extractPassageProse(q.stimulus_text, rwFormat);
      const s = countSentences(prose);
      const { min, max } = SENTENCE_TARGETS.challenged.stimulus;
      // Master Manual §10–11: BOU/FSS challenged items use 60–90 word passages, not 8–10 sentence prose blocks.
      const masterManualGrammar = rwSubtype === "boundaries" || rwSubtype === "form_structure_sense";
      if (!masterManualGrammar && (s < min || s > max)) reasons.push(`stimulus_sentences:${s}`);
    }
    const opts = Array.isArray(q.options) ? q.options : [];
    const need = SENTENCE_TARGETS.challenged.optionSentences;
    for (const o of opts) {
      const sc = countSentences(o.text);
      if (sc < need) reasons.push(`option_sentences:${o.id}:${sc}`);
    }
  } else if (difficulty === "hard") {
    const needsHardPassage =
      q.stimulus_text &&
      (rwSubtype === "vocabulary_in_context" ||
        PASSAGE_SUBTYPES.has(rwSubtype) ||
        rwSubtype === "quantitative_table" ||
        rwSubtype === "transition");
    if (needsHardPassage) {
      const prose = extractPassageProse(q.stimulus_text, rwFormat);
      const s = countSentences(prose);
      const { min, max } = SENTENCE_TARGETS.hard.wicPassage;
      if (s < min || s > max) reasons.push(`hard_passage_sentences:${s}`);
    }
  }

  if (rwSubtype === "transition" && (difficulty === "hard" || challenged)) {
    const minWords = challenged
      ? SENTENCE_TARGETS.challenged.traOptionWords
      : SENTENCE_TARGETS.hard.traOptionWords;
    for (const o of q.options ?? []) {
      const text = String(o.text ?? "").trim();
      const wc = optionWordCount(text);
      const simple = text.toLowerCase().replace(/[.,;:!?]+$/, "");
      if (wc < minWords || SIMPLE_TRANSITIONS.has(simple)) {
        reasons.push(`tra_option_words:${o.id}:${wc}`);
      }
    }
  }

  return { ok: reasons.length === 0, reasons };
}

export { sentenceCount, optionWordCount };

/** Pad or trim prose to a sentence-count band (used by hard/challenged generators). */
export function padToSentenceCount(text, minS, maxS = null) {
  let result = String(text ?? "").trim();
  let count = sentenceCount(result);
  let i = 0;
  while (count < minS) {
    const pad = SENTENCE_PADS[i % SENTENCE_PADS.length];
    result += (result.endsWith(".") || result.endsWith("!") || result.endsWith("?") ? " " : ". ") + pad;
    count = sentenceCount(result);
    i++;
  }
  if (maxS != null && count > maxS) {
    const sentences = result.split(/(?<=[.!?])\s+/).filter(Boolean);
    result = sentences.slice(0, maxS).join(" ");
  }
  return result.trim();
}

export function trimToWordRange(text, min, max) {
  const words = String(text ?? "").trim().split(/\s+/).filter(Boolean);
  if (words.length <= max) {
    let padded = [...words];
    let i = 0;
    while (padded.length < min) {
      padded.push(PASSAGE_CLOSERS[i % PASSAGE_CLOSERS.length].split(/\s+/));
      padded = padded.flat();
      i++;
    }
    return padded.slice(0, max).join(" ");
  }
  return words.slice(0, max).join(" ");
}

/** Passage prose only — strips table markdown for COE quantitative items. */
export function extractPassageProse(stimulusText, rwFormat) {
  if (!stimulusText) return "";
  if (rwFormat === "table_chart") {
    const tableIdx = stimulusText.search(/\n\nThe table summarizes|\n\n\| /);
    return (tableIdx >= 0 ? stimulusText.slice(0, tableIdx) : stimulusText).trim();
  }
  return String(stimulusText).trim();
}

export function validatePassageWords(text, difficulty, format, rwFormat, { challenged = false, rwSubtype } = {}) {
  const fmt = rwFormat ?? format;
  const prose = extractPassageProse(text, fmt);
  if (!prose) return { ok: true, words: 0 };

  // Master Manual subtype gates — BOU/FSS stay 60–90 even on challenged tier (§10–11).
  const masterManualGrammar = rwSubtype === "boundaries" || rwSubtype === "form_structure_sense";
  if (rwSubtype && SUBTYPE_PASSAGE_WORD_TARGETS[rwSubtype] && (!challenged || masterManualGrammar)) {
    const subtypeResult = validateSubtypePassageWords(text, rwSubtype, fmt);
    if (!subtypeResult.ok) {
      return {
        ok: false,
        words: subtypeResult.words,
        w1: subtypeResult.w1,
        w2: subtypeResult.w2,
        bullets: subtypeResult.bullets,
        reason: subtypeResult.reason,
      };
    }
    return {
      ok: true,
      words: subtypeResult.words ?? wordCount(prose),
      w1: subtypeResult.w1,
      w2: subtypeResult.w2,
      bullets: subtypeResult.bullets,
    };
  }

  if (fmt === "text_1_text_2" || format === "text_1_text_2") {
    const { t1, t2 } = splitCtcTexts(prose);
    const w1 = wordCount(t1);
    const w2 = wordCount(t2);
    const { min, max } = challenged ? PASSAGE_WORD_TARGETS.challenged_ctc_each : PASSAGE_WORD_TARGETS.ctc_each;
    return { ok: w1 >= min && w1 <= max && w2 >= min && w2 <= max, words: w1 + w2, w1, w2 };
  }
  if (fmt === "bullet_notes") {
    const bullets = countBulletNotes(prose);
    const bulletTarget = SUBTYPE_PASSAGE_WORD_TARGETS.notes_synthesis?.bullets;
    if (bulletTarget && !challenged) {
      return { ok: bullets >= bulletTarget.min && bullets <= bulletTarget.max, words: wordCount(prose), bullets };
    }
    return { ok: true, words: wordCount(prose), bullets };
  }
  const tier = challenged ? "challenged" : difficulty;
  const { min, max } = PASSAGE_WORD_TARGETS[tier] ?? PASSAGE_WORD_TARGETS[difficulty] ?? PASSAGE_WORD_TARGETS.medium;
  const w = wordCount(prose);
  return { ok: w >= min && w <= max, words: w };
}

/**
 * Sentence-count validation for hard vs challenged tiers.
 * @returns {{ ok: boolean, reason?: string, sentences?: number, s1?: number, s2?: number }}
 */
export function validatePassageSentences(text, { challenged, isHard, rwSubtype, rwFormat }) {
  const fmt = rwFormat ?? "passage_mc";
  if (fmt === "bullet_notes") return { ok: true, sentences: 0 };

  const prose = extractPassageProse(text, fmt);
  if (!prose) return { ok: true, sentences: 0 };

  if (fmt === "text_1_text_2" || rwSubtype === "cross_text_response") {
    const { t1, t2 } = splitCtcTexts(prose);
    const s1 = sentenceCount(t1);
    const s2 = sentenceCount(t2);
    const targets = challenged ? PASSAGE_SENTENCE_TARGETS.challenged_ctc_each : isHard ? PASSAGE_SENTENCE_TARGETS.hard_ctc_each : null;
    if (!targets) return { ok: true, sentences: s1 + s2, s1, s2 };
    const ok1 = s1 >= targets.min && (targets.max == null || s1 <= targets.max);
    const ok2 = s2 >= targets.min && (targets.max == null || s2 <= targets.max);
    if (!ok1 || !ok2) {
      return { ok: false, reason: `ctc_sentence_count:t1=${s1},t2=${s2}`, sentences: s1 + s2, s1, s2 };
    }
    return { ok: true, sentences: s1 + s2, s1, s2 };
  }

  const needsHardSentences = isHard && rwSubtype === "vocabulary_in_context";

  if (challenged) {
    const s = sentenceCount(prose);
    const { min, max } = PASSAGE_SENTENCE_TARGETS.challenged;
    if (s < min || s > max) return { ok: false, reason: `challenged_passage_sentences:${s}`, sentences: s };
    return { ok: true, sentences: s };
  }

  if (needsHardSentences) {
    const s = sentenceCount(prose);
    const { min, max } = PASSAGE_SENTENCE_TARGETS.hard;
    if (s < min || s > max) return { ok: false, reason: `hard_passage_sentences:${s}`, sentences: s };
    return { ok: true, sentences: s };
  }

  return { ok: true, sentences: sentenceCount(prose) };
}

export function validateTraOptions(options, { isHard, challenged } = {}) {
  if (!isHard && !challenged) return { ok: true };
  const opts = Array.isArray(options) ? options : [];
  for (const o of opts) {
    const words = optionWordCount(o.text);
    if (words < HARD_TRA_OPTION_MIN_WORDS) {
      return { ok: false, reason: `tra_option_words:${o.id}=${words}` };
    }
    if (challenged && sentenceCount(o.text) < CHALLENGED_OPTION_MIN_SENTENCES) {
      return { ok: false, reason: `challenged_tra_option_sentences:${o.id}` };
    }
  }
  return { ok: true };
}

export function validateChallengedOptions(options) {
  const opts = Array.isArray(options) ? options : [];
  for (const o of opts) {
    const s = sentenceCount(o.text);
    if (s < CHALLENGED_OPTION_MIN_SENTENCES) {
      return { ok: false, reason: `challenged_option_sentences:${o.id}=${s}` };
    }
  }
  return { ok: true };
}

export function resolveRwFormat(rwSubtype, explicitFormat, index) {
  if (rwSubtype === "textual_evidence") {
    return explicitFormat ?? (index % 2 === 0 ? "supporting_finding" : "two_part_evidence");
  }
  return explicitFormat ?? RW_FORMAT_BY_SUBTYPE[rwSubtype] ?? null;
}

function validateOptions(q) {
  const opts = Array.isArray(q.options) ? q.options : [];
  if (opts.length !== 4) return { ok: false, reason: "options_count", detail: opts.length };
  const ids = opts.map((o, i) => String(o.id ?? ["A", "B", "C", "D"][i]));
  if (!ids.every((id, i) => id === ["A", "B", "C", "D"][i])) {
    return { ok: false, reason: "options_ids", detail: ids.join(",") };
  }
  const correct = opts.filter((o) => o.is_correct);
  if (correct.length !== 1) return { ok: false, reason: "correct_count", detail: correct.length };
  const correctId = String(q.correct_answer ?? correct[0]?.id ?? "");
  if (correctId !== String(correct[0]?.id)) {
    return { ok: false, reason: "correct_answer_mismatch", detail: correctId };
  }
  for (const o of opts) {
    if (!String(o.text ?? "").trim()) return { ok: false, reason: "empty_option_text" };
    if (!String(o.explanation ?? "").trim()) return { ok: false, reason: "empty_option_explanation" };
  }
  return { ok: true, correctId };
}

function validateExplanation(explanation) {
  const expl = String(explanation ?? "");
  if (!expl.startsWith("Step 1 —")) return { ok: false, reason: "missing_step1" };
  if (!expl.includes("Distractor analysis:")) return { ok: false, reason: "missing_distractor_block" };
  if (!/^Step 2 —/m.test(expl) || !/^Step 3 —/m.test(expl)) {
    return { ok: false, reason: "missing_steps" };
  }
  return { ok: true };
}

/** Grammar-token subtypes measure spread on token class, not sentence length. */
const LENGTH_PARITY_TOKEN_SUBTYPES = new Set(["boundaries", "form_structure_sense"]);

/**
 * @param {Array<{ text: string }>} options
 * @param {{ rw_subtype?: string, maxSpreadPct?: number }} [opts]
 * @returns {{ ok: boolean, char_spread_pct: number, word_spread_pct: number, correct_is_longest: boolean, reasons: string[] }}
 */
export function validateOptionLengthParity(options, opts = {}) {
  const rwSubtype = opts.rw_subtype;
  const maxSpread = opts.maxSpreadPct ?? 15;
  const texts = (options ?? []).map((o) => String(o.text ?? ""));
  const reasons = [];

  if (LENGTH_PARITY_TOKEN_SUBTYPES.has(rwSubtype)) {
    return { ok: true, char_spread_pct: 0, word_spread_pct: 0, correct_is_longest: false, reasons: [] };
  }

  const charLens = texts.map((t) => (t ? t.length : 0));
  const wordLens = texts.map((t) => optionWordCount(t));
  const charMin = Math.min(...charLens);
  const charMax = Math.max(...charLens);
  const charSpread = charMin > 0 ? Math.round(1000 * (charMax - charMin) / charMin) / 10 : 0;
  const wordAvg = wordLens.reduce((a, b) => a + b, 0) / Math.max(wordLens.length, 1);
  const wordSpread = wordAvg > 0 ? Math.round(1000 * (Math.max(...wordLens) - Math.min(...wordLens)) / wordAvg) / 10 : 0;

  const correct = options.find((o) => o.is_correct);
  const correctLen = correct ? charLen(correct.text) : 0;
  const correctIsLongest = correctLen > 0 && correctLen >= charMax;

  // TRA easy/medium: matched transition tokens (grammar-token class, not sentence-length parity)
  if (rwSubtype === "transition" && charMax <= 25) {
    return {
      ok: true,
      char_spread_pct: charSpread,
      word_spread_pct: wordSpread,
      correct_is_longest: correctIsLongest,
      reasons: [],
    };
  }

  if (charSpread > maxSpread) reasons.push(`char_spread:${charSpread}`);
  if (wordSpread > maxSpread) reasons.push(`word_spread:${wordSpread}`);

  return {
    ok: reasons.length === 0,
    char_spread_pct: charSpread,
    word_spread_pct: wordSpread,
    correct_is_longest: correctIsLongest,
    reasons,
  };
}

/**
 * @param {string[]} letters correct_answer values
 * @param {{ tolerancePct?: number }} [opts]
 */
export function validateCorrectLetterDistribution(letters, opts = {}) {
  const tolerance = opts.tolerancePct ?? 3;
  const target = 25;
  const counts = { A: 0, B: 0, C: 0, D: 0 };
  for (const l of letters) counts[l] = (counts[l] ?? 0) + 1;
  const n = letters.length || 1;
  const reasons = [];
  for (const id of ["A", "B", "C", "D"]) {
    const pct = (100 * counts[id]) / n;
    if (Math.abs(pct - target) > tolerance) reasons.push(`letter_${id}:${pct.toFixed(1)}%`);
  }
  return { ok: reasons.length === 0, counts, reasons };
}

/**
 * Strict Digital SAT RW blueprint validation for prod audit + generation gate.
 * @returns {{ ok: boolean, reasons: string[] }}
 */
export function validateDsatRwQuestion(q) {
  const reasons = [];
  const meta = q.source_metadata ?? {};
  const rwSubtype = q.rw_subtype ?? meta.rw_subtype;
  const rwFormat = resolveRwFormat(rwSubtype, q.rw_format ?? meta.rw_format, q._index ?? 0);

  if (meta.dsat_blueprint_v1 !== true && q.dsat_blueprint_v1 !== true) {
    reasons.push("missing_dsat_blueprint_v1");
  }
  if (!rwSubtype || !VALID_SUBTYPES.has(rwSubtype)) {
    reasons.push("missing_or_invalid_rw_subtype");
  }
  if (!rwFormat) reasons.push("missing_rw_format");

  if (!String(q.question_text ?? "").trim()) reasons.push("empty_stem");

  const optV = validateOptions(q);
  if (!optV.ok) reasons.push(optV.reason);

  const explV = validateExplanation(q.explanation);
  if (!explV.ok) reasons.push(explV.reason);

  const needsPassage = PASSAGE_SUBTYPES.has(rwSubtype) || rwSubtype === "cross_text_response" || rwSubtype === "quantitative_table";
  const grammarOnly = GRAMMAR_SUBTYPES.has(rwSubtype);

  if (needsPassage && !String(q.stimulus_text ?? "").trim()) {
    reasons.push("missing_stimulus");
  }
  if (grammarOnly && GRAMMAR_NO_STIMULUS.has(rwSubtype) && String(q.stimulus_text ?? "").trim()) {
    const challengedGrammar = meta.challenged_problem === true || q._challenged === true;
    const hasBlank = String(q.stimulus_text).includes("______");
    if (!challengedGrammar && !hasBlank) reasons.push("unexpected_stimulus_for_grammar");
  }
  if (rwSubtype === "notes_synthesis" && !String(q.stimulus_text ?? "").includes("•")) {
    reasons.push("missing_bullet_notes");
  }

  if (q.stimulus_text && (needsPassage || rwSubtype === "notes_synthesis" || grammarOnly)) {
    const format =
      rwFormat === "text_1_text_2" ? "text_1_text_2"
        : rwFormat === "bullet_notes" ? "bullet_notes"
          : "passage_mc";
    const challenged = meta.challenged_problem === true || q._challenged === true;
    const pw = validatePassageWords(q.stimulus_text, q.difficulty, format, rwFormat, { challenged, rwSubtype });
    if (!pw.ok) reasons.push(pw.reason ?? `passage_word_count:${pw.words ?? pw.bullets ?? 0}`);
  }

  if (rwSubtype === "vocabulary_in_context" && !/most nearly means/i.test(q.question_text ?? "")) {
    reasons.push("wic_stem_format");
  }
  if (rwSubtype === "transition" && !/completes the text|transition|logical/i.test(q.question_text ?? "")) {
    reasons.push("tra_stem_format");
  }

  const quality = validateContentQuality(q);
  if (!quality.ok) reasons.push(...quality.reasons);

  const parity = validateOptionLengthParity(q.options ?? [], { rw_subtype: rwSubtype });
  if (!parity.ok) reasons.push(...parity.reasons);

  const tagCheck = validateDistractorFormulaTags(q.options ?? [], rwSubtype);
  if (!tagCheck.ok) reasons.push(...tagCheck.reasons);

  return { ok: reasons.length === 0, reasons, rwSubtype, rwFormat };
}

function topicForIndex(index) {
  return TOPIC_ROTATION[index % TOPIC_ROTATION.length];
}

function openerForTopic(topic, n) {
  if (topic === "science") return SCIENCE_OPENERS[n % SCIENCE_OPENERS.length](n);
  if (topic === "social_studies") return SOCIAL_OPENERS[n % SOCIAL_OPENERS.length](n);
  return LIT_OPENERS[n % LIT_OPENERS.length](n);
}

export function buildPassage(difficulty, index, { challenged = false } = {}) {
  if (challenged || difficulty === "challenged") {
    const n = index + 1;
    const { min, max } = PASSAGE_WORD_TARGETS.hard;
    let passage = trimToWordRange(hardPassage(n), min, max);
    passage = padToSentenceCount(passage, PASSAGE_SENTENCE_TARGETS.challenged.min, PASSAGE_SENTENCE_TARGETS.challenged.max);
    return trimToWordRange(passage, min, max);
  }
  const topic = topicForIndex(index);
  const n = index + 1;
  const opener = openerForTopic(topic, n);
  const body =
    `local conditions shape outcomes in ways that single-variable models often miss. ` +
    `Observers recorded consistent patterns across ${3 + (n % 5)} measurement cycles, ` +
    `comparing baseline and intervention periods while holding unrelated variables stable. ` +
    `When the expected mechanism appeared, downstream indicators shifted in the same direction, ` +
    `suggesting the relationship is not merely correlational in this context. ` +
    `Community interviews and field notes repeatedly referenced practical constraints—time, cost, and access—that ` +
    `moderate how quickly any intervention can scale. ` +
    `${PASSAGE_CLOSERS[n % PASSAGE_CLOSERS.length]}`;
  const raw = `${opener} ${body}`;
  const { min, max } = PASSAGE_WORD_TARGETS[difficulty] ?? PASSAGE_WORD_TARGETS.medium;
  let passage = trimToWordRange(raw, min, max);
  if (difficulty === "hard") {
    passage = padToSentenceCount(passage, PASSAGE_SENTENCE_TARGETS.hard.min, PASSAGE_SENTENCE_TARGETS.hard.max);
    passage = trimToWordRange(passage, min, max);
  }
  return passage;
}

export function buildCtcStimulus(difficulty, index, { challenged = false } = {}) {
  const effectiveDifficulty = challenged ? "challenged" : difficulty;
  const n = index + 1;
  const topic = topicForIndex(index);
  const y1 = 2008 + (n % 10);
  const y2 = 2018 + (n % 8);
  const t1Base =
    topic === "science"
      ? `Text 1\nIn ${y1}, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.`
      : topic === "social_studies"
        ? `Text 1\nIn ${y1}, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim before longitudinal plant data had accumulated.`
        : `Text 1\nIn ${y1}, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because, in her view, passive park use produced negligible health returns. Critics noted the model relied on self-reported activity logs rather than clinical biomarkers.`;

  const t2Base =
    topic === "science"
      ? `Text 2\nA ${y2} study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks, suggesting sleep supports multiple memory systems. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.`
      : topic === "social_studies"
        ? `Text 2\nA ${y2} industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign and safety retraining as more decisive than the robots themselves.`
        : `Text 2\nA ${y2} longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers reviewing the data began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.`;

  const { min, max } = PASSAGE_WORD_TARGETS.ctc_each;
  let t1 = trimToWordRange(t1Base.replace(/^Text 1\n/, ""), min, max);
  let t2 = trimToWordRange(t2Base.replace(/^Text 2\n/, ""), min, max);
  if (effectiveDifficulty === "hard" || effectiveDifficulty === "challenged") {
    const sentMin = effectiveDifficulty === "challenged"
      ? SENTENCE_TARGETS.challenged.ctcEach.min
      : SENTENCE_TARGETS.hard.ctcEach.min;
    const sentMax = effectiveDifficulty === "challenged" ? SENTENCE_TARGETS.challenged.ctcEach.max : null;
    t1 = padToSentenceRange(t1, sentMin, sentMax ?? sentMin + 4);
    t2 = padToSentenceRange(t2, sentMin, sentMax ?? sentMin + 4);
    t1 = trimToWordRange(t1, min, max);
    t2 = trimToWordRange(t2, min, max);
  }
  return `Text 1\n${t1}\n\nText 2\n${t2}`;
}

function buildQuantTableStimulus(difficulty, index) {
  const n = index + 1;
  const headers = TABLE_HEADERS[n % TABLE_HEADERS.length];
  const rows = [];
  for (let r = 0; r < 4; r++) {
    const base = 10 + n + r * 3;
    rows.push(`| ${2018 + r} | ${base * 5} | ${(base + r) % 20 + 62} | ${(r + 2) % 7 + 3} |`);
  }
  const passage = buildPassage(difficulty, index);
  const table = `| ${headers.join(" | ")} |\n| ${headers.map(() => "---").join(" | ")} |\n${rows.join("\n")}`;
  return `${passage}\n\nThe table summarizes results from the study described above.\n\n${table}`;
}

function highlightPhrase(stimulus, fallback) {
  if (!stimulus) return fallback;
  const words = stimulus.replace(/\|/g, " ").split(/\s+/).filter((w) => w.length > 6);
  return words[(words.length / 3) | 0] ?? fallback;
}

function analyzeEnglishDistractor(opt, correctText, rwSubtype, formulaName) {
  const text = String(opt.text ?? "").slice(0, 90);
  if (opt.explanation?.length > 20) {
    if (formulaName && !opt.explanation.includes(`[${formulaName}]`)) {
      return formatDistractorExplanation(formulaName, opt.explanation);
    }
    return opt.explanation;
  }
  let rationale;
  if (/never|always|only|cannot|impossible|all|none/i.test(text)) {
    rationale = `overstates the passage with absolute language (${text}…)`;
  } else if (correctText && text.length > 10 && correctText.slice(0, 20) === text.slice(0, 20)) {
    rationale = "is partially aligned but misses a key qualification in the passage";
  } else {
    rationale = `(${text}…) contradicts or extends beyond the textual evidence`;
  }
  const formula = formulaName ?? "Scope error";
  return formatDistractorExplanation(formula, `Choice ${opt.id} ${rationale}.`);
}

/**
 * OnePrep-compatible explanation: Step 1 — Title blocks + Distractor analysis + per-option rationale.
 */
export function buildOnePrepExplanation(q, { skill, rw_subtype, difficulty }) {
  const opts = (q.options ?? []).map((o, i) => ({
    id: String(o.id ?? ["A", "B", "C", "D"][i]),
    text: String(o.text ?? ""),
    is_correct: Boolean(o.is_correct),
    explanation: String(o.explanation ?? ""),
  }));
  const correct = opts.find((o) => o.is_correct);
  const correctId = correct?.id ?? q.correct_answer ?? "A";
  const stimulus = q.stimulus_text ?? "";
  const phrase = highlightPhrase(stimulus, "the central claim");

  const stepTitles = {
    vocabulary_in_context: ["Locate the word in context", "Test each meaning", "Select the best fit"],
    structure: ["Identify the passage organization", "Match structure to purpose", "Confirm the description"],
    cross_text_response: ["Summarize each text", "Compare the perspectives", "Choose the best response"],
    main_idea: ["Identify the central claim", "Eliminate scope errors", "Confirm the main idea"],
    textual_evidence: ["State the claim", "Find supporting language", "Select the best evidence"],
    quantitative_table: ["Read the table", "Connect data to the claim", "Select supported conclusion"],
    general: ["Identify what is stated", "Draw a bounded inference", "Confirm the inference"],
    prediction: ["Note current findings", "Project a likely next step", "Select the forecast"],
    implication: ["Identify stated logic", "Extend with reasonable limits", "Confirm the implication"],
    transition: ["Identify the relationship", "Test transition logic", "Complete the sentence"],
    notes_synthesis: ["Review the notes", "Match the rhetorical goal", "Select effective synthesis"],
    boundaries: ["Locate clause boundaries", "Apply punctuation rules", "Select the correct boundary"],
    form_structure_sense: ["Identify the subject", "Check agreement and form", "Select the grammatical option"],
  };

  const titles = stepTitles[rw_subtype] ?? ["Understand the question", "Analyze the choices", "Confirm the answer"];

  const steps = [
    `Step 1 — ${titles[0]}\n` +
      (stimulus
        ? `Focus on {{yellow:${phrase}}} in the passage. The ${rw_subtype.replace(/_/g, " ")} item asks you to ${titles[0].toLowerCase()} before comparing choices.`
        : `The stem tests ${rw_subtype.replace(/_/g, " ")} conventions. ${q.question_text?.slice(0, 120) ?? ""}`),

    `Step 2 — ${titles[1]}\n` +
      `Compare each option against explicit textual evidence. On ${difficulty} items, correct answers usually restate the passage faithfully without absolute words the text does not support.`,

    `Step 3 — ${titles[2]}\n` +
      `Choice ${correctId} is correct: ${String(correct?.text ?? "").slice(0, 160)}${(correct?.text?.length ?? 0) > 160 ? "…" : ""}.`,
  ];

  const formulas = DISTRACTOR_FORMULAS[rw_subtype] ?? [];
  let distractorFormulaIdx = 0;

  let expl = steps.join("\n\n");
  expl += `\n\nDistractor analysis:`;
  for (const o of opts) {
    if (!o.is_correct) {
      const formula = formulas[distractorFormulaIdx % Math.max(formulas.length, 1)];
      expl += `\n- ${o.id}: ${analyzeEnglishDistractor(o, correct?.text, rw_subtype, formula)}`;
      distractorFormulaIdx++;
    }
  }

  distractorFormulaIdx = 0;
  const newOpts = opts.map((o) => ({
    ...o,
    explanation: o.is_correct
      ? `Correct (${correctId}). ${String(o.explanation || "Matches the passage logic.").slice(0, 220)}`
      : analyzeEnglishDistractor(
          o,
          correct?.text,
          rw_subtype,
          formulas[distractorFormulaIdx++ % Math.max(formulas.length, 1)],
        ),
  }));

  return { explanation: expl, options: newOpts, correct_answer: correctId };
}

function forceSubtype(raw, spec, index, difficulty, { challenged = false } = {}) {
  const { skill, rw_subtype } = spec;
  const effectiveDifficulty = challenged ? "hard" : difficulty;
  let q = { ...raw };

  if (rw_subtype === "quantitative_table") {
    const stimulus = buildQuantTableStimulus(effectiveDifficulty, index + (challenged ? 9000 : 0));
    q = {
      stimulus_text: stimulus,
      stimulus_type: "passage",
      question_text:
        "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
      options: mkOpts(
        "C",
        [
          "The table shows declining sample sizes, contradicting the passage.",
          "Every row lists identical means, proving the effect is constant across years.",
          "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
          "The table replaces the passage as the only source of evidence.",
        ],
        [
          "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
          "Means are not identical across rows.",
          "The trend in means supports the passage's claim of improvement over time.",
          "Both passage and table must be used together.",
        ],
      ),
      correct_answer: "C",
      explanation: "Quantitative evidence items require linking table trends to the passage claim.",
      rw_subtype: "quantitative_table",
      rw_format: "table_chart",
    };
    return q;
  }

  if (skill === "INF") {
    const variant = rw_subtype === "prediction" ? 1 : rw_subtype === "implication" ? 2 : 0;
    const base = generateRwQuestion("INF", effectiveDifficulty, index + variant * 1000 + (challenged ? 7000 : 0));
    q = { ...base, rw_subtype };
    if (variant === 1) q.rw_subtype = "prediction";
    if (variant === 2) q.rw_subtype = "implication";
    if (variant === 0) q.rw_subtype = "general";
  } else if (skill === "COE" && rw_subtype === "textual_evidence") {
    const base = generateRwQuestion("COE", effectiveDifficulty, index + (challenged ? 6000 : 0));
    q = { ...base, rw_subtype: index % 2 === 0 ? "textual_evidence" : "part_a_part_b" };
    q.rw_format = index % 2 === 0 ? "supporting_finding" : "two_part_evidence";
  } else {
    const base = generateRwQuestion(skill, effectiveDifficulty, index + (challenged ? 8000 : 0));
    q = { ...base, rw_subtype: rw_subtype ?? base.rw_subtype };
  }

  if (skill !== "TRA" && skill !== "BOU" && skill !== "FSS" && skill !== "SYN" && rw_subtype !== "quantitative_table") {
    if (skill === "CTC") {
      q.stimulus_text = buildCtcStimulus(effectiveDifficulty, index + (challenged ? 5000 : 0), { challenged });
      q.rw_format = "text_1_text_2";
    } else if (q.stimulus_text || challenged) {
      q.stimulus_text = buildPassage(effectiveDifficulty, index, { challenged });
      if (skill === "WIC") {
        const words = challenged || effectiveDifficulty === "hard" ? TIER23_WORDS : ["mitigate", "tenuous", "bolster", "ambiguous", "scrutinize"];
        const word = words[index % words.length];
        const { min, max } = PASSAGE_WORD_TARGETS[effectiveDifficulty] ?? PASSAGE_WORD_TARGETS.medium;
        let passage = buildPassage(effectiveDifficulty, index, { challenged });
        passage = passage.replace(/\b(conclusion|finding|relationship|pattern|claim|outcome)\b/i, word);
        if (!passage.includes(word)) {
          passage = trimToWordRange(
            `${passage.split(/\s+/).slice(0, -8).join(" ")} The team's ${word} remained uncertain until replication confirmed the pattern.`,
            min,
            max,
          );
        } else {
          passage = trimToWordRange(passage, min, max);
        }
        if (challenged) {
          passage = padToSentenceRange(
            passage,
            SENTENCE_TARGETS.challenged.stimulus.min,
            SENTENCE_TARGETS.challenged.stimulus.max,
          );
        } else if (effectiveDifficulty === "hard") {
          passage = padToSentenceRange(
            passage,
            SENTENCE_TARGETS.hard.wicPassage.min,
            SENTENCE_TARGETS.hard.wicPassage.max,
          );
        }
        q.stimulus_text = passage;
        q.question_text = `As used in the passage, "${word}" most nearly means`;
        q.rw_format = "passage_mc";
      }
    }
  }

  if (skill === "TRA" && (effectiveDifficulty === "hard" || challenged)) {
    const correctId = "A";
    const opts = longTraOptions(correctId, "Nevertheless", index + (challenged ? 4000 : 0), { challenged });
    q.options = opts;
    q.correct_answer = correctId;
    if (challenged) {
      let p = trimToWordRange(hardPassage(index + 300), PASSAGE_WORD_TARGETS.hard.min, PASSAGE_WORD_TARGETS.hard.max);
      p = padToSentenceRange(p, SENTENCE_TARGETS.challenged.stimulus.min, SENTENCE_TARGETS.challenged.stimulus.max);
      q.stimulus_text = `${p} ______ the second clause extends the author's nuanced argument.`;
      q.stimulus_type = "passage";
    } else {
      let p = trimToWordRange(hardPassage(index + 200), PASSAGE_WORD_TARGETS.hard.min, PASSAGE_WORD_TARGETS.hard.max);
      p = padToSentenceRange(p, SENTENCE_TARGETS.hard.wicPassage.min, SENTENCE_TARGETS.hard.wicPassage.max);
      q.stimulus_text = `${p} ______ the subsequent section extends the author's nuanced argument.`;
      q.stimulus_type = "passage";
    }
  }

  q.rw_subtype = rw_subtype;
  q.rw_format = resolveRwFormat(rw_subtype, q.rw_format, index);
  if (challenged) q._challenged = true;
  return q;
}

export function difficultyForCell(index, total) {
  const easyCut = Math.floor(total * DIFFICULTY_MIX.easy);
  const medCut = easyCut + Math.floor(total * DIFFICULTY_MIX.medium);
  if (index < easyCut) return "easy";
  if (index < medCut) return "medium";
  return "hard";
}

/**
 * @param {{ spec: typeof DSAT_SUBTYPE_SPECS[0], index: number, difficulty: string }} params
 */
export function generateDsatRwQuestion({ spec, index, difficulty, challenged = false }) {
  const raw = forceSubtype({}, spec, index, difficulty, { challenged });
  const rwFormat = resolveRwFormat(spec.rw_subtype, raw.rw_format, index);
  raw.rw_format = rwFormat;
  const tierLabel = challenged ? "challenged" : difficulty;
  const v2 = buildOnePrepExplanation(raw, { skill: spec.skill, rw_subtype: spec.rw_subtype, difficulty: tierLabel });
  if (challenged && spec.rw_subtype !== "transition") {
    const correct = v2.options.find((o) => o.is_correct);
    const texts = v2.options.map((o) => o.text);
    const expls = v2.options.map((o) => o.explanation);
    v2.options = mkChallengedOpts(correct?.id ?? v2.correct_answer, texts, expls);
  }
  const meta = {
    ...metadataFromQuestion(raw),
    rw_subtype: spec.rw_subtype,
    rw_format: rwFormat,
    dsat_blueprint_v1: true,
    dsat_topic: topicForIndex(index),
    generator: challenged ? "generate-dsat-rw-expansion.mjs" : "generate-dsat-rw-bank.mjs",
    explanation_v2: true,
    blueprint_version: BLUEPRINT_VERSION,
  };
  if (challenged) {
    meta.challenged_problem = true;
    meta.difficulty_tier = "challenged";
  }
  const row = {
    question_text: raw.question_text,
    stimulus_text: raw.stimulus_text ?? null,
    stimulus_type: raw.stimulus_type ?? (raw.stimulus_text ? "passage" : null),
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    difficulty: challenged ? "hard" : difficulty,
    skill_id: spec.skill,
    rw_subtype: spec.rw_subtype,
    rw_format: rwFormat,
    source_metadata: meta,
    dsat_blueprint_v1: true,
    _index: index,
    _challenged: challenged,
  };
  return row;
}

/** Ultra-hard challenged item: hard difficulty + challenged_problem metadata. */
export function generateChallengedDsatRwQuestion({ spec, index }) {
  return generateDsatRwQuestion({ spec, index, difficulty: "hard", challenged: true });
}

export function sourceMetadataForInsert(q) {
  return {
    ...q.source_metadata,
    original: true,
    explanation_v2: true,
    dsat_blueprint_v1: true,
    rw_subtype: q.rw_subtype,
    rw_format: q.rw_format ?? null,
  };
}
