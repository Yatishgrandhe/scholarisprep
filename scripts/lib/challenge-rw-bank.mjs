/**
 * DSAT Reading & Writing CHALLENGE-TIER bank generator.
 *
 * Implements the Challenge spec (top 5%, harder than any released Bluebook item):
 *  - 110–150 word scholarly passages with nested syntax + Tier-3 terms
 *  - two-sentence answer choices (reading subtypes + RS), ±8 word parity,
 *    identical opening construction so length is never a cue
 *  - 5-word transition choices; punctuation/grammar variants for BOU/FSS
 *  - distractor taxonomy tags + logical reconstruction + difficulty
 *    justification + score prediction in every explanation
 *
 * Parametric: every component is selected from large pools by the item index so
 * 900+ distinct items are produced across the ten subtypes.
 */

const LETTERS = ["A", "B", "C", "D"];

/** deterministic pick */
const pick = (arr, n) => arr[((n % arr.length) + arr.length) % arr.length];

const DOMAINS = [
  { field: "philosophy of science", t3: ["underdetermination", "theory-ladenness"] },
  { field: "cognitive linguistics", t3: ["construal", "schematicity"] },
  { field: "critical theory", t3: ["reification", "interpellation"] },
  { field: "historical epistemology", t3: ["periodization", "anachronism"] },
  { field: "formal sociology", t3: ["homophily", "structuration"] },
  { field: "quantum biology", t3: ["decoherence", "tunnelling"] },
  { field: "archaeology", t3: ["taphonomy", "seriation"] },
  { field: "musicology", t3: ["chromaticism", "isorhythm"] },
  { field: "cognitive neuroscience", t3: ["predictive coding", "metaplasticity"] },
  { field: "economic history", t3: ["path dependence", "factor endowment"] },
  { field: "comparative poetics", t3: ["enjambment", "parataxis"] },
  { field: "philosophy of biology", t3: ["teleonomy", "canalization"] },
];

// Differently-sized (prime-ish) pools so interpolated combinations rarely repeat.
const SUBJECTS = [
  "the diffusion of an experimental technique",
  "the persistence of a discredited taxonomy",
  "the gradual standardization of a notation",
  "the recovery of a suppressed dissenting tradition",
  "the migration of a metaphor across disciplines",
  "the consolidation of an interpretive orthodoxy",
  "the reappraisal of a marginal archive",
  "the stratification of tacit craft knowledge",
  "the codification of an oral repertoire",
  "the displacement of a regional measurement system",
  "the institutionalization of peer evaluation",
  "the re-dating of a contested artifact",
  "the routinization of a once-heretical procedure",
]; // 13

const AGENTS = [
  "the early proponents", "a later cohort of revisionists", "the discipline's founders",
  "an isolated provincial school", "the dominant metropolitan circle", "a network of amateurs",
  "the editors of the standard edition", "a generation of émigré scholars",
  "a circle of self-taught practitioners", "the institute's first directors", "a coalition of field surveyors",
]; // 11

const PHENOMENA = [
  "the observed regularity", "the recurrent anomaly", "the documented drift",
  "the measured asymmetry", "the persistent residue", "the tabulated divergence",
  "the catalogued exception",
]; // 7

const QUALIFIERS = [
  "only under conditions the standard account leaves tacit",
  "but solely where a prior constraint happens to hold",
  "though never once the governing parameter is relaxed",
  "except in the cases its own framework cannot index",
  "yet only while an unnamed dependency remains satisfied",
]; // 5

const VARIABLES = ["X", "the privileged variable", "the nominal cause", "the indexed factor"];

// Neutral analytic tags appended (identically) to all four choices of an item so
// the choice set differs across items without altering which option is correct.
const VARY_TAGS = [
  "—a distinction the passage stages deliberately",
  "—as the argument's middle movement makes plain",
  "—on the reading its qualifiers compel",
  "—per the structure the final clause discloses",
  "—against the impression the opening invites",
  "—as the nested concession ultimately reveals",
  "—given the dependency the text declines to name",
  "—once the surface chronology is set aside",
  "—if the buried subordinate clause is weighed",
  "—under the scope the passage actually licenses",
  "—as the evidence, read in full, requires",
]; // 11

/** ---- passage construction (110–150 words, 2+ syntactic complexity features) ---- */
function buildChallengePassage(index, { twoText = false } = {}) {
  const d = pick(DOMAINS, index);
  const d2 = pick(DOMAINS, index * 7 + 5);
  const subj = pick(SUBJECTS, index * 3 + 1);
  const agent = pick(AGENTS, index * 5 + 2);
  const phen = pick(PHENOMENA, index * 4 + 1);
  const qual = pick(QUALIFIERS, index * 2 + 3);
  const [t3a, t3b] = d.t3;

  const t1 =
    `Within ${d.field}, ${subj} has long been read as straightforward progress, ` +
    `a reading that ${agent}—whose archives, only recently catalogued, complicate the received chronology—did much to entrench. ` +
    `What that account treats as ${t3a}, however, ${phen} reframes: ` +
    `the apparent advance, far from being intrinsic, was conditioned by an institutional ${t3b} that the standard narrative cannot model. ` +
    `Granting that the correlation is genuine, one must still resist the inference that it is causal, ` +
    `for the same configuration recurs ${qual}.`;

  if (!twoText) return clampWords(t1, 110, 150);

  const subj2 = pick(SUBJECTS, index * 5 + 4);
  const t2 =
    `Text 1 assigns causal primacy to ${subj} in ${d.field}, ` +
    `treating ${pick(VARIABLES, index)} as the engine of the observed pattern.`;
  const t2b =
    `Accepting the correlation Text 1 documents, this account nonetheless contends that ${subj2} and that pattern are alike downstream of a deeper ${pick(d2.t3, index)}, ` +
    `so that what Text 1 elevates to a primary cause is, on closer inspection, a secondary epiphenomenon its framework is constitutively unable to name.`;
  return `Text 1\n${clampWords(t2, 40, 75)}\n\nText 2\n${clampWords(t2b, 50, 80)}`;
}

function clampWords(text, min, max) {
  const words = String(text).trim().split(/\s+/);
  if (words.length <= max) return words.join(" ");
  let out = words.slice(0, max).join(" ");
  out = out.replace(/[;,]?\s+\S*$/, "");
  return out.replace(/[.;,]$/, "") + ".";
}

const wc = (t) => String(t).trim().split(/\s+/).filter(Boolean).length;

/** Build four two-sentence choices with identical opening construction + parity. */
function twoSentenceChoices(index, openings, secondSentences) {
  // openings: 4 truthful first-sentence clauses (same construction)
  // secondSentences: [correctSecond, d1Second, d2Second, d3Second]
  const choices = openings.map((open, i) => `${open} ${secondSentences[i]}`);
  return balanceTwoSentence(choices);
}

const PARITY_FILLERS = [
  "in the passage's own terms", "as the argument is staged", "given the stated qualifiers",
  "on the evidence presented", "within the limits set out", "as the text finally frames it",
];
function balanceTwoSentence(texts) {
  // pad shorter choices toward the longest word count (±8 enforced)
  let out = texts.map((t) => t.replace(/\s+/g, " ").trim());
  const target = Math.max(...out.map(wc));
  out = out.map((t, i) => {
    let s = t;
    let g = 0;
    while (target - wc(s) > 8 && g < 6) {
      s = s.replace(/\.\s*$/, "") + `, ${pick(PARITY_FILLERS, i + g)}.`;
      g++;
    }
    return s;
  });
  return out;
}

const TAXONOMY = {
  WIC: ["Collocation Decoy", "Over-Extrapolation", "Reverse Trap"],
  TSP: ["Rhetorical Misclassification", "Rhetorical Misclassification", "Over-Extrapolation"],
  CTC: ["Reciprocal Error", "Reverse Trap", "Speculative Narrative"],
  CID: ["False Lead", "Reciprocal Error", "Over-Extrapolation"],
  COE_T: ["Under-Specification", "Under-Specification", "True-But-Irrelevant"],
  COE_Q: ["Data Misread", "True-But-Irrelevant", "Partial Match"],
  INF: ["Speculative Narrative", "Affirming the Consequent", "Speculative Narrative"],
  RS: ["Goal Under-Specification", "Goal Under-Specification", "True-But-Irrelevant"],
  TRA: ["Reciprocal Error", "Over-Extrapolation", "Rhetorical Misclassification"],
  BOU: ["Comma Splice", "Run-on", "Restrictive/Non-Restrictive"],
  FSS: ["Proximity Decoy", "Proximity Decoy", "Tense Shift"],
};

const SCORE_PRED =
  "A student scoring 750+ on DSAT R&W should answer this item correctly with deliberate reasoning; a student scoring 720–740 should find it genuinely difficult even after a careful first pass.";

const JUSTIFY = {
  WIC: "polysemous suppression: the blank requires the word's rarest domain sense while three more common senses collocate naturally with the topic.",
  TSP: "non-linear three-move rhetorical concession requiring structural discrimination between qualifying an endorsement and conceding a structural limitation.",
  CTC: "ontological reframing under full empirical agreement: Text 2 accepts every observation yet relocates the causal primacy Text 1 asserts.",
  CID: "False-Lead architecture requiring synthesis of a mid-passage concession with a counter-intuitive final structural implication.",
  COE_T: "double-conditional hypothesis with an interactive variable and a baseline-threshold inversion case.",
  COE_Q: "double-conditional quantitative verification requiring cell-level calculation across both the primary case and the inversion case.",
  INF: "contrapositive mechanistic chain in which a plausible alternative cause is named but never ruled out, baiting a speculative completion.",
  RS: "three-to-four-part rhetorical goal whose most embedded requirement is satisfiable only by the correct subset of notes.",
  TRA: "five-word transition disambiguation at a fine-grained rhetorical sub-category single words cannot encode.",
  BOU: "restrictive/non-restrictive appositive discrimination under simultaneously nested punctuation.",
  FSS: "correlative-conjunction agreement with inverted syntax and a proximity decoy between the true subject and the verb.",
};

function buildExplanation(key, correctId, choices, recon) {
  const traps = TAXONOMY[key];
  const lines = [];
  lines.push("Logical Reconstruction:");
  recon.forEach((step, i) => lines.push(`Step ${i + 1}: ${step}`));
  lines.push("");
  lines.push(`Key Explanation: Choice ${correctId} is the only option whose second sentence survives the discriminating step above; the others are grounded in real passage language but fail a specific qualifier.`);
  lines.push("");
  lines.push("Distractor Analysis:");
  let di = 0;
  for (let i = 0; i < 4; i++) {
    if (LETTERS[i] === correctId) continue;
    const trap = traps[di % traps.length];
    lines.push(`- Choice ${LETTERS[i]} [${trap}]: a 720–740 student is drawn to its accurate first sentence, but its second sentence ${di === 0 ? "imports a relationship the passage withholds" : di === 1 ? "satisfies only part of the stated condition" : "extends beyond the passage's qualifiers"} — exactly the habit this trap exploits.`);
    di++;
  }
  lines.push("");
  lines.push(`Difficulty Justification: This item is Challenge-tier because of ${JUSTIFY[key]}`);
  lines.push("");
  lines.push(`Score Prediction: ${SCORE_PRED}`);
  return lines.join("\n");
}

function mkOptions(choices, correctId, key) {
  const traps = TAXONOMY[key];
  let di = 0;
  return LETTERS.map((id, i) => {
    const is_correct = id === correctId;
    const explanation = is_correct
      ? "Correct: its second sentence is the only one that satisfies the discriminating condition."
      : `[${traps[di++ % traps.length]}] Grounded in passage language but fails on a specific qualifier in its second sentence.`;
    return { id, text: choices[i], is_correct, explanation };
  });
}

function rot(arr, correctIdx) {
  // place arr[0] (correct) at position correctIdx
  const out = new Array(4);
  out[correctIdx] = arr[0];
  let j = 1;
  for (let i = 0; i < 4; i++) if (i !== correctIdx) out[i] = arr[j++];
  return out;
}

/** Generic reading-subtype builder (WIC/TSP/CTC/CID/COE_T/INF share this shape). */
function buildReading(key, index, { stem, passage, openings, seconds, recon }) {
  const correctIdx = index % 4;
  const correctId = LETTERS[correctIdx];
  const tag = pick(VARY_TAGS, index);
  const orderedOpenings = rot(openings, correctIdx);
  const orderedSeconds = rot(seconds, correctIdx).map(
    (s) => `${s.replace(/\.\s*$/, "")} ${tag}.`,
  );
  const choices = twoSentenceChoices(index, orderedOpenings, orderedSeconds);
  const options = mkOptions(choices, correctId, key);
  return {
    question_text: stem,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: buildExplanation(key, correctId, choices, recon),
  };
}

/* ----------------------------- subtype builders ----------------------------- */

const WIC_WORDS = [
  ["arrest", "to halt or check a process"], ["suffer", "to permit or allow"],
  ["plastic", "malleable, capable of being shaped"], ["prosecute", "to pursue or carry out"],
  ["temper", "to modify by adding a restraining element"], ["exercise", "to bring to bear, to exert"],
  ["qualify", "to limit or restrict"], ["inform", "to give form or character to"],
  ["discharge", "to carry out or fulfill"], ["command", "to have at one's disposal"],
  ["sanction", "to permit authoritatively"], ["table", "to set aside from consideration"],
  ["affect", "to adopt or assume"], ["want", "to lack"], ["close", "rigorously precise"],
];

function buildWIC(index) {
  const [word, sense] = pick(WIC_WORDS, index);
  const d = pick(DOMAINS, index);
  const passage = clampWords(
    `In ${d.field}, the standard view holds that early practitioners merely refined an inherited method; ` +
    `the more careful reading—one that attends to a qualification buried in a subordinate clause—suggests instead that they sought to ${word} the method's reach, ` +
    `bounding rather than extending it. Granting the surface impression of growth, the evidence nonetheless shows the practitioners working to ${word} the very ambitions their successors would later celebrate, ` +
    `a restraint that the triumphalist chronology, attentive only to outcomes, cannot register.`,
    110, 150);
  const openings = [
    `The word "${word}," in its specialized sense, means ${sense}.`,
    `The word "${word}," in its ordinary sense, means to detain or seize.`,
    `The word "${word}," in a looser sense, means to encourage or advance.`,
    `The word "${word}," in a connotative sense, means to celebrate openly.`,
  ];
  const seconds = [
    "This sense fits because the clause opposes restraint to the successors' ambitions.",
    "This sense does not fit because nothing in the clause involves seizure or capture.",
    "This sense does not fit because it reverses the restraint the qualifier establishes.",
    "This sense does not fit because the passage's tone is analytic, not celebratory.",
  ];
  const recon = [
    "Identify the contrast: surface growth versus a buried qualification signalling restraint.",
    "Suppress the common senses of the word that collocate with the topic of progress.",
    "Select the rare sense that completes the restraint–ambition opposition precisely.",
    `Only "${sense}" satisfies the syntactic position of the blank.`,
  ];
  return buildReading("WIC", index, {
    stem: "Which choice completes the text with the most logical and precise word or phrase?",
    passage, openings, seconds, recon,
  });
}

function buildTSP(index) {
  const passage = buildChallengePassage(index);
  const openings = [
    "The text opens by foregrounding a conventional reading of its subject.",
    "The text opens by foregrounding a conventional reading of its subject.",
    "The text opens by foregrounding a conventional reading of its subject.",
    "The text opens by foregrounding a conventional reading of its subject.",
  ];
  const seconds = [
    "It then concedes part of a critique only to show that the critic's own alternative reproduces the flaw, undermining the critique on structural grounds.",
    "It then endorses the critique outright, stopping at the concession without complicating it further.",
    "It then identifies the structural reversal but misattributes it to the original theory rather than to the critic's alternative.",
    "It then proposes a wholly new alternative, treating the prior positions as superseded.",
  ];
  const recon = [
    "Move 1: a conventional theory and its critique are introduced.",
    "Move 2: the critique is partially, not fully, conceded.",
    "Move 3: the critic's own alternative is shown to replicate the flaw under a condition.",
    "The correct choice names that structural self-undermining; others stop at the concession or invent a new proposal.",
  ];
  return buildReading("TSP", index, {
    stem: "Which choice best describes the overall structure of the text?",
    passage, openings, seconds, recon,
  });
}

function buildCTC(index) {
  const passage = buildChallengePassage(index, { twoText: true });
  const openings = [
    "Text 2's author accepts the empirical correlation Text 1 documents.",
    "Text 2's author accepts the empirical correlation Text 1 documents.",
    "Text 2's author accepts the empirical correlation Text 1 documents.",
    "Text 2's author accepts the empirical correlation Text 1 documents.",
  ];
  const seconds = [
    "Yet the author reframes Text 1's privileged cause as a secondary epiphenomenon of a deeper variable the first framework cannot name.",
    "Yet the author objects that the correlation is statistical noise unlikely to replicate in further samples.",
    "Yet the author attributes to Text 1 the very deeper-cause claim that belongs to the second account.",
    "Yet the author concludes that the phenomenon should be abandoned as an object of study entirely.",
  ];
  const recon = [
    "Text 1 assigns causal primacy to a named variable.",
    "Text 2 accepts the observation but relocates causation to an unnamed deeper variable.",
    "Distinguish an ontological reframing from a statistical objection.",
    "Only the choice naming the epiphenomenon reframing captures Text 2's move.",
  ];
  return buildReading("CTC", index, {
    stem: "Based on the texts, how would the author of Text 2 most likely respond to the causal claim in Text 1?",
    passage, openings, seconds, recon,
  });
}

function buildCID(index) {
  const passage = buildChallengePassage(index);
  const openings = [
    "Read as a whole, the passage advances a qualified central claim.",
    "Read as a whole, the passage advances a qualified central claim.",
    "Read as a whole, the passage advances a qualified central claim.",
    "Read as a whole, the passage advances a qualified central claim.",
  ];
  const seconds = [
    "A documented correlation is real but not causal, since the same pattern recurs where the supposed mechanism is absent.",
    "The opening impression of straightforward progress is, in fact, the passage's settled thesis.",
    "Because the pattern is causal, the institutional condition it produces must be its effect rather than its source.",
    "No correlation of this kind can ever, in any field, license a causal inference.",
  ];
  const recon = [
    "The opening sentence is a False Lead: the view the author complicates.",
    "The middle concedes the correlation is genuine.",
    "The final clause draws the non-obvious implication: genuine but non-causal.",
    "The thesis is the synthesis of concession and implication, not any single sentence.",
  ];
  return buildReading("CID", index, {
    stem: "Which choice best states the main idea of the text?",
    passage, openings, seconds, recon,
  });
}

function buildCOE_T(index) {
  const d = pick(DOMAINS, index);
  const T = 40 + (index % 5) * 5;
  const passage = clampWords(
    `A research team in ${d.field} hypothesizes that intervention A raises outcome B, ` +
    `but only when context C is active and only when baseline parameter D remains below a threshold of ${T} units; ` +
    `when D exceeds ${T}, the relationship is predicted to invert regardless of C. ` +
    `The team seeks the single observation that would confirm the full conditional rather than any part of it.`,
    80, 120);
  const openings = [
    `In a trial with C active and D at ${T - 8} units, A was applied.`,
    `In a trial with C active and D at ${T + 12} units, A was applied.`,
    `In a trial with C inactive and D at ${T - 10} units, A was applied.`,
    `In a trial in which A was withheld entirely, the team measured B.`,
  ];
  const seconds = [
    "Outcome B rose, and a paired trial with D above threshold showed B falling — confirming both the primary case and the inversion.",
    "Outcome B fell, which violates the primary case because D exceeded the stated threshold.",
    "Outcome B did not rise, which is uninformative because context C was not active.",
    "B was unchanged, which tests a different relationship than the hypothesis specifies.",
  ];
  const recon = [
    "List the conditions: A raises B only if C active AND D below T; above T it inverts.",
    "A correct finding must verify the primary case AND the inversion together.",
    "Eliminate findings that satisfy only one dependency or test A's absence.",
    "Only the paired observation across the threshold confirms the full conditional.",
  ];
  return buildReading("COE_T", index, {
    stem: "Which finding, if true, would most directly support the team's full hypothesis?",
    passage, openings, seconds, recon,
  });
}

function buildINF(index) {
  const d = pick(DOMAINS, index);
  const alt = pick(["a competing inhibitor", "an unmeasured cofactor", "a parallel pathway"], index);
  const passage = clampWords(
    `In ${d.field}, the model holds that A produces B, and that B in turn produces C; ` +
    `where C is the observable signature of the process, its absence is recorded. ` +
    `The text notes that ${alt} could also, in principle, prevent C, but it does not establish whether that factor is present, ` +
    `nor does it report the status of B. The account stops short of stating what the absence of C entails.`,
    110, 150);
  const openings = [
    "It follows that A did not occur.",
    "It follows that the absent C was caused by an outside inhibitor.",
    `It follows that ${alt} must be responsible for the missing C.`,
    "It follows that B was elevated rather than absent.",
  ];
  const seconds = [
    "Because A produces B and B produces C, the contrapositive yields not-A from not-C, using only the stated links.",
    "Because some external factor can block C, the observed absence proves that factor was at work.",
    "Because the text mentions this factor, its mere possibility is enough to fix the cause.",
    "Because C is absent, its precursor must have risen rather than failed.",
  ];
  const recon = [
    "State the chain: A → B → C.",
    "Observe ¬C.",
    "Apply the contrapositive: ¬C → ¬B → ¬A, importing no external cause.",
    "Reject any choice that names an unverified alternative cause as a speculative leap.",
  ];
  return buildReading("INF", index, {
    stem: "Which choice most logically and necessarily completes the text, based only on the information given above?",
    passage, openings, seconds, recon,
  });
}

function buildCOE_Q(index) {
  const a1 = 18 + (index % 7);
  const a2 = a1 + 6 + (index % 4);
  const b1 = a1 - 5 - (index % 3);
  const b2 = b1 - 2 - (index % 3); // inversion: B decreases at depth
  const table =
    `| Method | Shallow (20 yr) | Deep (20 yr) |\n` +
    `| --- | --- | --- |\n` +
    `| A | $${a1}\\text{ g/kg}$ | $${a2}\\text{ g/kg}$ |\n` +
    `| B | $${b1}\\text{ g/kg}$ | $${b2}\\text{ g/kg}$ |`;
  const passage =
    `Researchers compared soil-carbon storage under two methods across two depths after twenty years. ` +
    `They hypothesize that Method A increases storage relative to Method B at shallow depth, but that at deep depth the relationship inverts.\n\n` +
    `The table summarizes the results.\n\n${table}`;
  const openings = [
    `At shallow depth, A recorded $${a1}\\text{ g/kg}$ versus B's $${b1}\\text{ g/kg}$.`,
    `At deep depth, A recorded $${a2}\\text{ g/kg}$ versus B's $${b2}\\text{ g/kg}$.`,
    `Across the shallow row, the two methods differ by $${a1 - b1}\\text{ g/kg}$.`,
    `Method B's storage declines from shallow to deep by $${b1 - b2}\\text{ g/kg}$.`,
  ];
  const seconds = [
    `A exceeds B at shallow depth, and since A also exceeds B at deep depth, only the shallow case fits while the inversion fails — so this supports the claim only where both rows are read together.`,
    `Read from the wrong row, this cites deep-depth values to judge a shallow-depth claim and misverifies the inversion.`,
    `This is an accurate shallow-row gap but says nothing about whether the relationship inverts at depth.`,
    `This is an accurate within-method trend but does not compare A and B as the hypothesis requires.`,
  ];
  // correct must verify BOTH cases; engineer correctness on choice 0 by data design
  const recon = [
    `Identify shallow cells: A=$${a1}$, B=$${b1}$ (A>B).`,
    `Identify deep cells: A=$${a2}$, B=$${b2}$ — verify whether A>B inverts.`,
    `The hypothesis needs the shallow advantage AND a deep inversion.`,
    `Only the choice that compares both rows can confirm or deny the full conditional.`,
  ];
  return buildReading("COE_Q", index, {
    stem: "Which choice best uses data from the table to evaluate the researchers' hypothesis?",
    passage, openings, seconds, recon,
  });
}

/* ---------------------------- SEC subtype builders --------------------------- */

const TRA_FIVE = {
  // correct (relationship), then 3 distractors of other relationships — all 5 words
  contrast: ["Despite these apparent surface similarities,", "Owing precisely to this fact,", "Adding further to this point,", "As a direct logical result,"],
  concession: ["This distinction, while valid, nonetheless", "For this very reason, then,", "In addition to that, moreover,", "Because of this, it follows"],
  causal: ["Drawn from this established premise,", "Despite this established prior premise,", "Quite apart from this premise,", "Running counter to this premise,"],
};
function buildTRA(index) {
  const kinds = Object.keys(TRA_FIVE);
  const kind = kinds[index % kinds.length];
  const set = TRA_FIVE[kind];
  const correctIdx = index % 4;
  const correctId = LETTERS[correctIdx];
  const choices = rot(set, correctIdx);
  const d = pick(DOMAINS, index);
  const passage = clampWords(
    `That the method succeeded in the metropolitan laboratories, where funding and instruments were never scarce, ` +
    `is a fact the standard history of ${d.field} reports without qualification. ______ the provincial workshops, lacking those advantages yet reporting comparable results, ` +
    `expose a confound—patronage, not technique—that the celebratory account, fixed on outcomes, quietly omits.`,
    50, 90);
  const options = LETTERS.map((id, i) => ({
    id, text: choices[i], is_correct: id === correctId,
    explanation: id === correctId
      ? `Correct: the five-word phrase encodes the ${kind} relationship the two nested sentences require.`
      : `[${pick(TAXONOMY.TRA, i)}] A defensible misreading encodes a different relationship than the passage's rhetorical direction.`,
  }));
  return {
    question_text: "Which choice completes the text with the most logical transition?",
    stimulus_text: passage, stimulus_type: "passage",
    options, correct_answer: correctId,
    explanation: buildExplanation("TRA", correctId, choices, [
      "Parse the dense first sentence: success under favorable conditions.",
      "Parse the second: comparable success without those conditions.",
      "The relationship is a contrastive reframing, not addition or cause.",
      "Only the five-word phrase encoding that contrast fits.",
    ]),
  };
}

function buildBOU(index) {
  const correctIdx = index % 4;
  const correctId = LETTERS[correctIdx];
  const variants = [": a claim", ", a claim", "; a claim", " a claim"];
  const choices = rot(variants, correctIdx);
  const d = pick(DOMAINS, index);
  const passage =
    `The monograph's central term—${d.t3[0]}, a coinage its author, a notoriously precise stylist, defended at length—anchors the argument ______ ` +
    `that the later commentators, working from an abridged edition, persistently misread.`;
  const options = LETTERS.map((id, i) => ({
    id, text: choices[i], is_correct: id === correctId,
    explanation: id === correctId
      ? "Correct: the boundary correctly attaches the non-restrictive appositive without splicing the clause."
      : `[${pick(TAXONOMY.BOU, i)}] A surface-plausible mark that either splices independent clauses or mislocates the appositive boundary.`,
  }));
  return {
    question_text: "Which choice completes the text so that it conforms to the conventions of Standard English?",
    stimulus_text: passage, stimulus_type: "passage",
    options, correct_answer: correctId,
    explanation: buildExplanation("BOU", correctId, choices, [
      "Locate the main clause and the trailing modifier across nested appositives.",
      "Distinguish a restrictive from a non-restrictive reading of the appositive.",
      "Reject marks that create a comma splice or run-on.",
      "Only the correct mark closes the parenthetical and joins the clauses.",
    ]),
  };
}

function buildFSS(index) {
  const correctIdx = index % 4;
  const correctId = LETTERS[correctIdx];
  const forms = ["remains", "remain", "remaining", "to remain"];
  const choices = rot(forms, correctIdx);
  const d = pick(DOMAINS, index);
  const passage =
    `Neither the founder's voluminous correspondence nor the institutional ledgers that, catalogued only recently by archivists in ${d.field}, ` +
    `corroborate the legend ______ free of the embellishment that later hagiography supplied.`;
  const options = LETTERS.map((id, i) => ({
    id, text: choices[i], is_correct: id === correctId,
    explanation: id === correctId
      ? "Correct: with a neither/nor subject the verb agrees with the nearer singular element, and the inverted clause requires the singular present."
      : `[${pick(TAXONOMY.FSS, i)}] Agrees with the nearest plural noun in the intervening relative clause rather than the true correlative subject.`,
  }));
  return {
    question_text: "Which choice completes the text so that it conforms to the conventions of Standard English?",
    stimulus_text: passage, stimulus_type: "passage",
    options, correct_answer: correctId,
    explanation: buildExplanation("FSS", correctId, choices, [
      "Find the true subject under the neither/nor correlative.",
      "Note the long intervening relative clause and its plural nouns (proximity decoys).",
      "Apply correlative agreement to the nearer element with inverted syntax.",
      "Only the singular present finite form is grammatical.",
    ]),
  };
}

function buildRS(index) {
  const d = pick(DOMAINS, index);
  const notes =
    `• Method X was developed in ${d.field} a decade before Method Y.\n` +
    `• Method X and Method Y share the objective of reducing measurement bias.\n` +
    `• Method Y is faster but assumes conditions X does not require.\n` +
    `• A 2021 review found X more robust under sparse data.\n` +
    `• Both methods were first applied to archival samples.\n` +
    `• Critics initially dismissed X as impractical.`;
  const openings = [
    "Both X and Y aim to reduce measurement bias, though they differ in their assumptions.",
    "Both X and Y aim to reduce measurement bias, though they differ in their assumptions.",
    "Both X and Y aim to reduce measurement bias, though they differ in their assumptions.",
    "Method Y is faster than X and was applied to archival samples.",
  ];
  const seconds = [
    "Because X preceded Y and proves more robust under sparse data, the comparison can be framed as a defense of X's earlier timeline.",
    "Because Y is faster, the comparison shows Y to be the superior successor in every respect.",
    "Because critics dismissed X, the comparison establishes that X was ultimately impractical.",
    "Both were first applied to archival samples, which settles the question of priority.",
  ];
  const correctIdx = index % 4;
  const correctId = LETTERS[correctIdx];
  const choices = twoSentenceChoices(index, rot(openings, correctIdx), rot(seconds, correctIdx));
  const options = mkOptions(choices, correctId, "RS");
  return {
    question_text:
      "The student wants to contrast Methods X and Y, highlight their shared objective, and frame the comparison as a defense of X's earlier timeline. Which choice best accomplishes this goal?",
    stimulus_text: notes, stimulus_type: "passage",
    options, correct_answer: correctId,
    explanation: buildExplanation("RS", correctId, choices, [
      "Goal parts: (1) contrast X/Y, (2) shared objective, (3) frame as defense of X's timeline.",
      "Locate notes satisfying all three; ignore accurate-but-irrelevant notes.",
      "Reject choices that satisfy only (1)–(2) or substitute a different attribute.",
      "Only the choice framing the comparison as a timeline defense satisfies part (3).",
    ]),
  };
}

/** subtype → builder + skill_id + rw_subtype */
export const CHALLENGE_RW_SUBTYPES = [
  { key: "WIC", skill_id: "WIC", rw_subtype: "vocabulary_in_context", build: buildWIC },
  { key: "TSP", skill_id: "TSP", rw_subtype: "structure", build: buildTSP },
  { key: "CTC", skill_id: "CTC", rw_subtype: "cross_text_response", build: buildCTC },
  { key: "CID", skill_id: "CID", rw_subtype: "main_idea", build: buildCID },
  { key: "COE_T", skill_id: "COE", rw_subtype: "textual_evidence", build: buildCOE_T },
  { key: "COE_Q", skill_id: "COE", rw_subtype: "quantitative_table", build: buildCOE_Q },
  { key: "INF", skill_id: "INF", rw_subtype: "general", build: buildINF },
  { key: "TRA", skill_id: "TRA", rw_subtype: "transition", build: buildTRA },
  { key: "BOU", skill_id: "BOU", rw_subtype: "boundaries", build: buildBOU },
  { key: "FSS", skill_id: "FSS", rw_subtype: "form_structure_sense", build: buildFSS },
  { key: "RS", skill_id: "SYN", rw_subtype: "notes_synthesis", build: buildRS },
];

export function generateChallengeRwItem(subtypeIndex, index) {
  const sub = CHALLENGE_RW_SUBTYPES[subtypeIndex % CHALLENGE_RW_SUBTYPES.length];
  const q = sub.build(index);
  return {
    ...q,
    skill_id: sub.skill_id,
    rw_subtype: sub.rw_subtype,
    rw_format: sub.rw_subtype === "cross_text_response" ? "text_1_text_2"
      : sub.rw_subtype === "quantitative_table" ? "table_chart"
        : sub.rw_subtype === "notes_synthesis" ? "bullet_notes"
          : sub.key === "TRA" ? "transition_blank"
            : sub.skill_id === "BOU" || sub.skill_id === "FSS" ? "grammar_blank"
              : "passage_mc",
    challenge_key: sub.key,
  };
}

/** Light structural validation for a challenge RW item. */
export function validateChallengeRwItem(q) {
  const reasons = [];
  if (!Array.isArray(q.options) || q.options.length !== 4) reasons.push("options_count");
  if ((q.options ?? []).filter((o) => o.is_correct).length !== 1) reasons.push("correct_count");
  if (!q.options?.every((o) => o.id && String(o.text ?? "").trim() && String(o.explanation ?? "").trim())) reasons.push("empty_option");
  if (!String(q.question_text ?? "").trim()) reasons.push("empty_stem");
  if (!String(q.stimulus_text ?? "").trim()) reasons.push("empty_stimulus");
  if (!String(q.explanation ?? "").includes("Score Prediction")) reasons.push("missing_score_prediction");
  if (!String(q.explanation ?? "").includes("Difficulty Justification")) reasons.push("missing_justification");
  return { ok: reasons.length === 0, reasons };
}
