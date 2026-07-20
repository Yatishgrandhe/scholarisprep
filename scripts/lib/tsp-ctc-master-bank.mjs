/**
 * Master Manual §1.2 TSP + §1.3 CTC passage/option banks.
 * TSP: 90–140 words, rhetorical pivot, meta-cognitive option verbs.
 * CTC: Text 1+2 each 60–90 words, subtle dispute; named distractor traps.
 */
import { longPassage, hardPassage } from "./english-rw-templates.mjs";
import {
  trimToWordRange,
  wordCount,
  padToSentenceRange,
  SENTENCE_TARGETS,
} from "./dsat-rw-blueprint.mjs";
import { SUBTYPE_PASSAGE_WORD_TARGETS } from "./dsat-rw-master-prompt.mjs";

export const TSP_WORDS = SUBTYPE_PASSAGE_WORD_TARGETS.structure;
export const CTC_EACH_WORDS = SUBTYPE_PASSAGE_WORD_TARGETS.cross_text_response.each;
export const TSP_CHALLENGED_WORDS = { min: 130, max: 200 };

const TSP_BY_DIFFICULTY = {
  easy: { min: 90, max: 105 },
  medium: { min: 105, max: 125 },
  hard: { min: 120, max: 140 },
};

const PIVOTS = [
  "Recently, however, investigators published findings that complicate the long-standing consensus described above.",
  "Yet the authors qualify this framework, noting that contextual variables moderate how broadly the pattern applies.",
  "Still, a counter-perspective emerged when researchers documented outcomes the dominant model could not fully explain.",
  "Nevertheless, subsequent fieldwork revealed limitations that the opening account had treated as settled fact.",
  "By contrast, later analysts argued that the initial synthesis overlooked boundary conditions essential to interpretation.",
  "However, empirical work since then has challenged the absolute applicability of the view introduced at the outset.",
  "Yet practitioners now recognize that the phenomenon resists the single-cause explanation the passage first outlines.",
  "Still, archival evidence qualifies the sweeping claim, showing that exceptions accumulated across multiple sites.",
];

/** TSP option sets — parallel frames with meta verbs (Master Manual §1.2). */
export const TSP_OPTION_SETS = [
  {
    correct:
      "It delineates a dominant framework, presents findings that qualify its applicability, and clarifies pragmatic policy implications.",
    distractors: [
      "It summarizes the opening historical context without addressing the empirical challenge or the qualified defense that structures the passage's conclusion in the final paragraphs.",
      "It speculates about the author's future research agenda rather than describing the rhetorical architecture the passage actually develops across its paragraphs from theory to evidence.",
      "It claims the author presents a legislative solution before defining the problem, reversing the sequence of argument the passage follows from theoretical model to empirical findings.",
    ],
    traps: ["Partial_Scope", "Narrative_Speculation", "Structural_Inversion"],
  },
  {
    correct:
      "It posits an established model, evaluates evidence that complicates it, and qualifies the pragmatic stakes of the revised interpretation.",
    distractors: [
      "It catalogs disconnected anecdotes from the first paragraph without linking them to the evaluative arc the author builds toward the final qualified claim about the phenomenon under study.",
      "It assumes the author dismisses prior scholarship entirely rather than engaging and qualifying specific claims the text explicitly considers in the middle sections.",
      "It treats the passage as a chronological biography, ignoring the pivot from consensus to challenge that organizes the discussion across the full paragraph.",
    ],
    traps: ["Partial_Scope", "Narrative_Speculation", "Structural_Inversion"],
  },
  {
    correct:
      "It outlines a widely held assumption, introduces research challenging its universal application, and clarifies how practitioners should interpret the moderated conclusion.",
    distractors: [
      "It describes only the final paragraph's policy recommendation without accounting for the theoretical setup and evidentiary middle the passage develops before reaching that recommendation.",
      "It attributes personal ambition to the author instead of analyzing how the text moves from observation to qualified generalization across successive sentences.",
      "It asserts that the author abandons the central inquiry midway, when the passage instead deepens that inquiry through concession and counterevidence in later sentences.",
    ],
    traps: ["Partial_Scope", "Narrative_Speculation", "Structural_Inversion"],
  },
  {
    correct:
      "It establishes a cause-and-effect claim, supplies seasonal field evidence, and acknowledges limitations before drawing implications.",
    distractors: [
      "It lists technical vocabulary from the opening sentences without showing how those terms support a cumulative argument across the full paragraph from mechanism to outcome.",
      "It predicts that the author will publish a memoir, a motivation the passage never discusses or reasonably implies from its expository structure and academic tone.",
      "It claims effects are analyzed before causes are defined, inverting the passage's movement from causal mechanism to documented outcome in the study described.",
    ],
    traps: ["Partial_Scope", "Narrative_Speculation", "Structural_Inversion"],
  },
  {
    correct:
      "It contrasts an earlier consensus with newer findings, reconciles partial agreement with dispute, and qualifies the scope of the conclusion.",
    distractors: [
      "It accurately describes the concession in sentence two but ignores how the passage integrates that concession into a broader qualified defense in the closing sentences.",
      "It treats the author's caution as evidence of personal indecision rather than as a deliberate rhetorical strategy the structure enacts throughout the paragraph.",
      "It presents the counter-perspective as appearing before the consensus view, reversing the actual order of ideas in the text from established model to challenge.",
    ],
    traps: ["Partial_Scope", "Narrative_Speculation", "Structural_Inversion"],
  },
];

/** CTC option sets — Master Manual §1.3 distractor taxonomy. */
export const CTC_OPTION_SETS = [
  {
    correct:
      "By asserting that the framework in Text 1 already accounts for the phenomenon Text 2 describes, though Text 1 treats that phenomenon as theoretically secondary.",
    distractors: [
      "By fully agreeing with Text 1's central claim because Text 2's evidence confirms every assumption Text 1 advances without qualification or boundary condition.",
      "By arguing that the dispute applies universally to every scientific field, extending Text 1's guarded claim into an absolute rule neither text supports.",
      "By contrasting the texts on laboratory funding levels, a variable neither author mentions when discussing the shared theoretical issue.",
    ],
    traps: ["Mutual_Consensus", "Scope_Creep", "Out_of_Bound"],
  },
  {
    correct:
      "By qualifying Text 1's sweeping timeline because Text 2 documents gradual change rather than the uniform outcomes Text 1's model predicts.",
    distractors: [
      "By endorsing Text 1's decade-long forecast because Text 2's longitudinal data match Text 1's predicted pace in every subgroup studied.",
      "By insisting that both texts prove the phenomenon is imaginary worldwide, a position far broader than either author's guarded assertions.",
      "By evaluating the texts on rhetorical tone alone, a metric neither passage uses to advance its substantive methodological argument.",
    ],
    traps: ["Mutual_Consensus", "Scope_Creep", "Out_of_Bound"],
  },
  {
    correct:
      "By challenging Text 1's narrow metric because Text 2 measures benefits that Text 1's model excludes from its evaluative framework.",
    distractors: [
      "By adopting Text 1's sole metric because Text 2 concludes that broader outcomes still reduce to the single variable Text 1 emphasizes.",
      "By claiming Text 2 rejects all empirical inquiry, an extreme stance Text 2 never takes while complicating Text 1's interpretation.",
      "By focusing on author nationality, a biographical detail neither text treats as relevant to the intellectual disagreement at hand.",
    ],
    traps: ["Mutual_Consensus", "Scope_Creep", "Out_of_Bound"],
  },
  {
    correct:
      "By disputing Text 1's assumption of uniformity because Text 2's case studies complicate the generalization Text 1 presents as settled.",
    distractors: [
      "By insisting the authors studied identical populations under identical methods, asserting consensus where Text 2 highlights contextual variation.",
      "By arguing both texts demand immediate policy revolution, extrapolating beyond the conditional recommendations each author actually offers.",
      "By contrasting publication dates as proof of methodological superiority, a variable neither text invokes to settle the substantive dispute.",
    ],
    traps: ["Mutual_Consensus", "Scope_Creep", "Out_of_Bound"],
  },
  {
    correct:
      "By broadening Text 1's theoretical frame because Text 2 links outcomes to conditions Text 1's model omits yet does not deny entirely.",
    distractors: [
      "By conceding that Text 1's strawman accurately represents all opposing views, though Text 2 supplies alternative mechanisms Text 1 overlooks.",
      "By claiming Text 2 abandons the shared topic entirely, treating a methodological dispute as proof the texts address unrelated disciplines.",
      "By comparing the texts' citation counts, an external metric neither author uses to evaluate the validity of the competing claims.",
    ],
    traps: ["Mutual_Consensus", "Scope_Creep", "Out_of_Bound"],
  },
];

export const TSP_STEMS = [
  "Which choice best describes the overall structure of the text?",
  "Which choice best describes the overall structure of the passage?",
  "Which choice most accurately describes how the text develops its central claim?",
  "Which choice best characterizes the text's rhetorical structure?",
  "Which choice best describes the relationship between the text's opening and its conclusion?",
];

export const CTC_STEMS = [
  "Based on the texts, how would the author of Text 2 most likely respond to the claim in Text 1?",
  "Based on the texts, how would the author of Text 2 most likely respond to the view presented in Text 1?",
  "Based on the texts, what would the author of Text 2 most likely say about Text 1's central assumption?",
  "Based on the texts, how does Text 2 complicate the conclusion in Text 1?",
  "The author of Text 2 would most likely criticize Text 1 for",
];

const CTC_TEXT1 = [
  (y) =>
    `In evolutionary biology, Niche Construction Theory posits that organisms actively modify ecological niches, thereby directing evolutionary trajectories rather than passively adapting to fixed environmental pressures. Advocates argue that ignoring this bi-directional feedback loop leaves the Modern Synthesis with an incomplete picture of evolutionary dynamics. They cite cases such as beaver dam building as evidence that organisms reshape selection pressures over generations.`,
  (y) =>
    `In ${y}, urban economist Dr. Elena Park argued that municipal parks chiefly benefit residents who engage in vigorous exercise, treating caloric expenditure as the sole measurable outcome of green-space investment. Policy memos recommended funding athletic courts while de-emphasizing passive seating because residents who did not exercise received negligible returns in her model. Critics noted reliance on self-reported activity logs rather than clinical biomarkers.`,
  (y) =>
    `In ${y}, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination reflected sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent. He dismissed archival cables as anecdotal noise irrelevant to understanding official positions. Editorial summaries amplified his conclusion before private correspondence received systematic analysis.`,
  (y) =>
    `In ${y}, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storm surges, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. Her policy brief treated salinity tolerance as secondary to species diversity alone. Field managers who relied on her framework reduced mixed-species budgets despite local evidence of partial monoculture success.`,
  (y) =>
    `In ${y}, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted retraining could absorb displaced workers only if launched immediately at national scale. Longitudinal plant data had not yet accumulated when editorial boards amplified the claim.`,
  (y) =>
    `In ${y}, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.`,
  (y) =>
    `In ${y}, conservation biologist Dr. Angela Rossi summarized a dominant model holding that urban expansion inevitably decimates local biodiversity by fragmenting habitats. She noted that the model shaped planning hearings for decades. Rossi did not yet claim cities could serve as ecological sanctuaries; she questioned whether metropolitan areas should be written off as biological dead zones.`,
  (y) =>
    `In ${y}, linguist Dr. Helena Marsh argued that synthetic languages express grammatical relationships only through inflectional morphemes attached to root words. She treated analytic languages as pedagogically inferior because they rely on fixed word order rather than morphological agreement. Classroom publishers cited her framework when prioritizing inflection drills over discourse-based instruction.`,
];

const CTC_TEXT2 = [
  (y) =>
    `While NCT describes valuable biological feedback, its proponents exaggerate theoretical novelty, according to a ${y} review. Traditional evolutionary biology has long recognized that organisms alter environments, but those modifications are phenotypic traits shaped by prior natural selection. Framing niche construction as an independent cause rather than an evolutionary consequence, the review argues, introduces a false dichotomy into established theory.`,
  (y) =>
    `A ${y} longitudinal study tracked families living near neighborhood parks and found children read outdoors frequently and reported lower stress markers even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields, treating parks as extensions of daily living space rather than only exercise venues.`,
  (y) =>
    `A ${y} archival project digitizing private diplomatic cables found delegates routinely described public speeches as gestures designed to manage domestic unrest rather than blueprint future borders. The project complicates claims that rhetoric alone reveals intent. Historians involved urge students to weigh public transcripts alongside correspondence before inferring sincerity from published statements alone.`,
  (y) =>
    `A ${y} mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and modular templates can improve monoculture outcomes when species are chosen strategically. Managers who adopted flexible planting protocols reported recovery timelines shorter than abandonment strategies predicted.`,
  (y) =>
    `A ${y} industry analysis found factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. Managers ranked task redesign as more decisive than the robots themselves.`,
  (y) =>
    `A ${y} study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.`,
  (y) =>
    `In ${y}, Rossi published a meta-analysis showing urban parks and residential gardens can sustain diverse native pollinator populations when pesticide use is strictly regulated. She argued that acknowledging urban micro-habitats prevents conservationists from dismissing metropolitan areas as biological dead zones. Rossi seeks to optimize rather than abandon urban environmental planning.`,
  (y) =>
    `A ${y} comparative study argued analytic languages express grammatical relationships through word order and particles rather than through inferior instruction methods. Swahili attaches verb prefixes for agreement while Mandarin relies on fixed Subject-Verb-Object structures. The study recommends teaching both systems by contrasting operational mechanisms instead of ranking language families hierarchically.`,
];

function insertPivot(passage, pivot, index) {
  const sentences = String(passage)
    .trim()
    .split(/(?<=[.!?])\s+/)
    .filter(Boolean);
  if (sentences.length < 3) return `${passage} ${pivot}`;
  const mid = 1 + (index % Math.max(1, sentences.length - 2));
  return [...sentences.slice(0, mid), pivot, ...sentences.slice(mid)].join(" ");
}

export function buildTspPassage(index, { challenged = false, difficulty = "medium" } = {}) {
  const n = index + 1;
  const base = difficulty === "hard" || challenged ? hardPassage(n) : longPassage(n);
  const pivot = PIVOTS[index % PIVOTS.length];
  const merged = insertPivot(base, pivot, index);
  const targets = challenged
    ? TSP_CHALLENGED_WORDS
    : TSP_BY_DIFFICULTY[difficulty] ?? TSP_WORDS;
  let passage = trimToWordRange(merged, targets.min, targets.max);
  if (challenged) {
    const { min, max } = SENTENCE_TARGETS.challenged.stimulus;
    passage = padToSentenceRange(passage, min, max);
    passage = trimToWordRange(passage, targets.min, targets.max);
  }
  return passage;
}

export function buildCtcStimulus(index, { challenged = false, difficulty = "medium" } = {}) {
  const y1 = 2008 + (index % 12);
  const y2 = 2016 + (index % 10);
  const i1 = index % CTC_TEXT1.length;
  const i2 = (index + 3) % CTC_TEXT2.length;
  let t1 = CTC_TEXT1[i1](y1).replace(/^Text 1\n/, "");
  let t2 = CTC_TEXT2[i2](y2).replace(/^Text 2\n/, "");
  const targets = challenged ? { min: 90, max: 120 } : CTC_EACH_WORDS;
  t1 = trimToWordRange(t1, targets.min, targets.max);
  t2 = trimToWordRange(t2, targets.min, targets.max);
  if (challenged) {
    const { min, max } = SENTENCE_TARGETS.challenged.ctcEach;
    t1 = padToSentenceRange(t1, min, max);
    t2 = padToSentenceRange(t2, min, max);
    t1 = trimToWordRange(t1, targets.min, 120);
    t2 = trimToWordRange(t2, targets.min, 120);
  } else if (difficulty === "hard") {
    const { min } = SENTENCE_TARGETS.hard.ctcEach;
    t1 = padToSentenceRange(t1, min, min + 3);
    t2 = padToSentenceRange(t2, min, min + 3);
    t1 = trimToWordRange(t1, targets.min, targets.max);
    t2 = trimToWordRange(t2, targets.min, targets.max);
  }
  return `Text 1\n${t1}\n\nText 2\n${t2}`;
}

export function tspStem(index) {
  return TSP_STEMS[index % TSP_STEMS.length];
}

export function ctcStem(index) {
  const stem = CTC_STEMS[index % CTC_STEMS.length];
  return stem.endsWith("for") ? `${stem} which of the following?` : stem;
}

const TRAP_FORMULA = {
  Partial_Scope: "Partial Scope",
  Narrative_Speculation: "Narrative Speculation",
  Structural_Inversion: "Structural Inversion",
  Mutual_Consensus: "Mutual Consensus Decoy",
  Scope_Creep: "Scope Creep",
  Out_of_Bound: "Out-of-Bound Contrast",
};

const TRAP_RATIONALE = {
  Partial_Scope: "Describes only part of the passage, ignoring its overall trajectory.",
  Narrative_Speculation: "Imports unsupported assumptions about author motivation or future plans.",
  Structural_Inversion: "Reverses the actual sequence of ideas the passage develops.",
  Mutual_Consensus: "Claims Text 2 agrees with a claim Text 2 actually rejects or qualifies.",
  Scope_Creep: "Attributes an extreme generalized position beyond either text's guarded assertions.",
  Out_of_Bound: "Contrasts the texts on a variable neither author discusses.",
};

export function trapExplanation(letter, trap, isCorrect, skill) {
  if (isCorrect) {
    return skill === "TSP"
      ? `Correct (${letter}). This choice matches the passage's rhetorical architecture from framework through evidence to qualified implications.`
      : `Correct (${letter}). This choice captures how Text 2 responds to Text 1's claim without overstating agreement or inventing variables neither text mentions.`;
  }
  const formula = TRAP_FORMULA[trap] ?? "Scope error";
  const rationale = TRAP_RATIONALE[trap] ?? "Misreads the relationship the texts establish.";
  return `[${formula}] ${rationale}`;
}

export function passageMetrics(text, format) {
  if (format === "ctc") {
    const parts = String(text).split(/\n\nText 2\n/);
    const t1 = parts[0]?.replace(/^Text 1\n/, "") ?? "";
    const t2 = parts[1] ?? "";
    return { w1: wordCount(t1), w2: wordCount(t2), total: wordCount(t1) + wordCount(t2) };
  }
  return { words: wordCount(text) };
}
