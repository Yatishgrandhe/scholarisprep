#!/usr/bin/env node
/** Generates scripts/lib/dsat-challenged-bank.mjs from hand-crafted spec data. */
import { writeFileSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { mkOpts, TIER23_WORDS, longTraOptions } from "./english-rw-templates.mjs";
import {
  trimToWordRange,
  wordCount,
  PASSAGE_WORD_TARGETS,
  TOPIC_ROTATION,
  RW_FORMAT_BY_SUBTYPE,
  BLUEPRINT_VERSION,
  buildOnePrepExplanation,
} from "./dsat-rw-blueprint.mjs";

const out = resolve(dirname(fileURLToPath(import.meta.url)), "dsat-challenged-bank.mjs");

const LIT_RAW = [
  `In the dim corridor of the abandoned conservatory, Elise paused before a portrait whose varnish had cracked into networks resembling river deltas, as though time itself had mapped tributaries across the sitter's face. She had returned to the estate not for inheritance but for a letter tucked inside the frame, a document that might revise every family story she had rehearsed since childhood. Her cousin Martin insisted the portrait was merely sentimental clutter, yet the ledger she discovered listed payments to a portraitist who, according to municipal archives, had died three years before the canvas was dated. The discrepancy did not prove fraud, but it qualified every oral tradition the family recited at holiday gatherings. Elise copied the ledger entries by hand, knowing that archives prefer ink to memory, and mailed duplicates to a historian who specialized in contested provenance. When Martin accused her of vandalizing heirlooms, she replied that uncertainty, however uncomfortable, was preferable to a biography built on unexamined certainty. The conservatory's broken panes admitted rain that smelled of iron and wet stone.`,
  `The novelist's notebook, recovered from a flooded basement, contained drafts that contradicted the polished memoir she published decades later, suggesting that public narrative and private doubt had coexisted throughout her career. In one fragment she described her protagonist's "magnanimous surrender" not as moral triumph but as exhaustion disguised as grace, a reading her editors repeatedly rejected as too equivocal for a bestseller list. Scholars who study revision patterns argue that such contradictions reveal how authors compromise artistic integrity when market pressures demand unambiguous heroes. The notebook's water damage arrested legibility on several pages, yet ultraviolet imaging recovered sentences where she questioned whether forgiveness requires forgetting or merely performing forgetfulness on cue. Reading these lines, one biographer concluded that the memoir's serene tone was itself a literary device rather than a transparent confession. Future exhibitions may display notebook and memoir side by side so audiences can see how a single life accommodates competing truths without resolving them.`,
  `When the translation panel convened, members disagreed about whether the poet's central metaphor should remain opaque or yield to explanatory footnotes that might arrest the reader's interpretive wandering. The senior translator argued that every ambiguous line qualified the poem's emotional register, preventing sentiment from hardening into slogan. Her colleague countered that modern readers expect clarity and that withholding glosses compromises accessibility in classroom settings where the poem circulates most widely. Both positions assumed that translation is negotiation rather than transcription, a view the chair endorsed before assigning parallel drafts. The published edition therefore presents the disputed stanza in the main text while reproducing alternate renderings in an appendix, inviting readers to compare how small lexical shifts alter tone. Critics praised the edition for treating uncertainty as feature rather than defect, though some reviewers still demanded a single authoritative line.`,
  `The memoir opens with a scene in which the narrator watches her grandmother sort letters beside a stove whose heat could compromise fragile envelopes, each message folded with a precision that implied ritual rather than mere storage. She learns that the grandmother once refused to qualify a accusation against a neighbor despite community pressure, choosing silence that neighbors interpreted as magnanimous restraint rather than cowardice. Years later, archival research would reveal that the neighbor's arrest record had been expunged, complicating any simple moral ledger the family maintained. The narrator's prose mimics that ambiguity: sentences begin with concrete detail, then pivot through subordinate clauses that withhold judgment until the final line qualifies what seemed established three paragraphs earlier. Readers who prefer linear redemption arcs may find the structure frustrating, yet the form enacts the ethical uncertainty the narrator claims to inherit.`,
  `During the residency, the playwright revised a scene in which two siblings debate whether to sell a piano that had survived three migrations, its cracked soundboard a metaphor she initially treated as too on-the-nose for serious drama. Workshop participants argued the object grounded abstract grief in tactile memory, while others insisted the symbolism arrested narrative momentum by announcing its themes prematurely. The playwright compromised by embedding the piano within a conversation about insurance appraisals, letting economic vocabulary carry emotional weight indirectly. In performance, audiences often cite that scene as the play's emotional center, suggesting that subtlety and explicitness can coexist when structure distributes attention across competing registers. The final script retains marginal notes documenting each rejected version, a record of craft decisions that future directors may consult when interpreting silence onstage.`,
];

const SCI_RAW = [
  `Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. When reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.`,
  `Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction that would qualify earlier extinction timelines linked to abrupt cooling. The lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.`,
  `Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. Remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience.`,
  `Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three independent spectrometers and published raw traces alongside processed summaries. Popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.`,
  `Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. Secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence.`,
];

const SOC_RAW = [
  `Historians revisiting treaty negotiations of 1919 argue that delegates' public rhetoric about self-determination often failed to qualify how colonial boundaries would remain intact, creating a gap between proclaimed principles and enforceable commitments. Archival cables show some diplomats privately described their own speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders. Economic historians add that reparations clauses compromised recovery in ways negotiators acknowledged only in marginal annotations, not in plenary transcripts students now memorize. Contemporary commentators who treat the conference as singular failure overlook regional agreements that succeeded on narrower terms, a nuance classroom narratives sometimes sacrifice for moral clarity. The synthesis emerging in recent monographs portrays delegates as constrained actors juggling coalition politics, public opinion, and incomplete information rather than architects of inevitable catastrophe. Further digitization of personal letters may shift emphasis again without resolving every counterfactual debate historians enjoy.`,
  `Urban sociologists studying mixed-income housing projects found that shared amenities increased cross-class interaction initially, yet proprietary attitudes toward security systems often arrested integration within two years of occupancy. Interviewees described polite coexistence that rarely qualified as friendship, complicating metrics that equate proximity with social cohesion. Developers sometimes compromise design goals by reallocating communal square footage to private units when market forecasts shift, a decision documented in planning filings but absent from promotional brochures. Policy analysts recommend longitudinal ethnography rather than one-time satisfaction surveys, noting that residents' impressions evolve as maintenance disputes accumulate. Critics from market-oriented think tanks argue the data prove government intervention distorts housing preferences, while advocates counter that without subsidies the projects would never have been built. Both camps selectively emphasize findings that align with prior commitments, illustrating how evidence travels through ideological filters.`,
  `Anthropologists documenting oral histories in a post-industrial town recorded how former factory workers used the word "loyalty" in ways that could mean either steadfast craftsmanship or refusal to qualify management decisions that compromised safety. Younger residents, lacking direct experience on the line, sometimes interpreted the same stories as cautionary tales about uncritical obedience, revealing generational plasticity in moral vocabulary. The research team avoided arresting narrative flow with rigid coding schemes, allowing thematic categories to emerge after repeated listening sessions. One worker's account of a strike described union leadership as magnanimous for accepting partial gains, whereas another labeled the same outcome a compromise that sacrificed newcomers' pensions. Rather than adjudicate, the ethnographers present juxtaposed transcripts so readers confront interpretive multiplicity directly. Funding agencies asked whether such ambiguity yields actionable policy; the authors reply that misunderstanding community memory produces worse outcomes than delayed consensus.`,
  `Political scientists analyzing referendum campaigns observed that ads emphasizing fiscal responsibility rarely cited data that might qualify sweeping promises, while opposition spots sometimes seized on minor accounting discrepancies to suggest systemic fraud without equivalent evidence. Focus groups revealed voters treated emotional tone as proxy for credibility, a heuristic that can arrest deliberation when candidates perform sincerity convincingly. The study does not claim voters are irrational; instead, it documents how time-pressed citizens compromise depth for speed when ballots approach. Media literacy interventions tested in parallel cohorts showed modest gains in identifying unsupported synthesis, though effects faded unless reinforced during subsequent election cycles. Legislators citing the research disagree about remedies: some propose stricter disclosure rules, others argue transparency alone cannot fix structural incentives for equivocal messaging. The authors emphasize that institutional redesign and civic education must proceed together if public discourse is to shift measurably.`,
  `Economists examining microfinance programs in rural provinces found that initial repayment rates magnanimous lenders celebrated masked heterogeneous outcomes, with women-led enterprises benefiting while seasonal farmers faced cycles that compromise short-term cash flows. Randomized trials later qualified early optimism by showing default spikes correlated with harvest timing rather than borrower character, undermining narratives that moralized creditworthiness. Program officers who arrested disbursements after first delinquencies inadvertently reduced long-term uptake, suggesting punitive responses can destroy social collateral built through years of community meetings. The team's policy brief recommends grace periods aligned with agricultural calendars and transparent interest formulas, changes some NGOs adopted while others feared donors would view flexibility as lax oversight. Development textbooks often simplify the story into success or failure binaries; this study argues for portfolios of small experiments whose combined evidence resists single-label verdicts.`,
];

const CHALLENGED_PASSAGES = [...LIT_RAW, ...SCI_RAW, ...SOC_RAW].map((t) => trimToWordRange(t, 130, 150));
for (const [i, p] of CHALLENGED_PASSAGES.entries()) {
  const w = wordCount(p);
  if (w < 130 || w > 150) throw new Error(`Passage ${i} word count ${w}`);
}

const WIC_WORDS = [
  "qualify", "compromise", "arrest", "magnanimous", "equivocal", "plasticity",
  "perfunctory", "sanguine", "obfuscate", "laconic", "ephemeral", "intransigent",
  "profligate", "surreptitious", "veracious", "abstruse", "capricious", "didactic",
  "fastidious", "garrulous", "mitigate", "tenuous", "bolster", "scrutinize", "ambiguous",
];

const WIC_MEANINGS = {
  qualify: ["modify or limit", "earn certification", "praise enthusiastically", "disqualify entirely"],
  compromise: ["put at risk or weaken", "reach a mutual agreement", "settle a dispute fairly", "refuse to negotiate"],
  arrest: ["stop or halt", "take into custody", "capture attention briefly", "accelerate suddenly"],
  magnanimous: ["nobly generous or forgiving", "extravagantly wealthy", "physically imposing", "strictly impartial"],
  equivocal: ["deliberately ambiguous", "equally divided", "mathematically equivalent", "clearly decisive"],
  plasticity: ["capacity to change form", "artificial manufacture", "visual artistry", "rigidity under stress"],
  perfunctory: ["carried out with minimal effort", "performed with great ceremony", "lasting indefinitely", "deeply heartfelt"],
  sanguine: ["optimistic or confident", "blood-red in color", "gloomy and pessimistic", "indifferent and detached"],
  obfuscate: ["make unclear or confuse", "clarify thoroughly", "illuminate brightly", "summarize concisely"],
  laconic: ["using few words", "excessively talkative", "highly technical", "emotionally effusive"],
  ephemeral: ["lasting a very short time", "permanent and enduring", "widely celebrated", "deeply rooted"],
  intransigent: ["unwilling to compromise", "easily persuaded", "temporarily absent", "enthusiastically cooperative"],
  profligate: ["recklessly wasteful", "carefully frugal", "moderately cautious", "predictably routine"],
  surreptitious: ["secret or stealthy", "openly declared", "legally mandated", "widely advertised"],
  veracious: ["truthful or accurate", "deliberately deceptive", "vaguely approximate", "wildly imaginative"],
  abstruse: ["difficult to understand", "easily grasped", "widely popular", "superficially simple"],
  capricious: ["given to sudden changes", "steadfastly consistent", "predictably logical", "methodically planned"],
  didactic: ["intended to instruct", "purely entertaining", "deliberately obscure", "randomly assembled"],
  fastidious: ["very attentive to detail", "carelessly sloppy", "generously forgiving", "indifferent to accuracy"],
  garrulous: ["excessively talkative", "unusually silent", "precisely concise", "formally reserved"],
  mitigate: ["make less severe", "intensify greatly", "ignore completely", "celebrate openly"],
  tenuous: ["weak or insubstantial", "firmly established", "widely accepted", "legally binding"],
  bolster: ["support or strengthen", "weaken considerably", "contradict directly", "dismiss casually"],
  scrutinize: ["examine closely", "glance at briefly", "accept uncritically", "overlook entirely"],
  ambiguous: ["open to multiple interpretations", "perfectly clear", "legally precise", "universally agreed upon"],
};

function wicSpecs() {
  return WIC_WORDS.map((word, i) => {
    const meanings = WIC_MEANINGS[word] ?? ["contextual meaning", "literal opposite", "unrelated sense", "common synonym"];
    const correctIdx = 0;
    const texts = meanings;
    const expls = texts.map((t, j) =>
      j === correctIdx
        ? `"${word}" here means ${t}, matching the passage's contextual logic.`
        : j === 1
          ? "This is the word's most common sense but not how it functions in this academic passage."
          : j === 2
            ? "True in another domain but unsupported by surrounding clauses."
            : "No-evidence synthesis: the passage never supports this reading.",
    );
    return { word, correctId: "A", texts, expls, passageIdx: i % 15 };
  });
}

function mcSpecs(stems, correctLetters, optionSets, passageIdxFn) {
  return stems.map((stem, i) => ({
    question_text: stem,
    correctId: correctLetters[i],
    texts: optionSets[i][0],
    expls: optionSets[i][1],
    passageIdx: passageIdxFn(i),
  }));
}

const TSP_STEMS = [
  "Which choice best describes the overall structure of the passage?",
  "The primary function of the second half of the passage is to",
  "Which choice best states the main purpose of the passage?",
  "The passage is organized primarily to",
  "Which choice most accurately describes how the passage develops its central claim?",
  "The author structures the passage primarily by",
  "Which choice best captures the organizational pattern of the passage?",
  "The passage can best be described as one that",
  "Which choice best describes the relationship between the passage's opening and its conclusion?",
  "The author organizes the discussion primarily in order to",
  "Which choice best characterizes the passage's rhetorical structure?",
  "The passage primarily functions to",
  "Which choice best describes the sequence of ideas in the passage?",
  "The structure of the passage emphasizes",
  "Which choice best describes how the author builds the argument?",
  "The passage is structured to",
  "Which choice most accurately describes the passage's method of development?",
  "The author presents information primarily by",
  "Which choice best describes the passage's organizational strategy?",
  "The passage unfolds primarily through",
  "Which choice best states how the passage is arranged?",
  "The author structures the text to",
  "Which choice best describes the progression of the passage?",
  "The passage's structure serves primarily to",
  "Which choice best describes the way the passage is organized?",
];

const TSP_OPTS = [
  [["presenting a problem and then evaluating competing explanations", "listing unrelated anecdotes without a central thread", "describing a personal memoir in chronological order only", "arguing that all prior research should be dismissed"],
   ["The passage introduces tension then weighs interpretations.", "Anecdotes support but do not replace the central arc.", "Chronology alone misses the evaluative structure.", "The author qualifies rather than dismisses prior work."]],
  [["introduce a claim, supply evidence, and acknowledge limitations", "summarize a biography without analytical framing", "reject every counterargument without evidence", "shift abruptly to an unrelated topic"],
   ["This matches the claim-evidence-limitation arc.", "Biographical summary alone is too narrow.", "The passage engages rather than rejects counters.", "Topics remain connected throughout."]],
  [["moving from specific observation to broader interpretive stakes", "cataloging random facts in no discernible order", "repeating the same sentence with minor variations", "presenting only dialogue without exposition"],
   ["Specific-to-general structure is explicit.", "Facts accumulate toward a thesis.", "Repetition is not the organizing device.", "Expository framing dominates."]],
];

function expandOpts(base, n) {
  const out = [];
  for (let i = 0; i < n; i++) {
    const b = base[i % base.length];
    out.push(b);
  }
  return out;
}

const tspExpanded = expandOpts(
  TSP_OPTS.map((o, i) => [TSP_STEMS[i] ?? TSP_STEMS[i % TSP_STEMS.length], "ABCD"[i % 4], o[0], o[1]]),
  25,
).map(([stem, letter, texts, expls], i) => ({
  question_text: TSP_STEMS[i],
  correctId: ["A", "B", "C", "D"][i % 4],
  texts: TSP_OPTS[i % TSP_OPTS.length][0],
  expls: TSP_OPTS[i % TSP_OPTS.length][1],
  passageIdx: i % 15,
}));

// Fix tsp - use proper 25 items with rotating correct answers
const TSP_SPECS = TSP_STEMS.map((stem, i) => {
  const opt = TSP_OPTS[i % TSP_OPTS.length];
  const correctId = ["A", "A", "A", "B", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A"][i];
  const texts = [...opt[0]];
  const expls = [...opt[1]];
  // rotate so correct answer is at correctId
  const correctText = texts[0];
  const correctExpl = expls[0];
  const order = ["A", "B", "C", "D"];
  const idx = order.indexOf(correctId);
  const rotatedTexts = order.map((_, j) => texts[(j - idx + 4) % 4]);
  const rotatedExpls = order.map((_, j) => expls[(j - idx + 4) % 4]);
  return { question_text: stem, correctId, texts: rotatedTexts, expls: rotatedExpls, passageIdx: i % 15 };
});

// CTC specs - 25 unique stems with text pairs
const CTC_STEMS = [
  "Based on the texts, how would the author of Text 2 most likely respond to the view presented in Text 1?",
  "Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue?",
  "Based on the texts, both authors would most likely agree with which statement?",
  "Which choice best describes how Text 2 relates to Text 1?",
  "The author of Text 2 would most likely criticize Text 1 for",
  "Based on the texts, what would Text 2's author say about Text 1's central assumption?",
  "Which choice best characterizes the relationship between the two texts?",
  "Based on the texts, the author of Text 1 would most likely argue that Text 2",
  "Which choice best describes a point of disagreement between the texts?",
  "Based on the texts, how does Text 2 complicate the conclusion in Text 1?",
  "Which choice best states what Text 2 adds to the discussion in Text 1?",
  "The author of Text 2 would most likely contend that Text 1",
  "Based on the texts, which finding would most weaken Text 1's claim?",
  "Which choice best describes how the texts treat the same phenomenon?",
  "Based on the texts, the authors would most likely disagree about",
  "Which choice best captures Text 2's response to Text 1's policy recommendation?",
  "The author of Text 2 would most likely reject Text 1's argument because",
  "Based on the texts, what evidence from Text 2 qualifies Text 1's conclusion?",
  "Which choice best describes the scope of Text 2 relative to Text 1?",
  "Based on the texts, how would Text 1's author likely view Text 2's methodology?",
  "Which choice best describes the tone difference between the texts?",
  "Based on the texts, both texts rely on which type of reasoning?",
  "Which choice best describes a limitation Text 2 identifies in Text 1?",
  "Based on the texts, Text 2's findings suggest that Text 1",
  "Which choice best describes the relationship between the texts' conclusions?",
];

const CTC_TEXT1 = [
  (y) => `Text 1\nIn ${y}, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.`,
  (y) => `Text 1\nIn ${y}, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale.`,
  (y) => `Text 1\nIn ${y}, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model.`,
  (y) => `Text 1\nIn ${y}, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables.`,
  (y) => `Text 1\nIn ${y}, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped.`,
];

const CTC_TEXT2 = [
  (y) => `Text 2\nA ${y} study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests.`,
  (y) => `Text 2\nA ${y} industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels.`,
  (y) => `Text 2\nA ${y} longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields.`,
  (y) => `Text 2\nA ${y} archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent.`,
  (y) => `Text 2\nA ${y} mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically.`,
];

const CTC_SPECS = CTC_STEMS.map((stem, i) => {
  const y1 = 2008 + (i % 10);
  const y2 = 2018 + (i % 8);
  const t1 = trimToWordRange(CTC_TEXT1[i % CTC_TEXT1.length](y1).replace(/^Text 1\n/, ""), PASSAGE_WORD_TARGETS.ctc_each.min, PASSAGE_WORD_TARGETS.ctc_each.max);
  const t2 = trimToWordRange(CTC_TEXT2[i % CTC_TEXT2.length](y2).replace(/^Text 2\n/, ""), PASSAGE_WORD_TARGETS.ctc_each.min, PASSAGE_WORD_TARGETS.ctc_each.max);
  const texts = [
    "overstates the uniformity of outcomes that Text 2's evidence complicates.",
    "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
    "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
    "assumes a timeline that Text 2's longitudinal data does not support.",
  ];
  const expls = [
    "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
    "Text 2 supplies counterevidence or alternative interpretation.",
    "Text 2 broadens the measurement frame beyond Text 1's focus.",
    "Text 2's timeline contradicts Text 1's predicted pace of change.",
  ];
  const correctId = ["A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A", "B", "C", "A"][i];
  const idx = ["A", "B", "C", "D"].indexOf(correctId);
  const rotatedTexts = ["A", "B", "C", "D"].map((_, j) => texts[(j - idx + 4) % 4]);
  const rotatedExpls = ["A", "B", "C", "D"].map((_, j) => expls[(j - idx + 4) % 4]);
  return { question_text: stem, correctId, texts: rotatedTexts, expls: rotatedExpls, stimulus: `Text 1\n${t1}\n\nText 2\n${t2}` };
});

// CID main idea
const CID_STEMS = [
  "Which choice best states the main idea of the passage?",
  "The central claim of the passage is that",
  "Which choice most accurately expresses the main point of the passage?",
  "The passage primarily suggests that",
  "Which choice best captures the passage's central argument?",
  "The main idea of the passage is that",
  "Which choice best summarizes the passage without overstating its scope?",
  "The author primarily argues that",
  "Which choice states the main idea most precisely?",
  "The passage is mainly concerned with",
  "Which choice best identifies the central thesis of the passage?",
  "The primary point of the passage is that",
  "Which choice best reflects the passage's main conclusion?",
  "The passage chiefly emphasizes that",
  "Which choice most accurately summarizes the author's central claim?",
  "The main idea of the text is that",
  "Which choice best states what the passage is mainly about?",
  "The author would most likely agree that the central idea is that",
  "Which choice best expresses the passage's primary focus?",
  "The passage suggests as its main point that",
  "Which choice best identifies the main idea?",
  "The central concern of the passage is that",
  "Which choice most accurately states the passage's thesis?",
  "The passage primarily communicates that",
  "Which choice best summarizes the central idea of the passage?",
];

const CID_OPTS = [
  ["the evidence supports a qualified conclusion rather than an absolute verdict", "every prior study on the topic was fundamentally flawed", "policy makers should ignore the findings entirely", "the phenomenon has no practical implications whatsoever"],
  ["interpretation must account for limitations the authors explicitly acknowledge", "the authors prove their hypothesis beyond any possible doubt", "the research eliminates all competing explanations", "readers need no further context to apply the findings universally"],
  ["complex phenomena resist reduction to a single causal story", "one variable alone explains all observed outcomes", "the passage rejects empirical methods entirely", "the authors refuse to draw any inference from data"],
];

const CID_SPECS = CID_STEMS.map((stem, i) => {
  const opt = CID_OPTS[i % CID_OPTS.length];
  const correctId = "A";
  return { question_text: stem, correctId, texts: opt, expls: [
    "This restates the passage's qualified central claim without overstatement.",
    "Overly broad: the passage does not dismiss all prior work.",
    "True-but-irrelevant: the passage discusses implications, not ignoring them.",
    "No-evidence synthesis: the passage never claims zero practical value.",
  ], passageIdx: i % 15 };
});

// COE textual evidence
const COE_TE_STEMS = [
  "Which quotation from the passage best supports the answer to the previous question?",
  "Which choice provides the best evidence for the claim that the authors remain cautious about generalizing?",
  "Which finding from the passage best supports the idea that multiple factors shape the outcome?",
  "Which detail from the passage best supports the claim about provisional conclusions?",
  "Which statement from the passage best supports the answer?",
  "Which choice best provides evidence that the authors qualify their claims?",
  "Which excerpt best supports the inference that replication is still needed?",
  "Which detail best supports the claim that the phenomenon is context-dependent?",
  "Which choice best supports the idea that the authors acknowledge limitations?",
  "Which line from the passage best supports the central inference?",
  "Which choice provides the strongest textual evidence for the claim?",
  "Which detail from the passage best supports the author's cautious tone?",
  "Which excerpt best supports the answer to the question about scope?",
  "Which choice best supports the claim that evidence is converging but not definitive?",
  "Which statement best supports the inference about policy implications?",
  "Which detail best supports the idea that competing explanations remain viable?",
  "Which choice provides the best evidence for the qualified conclusion?",
  "Which excerpt best supports the claim about methodological caution?",
  "Which line best supports the inference that outcomes vary across contexts?",
  "Which choice best supports the author's main claim with textual evidence?",
  "Which detail from the passage best supports the answer?",
  "Which statement best provides evidence for the bounded inference?",
  "Which excerpt best supports the claim that uncertainty persists?",
  "Which choice best supports the idea that the finding shifts but does not settle debate?",
  "Which detail best supports the passage's central evidentiary claim?",
];

const COE_TE_OPTS = [
  ['"Replication across independent sites remains necessary before treating the finding as settled."', '"Every competing theory has been permanently disproven."', '"The authors refuse to mention any limitation whatsoever."', '"Results were identical in every context without exception."'],
  ['"The team cautioned that the pattern may not generalize to all populations studied elsewhere."', '"Critics were entirely wrong about every methodological concern raised."', '"The passage offers no data supporting its claims."', '"Policy makers must act immediately without further study."'],
  ['"Observers recorded consistent patterns while holding unrelated variables stable."', '"A single anecdote proves the universal mechanism."', '"The authors dismiss all quantitative measures."', '"No comparison group was used at any stage."'],
];

const COE_TE_SPECS = COE_TE_STEMS.map((stem, i) => {
  const opt = COE_TE_OPTS[i % COE_TE_OPTS.length];
  return { question_text: stem, correctId: "A", texts: opt, expls: [
    "Direct textual support for the qualified claim.",
    "Overstates: passage does not claim total disproof of alternatives.",
    "Contradicts the passage's explicit acknowledgment of limits.",
    "Absolute language unsupported by the passage.",
  ], passageIdx: i % 15, rw_format: i % 2 === 0 ? "supporting_finding" : "two_part_evidence" };
});

// COE quantitative
const COE_QT_STEMS = COE_TE_STEMS.map((s) => s.replace("passage", "table and passage").replace("quotation", "data"));

const COE_QT_SPECS = COE_QT_STEMS.map((stem, i) => {
  const headers = ["Year", "Sample size", "Mean score", "Std. dev."][0] && ["Year", "Sample size", "Mean score", "Std. dev."];
  const h = [["Year", "Sample size", "Mean score", "Std. dev."], ["Group", "Hours studied", "Post-test %", "Gain"], ["Site", "Temp (°C)", "Recruitment %", "Cover %"]][i % 3];
  const rows = [];
  for (let r = 0; r < 4; r++) {
    const base = 10 + i + r * 3;
    rows.push(`| ${2018 + r} | ${base * 5} | ${(base + r) % 20 + 62} | ${(r + 2) % 7 + 3} |`);
  }
  return {
    question_text: "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    correctId: "C",
    texts: [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence.",
    ],
    expls: [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together.",
    ],
    passageIdx: i % 15,
    tableHeaders: h,
    tableRows: rows,
  };
});

// INF specs (general, prediction, implication)
function infSpecs(variant) {
  const stems = {
    general: [
      "Based on the passage, it can most reasonably be inferred that",
      "The passage most strongly suggests that",
      "Which choice can most reasonably be inferred from the passage?",
      "It can reasonably be inferred from the passage that",
      "The passage implies that",
    ],
    prediction: [
      "Based on the passage, which outcome is most likely if the pattern continues?",
      "The passage most strongly suggests that future research will",
      "Which prediction is most supported by the passage?",
      "If the trend described continues, which result is most likely?",
      "Based on the evidence, researchers would most likely predict that",
    ],
    implication: [
      "Which choice most logically completes the implication of the passage?",
      "The passage most strongly implies that stakeholders should",
      "Which implication is best supported by the passage?",
      "Based on the passage, which consequence most logically follows?",
      "The author's argument implies that",
    ],
  };
  const base = stems[variant];
  const opts = [
    ["further evidence is needed before drawing universal conclusions", "all debate on the topic has been permanently settled", "the findings apply identically in every context without exception", "the authors reject empirical inquiry altogether"],
    ["researchers will continue testing the claim under varied conditions", "no further study is necessary because the case is closed", "policy must change overnight regardless of context", "the phenomenon will vanish without any intervention"],
    ["decision makers should weigh limitations alongside promising signals", "stakeholders should ignore nuance and act on slogans alone", "evidence can be dismissed whenever inconvenient", "only absolute certainty justifies any action"],
  ];
  return Array.from({ length: 25 }, (_, i) => ({
    question_text: (base[i % base.length] + (variant === "general" ? " the authors treat their conclusion as provisional." : variant === "prediction" ? " the team will pursue replication." : " policy should reflect acknowledged limits.")),
    correctId: "A",
    texts: opts[i % opts.length],
    expls: [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach.",
    ],
    passageIdx: i % 15,
  }));
}

// TRA transition specs
const TRA_CORRECT = [
  "Nevertheless,", "However,", "Consequently,", "Moreover,", "For example,",
  "Qualifying the sweeping claim made in the prior sentence,", "Complicating the binary the author has established,",
  "Drawing the logical consequence from the evidence just presented,", "Extending the author's line of reasoning further,",
  "Illustrating the abstract claim with a concrete case,",
];
const TRA_SPECS = Array.from({ length: 25 }, (_, i) => ({
  correctText: TRA_CORRECT[i % TRA_CORRECT.length],
  correctId: ["A", "B", "C", "D"][i % 4],
  passageIdx: i % 15,
}));

// BOU/FSS - grammar blanks embedded in long passages
const BOU_BLANKS = [
  { blank: ", and", distractors: [",", "", " and,"], expls: ["Comma plus coordinating conjunction joins two independent clauses.", "Comma alone creates a comma splice.", "No punctuation produces a run-on.", "Misplaced conjunction is ungrammatical."] },
  { blank: ";", distractors: [",", ":", " and"], expls: ["Semicolon links two related independent clauses.", "Comma alone is a splice here.", "Colon requires explanatory structure.", "Missing semicolon before 'and' is wrong pattern."] },
  { blank: "—", distractors: [",", "(", ":"], expls: ["Em dash sets off the nonessential aside.", "Comma pairing would need a closing comma.", "Parenthesis must close properly.", "Colon misidentifies the aside function."] },
  { blank: ":", distractors: [";", ",", "—"], expls: ["Colon introduces the list after a complete clause.", "Semicolon needs a second independent clause.", "Comma is too weak to introduce the list.", "Dash could work but list pattern fits colon."] },
  { blank: ", which", distractors: [" which", ", that", "; which"], expls: ["Comma plus 'which' begins a nonrestrictive clause.", "Missing comma before 'which' is nonstandard.", "'That' would make it restrictive incorrectly.", "Semicolon cannot introduce 'which' here."] },
];

const BOU_SPECS = Array.from({ length: 25 }, (_, i) => {
  const b = BOU_BLANKS[i % BOU_BLANKS.length];
  const passageBase = CHALLENGED_PASSAGES[i % 15];
  const sentences = passageBase.split(/(?<=[.!?])\s+/);
  const mid = Math.floor(sentences.length / 2);
  const part1 = sentences.slice(0, mid).join(" ");
  const part2 = sentences.slice(mid).join(" ");
  const passage = `${part1} ______ ${part2.charAt(0).toLowerCase()}${part2.slice(1)}`;
  return {
    passage,
    correctId: "A",
    texts: [b.blank, ...b.distractors],
    expls: b.expls,
    steps: {
      step1: { title: "Identify clause boundaries", body: `Both sides of the blank are independent or complete units in: {{yellow:${part1.slice(0, 60)}…}}` },
      step2: { title: "Apply punctuation rules", body: "Standard English conventions require the boundary mark that matches the clause relationship." },
      step3: { title: "Select the correct boundary", body: `Choice A (${b.blank}) satisfies the conventions.` },
      distractors: { B: b.expls[1], C: b.expls[2], D: b.expls[3] },
    },
  };
});

const FSS_BLANKS = [
  { blank: "have been", distractors: ["has been", "was being", "are"], expls: ["Plural subject requires 'have been'.", "Singular verb disagrees with plural subject.", "Wrong tense/aspect for context.", "Present tense mismatches past context."] },
  { blank: "who", distractors: ["whom", "which", "they"], expls: ["'Who' is subject of the relative clause.", "'Whom' would be object form incorrectly.", "'Which' is for things not people.", "Pronoun creates fragment."] },
  { blank: "its", distractors: ["it's", "their", "there"], expls: ["Possessive 'its' has no apostrophe.", "It's means 'it is'.", "Their is plural possessive.", "There indicates place."] },
  { blank: "were", distractors: ["was", "is", "has been"], expls: ["Subjunctive/plural 'were' matches subject.", "'Was' disagrees with plural subject.", "Present tense wrong.", "Perfect aspect wrong here."] },
  { blank: "better than", distractors: ["better then", "more better than", "best than"], expls: ["Comparative takes 'than'.", "'Then' is temporal adverb.", "Double comparative is ungrammatical.", "Superlative wrong degree."] },
];

const FSS_SPECS = Array.from({ length: 25 }, (_, i) => {
  const b = FSS_BLANKS[i % FSS_BLANKS.length];
  const passageBase = CHALLENGED_PASSAGES[(i + 5) % 15];
  const words = passageBase.split(/\s+/);
  const insertAt = 40 + (i % 30);
  words.splice(insertAt, 0, "______");
  const passage = words.join(" ");
  return {
    passage,
    correctId: "A",
    texts: [b.blank, ...b.distractors],
    expls: b.expls,
    steps: {
      step1: { title: "Identify the subject", body: "Locate the noun the blank must agree with in the surrounding sentence." },
      step2: { title: "Check agreement and form", body: "Verify tense, number, and pronoun case against Standard English conventions." },
      step3: { title: "Select the grammatical option", body: `Choice A (${b.blank}) is grammatically correct.` },
      distractors: { B: b.expls[1], C: b.expls[2], D: b.expls[3] },
    },
  };
});

const SYN_GOALS = [
  "emphasize the study's cautious conclusion while noting its policy relevance",
  "introduce the research topic and highlight a key methodological limitation",
  "compare two competing interpretations discussed in the notes",
  "summarize the main finding and explain why replication is needed",
  "present the central claim and acknowledge contextual constraints",
  "contrast initial optimism with later qualified findings",
  "explain how evidence supports a provisional rather than absolute verdict",
  "describe the phenomenon and identify a factor the notes flag as understudied",
  "emphasize converging evidence while noting remaining uncertainty",
  "introduce stakeholders' disagreement and summarize each position fairly",
  "highlight a trend in the data and caution against overgeneralization",
  "synthesize the notes into a thesis suitable for an academic abstract",
  "emphasize practical implications without overstating certainty",
  "present the research question and preview the authors' bounded answer",
  "compare short-term and long-term outcomes described in the notes",
  "summarize how methodology addresses a limitation mentioned in the notes",
  "emphasize nuance in findings that resist binary labels",
  "introduce the topic for a general audience while preserving scholarly caution",
  "present evidence for a claim and note an explicit caveat from the notes",
  "describe a debate and explain which view the notes treat as better supported",
  "highlight a pattern across studies cited in the notes",
  "emphasize why the notes recommend further investigation",
  "summarize findings relevant to policy makers without erasing limitations",
  "present the notes' central tension between promise and provisional status",
  "synthesize the most important takeaway for readers unfamiliar with the field",
];

const SYN_NOTES = Array.from({ length: 25 }, (_, i) => {
  const topic = ["plasticity research", "treaty historiography", "mangrove restoration", "sleep intervention trials", "automation impacts"][i % 5];
  return `• Study ${i + 1} examines ${topic} with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at ${2 + (i % 3)} additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward ${["urban", "coastal", "clinical", "industrial", "literary"][i % 5]} contexts`;
});

const SYN_SPECS = SYN_GOALS.map((goal, i) => ({
  goal,
  notes: SYN_NOTES[i],
  correctId: ["A", "B", "C", "D"][i % 4],
  texts: [
    `The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.`,
    `Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.`,
    `The notes mention a study but provide no finding, method, or limitation worth reporting.`,
    `Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse.`,
  ],
  expls: [
    "Synthesizes finding + limitation + policy as the goal requires.",
    "Overly broad absolute claim contradicts the notes.",
    "True-but-irrelevant: fails the rhetorical goal entirely.",
    "No-evidence synthesis not supported by the notes.",
  ],
  steps: {
    step1: { title: "Review the notes", body: "Identify finding, limitation, and policy lines in the bullet list." },
    step2: { title: "Match the rhetorical goal", body: `The goal asks you to ${goal}.` },
    step3: { title: "Select effective synthesis", body: "The correct choice integrates relevant notes without overstatement." },
    distractors: { B: "absolute language the notes reject.", C: "ignores substantive note content.", D: "unsupported policy prescription." },
  },
}));

// Build runtime module source
const moduleSource = `/**
 * DSAT challenged problem bank — 25 hand-crafted items × 13 rw_subtypes (325 total).
 * Ultra-hard tier: 130–150 word passages, tier-3 WIC, subtle distractors, OnePrep v2 explanations.
 */

import { mkOpts, TIER23_WORDS, longTraOptions } from "./english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validatePassageWords,
  resolveRwFormat,
  SKILLS,
  RW_FORMAT_BY_SUBTYPE,
  TOPIC_ROTATION,
  PASSAGE_WORD_TARGETS,
  trimToWordRange,
  wordCount,
  BLUEPRINT_VERSION,
} from "./dsat-rw-blueprint.mjs";
import { validateConventionsRow } from "./dsat-conventions-bank.mjs";

const GENERATOR = "dsat-challenged-bank.mjs";
const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);

const LIT_RAW = ${JSON.stringify(LIT_RAW, null, 2)};
const SCI_RAW = ${JSON.stringify(SCI_RAW, null, 2)};
const SOC_RAW = ${JSON.stringify(SOC_RAW, null, 2)};

/** 15 premium challenged passages (5 literature, 5 science, 5 social studies), 130–150 words each. */
export const CHALLENGED_PASSAGES = [...LIT_RAW, ...SCI_RAW, ...SOC_RAW].map((t) =>
  trimToWordRange(t, 130, 150),
);

function topicForIndex(index) {
  return TOPIC_ROTATION[index % TOPIC_ROTATION.length];
}

function passageForIndex(index) {
  return CHALLENGED_PASSAGES[index % CHALLENGED_PASSAGES.length];
}

function onePrepExpl({ step1, step2, step3, distractors }) {
  let expl = \`Step 1 — \${step1.title}\\n\${step1.body}\\n\\nStep 2 — \${step2.title}\\n\${step2.body}\\n\\nStep 3 — \${step3.title}\\n\${step3.body}\\n\\nDistractor analysis:\`;
  for (const [id, text] of Object.entries(distractors)) {
    expl += \`\\n- \${id}: \${text}\`;
  }
  return expl;
}

function challengedMeta(spec, index) {
  return {
    dsat_blueprint_v1: true,
    explanation_v2: true,
    blueprint_version: BLUEPRINT_VERSION,
    generator: GENERATOR,
    challenged_problem: true,
    difficulty_tier: "challenged",
    rw_subtype: spec.rw_subtype,
    rw_format: RW_FORMAT_BY_SUBTYPE[spec.rw_subtype],
    dsat_topic: topicForIndex(index),
    original: true,
  };
}

function finalizeRwRow(spec, index, raw) {
  const rwFormat = resolveRwFormat(spec.rw_subtype, raw.rw_format, index);
  raw.rw_format = rwFormat;
  const v2 = buildOnePrepExplanation(raw, {
    skill: spec.skill,
    rw_subtype: spec.rw_subtype,
    difficulty: "challenged",
  });
  return {
    question_text: raw.question_text,
    stimulus_text: raw.stimulus_text ?? null,
    stimulus_type: raw.stimulus_type ?? (raw.stimulus_text ? "passage" : null),
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    hint: raw.hint ?? null,
    difficulty: "hard",
    skill_id: spec.skill,
    rw_subtype: spec.rw_subtype,
    rw_format: rwFormat,
    source_metadata: { ...challengedMeta(spec, index), rw_format: rwFormat },
    dsat_blueprint_v1: true,
    _index: index,
  };
}

function finalizeConvRow(spec, index, raw) {
  return {
    ...raw,
    difficulty: "hard",
    skill_id: spec.skill,
    rw_subtype: spec.rw_subtype,
    rw_format: RW_FORMAT_BY_SUBTYPE[spec.rw_subtype],
    source_metadata: challengedMeta(spec, index),
    dsat_blueprint_v1: true,
    _index: index,
  };
}

const WIC_SPECS = ${JSON.stringify(wicSpecs(), null, 2)};
const TSP_SPECS = ${JSON.stringify(TSP_SPECS, null, 2)};
const CTC_SPECS = ${JSON.stringify(CTC_SPECS, null, 2)};
const CID_SPECS = ${JSON.stringify(CID_SPECS, null, 2)};
const COE_TE_SPECS = ${JSON.stringify(COE_TE_SPECS, null, 2)};
const COE_QT_SPECS = ${JSON.stringify(COE_QT_SPECS, null, 2)};
const INF_GENERAL_SPECS = ${JSON.stringify(infSpecs("general"), null, 2)};
const INF_PREDICTION_SPECS = ${JSON.stringify(infSpecs("prediction"), null, 2)};
const INF_IMPLICATION_SPECS = ${JSON.stringify(infSpecs("implication"), null, 2)};
const TRA_SPECS = ${JSON.stringify(TRA_SPECS, null, 2)};
const BOU_SPECS = ${JSON.stringify(BOU_SPECS, null, 2)};
const FSS_SPECS = ${JSON.stringify(FSS_SPECS, null, 2)};
const SYN_SPECS = ${JSON.stringify(SYN_SPECS, null, 2)};

const STEM_BOU = "Which choice completes the text so that it conforms to the conventions of Standard English?";
const STEM_FSS = STEM_BOU;

function buildWic(index) {
  const s = WIC_SPECS[index];
  let passage = passageForIndex(s.passageIdx);
  if (!passage.includes(s.word)) {
    const words = passage.split(/\\s+/);
    words.splice(20, 0, s.word);
    passage = trimToWordRange(words.join(" "), 130, 150);
  }
  return finalizeRwRow(
    { skill: "WIC", rw_subtype: "vocabulary_in_context" },
    index,
    {
      question_text: \`As used in the passage, "\${s.word}" most nearly means\`,
      stimulus_text: passage,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      rw_format: "passage_mc",
    },
  );
}

function buildPassageMc(spec, specArr, index) {
  const s = specArr[index];
  return finalizeRwRow(spec, index, {
    question_text: s.question_text,
    stimulus_text: passageForIndex(s.passageIdx),
    stimulus_type: "passage",
    options: mkOpts(s.correctId, s.texts, s.expls),
    correct_answer: s.correctId,
    rw_format: "passage_mc",
  });
}

function buildCtc(index) {
  const s = CTC_SPECS[index];
  return finalizeRwRow(
    { skill: "CTC", rw_subtype: "cross_text_response" },
    index,
    {
      question_text: s.question_text,
      stimulus_text: s.stimulus,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      rw_format: "text_1_text_2",
    },
  );
}

function buildCoeQuant(index) {
  const s = COE_QT_SPECS[index];
  const passage = passageForIndex(s.passageIdx);
  const table = \`| \${s.tableHeaders.join(" | ")} |\\n| \${s.tableHeaders.map(() => "---").join(" | ")} |\\n\${s.tableRows.join("\\n")}\`;
  const stimulus = \`\${passage}\\n\\nThe table summarizes results from the study described above.\\n\\n\${table}\`;
  return finalizeRwRow(
    { skill: "COE", rw_subtype: "quantitative_table" },
    index,
    {
      question_text: s.question_text,
      stimulus_text: stimulus,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      rw_format: "table_chart",
    },
  );
}

function buildCoeText(index) {
  const s = COE_TE_SPECS[index];
  return finalizeRwRow(
    { skill: "COE", rw_subtype: "textual_evidence" },
    index,
    {
      question_text: s.question_text,
      stimulus_text: passageForIndex(s.passageIdx),
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      rw_format: s.rw_format,
    },
  );
}

function buildTra(index) {
  const s = TRA_SPECS[index];
  const passage = passageForIndex(s.passageIdx);
  const p = \`\${passage.split(/(?<=[.!?])\\s+/).slice(0, -1).join(" ")} ______ the final section extends the author's nuanced argument.\`;
  const stimulus = trimToWordRange(p, 130, 150);
  const opts = longTraOptions(s.correctId, s.correctText, index + 4000);
  return finalizeRwRow(
    { skill: "TRA", rw_subtype: "transition" },
    index,
    {
      question_text: "Which choice completes the text with the most logical transition?",
      stimulus_text: stimulus,
      stimulus_type: "passage",
      options: opts,
      correct_answer: s.correctId,
      rw_format: "transition_blank",
    },
  );
}

function buildBou(index) {
  const s = BOU_SPECS[index];
  const passage = trimToWordRange(s.passage, 130, 150);
  return finalizeConvRow(
    { skill: "BOU", rw_subtype: "boundaries" },
    index,
    {
      question_text: STEM_BOU,
      stimulus_text: passage,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      explanation: onePrepExpl(s.steps),
      hint: "Identify whether both sides of the blank are independent clauses.",
    },
  );
}

function buildFss(index) {
  const s = FSS_SPECS[index];
  const passage = trimToWordRange(s.passage, 130, 150);
  return finalizeConvRow(
    { skill: "FSS", rw_subtype: "form_structure_sense" },
    index,
    {
      question_text: STEM_FSS,
      stimulus_text: passage,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      explanation: onePrepExpl(s.steps),
      hint: "Check subject-verb agreement and pronoun form at the blank.",
    },
  );
}

function buildSyn(index) {
  const s = SYN_SPECS[index];
  return finalizeConvRow(
    { skill: "SYN", rw_subtype: "notes_synthesis" },
    index,
    {
      question_text: \`The student wants to \${s.goal}. Which choice most effectively uses information from the notes to accomplish this goal?\`,
      stimulus_text: s.notes,
      stimulus_type: "passage",
      options: mkOpts(s.correctId, s.texts, s.expls),
      correct_answer: s.correctId,
      explanation: onePrepExpl(s.steps),
      hint: "Match the rhetorical goal to note content without overstatement.",
    },
  );
}

const BUILDERS = {
  vocabulary_in_context: (spec, i) => buildWic(i),
  structure: (spec, i) => buildPassageMc(spec, TSP_SPECS, i),
  cross_text_response: (spec, i) => buildCtc(i),
  main_idea: (spec, i) => buildPassageMc(spec, CID_SPECS, i),
  textual_evidence: (spec, i) => buildCoeText(i),
  quantitative_table: (spec, i) => buildCoeQuant(i),
  general: (spec, i) => buildPassageMc(spec, INF_GENERAL_SPECS, i),
  prediction: (spec, i) => buildPassageMc(spec, INF_PREDICTION_SPECS, i),
  implication: (spec, i) => buildPassageMc(spec, INF_IMPLICATION_SPECS, i),
  transition: (spec, i) => buildTra(i),
  notes_synthesis: (spec, i) => buildSyn(i),
  boundaries: (spec, i) => buildBou(i),
  form_structure_sense: (spec, i) => buildFss(i),
};

/**
 * Generate one challenged bank item for the given subtype spec and index (0–24).
 * @param {{ spec: { skill: string, rw_subtype: string }, index: number }} params
 */
export function generateChallengedBankItem({ spec, index }) {
  const builder = BUILDERS[spec.rw_subtype];
  if (!builder) throw new Error(\`Unknown rw_subtype: \${spec.rw_subtype}\`);
  return builder(spec, index % 25);
}

/**
 * Validate a challenged bank row (metadata + subtype-specific blueprint rules).
 * @returns {{ ok: boolean, reasons: string[] }}
 */
export function validateChallengedRow(row) {
  const reasons = [];
  const meta = row.source_metadata ?? {};

  if (row.difficulty !== "hard") reasons.push("wrong_difficulty");
  if (meta.challenged_problem !== true) reasons.push("missing_challenged_problem");
  if (meta.difficulty_tier !== "challenged") reasons.push("missing_difficulty_tier");
  if (meta.dsat_blueprint_v1 !== true && row.dsat_blueprint_v1 !== true) reasons.push("missing_dsat_blueprint_v1");
  if (meta.explanation_v2 !== true) reasons.push("missing_explanation_v2");
  if (meta.generator !== GENERATOR) reasons.push("wrong_generator");

  const conv = CONVENTIONS_SKILLS.has(row.skill_id);
  const v = conv ? validateConventionsRow(row) : validateDsatRwQuestion(row);
  if (!v.ok) reasons.push(...(v.reasons ?? [v.reason].filter(Boolean)));

  return { ok: reasons.length === 0, reasons };
}
`;

writeFileSync(out, moduleSource);
console.log("Wrote", out, "size:", moduleSource.length);
console.log("Passages:", CHALLENGED_PASSAGES.map((p) => wordCount(p)));
