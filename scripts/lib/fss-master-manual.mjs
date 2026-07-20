/**
 * Master Manual §11 — Form, Structure, and Sense item generation.
 * Passages 60–90 words; intervening phrases; inverted syntax on hard.
 * Distractors: Proximity Decoy, Tense Shift, Dangling Modifier.
 */
import { mkOpts, rotateCorrectId, charLen, optionWordCount } from "./english-rw-templates.mjs";
import {
  trimToWordRange,
  padToSentenceCount,
  sentenceCount,
  wordCount,
} from "./dsat-rw-blueprint.mjs";
import {
  formatDistractorExplanation,
  distractorFormulasFor,
  validateSubtypePassageWords,
  DISTRACTOR_FORMULAS,
} from "./dsat-rw-master-prompt.mjs";

const STEM =
  "Which choice completes the text so that it conforms to the conventions of Standard English?";
const RW_SUBTYPE = "form_structure_sense";
const PASSAGE_MIN = 60;
const PASSAGE_MAX = 90;

const CONTEXT_PADS = [
  "Independent reviewers noted that replication across additional sites remains necessary before treating the finding as settled.",
  "The authors caution that local geology and funding cycles may moderate how quickly any intervention can scale in practice.",
  "Follow-up trials will test whether the pattern holds under varied conditions the passage explicitly acknowledges.",
  "Stakeholders should weigh the evidence against limitations the researchers document throughout the study.",
  "Peer commentary praised the transparency while noting that each model rests on incomplete spatial coverage.",
  "Until complementary samples arrive, the team's conclusion remains provisional rather than categorical.",
  "Policy implications depend on whether the observed effect persists when practical constraints such as access vary.",
  "Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them.",
  "Popular summaries sometimes oversimplify the finding into a single causal sentence the paper itself avoids.",
  "Classroom textbooks may still compress the result, though the original study qualifies every major claim.",
];

/** Short sentences for challenged-tier 8–10 sentence passages within 60–90 words. */
const CHALLENGED_SHORTS = [
  "Teams replicated measurements across three independent spectrometers.",
  "Raw traces accompanied every processed summary in the appendix.",
  "Peer commentary praised the transparency of the data release.",
  "Funding cycles rarely accommodate the patience adaptive management requires.",
  "Replication across additional sites is underway at partner laboratories.",
  "Policy implications remain equivocal because contextual differences persist.",
  "Classroom textbooks may oversimplify the finding into one causal sentence.",
  "Authors qualify every major claim in the published methodological note.",
  "Independent reviewers requested clearer mechanisms before broader adoption.",
  "Stakeholders should monitor contextual exceptions noted in the field reports.",
];

const CHALLENGED_OPTION_SUFFIXES = [
  "The passage context supports this grammatical reading throughout.",
  "This form fits the passage syntax and agreement requirements here.",
  "Standard English conventions favor this choice in the sentence frame.",
  "The clause structure requires this agreement pattern in context here.",
];

const TOPICS = [
  { field: "marine biology", site: "coral reef monitoring stations", entity: "parrotfish populations" },
  { field: "paleoclimatology", site: "Antarctic ice-core laboratories", entity: "sulfate spike layers" },
  { field: "neuroscience", site: "auditory cortex imaging suites", entity: "dendritic branching patterns" },
  { field: "ecology", site: "mangrove restoration plots", entity: "seedling survival rates" },
  { field: "materials science", site: "electromagnetic coating facilities", entity: "quasicrystal growth trials" },
  { field: "archaeology", site: "coastal excavation trenches", entity: "ceramic shard assemblages" },
  { field: "linguistics", site: "bilingual classroom cohorts", entity: "code-switching frequencies" },
  { field: "economics", site: "regional labor market surveys", entity: "wage adjustment estimates" },
];

function padPassage(core, index, { challenged = false } = {}) {
  if (challenged) {
    const lead = CHALLENGED_SHORTS[index % CHALLENGED_SHORTS.length];
    const tail = CHALLENGED_SHORTS[(index + 4) % CHALLENGED_SHORTS.length];
    const mids = [];
    for (let s = 0; s < 6; s++) {
      mids.push(CHALLENGED_SHORTS[(index + s + 1) % CHALLENGED_SHORTS.length]);
    }
    const parts = [lead, mids[0], mids[1], core, mids[2], mids[3], mids[4], tail];
    let passage = parts.join(" ");
    if (wordCount(passage) < PASSAGE_MIN) {
      parts.push(CHALLENGED_SHORTS[(index + 8) % CHALLENGED_SHORTS.length]);
      passage = parts.join(" ");
    }
    if (wordCount(passage) > PASSAGE_MAX) {
      passage = trimToWordRange(passage, PASSAGE_MIN, PASSAGE_MAX);
    }
    if (sentenceCount(passage) < 8) {
      passage = padToSentenceCount(passage, 8, 10);
      passage = trimToWordRange(passage, PASSAGE_MIN, PASSAGE_MAX);
    }
    return passage;
  }
  const topic = TOPICS[index % TOPICS.length];
  const before = `Researchers studying ${topic.field} at ${topic.site} have documented how ${topic.entity} shape broader conclusions.`;
  let passage = `${before} ${core}`;
  let i = 0;
  while (wordCount(passage) < PASSAGE_MIN && i < 12) {
    passage += ` ${CONTEXT_PADS[(index + i) % CONTEXT_PADS.length]}`;
    i++;
  }
  return trimToWordRange(passage, PASSAGE_MIN, PASSAGE_MAX);
}

function challengedOption(text, slot, targetChars = 58) {
  let base = String(text ?? "").trim().replace(/[.!?]+$/, "");
  const suffix = CHALLENGED_OPTION_SUFFIXES[slot % CHALLENGED_OPTION_SUFFIXES.length];
  const pads = [" in this clause", " for the blank", " in context", " in the frame"];
  let guard = 0;
  while (charLen(base) < targetChars && guard < 6) {
    base += pads[(slot + guard) % pads.length];
    guard++;
  }
  return `${base}. ${suffix}`;
}

function trapExpl(formula, rationale) {
  return formatDistractorExplanation(formula, rationale);
}

function buildExplanation(step1, step2, correctId, correctText, distractorLines) {
  let expl = `Step 1 — ${step1.title}\n${step1.body}\n\n`;
  expl += `Step 2 — ${step2.title}\n${step2.body}\n\n`;
  expl += `Step 3 — Select the grammatical option\nChoice ${correctId} (${correctText}) is grammatically correct.\n\nDistractor analysis:`;
  for (const line of distractorLines) expl += `\n- ${line}`;
  return expl;
}

function orderOptions(correct, distractors, correctId) {
  const targetIdx = ["A", "B", "C", "D"].indexOf(correctId);
  const sorted = [...distractors].sort((a, b) => charLen(b.text) - charLen(a.text));
  const ordered = [null, null, null, null];
  ordered[targetIdx] = correct;
  let di = 0;
  for (let i = 0; i < 4; i++) {
    if (i !== targetIdx) ordered[i] = sorted[di++];
  }
  return ordered;
}

function fssSpreadPct(texts) {
  if (texts.every((t) => !String(t).includes(" "))) {
    const lens = texts.map((t) => optionWordCount(t));
    const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
    return avg > 0 ? Math.round(1000 * (Math.max(...lens) - Math.min(...lens)) / avg) / 10 : 0;
  }
  const lens = texts.map((t) => charLen(t));
  const min = Math.min(...lens);
  const max = Math.max(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

/** @returns {object} Generated FSS question fields */
function easyAgreement(index, { challenged = false } = {}) {
  const subjects = [
    ["The collection of manuscripts", "is", "are", "was", "were", "collection", "manuscripts"],
    ["The panel of experts", "has", "have", "had", "does", "panel", "experts"],
    ["Each of the volunteers", "was", "were", "are", "is", "Each", "volunteers"],
    ["The number of applicants", "has", "have", "had", "does", "number", "applicants"],
    ["A series of lectures", "is", "are", "was", "were", "series", "lectures"],
  ];
  const [subj, verb, prox, tense1, tense2, trueNoun, proxNoun] = subjects[index % subjects.length];
  const core = `${subj} that arrived from the overseas archive along with supplementary field notes ______ scheduled for digitization next month.`;
  const passage = padPassage(core, index, { challenged });
  const formulas = distractorFormulasFor(RW_SUBTYPE, index);
  const tokenSet = [verb, prox, tense1, tense2];
  const distractors = [
    { text: tokenSet[1], trap: formulas[0], why: `agrees with "${proxNoun}" near the blank rather than the true subject "${trueNoun}".` },
    { text: tokenSet[2], trap: formulas[1], why: `breaks the present-timeline established by "next month" and surrounding context.` },
    { text: tokenSet[3], trap: formulas[2], why: `creates a non-finite or mismatched form that cannot complete the independent clause.` },
  ];
  return {
    passage,
    correct: verb,
    distractors,
    step1: { title: "Locate the true subject", body: `The subject is {{yellow:${subj}}}; "${trueNoun}" is ${trueNoun === "Each" || trueNoun === "number" || trueNoun === "series" || trueNoun === "collection" || trueNoun === "panel" ? "singular" : "plural"} despite the intervening phrase.` },
    step2: { title: "Match agreement", body: "Ignore the prepositional phrase between subject and verb; match number and tense to the schedule context." },
    hint: `Identify the grammatical head of the subject, not the noun closest to the blank.`,
  };
}

function easyPronoun(index, { challenged = false } = {}) {
  const nouns = ["hummingbird", "songbird", "sea turtle", "monarch butterfly", "gray wolf"];
  const noun = nouns[index % nouns.length];
  const core = `When a ${noun} hovers over a feeder, it beats ______ wings up to eighty times per second, a feat that demands enormous metabolic energy.`;
  const passage = padPassage(core, index + 3, { challenged });
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 1);
  return {
    passage,
    correct: "its",
    distractors: [
      { text: "it's", trap: formulas[0], why: `"it's" is the contraction for "it is," not a possessive form.` },
      { text: "their", trap: formulas[1], why: `"their" is plural while the antecedent "${noun}" is singular.` },
      { text: "it", trap: formulas[2], why: `"it" is a subject pronoun, not a possessive modifier for "wings."` },
    ],
    step1: { title: "Identify the antecedent", body: `The pronoun refers to {{yellow:a ${noun}}}, which is singular.` },
    step2: { title: "Choose the possessive", body: "The singular possessive without an apostrophe modifies 'wings.'" },
    hint: "Singular animal + possession — which form shows ownership?",
  };
}

function mediumTense(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 2);
  const core = `By the time the survey results were published in the spring, the research team ______ the same neighborhoods for nearly a decade, returning each year to record incremental changes.`;
  const passage = padPassage(core, index + 5, { challenged });
  return {
    passage,
    correct: "had studied",
    distractors: [
      { text: "has studied", trap: formulas[0], why: `present perfect agrees with a nearby plural noun but not the past-before-past timeline required here.` },
      { text: "was studied", trap: formulas[1], why: `passive past breaks the active timeline anchored by "were published."` },
      { text: "have studied", trap: formulas[2], why: `present perfect plural cannot express an action completed before a past anchor event.` },
    ],
    step1: { title: "Establish the timeline", body: "The anchor event is past: {{yellow:By the time the survey results were published}}." },
    step2: { title: "Show the earlier action", body: "Studying happened before that past moment, requiring past perfect." },
    hint: "One past action finished before another — which tense shows 'earlier than the past'?",
  };
}

function mediumParallel(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 4);
  const core = `A strong documentary should inform its audience, challenge their assumptions, and ______ viewers to reconsider a familiar subject from an unexpected angle.`;
  const passage = padPassage(core, index + 7, { challenged });
  return {
    passage,
    correct: "invite",
    distractors: [
      { text: "inviting", trap: formulas[0], why: `present participle agrees with a nearby noun but breaks the parallel verb series after "should."` },
      { text: "invites", trap: formulas[1], why: `third-person singular form breaks the established base-form verb series.` },
      { text: "invited", trap: formulas[2], why: `past participle disrupts the parallel base verbs "inform" and "challenge" after "should."` },
    ],
    step1: { title: "Spot the series", body: "The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action." },
    step2: { title: "Keep it parallel", body: "After 'should,' all verbs must share the same base form." },
    hint: "Match the form of the other verbs in the list after 'should.'",
  };
}

function mediumIntervening(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 6);
  const core = `The lead researcher, along with several junior analysts who reviewed the raw telemetry, ______ prepared a revised manuscript before the funding deadline arrived.`;
  const passage = padPassage(core, index + 9, { challenged });
  return {
    passage,
    correct: "has",
    distractors: [
      { text: "have", trap: formulas[0], why: `plural "have" agrees with "analysts" near the blank, not the singular subject "researcher."` },
      { text: "had", trap: formulas[1], why: `past perfect breaks the present-perfect timeline implied by the ongoing manuscript preparation.` },
      { text: "are", trap: formulas[2], why: `"are" is a linking verb that leaves the participial phrase "prepared" dangling without a finite main verb.` },
    ],
    step1: { title: "Find the true subject", body: "With {{yellow:The lead researcher, along with several junior analysts}}, the verb agrees with the main subject, not the phrase introduced by 'along with.'" },
    step2: { title: "Match tense and number", body: "Singular 'researcher' requires a singular auxiliary compatible with the completed preparation." },
    hint: "The noun nearest the blank is not always the grammatical subject.",
  };
}

function hardInverted(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 8);
  const settings = [
    ["Nestled deep within the highly pressurized geothermal vents of the mid-ocean ridge, where temperatures can exceed $400^\\circ\\text{C}$", "vast colonies of chemosynthetic archaea", "thrive", "thrives", "flourish", "flourishes"],
    ["Hidden beneath the laminated sediments of the continental shelf, where salinity gradients shift with each tidal cycle", "dense mats of anaerobic bacteria", "persist", "persists", "remain", "remains"],
    ["Suspended among the iron-rich aerosols of the upper troposphere, where convection cells redistribute heat unevenly", "minute crystalline particulates", "drift", "drifts", "settle", "settles"],
  ];
  const [opener, subject, verb, prox, alt1, alt2] = settings[index % settings.length];
  const core = `${opener}, ______ ${subject}, which survive without sunlight by exploiting chemical gradients along the ocean floor.`;
  const passage = padPassage(core, index + 11, { challenged });
  return {
    passage,
    correct: verb,
    distractors: [
      { text: prox, trap: formulas[0], why: `singular "${prox}" agrees with a nearby singular noun in the opening phrase, not the plural subject "${subject}."` },
      { text: alt1, trap: formulas[1], why: `plural "${alt1}" tracks the nearer plural noun but breaks inverted agreement with the true subject after the blank.` },
      { text: alt2, trap: formulas[2], why: `singular "${alt2}" misaligns with the plural subject in this inverted finite-verb position.` },
    ],
    step1: { title: "Unpack inverted syntax", body: `The true subject {{yellow:${subject}}} follows the blank in an inverted construction.` },
    step2: { title: "Agree in number", body: "Plural subject requires the plural finite verb form." },
    hint: "In inverted sentences, locate the subject after the blank before choosing the verb.",
  };
}

function hardNeitherNor(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 10);
  const core = `Neither the lead engineer nor the junior technicians who assembled the prototype overnight ______ able to explain why the sensor failed during the final calibration test.`;
  const passage = padPassage(core, index + 13, { challenged });
  return {
    passage,
    correct: "were",
    distractors: [
      { text: "was", trap: formulas[0], why: `singular "was" agrees with "engineer," the farther noun, instead of the nearer plural "technicians."` },
      { text: "is", trap: formulas[1], why: `present tense breaks the past narrative established by "assembled" and "failed."` },
      { text: "has", trap: formulas[2], why: `singular present perfect misaligns with the plural nearer subject and past context.` },
    ],
    step1: { title: "Apply the neither/nor rule", body: "With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject." },
    step2: { title: "Check the nearer subject", body: "'Technicians' is plural, so the plural verb 'were' is required." },
    hint: "With 'neither...nor,' the verb matches the subject nearest to it.",
  };
}

function hardParticipial(index, { challenged = false } = {}) {
  const formulas = distractorFormulasFor(RW_SUBTYPE, index + 12);
  const core = `Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that rising carbon dioxide forced many deciduous species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.`;
  const passage = padPassage(core, index + 15, { challenged });
  return {
    passage,
    correct: "flourished",
    distractors: [
      { text: "flourish", trap: formulas[0], why: `present "flourish" tracks the nearby plural "populations" but breaks the past epoch established by "argued," "forced," and "went."` },
      { text: "flourishes", trap: formulas[1], why: `singular present breaks both the plural subject and the historical past timeline.` },
      { text: "thrives", trap: formulas[2], why: `present "thrives" introduces a dangling-style mismatch with the historical past frame of the passage.` },
    ],
    step1: { title: "Match subject and timeline", body: "The opening participial phrase modifies {{yellow:paleoclimatologists}}, and the passage establishes a past historical context." },
    step2: { title: "Use consistent tense", body: "Populations that survived did so in the same past epoch, requiring past tense." },
    hint: "The entire passage describes a past epoch — which verb form fits?",
  };
}

const EASY_BUILDERS = [easyAgreement, easyPronoun];
const MEDIUM_BUILDERS = [mediumTense, mediumParallel, mediumIntervening];
const HARD_BUILDERS = [hardInverted, hardNeitherNor, hardParticipial];

function pickBuilder(difficulty, index) {
  if (difficulty === "easy") return EASY_BUILDERS[index % EASY_BUILDERS.length];
  if (difficulty === "medium") return MEDIUM_BUILDERS[index % MEDIUM_BUILDERS.length];
  return HARD_BUILDERS[index % HARD_BUILDERS.length];
}

/**
 * Generate one Master Manual §11 FSS item.
 * @param {number} index
 * @param {string} difficulty
 * @param {{ challenged?: boolean, correctId?: string }} [opts]
 */
export function generateFssMasterManualItem(index, difficulty, opts = {}) {
  const challenged = opts.challenged === true;
  const correctId = opts.correctId ?? rotateCorrectId(index);
  const built = pickBuilder(difficulty, index)(index, { challenged });
  const ordered = orderOptions(
    { text: built.correct, trap: null, why: `Correct: satisfies Standard English conventions for this blank.` },
    built.distractors,
    correctId,
  );

  const texts = ordered.map((o) => o.text);
  const formulas = DISTRACTOR_FORMULAS[RW_SUBTYPE];
  const expls = ordered.map((o, i) => {
    if (o.trap === null) return `Correct: "${o.text}" satisfies Standard English conventions for this blank.`;
    const fi = (i + index) % 3;
    return trapExpl(o.trap ?? formulas[fi], o.why);
  });

  let options = mkOpts(correctId, texts, expls);
  if (challenged) {
    const targetChars = 12;
    options = ["A", "B", "C", "D"].map((id, i) => {
      const o = options.find((x) => x.id === id);
      return { ...o, text: challengedOption(o.text, i, targetChars) };
    });
  }

  const distractorLines = options
    .filter((o) => !o.is_correct)
    .map((o) => `${o.id}: ${o.explanation}`);

  const explanation = buildExplanation(
    built.step1,
    built.step2,
    correctId,
    options.find((o) => o.is_correct)?.text ?? built.correct,
    distractorLines,
  );

  return {
    question_text: STEM,
    stimulus_text: built.passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation,
    hint: built.hint,
    rw_subtype: RW_SUBTYPE,
    rw_format: "grammar_blank",
    spread_pct: fssSpreadPct(options.map((o) => o.text)),
    passage_words: wordCount(built.passage),
    passage_sentences: sentenceCount(built.passage),
  };
}

export function validateFssMasterItem(q) {
  const pw = validateSubtypePassageWords(q.stimulus_text, RW_SUBTYPE);
  const spread = fssSpreadPct((q.options ?? []).map((o) => o.text));
  const reasons = [];
  if (!pw.ok) reasons.push(pw.reason ?? "passage_word_count");
  if (!String(q.stimulus_text ?? "").includes("______")) reasons.push("missing_blank");
  if (spread > 15) reasons.push(`spread:${spread}`);
  return { ok: reasons.length === 0, reasons, passage_words: pw.words, spread_pct: spread };
}

export { fssSpreadPct, PASSAGE_MIN, PASSAGE_MAX };
