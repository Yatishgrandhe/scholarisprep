/**
 * Digital SAT Reading & Writing Master Item Generation Manual — exportable prompts.
 * Source: docs/dsat-rw-master-manual.md
 */

/** Canonical rw_subtype keys aligned to DSAT_SUBTYPE_SPECS. */
export const SUBTYPE_PASSAGE_WORD_TARGETS = {
  vocabulary_in_context: { min: 50, max: 100, sentences: { min: 2, max: 4 } },
  structure: { min: 90, max: 140 },
  cross_text_response: { each: { min: 60, max: 90 } },
  main_idea: { min: 80, max: 130 },
  textual_evidence: { min: 80, max: 120 },
  quantitative_table: { min: 70, max: 110 },
  general: { min: 80, max: 130 },
  prediction: { min: 80, max: 130 },
  implication: { min: 80, max: 130 },
  transition: { min: 50, max: 80 },
  notes_synthesis: { bullets: { min: 4, max: 6 } },
  boundaries: { min: 60, max: 90 },
  form_structure_sense: { min: 60, max: 90 },
};

/** Distractor engineering formula names per rw_subtype (exactly 3 per subtype). */
export const DISTRACTOR_FORMULAS = {
  vocabulary_in_context: ["Collocation Decoy", "Flat Literal", "Tone Inversion"],
  structure: ["Partial Scope", "Narrative Speculation", "Structural Inversion"],
  cross_text_response: ["Mutual Consensus Decoy", "Scope Creep", "Out-of-Bound Contrast"],
  main_idea: ["Over-Extrapolation", "Reciprocal Distractor", "Retrospective Detail"],
  textual_evidence: ["Unconditional Support Decoy", "Irrelevant Variable", "Inverse Support"],
  quantitative_table: ["Data Misread", "Under-Specified Support", "True-But-Irrelevant"],
  general: ["Speculative Narrative", "Equivocation Error", "Reverse Conditional"],
  prediction: ["Speculative Narrative", "Equivocation Error", "Reverse Conditional"],
  implication: ["Speculative Narrative", "Equivocation Error", "Reverse Conditional"],
  transition: ["Synonym Trap", "Category Shift", "Register Clash"],
  notes_synthesis: ["Goal Under-Specification", "Truth without Goal", "Unwarranted Synthesis"],
  boundaries: ["Comma Splice", "Run-on Conjunction", "Fragmented Semicolon/Colon"],
  form_structure_sense: ["Proximity Decoy", "Tense Shift", "Dangling Modifier"],
};

/** Short tags used in option explanations for validator matching. */
export const DISTRACTOR_FORMULA_TAGS = Object.fromEntries(
  Object.entries(DISTRACTOR_FORMULAS).map(([subtype, formulas]) => [
    subtype,
    formulas.map((f) => `[${f}]`),
  ]),
);

/** Per-subtype construction rules for generators. */
export const SUBTYPE_RULES = {
  vocabulary_in_context: {
    domain: "Craft and Structure",
    label: "Words in Context",
    passageWords: "50–100",
    stemPattern: /most nearly means/i,
    optionStyle: "Single vocabulary word or short phrase per choice",
    notes: "Separate blank from clues via subordinate clauses; Tier 2/3 secondary meanings on hard items.",
  },
  structure: {
    domain: "Craft and Structure",
    label: "Text Structure and Purpose",
    passageWords: "90–140",
    optionStyle: "Abstract meta-cognitive verbs (delineates, reconciles, qualifies, posits)",
    notes: "Include rhetorical pivot; options describe overall structure, not single sentences.",
  },
  cross_text_response: {
    domain: "Craft and Structure",
    label: "Cross-Text Connections",
    passageWords: "60–90 each text",
    optionStyle: "Text 2 author response to Text 1 claim",
    notes: "Subtle methodological dispute; avoid binary agree/disagree.",
  },
  main_idea: {
    domain: "Information and Ideas",
    label: "Central Ideas and Details",
    passageWords: "80–130",
    optionStyle: 'Parallel "The passage argues/suggests/contends…" frames',
    notes: "Guarded thesis with concessions; distractors over-extrapolate or swap cause/effect.",
  },
  textual_evidence: {
    domain: "Information and Ideas",
    label: "Command of Evidence (Textual)",
    passageWords: "80–120",
    optionStyle: "Concrete experimental results supporting conditional hypothesis",
    notes: "Hypothesis must be conditional; only one option satisfies all parameters.",
  },
  quantitative_table: {
    domain: "Information and Ideas",
    label: "Command of Evidence (Quantitative)",
    passageWords: "70–110",
    optionStyle: "Two data points + comparison per choice (~18–24 words)",
    notes: "LaTeX numbers; correct option uses mathematically accurate table values.",
  },
  general: {
    domain: "Information and Ideas",
    label: "Inferences (General)",
    passageWords: "80–130",
    optionStyle: "Logically necessary conclusion; no concluding sentence in passage",
    notes: "Zero speculation; bounded inference from stated premises.",
  },
  prediction: {
    domain: "Information and Ideas",
    label: "Inferences (Prediction)",
    passageWords: "80–130",
    optionStyle: '"The researchers would most likely…" forecast frames',
    notes: "Future-oriented bounded forecast supported by passage framing.",
  },
  implication: {
    domain: "Information and Ideas",
    label: "Inferences (Implication)",
    passageWords: "80–130",
    optionStyle: '"It can be inferred that…" implication frames',
    notes: "Deductive extension with acknowledged limits; no absolute claims.",
  },
  transition: {
    domain: "Expression of Ideas",
    label: "Transitions",
    passageWords: "50–80",
    optionStyle: "Matched transition tokens only (all difficulties)",
    notes: "Blank + comma at clause boundary; single unambiguous logical relationship.",
  },
  notes_synthesis: {
    domain: "Expression of Ideas",
    label: "Rhetorical Synthesis",
    bullets: "4–6",
    optionStyle: "Single sentence satisfying multi-part rhetorical goal from notes only",
    notes: "Prompt states explicit rhetorical goal; correct option satisfies all parameters.",
  },
  boundaries: {
    domain: "Standard English Conventions",
    label: "Boundaries",
    passageWords: "60–90",
    optionStyle: "Punctuation tokens at clause boundary",
    notes: "Test semicolon, colon, em-dash, comma splice; never empty distractors.",
  },
  form_structure_sense: {
    domain: "Standard English Conventions",
    label: "Form, Structure, and Sense",
    passageWords: "60–90",
    optionStyle: "Verb form, pronoun, or modifier token",
    notes: "Intervening phrases separate subject from verb; inverted syntax on hard items.",
  },
};

export const DSAT_RW_MASTER_SYSTEM_PROMPT = `<system_prompt>
You are an elite psychometrician and senior curriculum designer specializing in the development of items for the Digital SAT (DSAT) Reading & Writing section. Your task is to generate high-quality, psychometrically valid, and realistic practice items that align perfectly with the College Board's official specifications.

### CRITICAL UNIVERSAL PROTOCOLS:
1. PASSAGE WORD COUNT: Strict subtype-specific limits (WIC 50–100, TSP 90–140, CTC 60–90 each, CID 80–130, COE-T 80–120, COE-Q 70–110, INF 80–130, TRA 50–80, BOU/FSS 60–90, SYN 4–6 bullets).
2. SYNTAX: Use a scholarly register, varied sentence structures, and academic tone. No elementary phrasing.
3. MATHEMATICAL AND SCIENTIFIC NOTATION: Use LaTeX-style syntax for formatting all mathematical and scientific notation. Enclose inline formulas in "$" and display formulas in "$$". Examples: $15\\%$, $10^\\circ\\text{C}$, $18.6\\text{ hours}$, pH $\\le 7.0$, $1:2$, $^{12}\\text{C}$.
4. MCQ FORMAT: Provide exactly four choices (A, B, C, D) with exactly ONE 100% correct answer.
5. OPTION LENGTH PARITY: Max 15% char/word spread within each question; pad distractors only, never the correct answer.
6. CORRECT LETTER: Rotate A/B/C/D evenly (~25% each per batch).
7. EXPLANATIONS: OnePrep Step 1/2/3 + distractor analysis. Tag each incorrect option with its distractor formula name in brackets (e.g., [Flat Literal]).

### QUESTION TYPE SPECIFIC DESIGNS:
- **Words in Context (WIC):** Test secondary meanings of common words or advanced Tier 3 vocabulary. Ensure syntax separates the blank "_______" from its clues. Distractors: [Collocation Decoy], [Flat Literal], [Tone Inversion].
- **Text Structure and Purpose (TSP):** Include a distinct rhetorical shift. Options must use abstract verbs (e.g., "delineates", "qualifies", "reconciles"). Distractors: [Partial Scope], [Narrative Speculation], [Structural Inversion].
- **Cross-Text Connections (CTC):** Provide Text 1 and Text 2 (60–90 words each) with a subtle, non-binary scholarly dispute. Distractors: [Mutual Consensus Decoy], [Scope Creep], [Out-of-Bound Contrast].
- **Central Ideas and Details (CID):** Write an analytical passage. Distractors: [Over-Extrapolation], [Reciprocal Distractor], [Retrospective Detail].
- **Command of Evidence - Textual (COE-T):** Test a conditional or multi-variable hypothesis. Only one choice must satisfy all parameters. Distractors: [Unconditional Support Decoy], [Irrelevant Variable], [Inverse Support].
- **Command of Evidence - Quantitative (COE-Q):** Create a structured markdown table. The correct option must use mathematically accurate data. Distractors: [Data Misread], [Under-Specified Support], [True-But-Irrelevant].
- **Inferences (INF):** Provide premises without a conclusion. The correct option must be the only logically inevitable deduction. Distractors: [Speculative Narrative], [Equivocation Error], [Reverse Conditional].
- **Transitions (TRA):** Test precise logical connections. Distractors: [Synonym Trap], [Category Shift], [Register Clash].
- **Rhetorical Synthesis (SYN):** Provide 4 to 6 bulleted notes. The prompt must specify a multi-variable rhetorical goal. Distractors: [Goal Under-Specification], [Truth without Goal], [Unwarranted Synthesis].
- **Boundaries (BOU):** Test semicolons, colons, em-dashes, and comma splices at clause boundaries. Distractors: [Comma Splice], [Run-on Conjunction], [Fragmented Semicolon/Colon].
- **Form, Structure, and Sense (FSS):** Test subject-verb agreement (inverted syntax or intervening phrases), pronoun agreement, modifier placement. Distractors: [Proximity Decoy], [Tense Shift], [Dangling Modifier].

### OUTPUT FORMAT:
**Domain & Subcategory:** [Insert Domain & Subcategory]
**Target Difficulty:** [Easy / Medium / Hard]
**Passage / Table / Notes:**
[Insert Passage, Table, or Bulleted Notes]
**Question Stem:**
[Insert Question Stem]
**Answer Choices:**
A) [Choice A]
B) [Choice B]
C) [Choice C]
D) [Choice D]
**Correct Answer Key:** [Insert Key]
**Detailed Explanation & Distractor Analysis:**
- **Key [X] Explanation:** [Insert why the correct choice is correct]
- **Distractor [Y] Analysis:** [Insert why each distractor is incorrect, with formula tag]
</system_prompt>`;

/**
 * Format a distractor explanation with the master-manual formula tag.
 * @param {string} formulaName - e.g. "Flat Literal"
 * @param {string} rationale - why the option is wrong
 */
export function formatDistractorExplanation(formulaName, rationale) {
  return `[${formulaName}] ${rationale}`;
}

/**
 * Pick distractor formula names for a subtype, cycling by index.
 * @param {string} rwSubtype
 * @param {number} index
 * @returns {string[]}
 */
export function distractorFormulasFor(rwSubtype, index = 0) {
  const formulas = DISTRACTOR_FORMULAS[rwSubtype] ?? ["Scope error", "Over-inference", "Detail-only"];
  return formulas.map((f, i) => formulas[(index + i) % formulas.length]);
}

/**
 * Validate passage word count against master-manual subtype targets.
 * @param {string} text - stimulus text (may include table markdown)
 * @param {string} rwSubtype
 * @param {string} [rwFormat]
 * @returns {{ ok: boolean, words?: number, w1?: number, w2?: number, bullets?: number, reason?: string }}
 */
export function validateSubtypePassageWords(text, rwSubtype, rwFormat) {
  const targets = SUBTYPE_PASSAGE_WORD_TARGETS[rwSubtype];
  if (!targets) return { ok: true };

  if (targets.bullets) {
    const bullets = (String(text ?? "").match(/^•\s/gm) ?? []).length;
    const { min, max } = targets.bullets;
    if (bullets < min || bullets > max) {
      return { ok: false, bullets, reason: `syn_bullets:${bullets}` };
    }
    return { ok: true, bullets };
  }

  if (targets.each) {
    const prose = String(text ?? "").trim();
    const parts = prose.split(/\n\nText 2\n/i);
    const t1 = parts[0]?.replace(/^Text 1\n/i, "").trim() ?? "";
    const t2 = parts[1]?.trim() ?? "";
    const w1 = wordCount(t1);
    const w2 = wordCount(t2);
    const { min, max } = targets.each;
    if (w1 < min || w1 > max || w2 < min || w2 > max) {
      return { ok: false, words: w1 + w2, w1, w2, reason: `ctc_words:t1=${w1},t2=${w2}` };
    }
    return { ok: true, words: w1 + w2, w1, w2 };
  }

  let prose = String(text ?? "").trim();
  if (rwFormat === "table_chart" || rwSubtype === "quantitative_table") {
    const tableIdx = prose.search(/\n\nThe table summarizes|\n\n\| /);
    if (tableIdx >= 0) prose = prose.slice(0, tableIdx).trim();
  }

  const w = wordCount(prose);
  const { min, max } = targets;
  if (w < min || w > max) {
    return { ok: false, words: w, reason: `subtype_passage_words:${w}` };
  }
  return { ok: true, words: w };
}

function wordCount(text) {
  if (!text) return 0;
  return String(text).trim().split(/\s+/).filter(Boolean).length;
}

/**
 * Check that incorrect option explanations include distractor formula tags.
 * @param {Array<{ is_correct?: boolean, explanation?: string }>} options
 * @param {string} rwSubtype
 * @returns {{ ok: boolean, reasons: string[] }}
 */
export function validateDistractorFormulaTags(options, rwSubtype) {
  const formulas = DISTRACTOR_FORMULAS[rwSubtype];
  if (!formulas) return { ok: true, reasons: [] };

  const reasons = [];
  const opts = options ?? [];
  let distractorIdx = 0;
  for (const o of opts) {
    if (o.is_correct) continue;
    const expl = String(o.explanation ?? "");
    const expectedFormula = formulas[distractorIdx % formulas.length];
    const hasTag = expl.includes(`[${expectedFormula}]`) ||
      formulas.some((f) => expl.includes(`[${f}]`));
    if (!hasTag) {
      reasons.push(`missing_distractor_tag:${o.id ?? distractorIdx}:${expectedFormula}`);
    }
    distractorIdx++;
  }
  return { ok: reasons.length === 0, reasons };
}

export default {
  DSAT_RW_MASTER_SYSTEM_PROMPT,
  SUBTYPE_PASSAGE_WORD_TARGETS,
  SUBTYPE_RULES,
  DISTRACTOR_FORMULAS,
  DISTRACTOR_FORMULA_TAGS,
  formatDistractorExplanation,
  distractorFormulasFor,
  validateSubtypePassageWords,
  validateDistractorFormulaTags,
};
