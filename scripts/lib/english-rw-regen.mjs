/**
 * Phase 2 English RW regeneration utilities — length parity, letter rotation, INF shards.
 */
import {
  mkOpts,
  mkChallengedOpts,
  optionWordCount,
  charLen,
  longPassage,
  hardPassage,
} from "./english-rw-templates.mjs";
import { generateConventionsBatch } from "./dsat-conventions-bank.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  trimToWordRange,
  padToSentenceRange,
  PASSAGE_WORD_TARGETS,
  SENTENCE_TARGETS,
  SUBTYPE_PASSAGE_WORD_TARGETS,
} from "./dsat-rw-blueprint.mjs";
import {
  DISTRACTOR_FORMULAS,
  formatDistractorExplanation,
  distractorFormulasFor,
} from "./dsat-rw-master-prompt.mjs";

const LETTERS = ["A", "B", "C", "D"];

const PAD_SUFFIXES = [
  " within the limits the authors explicitly acknowledge throughout the passage.",
  " rather than extending beyond what the textual evidence actually supports here.",
  " as the study's stated methodological constraints would reasonably suggest to readers.",
  " without claiming certainty beyond the scope of the reported findings in the text.",
  " in a way consistent with the cautious framing the passage adopts toward its claims.",
];

const IMPLICATION_CORRECT = [
  "It can be inferred that the mechanism could inform practice beyond the immediate case, though the authors stop short of universal claims.",
  "It can be inferred that contextual factors moderate how broadly the reported findings should be applied in other settings.",
  "It can be inferred that the evidence supports cautious extension of the principle while respecting stated limitations in the passage.",
  "It can be inferred that the results warrant further investigation rather than immediate categorical policy decisions by stakeholders.",
  "It can be inferred that the relationship described is not merely correlational within the studied context the authors describe.",
  "It can be inferred that practical constraints such as time, cost, and access shape how quickly any intervention can scale locally.",
];

const IMPLICATION_DISTRACTORS = [
  "It can be inferred that readers should dismiss the study because laboratory conditions never resemble real-world settings meaningfully.",
  "It can be inferred that every similar system will behave identically in all future circumstances without any exception whatsoever.",
  "It can be inferred that the researchers would abandon the project because initial results contradicted every registered hypothesis.",
  "It can be inferred that the authors conceal contradictory data that would invalidate the reported pattern in the passage.",
  "It can be inferred that every participant always fails when the studied variable is absent in all conditions compared.",
  "It can be inferred that the passage lists exact retail prices for all goods mentioned during the field interviews above.",
  "It can be inferred that policymakers must act overnight regardless of context because the passage claims absolute certainty.",
  "It can be inferred that the phenomenon will vanish without intervention because the passage rejects empirical inquiry altogether.",
];

const PREDICTION_CORRECT = [
  "The researchers would most likely emphasize extending the finding to related contexts while noting limits the authors already acknowledge.",
  "The researchers would most likely pursue replication across additional sites before treating the pattern as settled beyond this study.",
  "The researchers would most likely test whether the observed relationship holds under varied conditions named in the passage.",
  "The researchers would most likely recommend measured adoption of the intervention while monitoring for contextual exceptions locally.",
  "The researchers would most likely call for broader sampling before policymakers treat the finding as universally applicable everywhere.",
  "The researchers would most likely examine whether the mechanism persists when practical constraints such as access and cost vary.",
];

const PREDICTION_DISTRACTORS = [
  "The researchers would most likely refuse to publish results because findings contradicted their original hypothesis about the mechanism.",
  "The researchers would most likely urge policymakers to ignore evidence until universal proof is established across every ecosystem.",
  "The researchers would most likely conclude that no further study is necessary because one pilot produced a significant result.",
  "The researchers would most likely list exact retail prices for all goods mentioned during the field interviews described above.",
  "The researchers would most likely declare all debate permanently settled and abandon replication efforts across every site.",
  "The researchers would most likely claim findings apply identically in every context without exception, ending future research.",
  "The researchers would most likely reject empirical inquiry altogether and discontinue all measurement cycles described in the passage.",
  "The researchers would most likely urge stakeholders to ignore nuance and act on slogans rather than on cautious evidence.",
];

const IMPLICATION_STEMS = [
  "Which choice most logically follows from the passage as a whole?",
  "Which choice can most reasonably be inferred from the passage?",
  "Based on the passage, which statement is most strongly implied?",
];

const PREDICTION_STEMS = [
  "Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?",
  "Which prediction is most supported by the passage?",
  "If the trend described continues, which result is most likely?",
  "The passage most strongly suggests that future research will",
];

export function rotateCorrectId(index, offset = 0) {
  return LETTERS[(index + offset) % 4];
}

export function measureSpread(options) {
  const wordLens = options.map((o) => optionWordCount(o.text));
  const charLens = options.map((o) => charLen(o.text));
  const wordAvg = wordLens.reduce((a, b) => a + b, 0) / wordLens.length;
  const charMin = Math.min(...charLens);
  const charMax = Math.max(...charLens);
  const wordMin = Math.min(...wordLens);
  const wordMax = Math.max(...wordLens);
  const correct = options.find((o) => o.is_correct);
  const correctIdx = options.findIndex((o) => o.is_correct);
  return {
    word_lens: wordLens,
    char_lens: charLens,
    word_spread_pct: wordAvg > 0 ? Math.round(1000 * (wordMax - wordMin) / wordAvg) / 10 : 0,
    char_spread_pct: charMin > 0 ? Math.round(1000 * (charMax - charMin) / charMin) / 10 : 0,
    correct_is_longest: charLen(correct?.text) === charMax,
    correct_is_shortest: charLen(correct?.text) === charMin,
    correct_idx: correctIdx,
  };
}

function qualityPassage(difficulty, index, { challenged = false, rwSubtype } = {}) {
  const n = index + 1;
  const raw = difficulty === "hard" || challenged ? hardPassage(n) : longPassage(n);
  if (challenged) {
    const { min, max } = PASSAGE_WORD_TARGETS.challenged;
    const { min: sMin, max: sMax } = SENTENCE_TARGETS.challenged.stimulus;
    let passage = trimToWordRange(raw, min, max);
    passage = padToSentenceRange(passage, sMin, sMax);
    return trimToWordRange(passage, min, max);
  }
  const subtypeTarget = rwSubtype && SUBTYPE_PASSAGE_WORD_TARGETS[rwSubtype];
  if (subtypeTarget?.min != null && subtypeTarget?.max != null) {
    return trimToWordRange(raw, subtypeTarget.min, subtypeTarget.max);
  }
  const { min, max } = PASSAGE_WORD_TARGETS[difficulty] ?? PASSAGE_WORD_TARGETS.medium;
  return trimToWordRange(raw, min, max);
}

function trimToCharRange(text, minChars, maxChars) {
  let t = String(text ?? "").trim();
  if (charLen(t) <= maxChars) return t;
  const words = t.split(/\s+/);
  let out = "";
  for (const w of words) {
    const next = out ? `${out} ${w}` : w;
    if (charLen(next) > maxChars - 1) break;
    out = next;
  }
  return out.replace(/[,;]$/, "") + ".";
}

/**
 * Pad distractors (never correct) to achieve ≤15% word/char spread.
 */
export function balanceOptionLengths(texts, correctIdx, { maxSpreadPct = 15 } = {}) {
  const result = texts.map((t) => String(t).trim());
  const targetChars = charLen(result[correctIdx]);
  const minChars = Math.floor(targetChars * (1 - maxSpreadPct / 100));
  const maxChars = Math.ceil(targetChars * (1 + maxSpreadPct / 100));

  for (let i = 0; i < result.length; i++) {
    if (i === correctIdx) continue;
    let padded = result[i];
    let guard = 0;
    while (charLen(padded) < minChars && guard < 16) {
      padded += PAD_SUFFIXES[(i + guard) % PAD_SUFFIXES.length];
      guard++;
    }
    if (charLen(padded) > maxChars) {
      padded = trimToCharRange(padded, minChars, maxChars);
    }
    result[i] = padded;
  }

  // Ensure at least one distractor matches or exceeds correct length ~50% of time
  const nonCorrect = result
    .map((t, i) => ({ t, i }))
    .filter((x) => x.i !== correctIdx);
  if (nonCorrect.length && charLen(result[correctIdx]) >= Math.max(...nonCorrect.map((x) => charLen(x.t)))) {
    const pick = nonCorrect[0];
    let extended = pick.t.replace(/\.$/, "");
    extended += " even though the passage never establishes such a sweeping conclusion from its evidence.";
    result[pick.i] = trimToCharRange(extended, minChars, maxChars + 20);
  }

  return result;
}

export function validateOptionLengthParity(options, { maxSpreadPct = 15 } = {}) {
  const m = measureSpread(options);
  const ok = m.word_spread_pct <= maxSpreadPct && m.char_spread_pct <= maxSpreadPct;
  return { ok, ...m, reasons: ok ? [] : [`spread_exceeds_${maxSpreadPct}pct`] };
}

function implicationDistractorTypes(index) {
  const formulas = DISTRACTOR_FORMULAS.implication ?? ["Speculative Narrative", "Equivocation Error", "Reverse Conditional"];
  return [
    { type: formulas[0], text: IMPLICATION_DISTRACTORS[(index + 1) % IMPLICATION_DISTRACTORS.length] },
    { type: formulas[1], text: IMPLICATION_DISTRACTORS[(index + 3) % IMPLICATION_DISTRACTORS.length] },
    { type: formulas[2], text: IMPLICATION_DISTRACTORS[(index + 2) % IMPLICATION_DISTRACTORS.length] },
  ];
}

function predictionDistractorTypes(index) {
  const formulas = DISTRACTOR_FORMULAS.prediction ?? ["Speculative Narrative", "Equivocation Error", "Reverse Conditional"];
  return [
    { type: formulas[0], text: PREDICTION_DISTRACTORS[(index + 1) % PREDICTION_DISTRACTORS.length] },
    { type: formulas[1], text: PREDICTION_DISTRACTORS[(index + 3) % PREDICTION_DISTRACTORS.length] },
    { type: formulas[2], text: PREDICTION_DISTRACTORS[(index + 2) % PREDICTION_DISTRACTORS.length] },
  ];
}

export function regenerateInfQuestion(row, globalIndex) {
  const rwSubtype = row.source_metadata?.rw_subtype ?? row.rw_subtype;
  const difficulty = row.difficulty ?? "medium";
  const challenged =
    row.source_metadata?.challenged_problem === true ||
    row.source_metadata?.challenged_problem === "true";
  const index = globalIndex;
  const correctId = rotateCorrectId(index, rwSubtype === "prediction" ? 1 : 0);
  const passage = qualityPassage(difficulty, index + (rwSubtype === "prediction" ? 400 : 0), {
    challenged,
    rwSubtype,
  });

  const isPrediction = rwSubtype === "prediction";
  const stems = isPrediction ? PREDICTION_STEMS : IMPLICATION_STEMS;
  const question_text = stems[index % stems.length];

  const correctPool = isPrediction ? PREDICTION_CORRECT : IMPLICATION_CORRECT;
  const correctText = correctPool[index % correctPool.length];
  const traps = isPrediction ? predictionDistractorTypes(index) : implicationDistractorTypes(index);

  const distractorTexts = traps.map((t) => t.text);
  const allTexts = [correctText, ...distractorTexts];
  const correctPos = LETTERS.indexOf(correctId);
  const rotated = LETTERS.map((_, i) => allTexts[(i - correctPos + 4) % 4]);
  const balanced = balanceOptionLengths(rotated, correctPos);

  const trapOrder = LETTERS.map((_, i) => {
    if (i === correctPos) return null;
    const trapIdx = (i - correctPos + 3) % 3;
    return traps[trapIdx];
  });

  const expls = balanced.map((text, i) => {
    const id = LETTERS[i];
    if (id === correctId) {
      return isPrediction
        ? "Bounded forecast supported by the passage's cautious framing and call for further work."
        : "Bounded implication supported by the passage's stated logic and acknowledged limitations.";
    }
    const trap = trapOrder[i];
    return formatDistractorExplanation(
      trap?.type ?? "Scope error",
      `${text.slice(0, 80)}… contradicts or extends beyond the textual evidence.`,
    );
  });

  let options = challenged
    ? mkChallengedOpts(correctId, balanced, expls)
    : mkOpts(correctId, balanced, expls);

  let q = {
    question_text,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: "",
    difficulty,
    skill_id: "INF",
    rw_subtype: rwSubtype,
    rw_format: "passage_mc",
    dsat_blueprint_v1: true,
    _challenged: challenged,
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: rwSubtype,
      rw_format: "passage_mc",
      explanation_v2: true,
      generator: "regen-english-rw-shard.mjs",
      regen_phase2: true,
      regen_agent: 7,
      ...(challenged ? { challenged_problem: true } : {}),
    },
  };

  const oneprep = buildOnePrepExplanation(q, {
    skill: "INF",
    rw_subtype: rwSubtype,
    difficulty: challenged ? "challenged" : difficulty,
  });
  q.explanation = oneprep.explanation;
  q.options = oneprep.options;
  q.correct_answer = oneprep.correct_answer;

  return q;
}

export function batchStats(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  let over15 = 0;
  for (const r of rows) {
    letters[r.correct_answer] = (letters[r.correct_answer] ?? 0) + 1;
    const m = measureSpread(r.options);
    if (m.correct_is_longest) longest++;
    if (m.char_spread_pct > 15 || m.word_spread_pct > 15) over15++;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
  };
}

const NO_PUNCT = "(no punctuation)";

const TRA_EASY_POOLS = {
  contrast: [
    ["However,", "Therefore,", "Similarly,", "Meanwhile,"],
    ["Nevertheless,", "Thus,", "Moreover,", "Yet,"],
    ["Still,", "Consequently,", "Furthermore,", "Instead,"],
  ],
  cause: [
    ["Therefore,", "However,", "Similarly,", "Meanwhile,"],
    ["Thus,", "Nevertheless,", "Moreover,", "Yet,"],
    ["Consequently,", "Still,", "Furthermore,", "Instead,"],
  ],
  addition: [
    ["Moreover,", "However,", "Therefore,", "Similarly,"],
    ["Furthermore,", "Nevertheless,", "Thus,", "Meanwhile,"],
    ["Similarly,", "Yet,", "Consequently,", "Still,"],
  ],
  example: [
    ["Specifically,", "However,", "Therefore,", "Similarly,"],
    ["Notably,", "Nevertheless,", "Thus,", "Moreover,"],
    ["Chiefly,", "Yet,", "Consequently,", "Meanwhile,"],
  ],
};

const SIMPLE_TRANSITION_MAP = {
  however: "contrast", nevertheless: "contrast", yet: "contrast", "in contrast": "contrast",
  therefore: "cause", thus: "cause", consequently: "cause",
  similarly: "addition", moreover: "addition", furthermore: "addition", meanwhile: "addition",
  "for example": "example", "for instance": "example", specifically: "example",
};

function traKind(text) {
  const key = String(text ?? "").trim().toLowerCase().replace(/[.,;:!?]+$/, "");
  return SIMPLE_TRANSITION_MAP[key] ?? "contrast";
}

function normalizeBouText(text) {
  const t = String(text ?? "").trim();
  return t === "" ? NO_PUNCT : t;
}

function reorderToCorrectId(texts, expls, correctId) {
  const correctIdx = LETTERS.indexOf(correctId);
  const correctText = texts[0];
  const distractors = texts.slice(1);
  const dExpls = expls.slice(1);
  const rotated = [];
  const rotatedExpls = [];
  let di = 0;
  for (let i = 0; i < 4; i++) {
    if (i === correctIdx) {
      rotated.push(correctText);
      rotatedExpls.push(expls[0]);
    } else {
      rotated.push(distractors[di]);
      rotatedExpls.push(dExpls[di]);
      di++;
    }
  }
  return mkOpts(correctId, rotated, rotatedExpls);
}

let _bouBankCache = null;
function getBouBank() {
  if (!_bouBankCache) _bouBankCache = generateConventionsBatch({ skill: "BOU", count: 325, startIndex: 0 });
  return _bouBankCache;
}

export function regenerateTraQuestion(row, globalIndex) {
  const difficulty = row.difficulty ?? "medium";
  const challenged = row.source_metadata?.challenged_problem === true;
  const correctId = rotateCorrectId(globalIndex, 0);
  const stimulus_text = row.stimulus_text ?? "";
  const question_text =
    row.question_text?.trim() ||
    "Which choice completes the text with the most logical transition?";

  const existingCorrect = row.options?.find((o) => o.is_correct)?.text ?? "However,";
  const kind = traKind(existingCorrect.split(",")[0] + ",");
  const poolOffset = difficulty === "hard" ? 100 : difficulty === "medium" ? 50 : 0;
  const pool = TRA_EASY_POOLS[kind][(globalIndex + poolOffset) % TRA_EASY_POOLS[kind].length];
  const correctText = pool.find((t) => traKind(t) === kind) ?? pool[0];
  const distractors = pool.filter((t) => t !== correctText);
  const texts = [correctText, ...distractors.slice(0, 3)];
  const expls = texts.map((t) => {
    const formulas = distractorFormulasFor("transition", globalIndex);
    if (t === correctText) {
      return `${t} signals ${kind} between the two clauses, matching the logical relationship in the passage.`;
    }
    const formula = traKind(t) === kind ? formulas[1] : formulas[0];
    return formatDistractorExplanation(
      formula,
      `${t} suggests a different rhetorical relationship (${traKind(t)}) than the one required between the clauses.`,
    );
  });
  const options = reorderToCorrectId(texts, expls, correctId);

  let q = {
    question_text,
    stimulus_text,
    stimulus_type: row.stimulus_type ?? (stimulus_text ? "passage" : null),
    options,
    correct_answer: correctId,
    explanation: "",
    difficulty,
    skill_id: "TRA",
    rw_subtype: "transition",
    rw_format: "transition_blank",
    dsat_blueprint_v1: true,
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: "transition",
      rw_format: "transition_blank",
      explanation_v2: true,
      generator: row.source_metadata?.generator ?? "regen-english-rw-shard.mjs",
      regen_phase2: true,
      regen_agent: 9,
    },
    _challenged: challenged,
  };

  const oneprep = buildOnePrepExplanation(q, {
    skill: "TRA",
    rw_subtype: "transition",
    difficulty: challenged ? "challenged" : difficulty,
  });
  q.explanation = oneprep.explanation;
  q.options = oneprep.options;
  q.correct_answer = oneprep.correct_answer;
  return q;
}

export function regenerateBouQuestion(row, globalIndex) {
  const difficulty = row.difficulty ?? "medium";
  const correctId = rotateCorrectId(globalIndex, 0);
  const bouBank = getBouBank();
  const bankItem = bouBank[globalIndex % bouBank.length];
  const existingTexts = (row.options ?? []).map((o) => normalizeBouText(o.text));
  const correctNorm = normalizeBouText(row.options?.find((o) => o.is_correct)?.text);
  const grammarToken = existingTexts.every((t) => t.length <= 20);

  let texts;
  let expls;
  if (grammarToken && existingTexts.length === 4 && new Set(existingTexts).size === 4) {
    texts = [correctNorm, ...existingTexts.filter((t) => t !== correctNorm)];
    expls = texts.map((t) => {
      if (t === correctNorm) return `Correct boundary: "${t}" satisfies Standard English conventions for this clause structure.`;
      const bouFormulas = DISTRACTOR_FORMULAS.boundaries ?? ["Comma Splice", "Run-on Conjunction", "Fragmented Semicolon/Colon"];
      if (t === NO_PUNCT) return formatDistractorExplanation(bouFormulas[1], "No punctuation produces a run-on or fused sentence between independent clauses.");
      if (t === ",") return formatDistractorExplanation(bouFormulas[0], "A comma alone creates a comma splice between independent clauses.");
      if (t === " and" || t === "and") return formatDistractorExplanation(bouFormulas[1], "A coordinating conjunction without proper punctuation is ungrammatical here.");
      return formatDistractorExplanation(bouFormulas[2], `"${t}" creates an incorrect boundary for the clause relationship at the blank.`);
    });
  } else {
    texts = bankItem.options.map((o) => normalizeBouText(o.text));
    const bankCorrect = normalizeBouText(bankItem.options.find((o) => o.is_correct)?.text);
    texts = [bankCorrect, ...texts.filter((t) => t !== bankCorrect)];
    expls = bankItem.options.map((o) => o.explanation);
  }

  const options = reorderToCorrectId(texts, expls, correctId);
  let finalOptions = options;
  if (row.source_metadata?.challenged_problem === true) {
    const texts2 = options.map((o) => o.text);
    const expls2 = options.map((o) => o.explanation);
    finalOptions = mkChallengedOpts(correctId, texts2, expls2);
  }
  const question_text =
    row.question_text?.includes("conforms")
      ? row.question_text
      : "Which choice completes the text so that it conforms to the conventions of Standard English?";

  let q = {
    question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type ?? "passage",
    options: finalOptions,
    correct_answer: correctId,
    explanation: bankItem.explanation ?? "",
    difficulty,
    skill_id: "BOU",
    rw_subtype: "boundaries",
    rw_format: "grammar_blank",
    dsat_blueprint_v1: true,
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: "boundaries",
      rw_format: "grammar_blank",
      explanation_v2: true,
      generator: row.source_metadata?.generator ?? "regen-english-rw-shard.mjs",
      regen_phase2: true,
      regen_agent: 9,
    },
  };

  const oneprep = buildOnePrepExplanation(q, { skill: "BOU", rw_subtype: "boundaries", difficulty });
  q.explanation = oneprep.explanation;
  q.options = oneprep.options;
  q.correct_answer = oneprep.correct_answer;
  return q;
}

export function validateRegenRow(q, { grammarToken = false } = {}) {
  const v = validateDsatRwQuestion(q);
  const p = grammarToken
    ? { ok: true, ...measureSpread(q.options) }
    : validateOptionLengthParity(q.options);
  const reasons = [...(v.ok ? [] : v.reasons), ...(p.ok ? [] : p.reasons)];
  return { ok: reasons.length === 0, reasons, parity: p, validation: v };
}
