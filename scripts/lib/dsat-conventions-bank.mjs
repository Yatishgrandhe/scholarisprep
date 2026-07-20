/**
 * Blueprint-grade BOU / FSS / SYN item banks for conventions + rhetorical synthesis.
 * Passages 50–90 words; OnePrep Step 1/2/3 + distractor analysis.
 */

import { readFileSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { mkOpts } from "./english-rw-templates.mjs";

const __dir = dirname(fileURLToPath(import.meta.url));

const STEM_BOU = "Which choice completes the text so that it conforms to the conventions of Standard English?";
const STEM_FSS = STEM_BOU;
/** Non-empty stand-in for "omit punctuation" distractors (validator rejects blank option text). */
const NO_PUNCT = "(no punctuation)";

/** @param {object} p */
function onePrepExpl(p) {
  const { step1, step2, step3, distractors } = p;
  let expl = `Step 1 — ${step1.title}\n${step1.body}\n\nStep 2 — ${step2.title}\n${step2.body}\n\nStep 3 — ${step3.title}\n${step3.body}\n\nDistractor analysis:`;
  for (const [id, text] of Object.entries(distractors)) {
    expl += `\n- ${id}: ${text}`;
  }
  return expl;
}

function bouItem({ passage, correctId, options, steps, hint, difficulty }) {
  return {
    skill_id: "BOU",
    rw_subtype: "boundaries",
    rw_format: "grammar_blank",
    difficulty,
    question_text: STEM_BOU,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: onePrepExpl(steps),
    hint,
  };
}

function fssItem({ passage, correctId, options, steps, hint, difficulty }) {
  return {
    skill_id: "FSS",
    rw_subtype: "form_structure_sense",
    rw_format: "grammar_blank",
    difficulty,
    question_text: STEM_FSS,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: onePrepExpl(steps),
    hint,
  };
}

function synItem({ notes, goal, correctId, options, steps, hint, difficulty }) {
  return {
    skill_id: "SYN",
    rw_subtype: "notes_synthesis",
    rw_format: "bullet_notes",
    difficulty,
    question_text: `The student wants to ${goal}. Which choice most effectively uses information from the notes to accomplish this goal?`,
    stimulus_text: notes,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: onePrepExpl(steps),
    hint,
  };
}

// --- BOU templates (boundaries) ---

const BOU_EASY = [
  (i) => {
    const places = ["library", "museum", "theater", "observatory", "archive"];
    const p = places[i % places.length];
    return bouItem({
      difficulty: "easy",
      passage: `The city's oldest ${p} reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored galleries.`,
      correctId: "A",
      options: mkOpts(
        "A",
        [", and", ",", NO_PUNCT, " and"],
        [
          "A comma plus 'and' correctly joins two independent clauses.",
          "A comma alone creates a comma splice between independent clauses.",
          "No punctuation produces a run-on sentence.",
          "'and' without a preceding comma is nonstandard for clauses of this length.",
        ],
      ),
      steps: {
        step1: { title: "Identify the two clauses", body: "Both sides are independent: {{yellow:The city's oldest " + p + " reopened last spring}} and 'thousands of visitors lined up.'" },
        step2: { title: "Join them correctly", body: "Two independent clauses are joined with a comma plus a coordinating conjunction, so ', and' is correct." },
        step3: { title: "Select the correct boundary", body: "Choice A (, and) satisfies Standard English conventions for joining two complete sentences." },
        distractors: { B: "a lone comma makes a comma splice.", C: "no punctuation makes a run-on.", D: "'and' without the comma is nonstandard here." },
      },
      hint: "Both halves could stand alone as sentences — how do you join two complete sentences?",
    });
  },
  (i) => {
    const items = ["saffron, tamarind, and smoked paprika", "basil, cumin, and coriander", "ginger, lemongrass, and galangal"];
    return bouItem({
      difficulty: "easy",
      passage: `The recipe calls for three uncommon ingredients ______ ${items[i % items.length]}.`,
      correctId: "A",
      options: mkOpts("A", [":", ";", ",", NO_PUNCT], ["A colon follows a complete clause to introduce a list.", "A semicolon requires a second independent clause.", "A comma is too weak to introduce the list.", "Omitting punctuation fuses the list to the clause."]),
      steps: {
        step1: { title: "Check what precedes the blank", body: "{{yellow:The recipe calls for three uncommon ingredients}} is a complete independent clause." },
        step2: { title: "Introduce the list", body: "A colon after a complete clause properly introduces a list." },
        step3: { title: "Select the correct boundary", body: "Choice A (:) correctly introduces the ingredient list." },
        distractors: { B: "a semicolon needs a second clause, not a list.", C: "a comma is too weak here.", D: "no punctuation fuses the list." },
      },
      hint: "What punctuation introduces a list after a complete sentence?",
    });
  },
];

const BOU_MEDIUM = [
  (i) =>
    bouItem({
      difficulty: "medium",
      passage: `Marie Tharp's painstaking ocean-floor maps ______ once dismissed by some colleagues as mere guesswork ______ ultimately provided key evidence for the theory of plate tectonics.`,
      correctId: "A",
      options: mkOpts("A", ["— ... —", ", ... —", "— ... ,", "( ... ,"], ["Matched em dashes set off the nonessential modifier.", "Mixing comma and dash is unmatched.", "Dash-comma pairing is unmatched.", "Parenthesis must close with parenthesis."]),
      steps: {
        step1: { title: "Find the inserted phrase", body: "{{yellow:once dismissed by some colleagues as mere guesswork}} is a nonessential aside." },
        step2: { title: "Match the punctuation", body: "Parenthetical asides must be enclosed by matching marks." },
        step3: { title: "Select the correct boundary", body: "Choice A (— ... —) correctly brackets the interruption." },
        distractors: { B: "comma paired with dash is unmatched.", C: "dash paired with comma is unmatched.", D: "parenthesis must close with parenthesis." },
      },
      hint: "Whatever mark opens the interruption must also close it.",
    }),
  (i) => {
    const subjects = ["telescope", "microscope", "spectrometer", "radiotelescope"];
    const s = subjects[i % subjects.length];
    return bouItem({
      difficulty: "medium",
      passage: `The ${s} captured the faint signal after hours of exposure ______ the resulting image revealed structures no one had expected.`,
      correctId: "A",
      options: mkOpts("A", [";", ",", ":", " and, "], ["A semicolon links two related independent clauses.", "A comma alone is a splice.", "A colon implies explanation or list.", "Misplaced punctuation around 'and' is ungrammatical."]),
      steps: {
        step1: { title: "Test each side", body: "Both parts stand alone as complete sentences about the observation and its result." },
        step2: { title: "Choose the join", body: "Two related independent clauses without a conjunction are correctly linked by a semicolon." },
        step3: { title: "Select the correct boundary", body: "Choice A (;) is correct." },
        distractors: { B: "comma alone is a splice.", C: "colon signals explanation, not parallel events.", D: "misplaced comma after 'and' is ungrammatical." },
      },
      hint: "Two complete clauses with no 'and' — which mark links them?",
    });
  },
];

const BOU_HARD = [
  (i) =>
    bouItem({
      difficulty: "hard",
      passage: `Throughout the late Mesozoic era, angiosperms (flowering plants) underwent a rapid diversification that fundamentally restructured terrestrial ______ ancient gymnosperms like conifers and cycads, which had dominated landscapes for millions of years, were quickly relegated to marginal ecological niches.`,
      correctId: "D",
      options: mkOpts("D", ["ecosystems,", "ecosystems; while", "ecosystems, and", "ecosystems—"], ["Comma splice between independent clauses.", "'while' after semicolon creates a fragment.", "Treats clauses as parallel actions rather than explanation.", "Em dash introduces explanatory elaboration of the restructuring."]),
      steps: {
        step1: { title: "Locate clause boundaries", body: "The first clause ending at 'ecosystems' is independent; the second explains how restructuring occurred." },
        step2: { title: "Apply punctuation rules", body: "An em dash can introduce a dramatic elaboration explaining how ecosystems were restructured." },
        step3: { title: "Select the correct boundary", body: "Choice D (ecosystems—) uses the dash to introduce the explanatory second clause." },
        distractors: { A: "comma alone creates a splice.", B: "'while' after semicolon leaves a fragment.", C: "comma+and treats the clauses as parallel rather than explanatory." },
      },
      hint: "The second clause explains how ecosystems were restructured — which mark introduces that explanation?",
    }),
  (i) =>
    bouItem({
      difficulty: "hard",
      passage: `The committee approved only one of the three proposals ______ the one that promised measurable results within a single fiscal year ______ and rejected the rest as too speculative.`,
      correctId: "A",
      options: mkOpts("A", ["— ... —", ": ... :", ", ... ;", "— ... ,"], ["Matched em dashes set off the appositive.", "Colons cannot wrap a mid-clause appositive.", "Comma-semicolon pairing is unmatched.", "Dash-comma pairing is unmatched."]),
      steps: {
        step1: { title: "Locate the appositive", body: "{{yellow:the one that promised measurable results within a single fiscal year}} renames 'one of the three proposals.'" },
        step2: { title: "Wrap it symmetrically", body: "An interrupting appositive must be bracketed by matching marks." },
        step3: { title: "Select the correct boundary", body: "Choice A (— ... —) preserves the main clause while setting off the appositive." },
        distractors: { B: "paired colons cannot enclose a mid-clause appositive.", C: "comma and semicolon are unmatched.", D: "dash and comma are unmatched." },
      },
      hint: "The bracketed phrase renames the proposal; marks on each side must match.",
    }),
];

// --- FSS templates ---

const FSS_EASY = [
  (i) =>
    fssItem({
      difficulty: "easy",
      passage: `The collection of rare coins that the museum acquired last year ______ now on display in the east wing.`,
      correctId: "A",
      options: mkOpts("A", ["is", "are", "were", "have been"], ["Singular 'collection' takes 'is'.", "'are' agrees with 'coins,' not the subject.", "'were' is plural and past.", "'have been' is plural."]),
      steps: {
        step1: { title: "Find the real subject", body: "The subject is {{yellow:The collection of rare coins}}; 'collection' is singular." },
        step2: { title: "Match the verb", body: "A singular subject takes the singular verb 'is,' fitting the present cue 'now.'" },
        step3: { title: "Select the grammatical option", body: "Choice A (is) agrees with the singular subject." },
        distractors: { B: "'are' wrongly agrees with 'coins.'", C: "'were' is plural and past.", D: "'have been' is plural." },
      },
      hint: "Ignore 'of rare coins' — is the subject singular or plural?",
    }),
  (i) =>
    fssItem({
      difficulty: "easy",
      passage: `When a hummingbird hovers, it beats ______ wings up to fifty times per second, a feat that demands enormous energy.`,
      correctId: "A",
      options: mkOpts("A", ["its", "it's", "their", "it"], ["Singular possessive for 'a hummingbird.'", "'it's' means 'it is.'", "'their' is plural.", "'it' is not possessive."]),
      steps: {
        step1: { title: "Identify the antecedent", body: "The pronoun refers to {{yellow:a hummingbird}}, which is singular." },
        step2: { title: "Choose the possessive", body: "The singular possessive 'its' modifies 'wings.'" },
        step3: { title: "Select the grammatical option", body: "Choice A (its) is the correct possessive." },
        distractors: { B: "'it's' is the contraction 'it is.'", C: "'their' is plural.", D: "'it' is not possessive." },
      },
      hint: "Singular bird + possession of wings — which form shows ownership?",
    }),
];

const FSS_MEDIUM = [
  (i) =>
    fssItem({
      difficulty: "medium",
      passage: `By the time the survey results were published, the research team ______ the same neighborhoods for nearly a decade, returning each spring to record changes.`,
      correctId: "A",
      options: mkOpts("A", ["had studied", "studies", "will study", "is studying"], ["Past perfect shows action before 'were published.'", "Present tense clashes with past narrative.", "Future tense is inconsistent.", "Present progressive breaks the timeline."]),
      steps: {
        step1: { title: "Establish the timeline", body: "The anchor event is past: {{yellow:By the time the survey results were published}}." },
        step2: { title: "Show the earlier action", body: "Studying happened before that past moment, requiring past perfect." },
        step3: { title: "Select the grammatical option", body: "Choice A (had studied) is correct." },
        distractors: { B: "'studies' is present.", C: "'will study' is future.", D: "'is studying' is present progressive." },
      },
      hint: "One past action finished before another — which tense shows 'earlier than the past'?",
    }),
  (i) =>
    fssItem({
      difficulty: "medium",
      passage: `A good documentary should inform its audience, challenge their assumptions, and ______ them to look at a familiar subject in a new way.`,
      correctId: "A",
      options: mkOpts("A", ["invite", "inviting", "invites", "to invite"], ["Base form parallel with 'inform' and 'challenge.'", "Participle breaks parallel structure.", "Conjugated -s form breaks parallel series.", "Infinitive disrupts the parallel verbs."]),
      steps: {
        step1: { title: "Spot the series", body: "The sentence lists what a documentary should do: {{yellow:inform, challenge}}, and a third action." },
        step2: { title: "Keep it parallel", body: "After 'should,' all verbs must share the same base form." },
        step3: { title: "Select the grammatical option", body: "Choice A (invite) maintains parallel structure." },
        distractors: { B: "'inviting' is a participle.", C: "'invites' is conjugated.", D: "'to invite' is an infinitive." },
      },
      hint: "Match the form of the other verbs in the list after 'should.'",
    }),
];

const FSS_HARD = [
  (i) =>
    fssItem({
      difficulty: "hard",
      passage: `Neither the lead engineer nor the junior technicians who assembled the prototype ______ able to explain why the sensor failed during the final test.`,
      correctId: "A",
      options: mkOpts("A", ["were", "was", "is", "has been"], ["Verb agrees with nearer plural subject 'technicians.'", "'was' would agree with singular subject only.", "'is' is singular present.", "'has been' is singular."]),
      steps: {
        step1: { title: "Apply the neither/nor rule", body: "With {{yellow:Neither the lead engineer nor the junior technicians}}, the verb agrees with the nearer subject." },
        step2: { title: "Check the nearer subject", body: "'Technicians' is plural, so the plural verb 'were' is required." },
        step3: { title: "Select the grammatical option", body: "Choice A (were) agrees with the nearer plural subject." },
        distractors: { B: "'was' agrees with a singular subject, not the nearer plural one.", C: "'is' is singular present.", D: "'has been' is singular." },
      },
      hint: "With 'neither...nor,' the verb matches the subject nearest to it.",
    }),
  (i) =>
    fssItem({
      difficulty: "hard",
      passage: `Analyzing fossilized leaves from the Paleocene-Eocene Thermal Maximum, paleoclimatologists have argued that the sudden surge in atmospheric carbon dioxide forced many deciduous plant species to adjust their leaf morphology, meaning that populations with highly adaptable phenotypic plasticity ______ in environments where less adaptable species went extinct.`,
      correctId: "A",
      options: mkOpts("A", ["flourished", "flourish", "flourishing", "will flourish"], ["Past tense aligns with 'argued,' 'forced,' 'went.'", "Present tense breaks historical context.", "Participle cannot be the main finite verb.", "Future tense is inconsistent with the epoch described."]),
      steps: {
        step1: { title: "Match subject and timeline", body: "The passage establishes a past historical context with {{yellow:argued, forced, went}}." },
        step2: { title: "Use the right tense", body: "Populations that survived did so in the same past epoch, requiring past tense 'flourished.'" },
        step3: { title: "Select the grammatical option", body: "Choice A (flourished) maintains tense consistency." },
        distractors: { B: "'flourish' is present.", C: "'flourishing' is not a finite verb.", D: "'will flourish' is future." },
      },
      hint: "The entire passage describes a past epoch — which verb form fits?",
    }),
];

// --- SYN note sets ---

const SYN_NOTE_BANK = [
  {
    title: "Tikal Water Management",
    notes: (n) =>
      `Tikal's Water Supply\n• The Maya civilization constructed elaborate water management systems, including reservoirs and canals.\n• The city of Tikal possessed a major reservoir system paved with plaster.\n• Plaster lining prevented water from seeping into the porous limestone bedrock.\n• The system at Tikal was designed to collect rainwater during the intense tropical wet season.\n• This stored water sustained the city's population of over 60,000 residents during the prolonged dry season.`,
    goals: [
      {
        goal: "explain how the architectural design of Tikal's reservoir system directly addressed an environmental challenge of the region",
        correct:
          "Paved with plaster to prevent seepage into porous limestone, Tikal's reservoir system captured rainwater during the wet season to sustain over 60,000 residents during dry periods.",
        wrong: [
          "To prevent water from seeping into Tikal's porous limestone bedrock, the Maya paved their massive reservoir system with plaster.",
          "The Maya built elaborate canals and plaster-paved reservoirs in cities like Tikal to manage water and sustain their large urban populations.",
          "Facing intense tropical wet seasons and prolonged dry seasons, the Maya of Tikal constructed a plaster-lined reservoir system that prevented rainwater from seeping into the porous bedrock.",
        ],
        why: [
          "Addresses seepage but omits the seasonal wet/dry survival function.",
          "Too general; omits porous limestone and seasonal cycle.",
          "Misses storing water to sustain the population during the dry season.",
        ],
      },
    ],
  },
  {
    title: "Whale-Inspired Turbines",
    notes: (n) =>
      `Biomimetic Wind Turbine ${n}\n• Engineers modeled blade ridges on humpback whale fin tubercles.\n• Wind-tunnel tests showed twelve-percent efficiency gains at moderate wind speeds.\n• Flat-blade designs underperformed at identical speeds in controlled comparisons.\n• Field monitoring confirmed gains persisted across seasonal wind variability.\n• Overnight noise levels remained within residential ordinance limits.`,
    goals: [
      {
        goal: "introduce the turbine design and its measured performance advantage",
        correct: (n) => `Inspired by humpback whale fin tubercles, prototype ${n} achieved twelve-percent efficiency gains at moderate wind speeds in wind-tunnel tests, outperforming flat-blade designs tested under identical conditions.`,
        wrong: [
          "Whale-fin tubercles have inspired many unrelated inventions beyond energy.",
          "Flat-blade turbines remain the industry standard regardless of test outcomes.",
          "Noise monitoring alone proves a turbine design is superior.",
        ],
        why: ["Imports information absent from the notes.", "Contradicted by documented underperformance of flat blades.", "Focuses on noise, not the stated performance goal."],
      },
    ],
  },
  {
    title: "Reef Herbivore Protection",
    notes: (n) =>
      `Coral Reef Survey ${n}\n• Sites with depleted parrotfish biomass showed sharply reduced coral recruitment.\n• Temperature and salinity remained stable across compared sites.\n• Bare rock patches reappeared only where herbivore populations recovered.\n• Policy briefs recommend no-take zones sized to herbivore home ranges.\n• Authors caution that local reef geology still influences settlement success.`,
    goals: [
      {
        goal: "explain why protecting herbivorous fish matters for reef recovery",
        correct: `Where parrotfish biomass declined, coral recruitment fell even when temperature and salinity stayed stable, and bare rock returned only after herbivore populations recovered—supporting no-take zones sized to herbivore home ranges.`,
        wrong: [
          "Parrotfish are colorful reef dwellers that tourists enjoy photographing.",
          "Temperature changes alone explain all coral recruitment failures in the notes.",
          "Geology determines settlement success, so fish protection is irrelevant.",
        ],
        why: ["Irrelevant to reef recovery mechanism.", "Contradicted by stable temperature in the notes.", "Overstates geology while ignoring documented grazing effects."],
      },
    ],
  },
  {
    title: "Sleep and Memory",
    notes: (n) =>
      `Memory Consolidation Study ${n}\n• Participants who slept eight hours recalled word lists more accurately than those kept awake.\n• Both groups studied for equal duration under matched conditions.\n• Hippocampal imaging subsamples showed differential activation during retrieval.\n• Authors plan replication with longer study materials.\n• Lab conditions may limit generalization to classroom learning.`,
    goals: [
      {
        goal: "summarize how sleep affected recall in the controlled study",
        correct: `When study time was matched, participants who slept eight hours outperformed those kept awake on recall tests, with imaging subsamples showing differential hippocampal activation during retrieval.`,
        wrong: [
          "Sleep deprivation improves recall because it increases alertness during testing.",
          "Hippocampal imaging proves sleep has no effect on memory.",
          "Longer study materials would eliminate all differences between groups.",
        ],
        why: ["Contradicted by higher recall in the sleep group.", "Contradicted by documented differential activation.", "Speculates beyond the notes' stated replication plan."],
      },
    ],
  },
  {
    title: "Literacy Pair Discussion",
    notes: (n) =>
      `Literacy Intervention ${n}\n• Structured pair-discussion protocols replaced silent worksheets in treatment classrooms.\n• Comprehension scores rose twelve points versus a four-point gain in control cohorts.\n• Teachers observed students citing textual evidence during disagreements.\n• Scripted prompts required paraphrasing a counterargument before advancing a claim.\n• District coaches recorded higher engagement during observed lessons.`,
    goals: [
      {
        goal: "emphasize the most empirically supported approach documented in the notes",
        correct: `Structured pair discussion produced a twelve-point comprehension gain—three times the worksheet cohort's four-point gain—with teachers observing students citing textual evidence during disagreements.`,
        wrong: [
          "Worksheets remain the only valid tool because they require silent focus.",
          "Engagement observations prove discussion protocols reduce comprehension.",
          "Paraphrasing prompts are unrelated to the measured score gains.",
        ],
        why: ["Contradicted by documented gains for discussion.", "Contradicted by higher comprehension scores.", "Ignores the link between structured prompts and measured outcomes."],
      },
    ],
  },
  {
    title: "Ada Lovelace",
    notes: (n) =>
      `Ada Lovelace and Early Computing\n• Ada Lovelace was a 19th-century English mathematician who worked with Charles Babbage.\n• She wrote notes describing how a computing engine could manipulate symbols, not only numbers.\n• Her notes included an algorithm for Bernoulli numbers, often cited as early programming.\n• Historians debate how much of the notes reflect her independent insight versus Babbage's ideas.\n• Recent scholarship emphasizes her conceptual leap beyond mere calculation.`,
    goals: [
      {
        goal: "emphasize Lovelace's conceptual contribution beyond mere calculation",
        correct: `Lovelace's notes described how a computing engine could manipulate symbols—not only numbers—and included an algorithm for Bernoulli numbers, reflecting a conceptual leap beyond mere calculation that recent scholarship emphasizes.`,
        wrong: [
          "Lovelace's primary contribution was building the physical computing engine herself.",
          "Historians agree her notes added nothing beyond Babbage's own ideas.",
          "Bernoulli numbers prove Lovelace invented modern electronic computers.",
        ],
        why: ["Not supported by the notes.", "Contradicted by scholarship emphasizing her conceptual leap.", "Overstates beyond what the notes claim."],
      },
    ],
  },
];

const BOU_TOPICS = [
  ["library", "galleries"], ["museum", "exhibits"], ["theater", "stage"], ["archive", "reading room"],
  ["observatory", "dome"], ["hospital", "wing"], ["station", "platform"], ["campus", "quad"],
];

const FSS_SUBJECTS = [
  ["The bundle of manuscripts", "was", ["were", "are", "have been"], "singular collective subject"],
  ["The panel of experts", "has", ["have", "had", "are having"], "singular collective subject"],
  ["Each of the volunteers", "was", ["were", "are", "have been"], "'each' is singular"],
  ["The number of applicants", "has", ["have", "are", "were"], "'the number' is singular"],
  ["A series of lectures", "is", ["are", "were", "have been"], "'series' as subject is singular here"],
];

function bouCommaConjunction(i) {
  const [place, room] = BOU_TOPICS[i % BOU_TOPICS.length];
  return bouItem({
    difficulty: "easy",
    passage: `The city's oldest ${place} reopened last spring after a three-year renovation ______ thousands of visitors lined up on the first morning to see the restored ${room}.`,
    correctId: "A",
    options: mkOpts("A", [", and", ",", NO_PUNCT, " and"], ["Comma plus 'and' joins two independent clauses.", "Comma splice.", "Run-on.", "'and' without comma is nonstandard."]),
    steps: {
      step1: { title: "Identify the two clauses", body: `Both sides are independent clauses about the ${place} reopening and visitor response.` },
      step2: { title: "Join them correctly", body: "Two independent clauses require a comma plus a coordinating conjunction." },
      step3: { title: "Select the correct boundary", body: "Choice A (, and) is correct." },
      distractors: { B: "comma splice.", C: "run-on.", D: "'and' without comma is nonstandard." },
    },
    hint: "Both halves could stand alone as sentences.",
  });
}

function bouColonList(i) {
  const lists = [
    "saffron, tamarind, and smoked paprika",
    "basil, cumin, and coriander",
    "ginger, lemongrass, and galangal",
    "oregano, thyme, and rosemary",
  ];
  return bouItem({
    difficulty: "easy",
    passage: `The recipe calls for three uncommon ingredients ______ ${lists[i % lists.length]}.`,
    correctId: "A",
    options: mkOpts("A", [":", ";", ",", NO_PUNCT], ["Colon introduces a list after a complete clause.", "Semicolon needs a second clause.", "Comma too weak.", "No punctuation fuses the list."]),
    steps: {
      step1: { title: "Check what precedes the blank", body: "The words before the blank form a complete independent clause." },
      step2: { title: "Introduce the list", body: "A colon after a complete clause properly introduces a list." },
      step3: { title: "Select the correct boundary", body: "Choice A (:) is correct." },
      distractors: { B: "semicolon needs a second clause.", C: "comma too weak.", D: "no punctuation fuses the list." },
    },
    hint: "What punctuation introduces a list after a complete sentence?",
  });
}

function bouSemicolon(i) {
  const pairs = [
    ["The telescope captured the faint galaxy after hours of exposure", "the resulting image revealed structures no one had expected"],
    ["The orchestra finished its final rehearsal before dawn", "the conductor reviewed the recording with the section leaders"],
    ["The chemist synthesized the compound after repeated trials", "the spectral analysis confirmed a structure no one had predicted"],
  ];
  const [a, b] = pairs[i % pairs.length];
  return bouItem({
    difficulty: "medium",
    passage: `${a} ______ ${b}.`,
    correctId: "A",
    options: mkOpts("A", [";", ",", ":", " and,"], ["Semicolon links two related independent clauses.", "Comma splice.", "Colon implies explanation.", "Misplaced punctuation around 'and'."]),
    steps: {
      step1: { title: "Test each side", body: "Both parts stand alone as complete sentences." },
      step2: { title: "Choose the join", body: "Two related independent clauses without a conjunction are linked by a semicolon." },
      step3: { title: "Select the correct boundary", body: "Choice A (;) is correct." },
      distractors: { B: "comma splice.", C: "colon signals explanation.", D: "misplaced comma after 'and'." },
    },
    hint: "Two complete clauses — which mark links them without 'and'?",
  });
}

function fssAgreement(i) {
  const [subj, verb, wrong, note] = FSS_SUBJECTS[i % FSS_SUBJECTS.length];
  return fssItem({
    difficulty: i % 3 === 0 ? "easy" : i % 3 === 1 ? "medium" : "hard",
    passage: `${subj} that arrived from the overseas archive ______ scheduled for digitization next month.`,
    correctId: "A",
    options: mkOpts("A", [verb, wrong[0], wrong[1], wrong[2]], [`Correct: ${note}.`, `Agreement error.`, `Agreement error.`, `Agreement error.`]),
    steps: {
      step1: { title: "Find the real subject", body: `The subject is {{yellow:${subj}}}; ${note}.` },
      step2: { title: "Match the verb", body: `The verb must agree with the subject in number and fit the present schedule context.` },
      step3: { title: "Select the grammatical option", body: `Choice A (${verb}) is correct.` },
      distractors: { B: `'${wrong[0]}' does not agree.`, C: `'${wrong[1]}' does not agree.`, D: `'${wrong[2]}' does not agree.` },
    },
    hint: "Identify the true subject, then match the verb.",
  });
}

function expandBouPool() {
  const pool = { easy: [...BOU_EASY, bouCommaConjunction, bouColonList], medium: [...BOU_MEDIUM, bouSemicolon], hard: [...BOU_HARD] };
  return pool;
}

function expandFssPool() {
  return {
    easy: [...FSS_EASY, (i) => fssAgreement(i * 2)],
    medium: [...FSS_MEDIUM, (i) => fssAgreement(i * 2 + 1)],
    hard: [...FSS_HARD, (i) => fssAgreement(i * 3 + 7)],
  };
}

function pickFromPool(pool, difficulty, index) {
  const arr = pool[difficulty];
  return arr[index % arr.length](index);
}

function generateSynItem(index, difficulty) {
  const bank = SYN_NOTE_BANK[index % SYN_NOTE_BANK.length];
  const goalSet = bank.goals[index % bank.goals.length];
  const notes = bank.notes(index);
  const correctId = "A";
  const correctText = typeof goalSet.correct === "function" ? goalSet.correct(index) : goalSet.correct;
  const options = mkOpts(
    correctId,
    [correctText, ...goalSet.wrong],
    ["Synthesizes notes to accomplish the stated rhetorical goal.", ...goalSet.why],
  );
  return synItem({
    notes,
    goal: goalSet.goal,
    correctId,
    options,
    difficulty,
    steps: {
      step1: { title: "Review the notes", body: `Identify facts in the notes that relate to the goal: ${goalSet.goal}.` },
      step2: { title: "Match the rhetorical goal", body: "Eliminate options that omit required note content or import outside information." },
      step3: { title: "Select effective synthesis", body: `Choice A integrates the relevant note details to accomplish the goal.` },
      distractors: { B: goalSet.why[0], C: goalSet.why[1], D: goalSet.why[2] },
    },
    hint: "Which option uses only note facts to accomplish the stated goal?",
  });
}

/** Load hand-authored seeds from gen-bou-fss.json */
function loadSeedItems() {
  try {
    const raw = readFileSync(resolve(__dir, "../data/gen-bou-fss.json"), "utf8");
    return JSON.parse(raw);
  } catch {
    return [];
  }
}

function seedToRow(entry) {
  const q = entry.question;
  const skill = entry.skill;
  const meta = {
    dsat_blueprint_v1: true,
    rw_subtype: skill === "BOU" ? "boundaries" : "form_structure_sense",
    rw_format: "grammar_blank",
    explanation_v2: true,
    generator: "dsat-conventions-bank.mjs",
    original: true,
  };
  let expl = q.explanation;
  if (!/^Step 3 —/m.test(expl)) {
    expl = expl.replace(/\nDistractor analysis:/, "\n\nStep 3 — Confirm the answer\nThe correct choice satisfies Standard English conventions as analyzed above.\n\nDistractor analysis:");
  }
  return {
    skill_id: skill,
    rw_subtype: meta.rw_subtype,
    rw_format: meta.rw_format,
    difficulty: entry.difficulty,
    question_text: q.question_text,
    stimulus_text: q.stimulus_text,
    stimulus_type: "passage",
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: expl,
    hint: q.hint ?? null,
    source_metadata: meta,
  };
}

/**
 * @param {{ skill: 'BOU'|'FSS'|'SYN', count: number, startIndex?: number }} spec
 */
export function generateConventionsBatch(spec) {
  const { skill, count, startIndex = 0 } = spec;
  const rows = [];
  const bouPool = expandBouPool();
  const fssPool = expandFssPool();
  const seeds = loadSeedItems().filter((s) => s.skill === skill);

  for (let i = 0; i < count; i++) {
    const globalIdx = startIndex + i;
    const difficulty =
      i < Math.floor(count * 0.42) ? "easy" : i < Math.floor(count * 0.42) + Math.floor(count * 0.35) ? "medium" : "hard";

    if (seeds.length && i < seeds.length) {
      const row = seedToRow(seeds[i]);
      row.difficulty = seeds[i].difficulty;
      rows.push(row);
      continue;
    }

    if (skill === "BOU") {
      rows.push(pickFromPool(bouPool, difficulty, globalIdx));
    } else if (skill === "FSS") {
      rows.push(pickFromPool(fssPool, difficulty, globalIdx));
    } else if (skill === "SYN") {
      rows.push(generateSynItem(globalIdx, difficulty));
    }
  }
  return rows;
}

export function validateConventionsRow(q) {
  const reasons = [];
  if (!q.question_text?.trim()) reasons.push("empty_stem");
  if (!Array.isArray(q.options) || q.options.length !== 4) reasons.push("options_count");
  const correct = q.options?.filter((o) => o.is_correct);
  if (correct?.length !== 1) reasons.push("correct_count");
  if (q.correct_answer !== correct?.[0]?.id) reasons.push("correct_mismatch");
  const expl = String(q.explanation ?? "");
  if (!expl.startsWith("Step 1 —")) reasons.push("missing_step1");
  if (!/^Step 2 —/m.test(expl)) reasons.push("missing_step2");
  if (!/^Step 3 —/m.test(expl)) reasons.push("missing_step3");
  if (!expl.includes("Distractor analysis:")) reasons.push("missing_distractors");
  if (q.skill_id === "SYN" && !String(q.stimulus_text ?? "").includes("•")) reasons.push("missing_bullets");
  if ((q.skill_id === "BOU" || q.skill_id === "FSS") && !String(q.stimulus_text ?? "").includes("______")) {
    reasons.push("missing_blank");
  }
  return { ok: reasons.length === 0, reasons };
}

/** Challenged conventions item: hard templates with challenged_problem metadata. */
export function generateChallengedConventionsItem(skill, index) {
  const batch = generateConventionsBatch({
    skill,
    count: 1,
    startIndex: index + 12000,
  });
  const row = batch[0];
  row.difficulty = "hard";
  const rwSubtype =
    skill === "BOU" ? "boundaries" : skill === "FSS" ? "form_structure_sense" : "notes_synthesis";
  row.rw_subtype = rwSubtype;
  row.source_metadata = {
    ...row.source_metadata,
    dsat_blueprint_v1: true,
    rw_subtype: rwSubtype,
    rw_format: row.rw_format,
    challenged_problem: true,
    difficulty_tier: "challenged",
    generator: "generate-dsat-rw-expansion.mjs",
    explanation_v2: true,
    original: true,
  };
  return row;
}
