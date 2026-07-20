/**
 * DSAT challenged problem bank — 25 hand-crafted items × 13 rw_subtypes (325 total).
 * Ultra-hard tier: 130–150 word passages, tier-3 WIC, subtle distractors, OnePrep v2 explanations.
 */

import { mkOpts, mkChallengedOpts, TIER23_WORDS, longTraOptions, sentenceCount } from "./english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validatePassageWords,
  validateContentQuality,
  resolveRwFormat,
  SKILLS,
  RW_FORMAT_BY_SUBTYPE,
  TOPIC_ROTATION,
  PASSAGE_WORD_TARGETS,
  SENTENCE_TARGETS,
  trimToWordRange,
  wordCount,
  padToSentenceRange,
  splitCtcTexts,
  countBulletNotes,
  extractPassageProse,
  BLUEPRINT_VERSION,
} from "./dsat-rw-blueprint.mjs";
import { validateConventionsRow } from "./dsat-conventions-bank.mjs";

const GENERATOR = "dsat-challenged-bank.mjs";
const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);

const LIT_RAW = [
  "In the dim corridor of the abandoned conservatory, Elise paused before a portrait whose varnish had cracked into networks resembling river deltas, as though time itself had mapped tributaries across the sitter's face. She had returned to the estate not for inheritance but for a letter tucked inside the frame, a document that might revise every family story she had rehearsed since childhood. Her cousin Martin insisted the portrait was merely sentimental clutter, yet the ledger she discovered listed payments to a portraitist who, according to municipal archives, had died three years before the canvas was dated. The discrepancy did not prove fraud, but it qualified every oral tradition the family recited at holiday gatherings. Elise copied the ledger entries by hand, knowing that archives prefer ink to memory, and mailed duplicates to a historian who specialized in contested provenance. When Martin accused her of vandalizing heirlooms, she replied that uncertainty, however uncomfortable, was preferable to a biography built on unexamined certainty. The conservatory's broken panes admitted rain that smelled of iron and wet stone.",
  "The novelist's notebook, recovered from a flooded basement, contained drafts that contradicted the polished memoir she published decades later, suggesting that public narrative and private doubt had coexisted throughout her career. In one fragment she described her protagonist's \"magnanimous surrender\" not as moral triumph but as exhaustion disguised as grace, a reading her editors repeatedly rejected as too equivocal for a bestseller list. Scholars who study revision patterns argue that such contradictions reveal how authors compromise artistic integrity when market pressures demand unambiguous heroes. The notebook's water damage arrested legibility on several pages, yet ultraviolet imaging recovered sentences where she questioned whether forgiveness requires forgetting or merely performing forgetfulness on cue. Reading these lines, one biographer concluded that the memoir's serene tone was itself a literary device rather than a transparent confession. Future exhibitions may display notebook and memoir side by side so audiences can see how a single life accommodates competing truths without resolving them.",
  "When the translation panel convened, members disagreed about whether the poet's central metaphor should remain opaque or yield to explanatory footnotes that might arrest the reader's interpretive wandering. The senior translator argued that every ambiguous line qualified the poem's emotional register, preventing sentiment from hardening into slogan. Her colleague countered that modern readers expect clarity and that withholding glosses compromises accessibility in classroom settings where the poem circulates most widely. Both positions assumed that translation is negotiation rather than transcription, a view the chair endorsed before assigning parallel drafts. The published edition therefore presents the disputed stanza in the main text while reproducing alternate renderings in an appendix, inviting readers to compare how small lexical shifts alter tone. Critics praised the edition for treating uncertainty as feature rather than defect, though some reviewers still demanded a single authoritative line.",
  "The memoir opens with a scene in which the narrator watches her grandmother sort letters beside a stove whose heat could compromise fragile envelopes, each message folded with a precision that implied ritual rather than mere storage. She learns that the grandmother once refused to qualify a accusation against a neighbor despite community pressure, choosing silence that neighbors interpreted as magnanimous restraint rather than cowardice. Years later, archival research would reveal that the neighbor's arrest record had been expunged, complicating any simple moral ledger the family maintained. The narrator's prose mimics that ambiguity: sentences begin with concrete detail, then pivot through subordinate clauses that withhold judgment until the final line qualifies what seemed established three paragraphs earlier. Readers who prefer linear redemption arcs may find the structure frustrating, yet the form enacts the ethical uncertainty the narrator claims to inherit.",
  "During the residency, the playwright revised a scene in which two siblings debate whether to sell a piano that had survived three migrations, its cracked soundboard a metaphor she initially treated as too on-the-nose for serious drama. Workshop participants argued the object grounded abstract grief in tactile memory, while others insisted the symbolism arrested narrative momentum by announcing its themes prematurely. The playwright compromised by embedding the piano within a conversation about insurance appraisals, letting economic vocabulary carry emotional weight indirectly. In performance, audiences often cite that scene as the play's emotional center, suggesting that subtlety and explicitness can coexist when structure distributes attention across competing registers. The final script retains marginal notes documenting each rejected version, a record of craft decisions that future directors may consult when interpreting silence onstage."
];
const SCI_RAW = [
  "Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. When reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.",
  "Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction that would qualify earlier extinction timelines linked to abrupt cooling. The lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.",
  "Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. Remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience.",
  "Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three independent spectrometers and published raw traces alongside processed summaries. Popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.",
  "Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. Secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence."
];
const SOC_RAW = [
  "Historians revisiting treaty negotiations of 1919 argue that delegates' public rhetoric about self-determination often failed to qualify how colonial boundaries would remain intact, creating a gap between proclaimed principles and enforceable commitments. Archival cables show some diplomats privately described their own speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders. Economic historians add that reparations clauses compromised recovery in ways negotiators acknowledged only in marginal annotations, not in plenary transcripts students now memorize. Contemporary commentators who treat the conference as singular failure overlook regional agreements that succeeded on narrower terms, a nuance classroom narratives sometimes sacrifice for moral clarity. The synthesis emerging in recent monographs portrays delegates as constrained actors juggling coalition politics, public opinion, and incomplete information rather than architects of inevitable catastrophe. Further digitization of personal letters may shift emphasis again without resolving every counterfactual debate historians enjoy.",
  "Urban sociologists studying mixed-income housing projects found that shared amenities increased cross-class interaction initially, yet proprietary attitudes toward security systems often arrested integration within two years of occupancy. Interviewees described polite coexistence that rarely qualified as friendship, complicating metrics that equate proximity with social cohesion. Developers sometimes compromise design goals by reallocating communal square footage to private units when market forecasts shift, a decision documented in planning filings but absent from promotional brochures. Policy analysts recommend longitudinal ethnography rather than one-time satisfaction surveys, noting that residents' impressions evolve as maintenance disputes accumulate. Critics from market-oriented think tanks argue the data prove government intervention distorts housing preferences, while advocates counter that without subsidies the projects would never have been built. Both camps selectively emphasize findings that align with prior commitments, illustrating how evidence travels through ideological filters.",
  "Anthropologists documenting oral histories in a post-industrial town recorded how former factory workers used the word \"loyalty\" in ways that could mean either steadfast craftsmanship or refusal to qualify management decisions that compromised safety. Younger residents, lacking direct experience on the line, sometimes interpreted the same stories as cautionary tales about uncritical obedience, revealing generational plasticity in moral vocabulary. The research team avoided arresting narrative flow with rigid coding schemes, allowing thematic categories to emerge after repeated listening sessions. One worker's account of a strike described union leadership as magnanimous for accepting partial gains, whereas another labeled the same outcome a compromise that sacrificed newcomers' pensions. Rather than adjudicate, the ethnographers present juxtaposed transcripts so readers confront interpretive multiplicity directly. Funding agencies asked whether such ambiguity yields actionable policy; the authors reply that misunderstanding community memory produces worse outcomes than delayed consensus.",
  "Political scientists analyzing referendum campaigns observed that ads emphasizing fiscal responsibility rarely cited data that might qualify sweeping promises, while opposition spots sometimes seized on minor accounting discrepancies to suggest systemic fraud without equivalent evidence. Focus groups revealed voters treated emotional tone as proxy for credibility, a heuristic that can arrest deliberation when candidates perform sincerity convincingly. The study does not claim voters are irrational; instead, it documents how time-pressed citizens compromise depth for speed when ballots approach. Media literacy interventions tested in parallel cohorts showed modest gains in identifying unsupported synthesis, though effects faded unless reinforced during subsequent election cycles. Legislators citing the research disagree about remedies: some propose stricter disclosure rules, others argue transparency alone cannot fix structural incentives for equivocal messaging. The authors emphasize that institutional redesign and civic education must proceed together if public discourse is to shift measurably.",
  "Economists examining microfinance programs in rural provinces found that initial repayment rates magnanimous lenders celebrated masked heterogeneous outcomes, with women-led enterprises benefiting while seasonal farmers faced cycles that compromise short-term cash flows. Randomized trials later qualified early optimism by showing default spikes correlated with harvest timing rather than borrower character, undermining narratives that moralized creditworthiness. Program officers who arrested disbursements after first delinquencies inadvertently reduced long-term uptake, suggesting punitive responses can destroy social collateral built through years of community meetings. The team's policy brief recommends grace periods aligned with agricultural calendars and transparent interest formulas, changes some NGOs adopted while others feared donors would view flexibility as lax oversight. Development textbooks often simplify the story into success or failure binaries; this study argues for portfolios of small experiments whose combined evidence resists single-label verdicts."
];

/** 15 premium challenged passages (5 literature, 5 science, 5 social studies), 111–150 words, 8–10 sentences. */
export const CHALLENGED_PASSAGES = [...LIT_RAW, ...SCI_RAW, ...SOC_RAW].map((t) => {
  let p = padToSentenceRange(String(t).trim(), SENTENCE_TARGETS.challenged.stimulus.min, SENTENCE_TARGETS.challenged.stimulus.max);
  while (wordCount(p) > PASSAGE_WORD_TARGETS.hard.max) {
    const sents = p.split(/(?<=[.!?])\s+/).filter(Boolean);
    if (sents.length <= SENTENCE_TARGETS.challenged.stimulus.min) {
      const li = sents.reduce((b, s, i, arr) => (s.split(/\s+/).length > arr[b].split(/\s+/).length ? i : b), 0);
      const words = sents[li].split(/\s+/);
      if (words.length <= 10) break;
      sents[li] = `${words.slice(0, -4).join(" ")}.`;
    } else {
      sents.pop();
    }
    p = sents.join(" ");
  }
  return trimToWordRange(p, PASSAGE_WORD_TARGETS.hard.min, PASSAGE_WORD_TARGETS.hard.max);
});

const SYN_BULLET_PADS = [
  "• Authors caution against universal generalization without subgroup analysis",
  "• Replication at additional sites is planned before policy adoption",
  "• Limitation: sample skews toward contexts noted in the preregistration",
  "• Policy brief recommends adaptive rather than one-size approaches",
  "• Effect sizes vary across cohorts in ways the notes explicitly document",
  "• Methodological preregistration documents constrain causal claims",
  "• Stakeholders should treat findings as provisional pending broader trials",
  "• Follow-up work will test whether patterns hold under varied conditions",
];

function padBulletNotes(notes, min, max) {
  const lines = String(notes ?? "")
    .split("\n")
    .filter((l) => l.trim().startsWith("•"));
  let i = 0;
  while (lines.length < min) {
    lines.push(SYN_BULLET_PADS[i % SYN_BULLET_PADS.length]);
    i++;
  }
  return lines.slice(0, max).join("\n");
}

function padCtcStimulus(stimulus) {
  const { t1, t2 } = splitCtcTexts(stimulus);
  const { min, max } = SENTENCE_TARGETS.challenged.ctcEach;
  const { min: wMin, max: wMax } = PASSAGE_WORD_TARGETS.challenged_ctc_each;
  let nt1 = trimToWordRange(padToSentenceRange(t1, min, max), wMin, wMax);
  let nt2 = trimToWordRange(padToSentenceRange(t2, min, max), wMin, wMax);
  nt1 = padToSentenceRange(nt1, min, max);
  nt2 = padToSentenceRange(nt2, min, max);
  return `Text 1\n${nt1}\n\nText 2\n${nt2}`;
}

function normalizeChallengedProse(text) {
  const { min: sMin, max: sMax } = SENTENCE_TARGETS.challenged.stimulus;
  const { min: wMin, max: wMax } = PASSAGE_WORD_TARGETS.challenged;
  let p = String(text ?? "").trim();
  if (sentenceCount(p) < sMin) p = padToSentenceRange(p, sMin, sMax);
  if (sentenceCount(p) > sMax) {
    p = p.split(/(?<=[.!?])\s+/).filter(Boolean).slice(0, sMax).join(" ");
  }
  while (wordCount(p) > wMax && sentenceCount(p) > sMin) {
    const sents = p.split(/(?<=[.!?])\s+/).filter(Boolean);
    sents.pop();
    p = sents.join(" ");
  }
  if (wordCount(p) < wMin) p = trimToWordRange(p, wMin, wMax);
  if (sentenceCount(p) < sMin) p = padToSentenceRange(p, sMin, sMax);
  if (wordCount(p) > wMax) p = trimToWordRange(p, wMin, wMax);
  return p.trim();
}

function normalizeChallengedStimulus(stimulus, rwFormat) {
  if (!stimulus) return stimulus;
  if (rwFormat === "bullet_notes") {
    return padBulletNotes(stimulus, SENTENCE_TARGETS.challenged.synBullets.min, SENTENCE_TARGETS.challenged.synBullets.max);
  }
  if (rwFormat === "text_1_text_2") return padCtcStimulus(stimulus);
  if (rwFormat === "table_chart") {
    const prose = extractPassageProse(stimulus, rwFormat);
    const suffix = stimulus.slice(prose.length);
    return normalizeChallengedProse(prose) + suffix;
  }
  return normalizeChallengedProse(stimulus);
}

function topicForIndex(index) {
  return TOPIC_ROTATION[index % TOPIC_ROTATION.length];
}

function passageForIndex(index) {
  return CHALLENGED_PASSAGES[index % CHALLENGED_PASSAGES.length];
}

function onePrepExpl({ step1, step2, step3, distractors }) {
  let expl = `Step 1 — ${step1.title}\n${step1.body}\n\nStep 2 — ${step2.title}\n${step2.body}\n\nStep 3 — ${step3.title}\n${step3.body}\n\nDistractor analysis:`;
  for (const [id, text] of Object.entries(distractors)) {
    expl += `\n- ${id}: ${text}`;
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
  if (raw.stimulus_text) {
    raw.stimulus_text = normalizeChallengedStimulus(raw.stimulus_text, rwFormat);
  }
  if (Array.isArray(raw.options)) {
    const correctId = raw.correct_answer ?? raw.options.find((o) => o.is_correct)?.id ?? "A";
    const texts = raw.options.map((o) => o.text);
    const expls = raw.options.map((o) => o.explanation ?? "");
    raw.options = mkChallengedOpts(correctId, texts, expls);
  }
  const v2 = buildOnePrepExplanation(raw, {
    skill: spec.skill,
    rw_subtype: spec.rw_subtype,
    difficulty: "challenged",
  });
  let options = v2.options;
  if (spec.rw_subtype === "transition") {
    const correctId = v2.correct_answer;
    options = mkChallengedOpts(
      correctId,
      v2.options.map((o) => o.text),
      v2.options.map((o) => o.explanation ?? ""),
    ).map((o, i) => ({ ...o, explanation: v2.options[i]?.explanation ?? o.explanation }));
  }
  return {
    question_text: raw.question_text,
    stimulus_text: raw.stimulus_text ?? null,
    stimulus_type: raw.stimulus_type ?? (raw.stimulus_text ? "passage" : null),
    options,
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
  const rwFormat = RW_FORMAT_BY_SUBTYPE[spec.rw_subtype];
  if (raw.stimulus_text) {
    raw.stimulus_text = normalizeChallengedStimulus(raw.stimulus_text, rwFormat);
  }
  if (Array.isArray(raw.options)) {
    const correctId = raw.correct_answer ?? raw.options.find((o) => o.is_correct)?.id ?? "A";
    const texts = raw.options.map((o) => o.text);
    const expls = raw.options.map((o) => o.explanation ?? "");
    raw.options = mkChallengedOpts(correctId, texts, expls);
  }
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

const WIC_SPECS = [
  {
    "word": "qualify",
    "correctId": "A",
    "texts": [
      "modify or limit",
      "earn certification",
      "praise enthusiastically",
      "disqualify entirely"
    ],
    "expls": [
      "\"qualify\" here means modify or limit, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 0
  },
  {
    "word": "compromise",
    "correctId": "A",
    "texts": [
      "put at risk or weaken",
      "reach a mutual agreement",
      "settle a dispute fairly",
      "refuse to negotiate"
    ],
    "expls": [
      "\"compromise\" here means put at risk or weaken, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 1
  },
  {
    "word": "arrest",
    "correctId": "A",
    "texts": [
      "stop or halt",
      "take into custody",
      "capture attention briefly",
      "accelerate suddenly"
    ],
    "expls": [
      "\"arrest\" here means stop or halt, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 2
  },
  {
    "word": "magnanimous",
    "correctId": "A",
    "texts": [
      "nobly generous or forgiving",
      "extravagantly wealthy",
      "physically imposing",
      "strictly impartial"
    ],
    "expls": [
      "\"magnanimous\" here means nobly generous or forgiving, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 3
  },
  {
    "word": "equivocal",
    "correctId": "A",
    "texts": [
      "deliberately ambiguous",
      "equally divided",
      "mathematically equivalent",
      "clearly decisive"
    ],
    "expls": [
      "\"equivocal\" here means deliberately ambiguous, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 4
  },
  {
    "word": "plasticity",
    "correctId": "A",
    "texts": [
      "capacity to change form",
      "artificial manufacture",
      "visual artistry",
      "rigidity under stress"
    ],
    "expls": [
      "\"plasticity\" here means capacity to change form, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 5
  },
  {
    "word": "perfunctory",
    "correctId": "A",
    "texts": [
      "carried out with minimal effort",
      "performed with great ceremony",
      "lasting indefinitely",
      "deeply heartfelt"
    ],
    "expls": [
      "\"perfunctory\" here means carried out with minimal effort, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 6
  },
  {
    "word": "sanguine",
    "correctId": "A",
    "texts": [
      "optimistic or confident",
      "blood-red in color",
      "gloomy and pessimistic",
      "indifferent and detached"
    ],
    "expls": [
      "\"sanguine\" here means optimistic or confident, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 7
  },
  {
    "word": "obfuscate",
    "correctId": "A",
    "texts": [
      "make unclear or confuse",
      "clarify thoroughly",
      "illuminate brightly",
      "summarize concisely"
    ],
    "expls": [
      "\"obfuscate\" here means make unclear or confuse, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 8
  },
  {
    "word": "laconic",
    "correctId": "A",
    "texts": [
      "using few words",
      "excessively talkative",
      "highly technical",
      "emotionally effusive"
    ],
    "expls": [
      "\"laconic\" here means using few words, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 9
  },
  {
    "word": "ephemeral",
    "correctId": "A",
    "texts": [
      "lasting a very short time",
      "permanent and enduring",
      "widely celebrated",
      "deeply rooted"
    ],
    "expls": [
      "\"ephemeral\" here means lasting a very short time, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 10
  },
  {
    "word": "intransigent",
    "correctId": "A",
    "texts": [
      "unwilling to compromise",
      "easily persuaded",
      "temporarily absent",
      "enthusiastically cooperative"
    ],
    "expls": [
      "\"intransigent\" here means unwilling to compromise, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 11
  },
  {
    "word": "profligate",
    "correctId": "A",
    "texts": [
      "recklessly wasteful",
      "carefully frugal",
      "moderately cautious",
      "predictably routine"
    ],
    "expls": [
      "\"profligate\" here means recklessly wasteful, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 12
  },
  {
    "word": "surreptitious",
    "correctId": "A",
    "texts": [
      "secret or stealthy",
      "openly declared",
      "legally mandated",
      "widely advertised"
    ],
    "expls": [
      "\"surreptitious\" here means secret or stealthy, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 13
  },
  {
    "word": "veracious",
    "correctId": "A",
    "texts": [
      "truthful or accurate",
      "deliberately deceptive",
      "vaguely approximate",
      "wildly imaginative"
    ],
    "expls": [
      "\"veracious\" here means truthful or accurate, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 14
  },
  {
    "word": "abstruse",
    "correctId": "A",
    "texts": [
      "difficult to understand",
      "easily grasped",
      "widely popular",
      "superficially simple"
    ],
    "expls": [
      "\"abstruse\" here means difficult to understand, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 0
  },
  {
    "word": "capricious",
    "correctId": "A",
    "texts": [
      "given to sudden changes",
      "steadfastly consistent",
      "predictably logical",
      "methodically planned"
    ],
    "expls": [
      "\"capricious\" here means given to sudden changes, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 1
  },
  {
    "word": "didactic",
    "correctId": "A",
    "texts": [
      "intended to instruct",
      "purely entertaining",
      "deliberately obscure",
      "randomly assembled"
    ],
    "expls": [
      "\"didactic\" here means intended to instruct, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 2
  },
  {
    "word": "fastidious",
    "correctId": "A",
    "texts": [
      "very attentive to detail",
      "carelessly sloppy",
      "generously forgiving",
      "indifferent to accuracy"
    ],
    "expls": [
      "\"fastidious\" here means very attentive to detail, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 3
  },
  {
    "word": "garrulous",
    "correctId": "A",
    "texts": [
      "excessively talkative",
      "unusually silent",
      "precisely concise",
      "formally reserved"
    ],
    "expls": [
      "\"garrulous\" here means excessively talkative, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 4
  },
  {
    "word": "mitigate",
    "correctId": "A",
    "texts": [
      "make less severe",
      "intensify greatly",
      "ignore completely",
      "celebrate openly"
    ],
    "expls": [
      "\"mitigate\" here means make less severe, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 5
  },
  {
    "word": "tenuous",
    "correctId": "A",
    "texts": [
      "weak or insubstantial",
      "firmly established",
      "widely accepted",
      "legally binding"
    ],
    "expls": [
      "\"tenuous\" here means weak or insubstantial, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 6
  },
  {
    "word": "bolster",
    "correctId": "A",
    "texts": [
      "support or strengthen",
      "weaken considerably",
      "contradict directly",
      "dismiss casually"
    ],
    "expls": [
      "\"bolster\" here means support or strengthen, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 7
  },
  {
    "word": "scrutinize",
    "correctId": "A",
    "texts": [
      "examine closely",
      "glance at briefly",
      "accept uncritically",
      "overlook entirely"
    ],
    "expls": [
      "\"scrutinize\" here means examine closely, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 8
  },
  {
    "word": "ambiguous",
    "correctId": "A",
    "texts": [
      "open to multiple interpretations",
      "perfectly clear",
      "legally precise",
      "universally agreed upon"
    ],
    "expls": [
      "\"ambiguous\" here means open to multiple interpretations, matching the passage's contextual logic.",
      "This is the word's most common sense but not how it functions in this academic passage.",
      "True in another domain but unsupported by surrounding clauses.",
      "No-evidence synthesis: the passage never supports this reading."
    ],
    "passageIdx": 9
  }
];
const TSP_SPECS = [
  {
    "question_text": "Which choice best describes the overall structure of the passage?",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The primary function of the second half of the passage is to",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which choice best states the main purpose of the passage?",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "The passage is organized primarily to",
    "correctId": "B",
    "texts": [
      "arguing that all prior research should be dismissed",
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only"
    ],
    "expls": [
      "The author qualifies rather than dismisses prior work.",
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "Which choice most accurately describes how the passage develops its central claim?",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "The author structures the passage primarily by",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "Which choice best captures the organizational pattern of the passage?",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "The passage can best be described as one that",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "Which choice best describes the relationship between the passage's opening and its conclusion?",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The author organizes the discussion primarily in order to",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 9
  },
  {
    "question_text": "Which choice best characterizes the passage's rhetorical structure?",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 10
  },
  {
    "question_text": "The passage primarily functions to",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 11
  },
  {
    "question_text": "Which choice best describes the sequence of ideas in the passage?",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 12
  },
  {
    "question_text": "The structure of the passage emphasizes",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 13
  },
  {
    "question_text": "Which choice best describes how the author builds the argument?",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 14
  },
  {
    "question_text": "The passage is structured to",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "Which choice most accurately describes the passage's method of development?",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "The author presents information primarily by",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "Which choice best describes the passage's organizational strategy?",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The passage unfolds primarily through",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Which choice best states how the passage is arranged?",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The author structures the text to",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which choice best describes the progression of the passage?",
    "correctId": "A",
    "texts": [
      "introduce a claim, supply evidence, and acknowledge limitations",
      "summarize a biography without analytical framing",
      "reject every counterargument without evidence",
      "shift abruptly to an unrelated topic"
    ],
    "expls": [
      "This matches the claim-evidence-limitation arc.",
      "Biographical summary alone is too narrow.",
      "The passage engages rather than rejects counters.",
      "Topics remain connected throughout."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "The passage's structure serves primarily to",
    "correctId": "A",
    "texts": [
      "moving from specific observation to broader interpretive stakes",
      "cataloging random facts in no discernible order",
      "repeating the same sentence with minor variations",
      "presenting only dialogue without exposition"
    ],
    "expls": [
      "Specific-to-general structure is explicit.",
      "Facts accumulate toward a thesis.",
      "Repetition is not the organizing device.",
      "Expository framing dominates."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "Which choice best describes the way the passage is organized?",
    "correctId": "A",
    "texts": [
      "presenting a problem and then evaluating competing explanations",
      "listing unrelated anecdotes without a central thread",
      "describing a personal memoir in chronological order only",
      "arguing that all prior research should be dismissed"
    ],
    "expls": [
      "The passage introduces tension then weighs interpretations.",
      "Anecdotes support but do not replace the central arc.",
      "Chronology alone misses the evaluative structure.",
      "The author qualifies rather than dismisses prior work."
    ],
    "passageIdx": 9
  }
];
const CTC_SPECS = [
  {
    "question_text": "Based on the texts, how would the author of Text 2 most likely respond to the view presented in Text 1?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2008, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.\n\nText 2\nA 2018 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests."
  },
  {
    "question_text": "Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue?",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2009, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2019 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Based on the texts, both authors would most likely agree with which statement?",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2010, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2020 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Which choice best describes how Text 2 relates to Text 1?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2011, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2021 archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "The author of Text 2 would most likely criticize Text 1 for",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2012, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2022 mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Based on the texts, what would Text 2's author say about Text 1's central assumption?",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2013, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.\n\nText 2\nA 2023 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests."
  },
  {
    "question_text": "Which choice best characterizes the relationship between the two texts?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2014, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2024 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Based on the texts, the author of Text 1 would most likely argue that Text 2",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2015, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2025 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Which choice best describes a point of disagreement between the texts?",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2016, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2018 archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Based on the texts, how does Text 2 complicate the conclusion in Text 1?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2017, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2019 mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Which choice best states what Text 2 adds to the discussion in Text 1?",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2008, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.\n\nText 2\nA 2020 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests."
  },
  {
    "question_text": "The author of Text 2 would most likely contend that Text 1",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2009, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2021 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Based on the texts, which finding would most weaken Text 1's claim?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2010, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2022 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Which choice best describes how the texts treat the same phenomenon?",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2011, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2023 archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Based on the texts, the authors would most likely disagree about",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2012, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2024 mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Which choice best captures Text 2's response to Text 1's policy recommendation?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2013, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.\n\nText 2\nA 2025 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests."
  },
  {
    "question_text": "The author of Text 2 would most likely reject Text 1's argument because",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2014, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2018 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Based on the texts, what evidence from Text 2 qualifies Text 1's conclusion?",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2015, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2019 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Which choice best describes the scope of Text 2 relative to Text 1?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2016, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2020 archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Based on the texts, how would Text 1's author likely view Text 2's methodology?",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2017, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2021 mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Which choice best describes the tone difference between the texts?",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2008, physiologist Dr. Mara Lin argued that sleep consolidation primarily benefits declarative memory because hippocampal replay strengthens recently encoded facts. She dismissed motor-skill gains as short-lived unless participants slept immediately after practice. Her policy memo recommended school start times based solely on verbal test performance, treating physical education schedules as irrelevant to cognitive outcomes.\n\nText 2\nA 2022 study tracked adolescents in schools that delayed start times and found improved procedural memory on motor tasks even when verbal gains were modest. Neuroimaging subsamples showed distinct overnight changes in motor networks. The authors urged policymakers to consider physical education and rehearsal-heavy coursework when evaluating schedule reforms, not only vocabulary tests."
  },
  {
    "question_text": "Based on the texts, both texts rely on which type of reasoning?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2009, economist Tomas Vela argued that automation would uniformly eliminate manufacturing jobs within a decade, citing early robotics deployments at automotive plants. His forecast treated every factory task as equally machine-replaceable and predicted that retraining could absorb displaced workers only if launched immediately at national scale. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2023 industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining cells and logistics staff managing reconfigured lines. Productivity rose gradually over four years, and headcount at studied plants remained within five percent of pre-automation levels. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Which choice best describes a limitation Text 2 identifies in Text 1?",
    "correctId": "B",
    "texts": [
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon."
    ],
    "expls": [
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus."
    ],
    "stimulus": "Text 1\nIn 2010, critic Helena Marsh argued that public parks chiefly benefit residents who engage in vigorous exercise, using caloric expenditure as the only measurable outcome of green-space investment. She recommended athletic courts over quiet seating because passive park use produced negligible health returns in her model. The authors caution that replication remains necessary before treating the finding as settled.\n\nText 2\nA 2024 longitudinal study of families living near neighborhood parks found children read outdoors frequently and reported lower stress markers, even when they rarely played organized sports. Teachers linked outdoor reading to stronger summary writing. Designers began prototyping shaded reading nooks distinct from soccer fields. The authors caution that replication remains necessary before treating the finding as settled."
  },
  {
    "question_text": "Based on the texts, Text 2's findings suggest that Text 1",
    "correctId": "C",
    "texts": [
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support.",
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes."
    ],
    "expls": [
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change.",
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation."
    ],
    "stimulus": "Text 1\nIn 2011, historian Dr. Amos Reed claimed that treaty rhetoric about self-determination was sincere public conviction rather than diplomatic strategy, citing delegates' published speeches as transparent records of intent without consulting private cables. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2025 archival project digitizing private diplomatic cables found delegates routinely described public speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders, complicating claims that rhetoric alone reveals intent. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  },
  {
    "question_text": "Which choice best describes the relationship between the texts' conclusions?",
    "correctId": "A",
    "texts": [
      "overstates the uniformity of outcomes that Text 2's evidence complicates.",
      "ignores evidence that Text 2 presents about alternative mechanisms or outcomes.",
      "relies on metrics that Text 2 shows are too narrow to capture the full phenomenon.",
      "assumes a timeline that Text 2's longitudinal data does not support."
    ],
    "expls": [
      "Text 2 introduces nuance that directly qualifies Text 1's sweeping claim.",
      "Text 2 supplies counterevidence or alternative interpretation.",
      "Text 2 broadens the measurement frame beyond Text 1's focus.",
      "Text 2's timeline contradicts Text 1's predicted pace of change."
    ],
    "stimulus": "Text 1\nIn 2012, ecologist Nina Ortiz argued that monoculture mangrove plantings fail universally after storms, recommending abandonment of single-species restoration in favor of leaving coastlines undeveloped. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations.\n\nText 2\nA 2018 mangrove study found polyculture plots outperformed monoculture rows after surges, yet qualified the result by noting salinity tolerance still matters and that modular templates can improve monoculture outcomes when species are chosen strategically. The authors caution that replication remains necessary before treating the finding as settled. Follow-up work will test whether the pattern holds across additional sites and populations."
  }
];
const CID_SPECS = [
  {
    "question_text": "Which choice best states the main idea of the passage?",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The central claim of the passage is that",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which choice most accurately expresses the main point of the passage?",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "The passage primarily suggests that",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "Which choice best captures the passage's central argument?",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "The main idea of the passage is that",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "Which choice best summarizes the passage without overstating its scope?",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "The author primarily argues that",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "Which choice states the main idea most precisely?",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The passage is mainly concerned with",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 9
  },
  {
    "question_text": "Which choice best identifies the central thesis of the passage?",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 10
  },
  {
    "question_text": "The primary point of the passage is that",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 11
  },
  {
    "question_text": "Which choice best reflects the passage's main conclusion?",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 12
  },
  {
    "question_text": "The passage chiefly emphasizes that",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 13
  },
  {
    "question_text": "Which choice most accurately summarizes the author's central claim?",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 14
  },
  {
    "question_text": "The main idea of the text is that",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "Which choice best states what the passage is mainly about?",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "The author would most likely agree that the central idea is that",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "Which choice best expresses the passage's primary focus?",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The passage suggests as its main point that",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Which choice best identifies the main idea?",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The central concern of the passage is that",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which choice most accurately states the passage's thesis?",
    "correctId": "A",
    "texts": [
      "interpretation must account for limitations the authors explicitly acknowledge",
      "the authors prove their hypothesis beyond any possible doubt",
      "the research eliminates all competing explanations",
      "readers need no further context to apply the findings universally"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "The passage primarily communicates that",
    "correctId": "A",
    "texts": [
      "complex phenomena resist reduction to a single causal story",
      "one variable alone explains all observed outcomes",
      "the passage rejects empirical methods entirely",
      "the authors refuse to draw any inference from data"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "Which choice best summarizes the central idea of the passage?",
    "correctId": "A",
    "texts": [
      "the evidence supports a qualified conclusion rather than an absolute verdict",
      "every prior study on the topic was fundamentally flawed",
      "policy makers should ignore the findings entirely",
      "the phenomenon has no practical implications whatsoever"
    ],
    "expls": [
      "This restates the passage's qualified central claim without overstatement.",
      "Overly broad: the passage does not dismiss all prior work.",
      "True-but-irrelevant: the passage discusses implications, not ignoring them.",
      "No-evidence synthesis: the passage never claims zero practical value."
    ],
    "passageIdx": 9
  }
];
const COE_TE_SPECS = [
  {
    "question_text": "Which quotation from the passage best supports the answer to the previous question?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 0,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which choice provides the best evidence for the claim that the authors remain cautious about generalizing?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 1,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which finding from the passage best supports the idea that multiple factors shape the outcome?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 2,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which detail from the passage best supports the claim about provisional conclusions?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 3,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which statement from the passage best supports the answer?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 4,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which choice best provides evidence that the authors qualify their claims?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 5,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which excerpt best supports the inference that replication is still needed?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 6,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which detail best supports the claim that the phenomenon is context-dependent?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 7,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which choice best supports the idea that the authors acknowledge limitations?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 8,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which line from the passage best supports the central inference?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 9,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which choice provides the strongest textual evidence for the claim?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 10,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which detail from the passage best supports the author's cautious tone?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 11,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which excerpt best supports the answer to the question about scope?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 12,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which choice best supports the claim that evidence is converging but not definitive?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 13,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which statement best supports the inference about policy implications?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 14,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which detail best supports the idea that competing explanations remain viable?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 0,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which choice provides the best evidence for the qualified conclusion?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 1,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which excerpt best supports the claim about methodological caution?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 2,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which line best supports the inference that outcomes vary across contexts?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 3,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which choice best supports the author's main claim with textual evidence?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 4,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which detail from the passage best supports the answer?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 5,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which statement best provides evidence for the bounded inference?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 6,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which excerpt best supports the claim that uncertainty persists?",
    "correctId": "A",
    "texts": [
      "\"The team cautioned that the pattern may not generalize to all populations studied elsewhere.\"",
      "\"Critics were entirely wrong about every methodological concern raised.\"",
      "\"The passage offers no data supporting its claims.\"",
      "\"Policy makers must act immediately without further study.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 7,
    "rw_format": "supporting_finding"
  },
  {
    "question_text": "Which choice best supports the idea that the finding shifts but does not settle debate?",
    "correctId": "A",
    "texts": [
      "\"Observers recorded consistent patterns while holding unrelated variables stable.\"",
      "\"A single anecdote proves the universal mechanism.\"",
      "\"The authors dismiss all quantitative measures.\"",
      "\"No comparison group was used at any stage.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 8,
    "rw_format": "two_part_evidence"
  },
  {
    "question_text": "Which detail best supports the passage's central evidentiary claim?",
    "correctId": "A",
    "texts": [
      "\"Replication across independent sites remains necessary before treating the finding as settled.\"",
      "\"Every competing theory has been permanently disproven.\"",
      "\"The authors refuse to mention any limitation whatsoever.\"",
      "\"Results were identical in every context without exception.\""
    ],
    "expls": [
      "Direct textual support for the qualified claim.",
      "Overstates: passage does not claim total disproof of alternatives.",
      "Contradicts the passage's explicit acknowledgment of limits.",
      "Absolute language unsupported by the passage."
    ],
    "passageIdx": 9,
    "rw_format": "supporting_finding"
  }
];
const COE_QT_SPECS = [
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 0,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 50 | 72 | 5 |",
      "| 2019 | 65 | 76 | 6 |",
      "| 2020 | 80 | 80 | 7 |",
      "| 2021 | 95 | 64 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 1,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 55 | 73 | 5 |",
      "| 2019 | 70 | 77 | 6 |",
      "| 2020 | 85 | 81 | 7 |",
      "| 2021 | 100 | 65 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 2,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 60 | 74 | 5 |",
      "| 2019 | 75 | 78 | 6 |",
      "| 2020 | 90 | 62 | 7 |",
      "| 2021 | 105 | 66 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 3,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 65 | 75 | 5 |",
      "| 2019 | 80 | 79 | 6 |",
      "| 2020 | 95 | 63 | 7 |",
      "| 2021 | 110 | 67 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 4,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 70 | 76 | 5 |",
      "| 2019 | 85 | 80 | 6 |",
      "| 2020 | 100 | 64 | 7 |",
      "| 2021 | 115 | 68 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 5,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 75 | 77 | 5 |",
      "| 2019 | 90 | 81 | 6 |",
      "| 2020 | 105 | 65 | 7 |",
      "| 2021 | 120 | 69 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 6,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 80 | 78 | 5 |",
      "| 2019 | 95 | 62 | 6 |",
      "| 2020 | 110 | 66 | 7 |",
      "| 2021 | 125 | 70 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 7,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 85 | 79 | 5 |",
      "| 2019 | 100 | 63 | 6 |",
      "| 2020 | 115 | 67 | 7 |",
      "| 2021 | 130 | 71 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 8,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 90 | 80 | 5 |",
      "| 2019 | 105 | 64 | 6 |",
      "| 2020 | 120 | 68 | 7 |",
      "| 2021 | 135 | 72 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 9,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 95 | 81 | 5 |",
      "| 2019 | 110 | 65 | 6 |",
      "| 2020 | 125 | 69 | 7 |",
      "| 2021 | 140 | 73 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 10,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 100 | 62 | 5 |",
      "| 2019 | 115 | 66 | 6 |",
      "| 2020 | 130 | 70 | 7 |",
      "| 2021 | 145 | 74 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 11,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 105 | 63 | 5 |",
      "| 2019 | 120 | 67 | 6 |",
      "| 2020 | 135 | 71 | 7 |",
      "| 2021 | 150 | 75 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 12,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 110 | 64 | 5 |",
      "| 2019 | 125 | 68 | 6 |",
      "| 2020 | 140 | 72 | 7 |",
      "| 2021 | 155 | 76 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 13,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 115 | 65 | 5 |",
      "| 2019 | 130 | 69 | 6 |",
      "| 2020 | 145 | 73 | 7 |",
      "| 2021 | 160 | 77 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 14,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 120 | 66 | 5 |",
      "| 2019 | 135 | 70 | 6 |",
      "| 2020 | 150 | 74 | 7 |",
      "| 2021 | 165 | 78 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 0,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 125 | 67 | 5 |",
      "| 2019 | 140 | 71 | 6 |",
      "| 2020 | 155 | 75 | 7 |",
      "| 2021 | 170 | 79 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 1,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 130 | 68 | 5 |",
      "| 2019 | 145 | 72 | 6 |",
      "| 2020 | 160 | 76 | 7 |",
      "| 2021 | 175 | 80 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 2,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 135 | 69 | 5 |",
      "| 2019 | 150 | 73 | 6 |",
      "| 2020 | 165 | 77 | 7 |",
      "| 2021 | 180 | 81 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 3,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 140 | 70 | 5 |",
      "| 2019 | 155 | 74 | 6 |",
      "| 2020 | 170 | 78 | 7 |",
      "| 2021 | 185 | 62 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 4,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 145 | 71 | 5 |",
      "| 2019 | 160 | 75 | 6 |",
      "| 2020 | 175 | 79 | 7 |",
      "| 2021 | 190 | 63 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 5,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 150 | 72 | 5 |",
      "| 2019 | 165 | 76 | 6 |",
      "| 2020 | 180 | 80 | 7 |",
      "| 2021 | 195 | 64 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 6,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 155 | 73 | 5 |",
      "| 2019 | 170 | 77 | 6 |",
      "| 2020 | 185 | 81 | 7 |",
      "| 2021 | 200 | 65 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 7,
    "tableHeaders": [
      "Group",
      "Hours studied",
      "Post-test %",
      "Gain"
    ],
    "tableRows": [
      "| 2018 | 160 | 74 | 5 |",
      "| 2019 | 175 | 78 | 6 |",
      "| 2020 | 190 | 62 | 7 |",
      "| 2021 | 205 | 66 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 8,
    "tableHeaders": [
      "Site",
      "Temp (°C)",
      "Recruitment %",
      "Cover %"
    ],
    "tableRows": [
      "| 2018 | 165 | 75 | 5 |",
      "| 2019 | 180 | 79 | 6 |",
      "| 2020 | 195 | 63 | 7 |",
      "| 2021 | 210 | 67 | 8 |"
    ]
  },
  {
    "question_text": "Which choice best describes data from the table that support the researchers' conclusion in the passage?",
    "correctId": "C",
    "texts": [
      "The table shows declining sample sizes, contradicting the passage.",
      "Every row lists identical means, proving the effect is constant.",
      "Later rows show higher mean scores alongside moderate variability, aligning with the passage's reported improvement.",
      "The table replaces the passage as the only source of evidence."
    ],
    "expls": [
      "Sample sizes vary but do not decline monotonically in a way that negates the passage.",
      "Means are not identical across rows.",
      "The trend in means supports the passage's claim of improvement over time.",
      "Both passage and table must be used together."
    ],
    "passageIdx": 9,
    "tableHeaders": [
      "Year",
      "Sample size",
      "Mean score",
      "Std. dev."
    ],
    "tableRows": [
      "| 2018 | 170 | 76 | 5 |",
      "| 2019 | 185 | 80 | 6 |",
      "| 2020 | 200 | 64 | 7 |",
      "| 2021 | 215 | 68 | 8 |"
    ]
  }
];
const INF_GENERAL_SPECS = [
  {
    "question_text": "Based on the passage, it can most reasonably be inferred that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly suggests that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which choice can most reasonably be inferred from the passage? the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "It can reasonably be inferred from the passage that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The passage implies that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Based on the passage, it can most reasonably be inferred that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly suggests that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which choice can most reasonably be inferred from the passage? the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "It can reasonably be inferred from the passage that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The passage implies that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  },
  {
    "question_text": "Based on the passage, it can most reasonably be inferred that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 10
  },
  {
    "question_text": "The passage most strongly suggests that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 11
  },
  {
    "question_text": "Which choice can most reasonably be inferred from the passage? the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 12
  },
  {
    "question_text": "It can reasonably be inferred from the passage that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 13
  },
  {
    "question_text": "The passage implies that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 14
  },
  {
    "question_text": "Based on the passage, it can most reasonably be inferred that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly suggests that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which choice can most reasonably be inferred from the passage? the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "It can reasonably be inferred from the passage that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The passage implies that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Based on the passage, it can most reasonably be inferred that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly suggests that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which choice can most reasonably be inferred from the passage? the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "It can reasonably be inferred from the passage that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The passage implies that the authors treat their conclusion as provisional.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  }
];
const INF_PREDICTION_SPECS = [
  {
    "question_text": "Based on the passage, which outcome is most likely if the pattern continues? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly suggests that future research will the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which prediction is most supported by the passage? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "If the trend described continues, which result is most likely? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "Based on the evidence, researchers would most likely predict that the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Based on the passage, which outcome is most likely if the pattern continues? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly suggests that future research will the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which prediction is most supported by the passage? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "If the trend described continues, which result is most likely? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "Based on the evidence, researchers would most likely predict that the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  },
  {
    "question_text": "Based on the passage, which outcome is most likely if the pattern continues? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 10
  },
  {
    "question_text": "The passage most strongly suggests that future research will the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 11
  },
  {
    "question_text": "Which prediction is most supported by the passage? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 12
  },
  {
    "question_text": "If the trend described continues, which result is most likely? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 13
  },
  {
    "question_text": "Based on the evidence, researchers would most likely predict that the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 14
  },
  {
    "question_text": "Based on the passage, which outcome is most likely if the pattern continues? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly suggests that future research will the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which prediction is most supported by the passage? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "If the trend described continues, which result is most likely? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "Based on the evidence, researchers would most likely predict that the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Based on the passage, which outcome is most likely if the pattern continues? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly suggests that future research will the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which prediction is most supported by the passage? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "If the trend described continues, which result is most likely? the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "Based on the evidence, researchers would most likely predict that the team will pursue replication.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  }
];
const INF_IMPLICATION_SPECS = [
  {
    "question_text": "Which choice most logically completes the implication of the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly implies that stakeholders should policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which implication is best supported by the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "Based on the passage, which consequence most logically follows? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The author's argument implies that policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Which choice most logically completes the implication of the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly implies that stakeholders should policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which implication is best supported by the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "Based on the passage, which consequence most logically follows? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The author's argument implies that policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  },
  {
    "question_text": "Which choice most logically completes the implication of the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 10
  },
  {
    "question_text": "The passage most strongly implies that stakeholders should policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 11
  },
  {
    "question_text": "Which implication is best supported by the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 12
  },
  {
    "question_text": "Based on the passage, which consequence most logically follows? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 13
  },
  {
    "question_text": "The author's argument implies that policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 14
  },
  {
    "question_text": "Which choice most logically completes the implication of the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 0
  },
  {
    "question_text": "The passage most strongly implies that stakeholders should policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 1
  },
  {
    "question_text": "Which implication is best supported by the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 2
  },
  {
    "question_text": "Based on the passage, which consequence most logically follows? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 3
  },
  {
    "question_text": "The author's argument implies that policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 4
  },
  {
    "question_text": "Which choice most logically completes the implication of the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 5
  },
  {
    "question_text": "The passage most strongly implies that stakeholders should policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 6
  },
  {
    "question_text": "Which implication is best supported by the passage? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "researchers will continue testing the claim under varied conditions",
      "no further study is necessary because the case is closed",
      "policy must change overnight regardless of context",
      "the phenomenon will vanish without any intervention"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 7
  },
  {
    "question_text": "Based on the passage, which consequence most logically follows? policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "decision makers should weigh limitations alongside promising signals",
      "stakeholders should ignore nuance and act on slogans alone",
      "evidence can be dismissed whenever inconvenient",
      "only absolute certainty justifies any action"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 8
  },
  {
    "question_text": "The author's argument implies that policy should reflect acknowledged limits.",
    "correctId": "A",
    "texts": [
      "further evidence is needed before drawing universal conclusions",
      "all debate on the topic has been permanently settled",
      "the findings apply identically in every context without exception",
      "the authors reject empirical inquiry altogether"
    ],
    "expls": [
      "Bounded inference supported by the passage's cautious framing.",
      "Overly broad: passage does not claim final settlement.",
      "No-evidence synthesis: passage emphasizes contextual limits.",
      "Contradicts the passage's empirical approach."
    ],
    "passageIdx": 9
  }
];
const TRA_SPECS = [
  {
    "correctText": "Nevertheless,",
    "correctId": "A",
    "passageIdx": 0
  },
  {
    "correctText": "However,",
    "correctId": "B",
    "passageIdx": 1
  },
  {
    "correctText": "Consequently,",
    "correctId": "C",
    "passageIdx": 2
  },
  {
    "correctText": "Moreover,",
    "correctId": "D",
    "passageIdx": 3
  },
  {
    "correctText": "For example,",
    "correctId": "A",
    "passageIdx": 4
  },
  {
    "correctText": "Qualifying the sweeping claim made in the prior sentence,",
    "correctId": "B",
    "passageIdx": 5
  },
  {
    "correctText": "Complicating the binary the author has established,",
    "correctId": "C",
    "passageIdx": 6
  },
  {
    "correctText": "Drawing the logical consequence from the evidence just presented,",
    "correctId": "D",
    "passageIdx": 7
  },
  {
    "correctText": "Extending the author's line of reasoning further,",
    "correctId": "A",
    "passageIdx": 8
  },
  {
    "correctText": "Illustrating the abstract claim with a concrete case,",
    "correctId": "B",
    "passageIdx": 9
  },
  {
    "correctText": "Nevertheless,",
    "correctId": "C",
    "passageIdx": 10
  },
  {
    "correctText": "However,",
    "correctId": "D",
    "passageIdx": 11
  },
  {
    "correctText": "Consequently,",
    "correctId": "A",
    "passageIdx": 12
  },
  {
    "correctText": "Moreover,",
    "correctId": "B",
    "passageIdx": 13
  },
  {
    "correctText": "For example,",
    "correctId": "C",
    "passageIdx": 14
  },
  {
    "correctText": "Qualifying the sweeping claim made in the prior sentence,",
    "correctId": "D",
    "passageIdx": 0
  },
  {
    "correctText": "Complicating the binary the author has established,",
    "correctId": "A",
    "passageIdx": 1
  },
  {
    "correctText": "Drawing the logical consequence from the evidence just presented,",
    "correctId": "B",
    "passageIdx": 2
  },
  {
    "correctText": "Extending the author's line of reasoning further,",
    "correctId": "C",
    "passageIdx": 3
  },
  {
    "correctText": "Illustrating the abstract claim with a concrete case,",
    "correctId": "D",
    "passageIdx": 4
  },
  {
    "correctText": "Nevertheless,",
    "correctId": "A",
    "passageIdx": 5
  },
  {
    "correctText": "However,",
    "correctId": "B",
    "passageIdx": 6
  },
  {
    "correctText": "Consequently,",
    "correctId": "C",
    "passageIdx": 7
  },
  {
    "correctText": "Moreover,",
    "correctId": "D",
    "passageIdx": 8
  },
  {
    "correctText": "For example,",
    "correctId": "A",
    "passageIdx": 9
  }
];
const BOU_SPECS = [
  {
    "passage": "In the dim corridor of the abandoned conservatory, Elise paused before a portrait whose varnish had cracked into networks resembling river deltas, as though time itself had mapped tributaries across the sitter's face. She had returned to the estate not for inheritance but for a letter tucked inside the frame, a document that might revise every family story she had rehearsed since childhood. Her cousin Martin insisted the portrait was merely sentimental clutter, yet the ledger she discovered listed payments to a portraitist who, according to municipal archives, had died three years before the canvas was dated. ______ the discrepancy did not prove fraud, but it qualified every oral tradition the family recited at holiday gatherings. Elise copied the ledger entries by hand, knowing that archives prefer ink to memory, and mailed duplicates to a historian who specialized in contested provenance. When Martin accused her of vandalizing heirlooms, she replied that",
    "correctId": "A",
    "texts": [
      ", and",
      ",",
      "",
      " and,"
    ],
    "expls": [
      "Comma plus coordinating conjunction joins two independent clauses.",
      "Comma alone creates a comma splice.",
      "No punctuation produces a run-on.",
      "Misplaced conjunction is ungrammatical."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:In the dim corridor of the abandoned conservatory, Elise pau…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, and) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone creates a comma splice.",
        "C": "No punctuation produces a run-on.",
        "D": "Misplaced conjunction is ungrammatical."
      }
    }
  },
  {
    "passage": "The novelist's notebook, recovered from a flooded basement, contained drafts that contradicted the polished memoir she published decades later, suggesting that public narrative and private doubt had coexisted throughout her career. In one fragment she described her protagonist's \"magnanimous surrender\" not as moral triumph but as exhaustion disguised as grace, a reading her editors repeatedly rejected as too equivocal for a bestseller list. Scholars who study revision patterns argue that such contradictions reveal how authors compromise artistic integrity when market pressures demand unambiguous heroes. ______ the notebook's water damage arrested legibility on several pages, yet ultraviolet imaging recovered sentences where she questioned whether forgiveness requires forgetting or merely performing forgetfulness on cue. Reading these lines, one biographer concluded that the memoir's serene tone was itself a literary device rather than a transparent confession. Future exhibitions may display notebook and memoir side by side so audiences can see how a single life",
    "correctId": "A",
    "texts": [
      ";",
      ",",
      ":",
      " and"
    ],
    "expls": [
      "Semicolon links two related independent clauses.",
      "Comma alone is a splice here.",
      "Colon requires explanatory structure.",
      "Missing semicolon before 'and' is wrong pattern."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:The novelist's notebook, recovered from a flooded basement, …}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (;) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone is a splice here.",
        "C": "Colon requires explanatory structure.",
        "D": "Missing semicolon before 'and' is wrong pattern."
      }
    }
  },
  {
    "passage": "When the translation panel convened, members disagreed about whether the poet's central metaphor should remain opaque or yield to explanatory footnotes that might arrest the reader's interpretive wandering. The senior translator argued that every ambiguous line qualified the poem's emotional register, preventing sentiment from hardening into slogan. Her colleague countered that modern readers expect clarity and that withholding glosses compromises accessibility in classroom settings where the poem circulates most widely. ______ both positions assumed that translation is negotiation rather than transcription, a view the chair endorsed before assigning parallel drafts. The published edition therefore presents the disputed stanza in the main text while reproducing alternate renderings in an appendix, inviting readers to compare how small lexical shifts alter tone. Critics praised the edition for treating uncertainty as feature rather than defect, though some reviewers still demanded a single authoritative line.",
    "correctId": "A",
    "texts": [
      "—",
      ",",
      "(",
      ":"
    ],
    "expls": [
      "Em dash sets off the nonessential aside.",
      "Comma pairing would need a closing comma.",
      "Parenthesis must close properly.",
      "Colon misidentifies the aside function."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:When the translation panel convened, members disagreed about…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (—) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma pairing would need a closing comma.",
        "C": "Parenthesis must close properly.",
        "D": "Colon misidentifies the aside function."
      }
    }
  },
  {
    "passage": "The memoir opens with a scene in which the narrator watches her grandmother sort letters beside a stove whose heat could compromise fragile envelopes, each message folded with a precision that implied ritual rather than mere storage. She learns that the grandmother once refused to qualify a accusation against a neighbor despite community pressure, choosing silence that neighbors interpreted as magnanimous restraint rather than cowardice. ______ years later, archival research would reveal that the neighbor's arrest record had been expunged, complicating any simple moral ledger the family maintained. The narrator's prose mimics that ambiguity: sentences begin with concrete detail, then pivot through subordinate clauses that withhold judgment until the final line qualifies what seemed established three paragraphs earlier. Readers who prefer linear redemption arcs may find the structure frustrating, yet the form enacts the ethical uncertainty the narrator claims to inherit.",
    "correctId": "A",
    "texts": [
      ":",
      ";",
      ",",
      "—"
    ],
    "expls": [
      "Colon introduces the list after a complete clause.",
      "Semicolon needs a second independent clause.",
      "Comma is too weak to introduce the list.",
      "Dash could work but list pattern fits colon."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:The memoir opens with a scene in which the narrator watches …}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (:) satisfies the conventions."
      },
      "distractors": {
        "B": "Semicolon needs a second independent clause.",
        "C": "Comma is too weak to introduce the list.",
        "D": "Dash could work but list pattern fits colon."
      }
    }
  },
  {
    "passage": "During the residency, the playwright revised a scene in which two siblings debate whether to sell a piano that had survived three migrations, its cracked soundboard a metaphor she initially treated as too on-the-nose for serious drama. Workshop participants argued the object grounded abstract grief in tactile memory, while others insisted the symbolism arrested narrative momentum by announcing its themes prematurely. ______ the playwright compromised by embedding the piano within a conversation about insurance appraisals, letting economic vocabulary carry emotional weight indirectly. In performance, audiences often cite that scene as the play's emotional center, suggesting that subtlety and explicitness can coexist when structure distributes attention across competing registers. The final script retains marginal notes documenting each rejected version, a record of craft decisions that future directors may consult when interpreting silence onstage.",
    "correctId": "A",
    "texts": [
      ", which",
      " which",
      ", that",
      "; which"
    ],
    "expls": [
      "Comma plus 'which' begins a nonrestrictive clause.",
      "Missing comma before 'which' is nonstandard.",
      "'That' would make it restrictive incorrectly.",
      "Semicolon cannot introduce 'which' here."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:During the residency, the playwright revised a scene in whic…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, which) satisfies the conventions."
      },
      "distractors": {
        "B": "Missing comma before 'which' is nonstandard.",
        "C": "'That' would make it restrictive incorrectly.",
        "D": "Semicolon cannot introduce 'which' here."
      }
    }
  },
  {
    "passage": "Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. ______ when reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.",
    "correctId": "A",
    "texts": [
      ", and",
      ",",
      "",
      " and,"
    ],
    "expls": [
      "Comma plus coordinating conjunction joins two independent clauses.",
      "Comma alone creates a comma splice.",
      "No punctuation produces a run-on.",
      "Misplaced conjunction is ungrammatical."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Neuroscientists studying synaptic plasticity in adult songbi…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, and) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone creates a comma splice.",
        "C": "No punctuation produces a run-on.",
        "D": "Misplaced conjunction is ungrammatical."
      }
    }
  },
  {
    "passage": "Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction that would qualify earlier extinction timelines linked to abrupt cooling. ______ the lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.",
    "correctId": "A",
    "texts": [
      ";",
      ",",
      ":",
      " and"
    ],
    "expls": [
      "Semicolon links two related independent clauses.",
      "Comma alone is a splice here.",
      "Colon requires explanatory structure.",
      "Missing semicolon before 'and' is wrong pattern."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Paleoclimatologists analyzing ice cores from the Antarctic p…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (;) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone is a splice here.",
        "C": "Colon requires explanatory structure.",
        "D": "Missing semicolon before 'and' is wrong pattern."
      }
    }
  },
  {
    "passage": "Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. ______ remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "—",
      ",",
      "(",
      ":"
    ],
    "expls": [
      "Em dash sets off the nonessential aside.",
      "Comma pairing would need a closing comma.",
      "Parenthesis must close properly.",
      "Colon misidentifies the aside function."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Ecologists monitoring mangrove restoration sites observed th…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (—) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma pairing would need a closing comma.",
        "C": "Parenthesis must close properly.",
        "D": "Colon misidentifies the aside function."
      }
    }
  },
  {
    "passage": "Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three independent spectrometers and published raw traces alongside processed summaries. ______ popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.",
    "correctId": "A",
    "texts": [
      ":",
      ";",
      ",",
      "—"
    ],
    "expls": [
      "Colon introduces the list after a complete clause.",
      "Semicolon needs a second independent clause.",
      "Comma is too weak to introduce the list.",
      "Dash could work but list pattern fits colon."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Physicists probing quasicrystal growth under electromagnetic…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (:) satisfies the conventions."
      },
      "distractors": {
        "B": "Semicolon needs a second independent clause.",
        "C": "Comma is too weak to introduce the list.",
        "D": "Dash could work but list pattern fits colon."
      }
    }
  },
  {
    "passage": "Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. ______ secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      ", which",
      " which",
      ", that",
      "; which"
    ],
    "expls": [
      "Comma plus 'which' begins a nonrestrictive clause.",
      "Missing comma before 'which' is nonstandard.",
      "'That' would make it restrictive incorrectly.",
      "Semicolon cannot introduce 'which' here."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Medical researchers trialing a sleep-intervention protocol d…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, which) satisfies the conventions."
      },
      "distractors": {
        "B": "Missing comma before 'which' is nonstandard.",
        "C": "'That' would make it restrictive incorrectly.",
        "D": "Semicolon cannot introduce 'which' here."
      }
    }
  },
  {
    "passage": "Historians revisiting treaty negotiations of 1919 argue that delegates' public rhetoric about self-determination often failed to qualify how colonial boundaries would remain intact, creating a gap between proclaimed principles and enforceable commitments. Archival cables show some diplomats privately described their own speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders. Economic historians add that reparations clauses compromised recovery in ways negotiators acknowledged only in marginal annotations, not in plenary transcripts students now memorize. ______ contemporary commentators who treat the conference as singular failure overlook regional agreements that succeeded on narrower terms, a nuance classroom narratives sometimes sacrifice for moral clarity. The synthesis emerging in recent monographs portrays delegates as constrained actors juggling coalition politics, public opinion, and incomplete information rather than architects of inevitable catastrophe. Further digitization of personal letters may shift emphasis again without resolving every counterfactual debate historians enjoy.",
    "correctId": "A",
    "texts": [
      ", and",
      ",",
      "",
      " and,"
    ],
    "expls": [
      "Comma plus coordinating conjunction joins two independent clauses.",
      "Comma alone creates a comma splice.",
      "No punctuation produces a run-on.",
      "Misplaced conjunction is ungrammatical."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Historians revisiting treaty negotiations of 1919 argue that…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, and) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone creates a comma splice.",
        "C": "No punctuation produces a run-on.",
        "D": "Misplaced conjunction is ungrammatical."
      }
    }
  },
  {
    "passage": "Urban sociologists studying mixed-income housing projects found that shared amenities increased cross-class interaction initially, yet proprietary attitudes toward security systems often arrested integration within two years of occupancy. Interviewees described polite coexistence that rarely qualified as friendship, complicating metrics that equate proximity with social cohesion. Developers sometimes compromise design goals by reallocating communal square footage to private units when market forecasts shift, a decision documented in planning filings but absent from promotional brochures. ______ policy analysts recommend longitudinal ethnography rather than one-time satisfaction surveys, noting that residents' impressions evolve as maintenance disputes accumulate. Critics from market-oriented think tanks argue the data prove government intervention distorts housing preferences, while advocates counter that without subsidies the projects would never have been built. Both camps selectively emphasize findings that align with prior commitments, illustrating how evidence travels through ideological filters.",
    "correctId": "A",
    "texts": [
      ";",
      ",",
      ":",
      " and"
    ],
    "expls": [
      "Semicolon links two related independent clauses.",
      "Comma alone is a splice here.",
      "Colon requires explanatory structure.",
      "Missing semicolon before 'and' is wrong pattern."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Urban sociologists studying mixed-income housing projects fo…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (;) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone is a splice here.",
        "C": "Colon requires explanatory structure.",
        "D": "Missing semicolon before 'and' is wrong pattern."
      }
    }
  },
  {
    "passage": "Anthropologists documenting oral histories in a post-industrial town recorded how former factory workers used the word \"loyalty\" in ways that could mean either steadfast craftsmanship or refusal to qualify management decisions that compromised safety. Younger residents, lacking direct experience on the line, sometimes interpreted the same stories as cautionary tales about uncritical obedience, revealing generational plasticity in moral vocabulary. The research team avoided arresting narrative flow with rigid coding schemes, allowing thematic categories to emerge after repeated listening sessions. ______ one worker's account of a strike described union leadership as magnanimous for accepting partial gains, whereas another labeled the same outcome a compromise that sacrificed newcomers' pensions. Rather than adjudicate, the ethnographers present juxtaposed transcripts so readers confront interpretive multiplicity directly. Funding agencies asked whether such ambiguity yields actionable policy; the authors reply that misunderstanding community memory produces worse outcomes than delayed consensus.",
    "correctId": "A",
    "texts": [
      "—",
      ",",
      "(",
      ":"
    ],
    "expls": [
      "Em dash sets off the nonessential aside.",
      "Comma pairing would need a closing comma.",
      "Parenthesis must close properly.",
      "Colon misidentifies the aside function."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Anthropologists documenting oral histories in a post-industr…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (—) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma pairing would need a closing comma.",
        "C": "Parenthesis must close properly.",
        "D": "Colon misidentifies the aside function."
      }
    }
  },
  {
    "passage": "Political scientists analyzing referendum campaigns observed that ads emphasizing fiscal responsibility rarely cited data that might qualify sweeping promises, while opposition spots sometimes seized on minor accounting discrepancies to suggest systemic fraud without equivalent evidence. Focus groups revealed voters treated emotional tone as proxy for credibility, a heuristic that can arrest deliberation when candidates perform sincerity convincingly. The study does not claim voters are irrational; instead, it documents how time-pressed citizens compromise depth for speed when ballots approach. ______ media literacy interventions tested in parallel cohorts showed modest gains in identifying unsupported synthesis, though effects faded unless reinforced during subsequent election cycles. Legislators citing the research disagree about remedies: some propose stricter disclosure rules, others argue transparency alone cannot fix structural incentives for equivocal messaging. The authors emphasize that institutional redesign and civic education must proceed together if public discourse is to shift measurably.",
    "correctId": "A",
    "texts": [
      ":",
      ";",
      ",",
      "—"
    ],
    "expls": [
      "Colon introduces the list after a complete clause.",
      "Semicolon needs a second independent clause.",
      "Comma is too weak to introduce the list.",
      "Dash could work but list pattern fits colon."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Political scientists analyzing referendum campaigns observed…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (:) satisfies the conventions."
      },
      "distractors": {
        "B": "Semicolon needs a second independent clause.",
        "C": "Comma is too weak to introduce the list.",
        "D": "Dash could work but list pattern fits colon."
      }
    }
  },
  {
    "passage": "Economists examining microfinance programs in rural provinces found that initial repayment rates magnanimous lenders celebrated masked heterogeneous outcomes, with women-led enterprises benefiting while seasonal farmers faced cycles that compromise short-term cash flows. Randomized trials later qualified early optimism by showing default spikes correlated with harvest timing rather than borrower character, undermining narratives that moralized creditworthiness. ______ program officers who arrested disbursements after first delinquencies inadvertently reduced long-term uptake, suggesting punitive responses can destroy social collateral built through years of community meetings. The team's policy brief recommends grace periods aligned with agricultural calendars and transparent interest formulas, changes some NGOs adopted while others feared donors would view flexibility as lax oversight. Development textbooks often simplify the story into success or failure binaries; this study argues for portfolios of small experiments whose combined evidence resists single-label verdicts.",
    "correctId": "A",
    "texts": [
      ", which",
      " which",
      ", that",
      "; which"
    ],
    "expls": [
      "Comma plus 'which' begins a nonrestrictive clause.",
      "Missing comma before 'which' is nonstandard.",
      "'That' would make it restrictive incorrectly.",
      "Semicolon cannot introduce 'which' here."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Economists examining microfinance programs in rural province…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, which) satisfies the conventions."
      },
      "distractors": {
        "B": "Missing comma before 'which' is nonstandard.",
        "C": "'That' would make it restrictive incorrectly.",
        "D": "Semicolon cannot introduce 'which' here."
      }
    }
  },
  {
    "passage": "In the dim corridor of the abandoned conservatory, Elise paused before a portrait whose varnish had cracked into networks resembling river deltas, as though time itself had mapped tributaries across the sitter's face. She had returned to the estate not for inheritance but for a letter tucked inside the frame, a document that might revise every family story she had rehearsed since childhood. Her cousin Martin insisted the portrait was merely sentimental clutter, yet the ledger she discovered listed payments to a portraitist who, according to municipal archives, had died three years before the canvas was dated. ______ the discrepancy did not prove fraud, but it qualified every oral tradition the family recited at holiday gatherings. Elise copied the ledger entries by hand, knowing that archives prefer ink to memory, and mailed duplicates to a historian who specialized in contested provenance. When Martin accused her of vandalizing heirlooms, she replied that",
    "correctId": "A",
    "texts": [
      ", and",
      ",",
      "",
      " and,"
    ],
    "expls": [
      "Comma plus coordinating conjunction joins two independent clauses.",
      "Comma alone creates a comma splice.",
      "No punctuation produces a run-on.",
      "Misplaced conjunction is ungrammatical."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:In the dim corridor of the abandoned conservatory, Elise pau…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, and) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone creates a comma splice.",
        "C": "No punctuation produces a run-on.",
        "D": "Misplaced conjunction is ungrammatical."
      }
    }
  },
  {
    "passage": "The novelist's notebook, recovered from a flooded basement, contained drafts that contradicted the polished memoir she published decades later, suggesting that public narrative and private doubt had coexisted throughout her career. In one fragment she described her protagonist's \"magnanimous surrender\" not as moral triumph but as exhaustion disguised as grace, a reading her editors repeatedly rejected as too equivocal for a bestseller list. Scholars who study revision patterns argue that such contradictions reveal how authors compromise artistic integrity when market pressures demand unambiguous heroes. ______ the notebook's water damage arrested legibility on several pages, yet ultraviolet imaging recovered sentences where she questioned whether forgiveness requires forgetting or merely performing forgetfulness on cue. Reading these lines, one biographer concluded that the memoir's serene tone was itself a literary device rather than a transparent confession. Future exhibitions may display notebook and memoir side by side so audiences can see how a single life",
    "correctId": "A",
    "texts": [
      ";",
      ",",
      ":",
      " and"
    ],
    "expls": [
      "Semicolon links two related independent clauses.",
      "Comma alone is a splice here.",
      "Colon requires explanatory structure.",
      "Missing semicolon before 'and' is wrong pattern."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:The novelist's notebook, recovered from a flooded basement, …}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (;) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone is a splice here.",
        "C": "Colon requires explanatory structure.",
        "D": "Missing semicolon before 'and' is wrong pattern."
      }
    }
  },
  {
    "passage": "When the translation panel convened, members disagreed about whether the poet's central metaphor should remain opaque or yield to explanatory footnotes that might arrest the reader's interpretive wandering. The senior translator argued that every ambiguous line qualified the poem's emotional register, preventing sentiment from hardening into slogan. Her colleague countered that modern readers expect clarity and that withholding glosses compromises accessibility in classroom settings where the poem circulates most widely. ______ both positions assumed that translation is negotiation rather than transcription, a view the chair endorsed before assigning parallel drafts. The published edition therefore presents the disputed stanza in the main text while reproducing alternate renderings in an appendix, inviting readers to compare how small lexical shifts alter tone. Critics praised the edition for treating uncertainty as feature rather than defect, though some reviewers still demanded a single authoritative line.",
    "correctId": "A",
    "texts": [
      "—",
      ",",
      "(",
      ":"
    ],
    "expls": [
      "Em dash sets off the nonessential aside.",
      "Comma pairing would need a closing comma.",
      "Parenthesis must close properly.",
      "Colon misidentifies the aside function."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:When the translation panel convened, members disagreed about…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (—) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma pairing would need a closing comma.",
        "C": "Parenthesis must close properly.",
        "D": "Colon misidentifies the aside function."
      }
    }
  },
  {
    "passage": "The memoir opens with a scene in which the narrator watches her grandmother sort letters beside a stove whose heat could compromise fragile envelopes, each message folded with a precision that implied ritual rather than mere storage. She learns that the grandmother once refused to qualify a accusation against a neighbor despite community pressure, choosing silence that neighbors interpreted as magnanimous restraint rather than cowardice. ______ years later, archival research would reveal that the neighbor's arrest record had been expunged, complicating any simple moral ledger the family maintained. The narrator's prose mimics that ambiguity: sentences begin with concrete detail, then pivot through subordinate clauses that withhold judgment until the final line qualifies what seemed established three paragraphs earlier. Readers who prefer linear redemption arcs may find the structure frustrating, yet the form enacts the ethical uncertainty the narrator claims to inherit.",
    "correctId": "A",
    "texts": [
      ":",
      ";",
      ",",
      "—"
    ],
    "expls": [
      "Colon introduces the list after a complete clause.",
      "Semicolon needs a second independent clause.",
      "Comma is too weak to introduce the list.",
      "Dash could work but list pattern fits colon."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:The memoir opens with a scene in which the narrator watches …}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (:) satisfies the conventions."
      },
      "distractors": {
        "B": "Semicolon needs a second independent clause.",
        "C": "Comma is too weak to introduce the list.",
        "D": "Dash could work but list pattern fits colon."
      }
    }
  },
  {
    "passage": "During the residency, the playwright revised a scene in which two siblings debate whether to sell a piano that had survived three migrations, its cracked soundboard a metaphor she initially treated as too on-the-nose for serious drama. Workshop participants argued the object grounded abstract grief in tactile memory, while others insisted the symbolism arrested narrative momentum by announcing its themes prematurely. ______ the playwright compromised by embedding the piano within a conversation about insurance appraisals, letting economic vocabulary carry emotional weight indirectly. In performance, audiences often cite that scene as the play's emotional center, suggesting that subtlety and explicitness can coexist when structure distributes attention across competing registers. The final script retains marginal notes documenting each rejected version, a record of craft decisions that future directors may consult when interpreting silence onstage.",
    "correctId": "A",
    "texts": [
      ", which",
      " which",
      ", that",
      "; which"
    ],
    "expls": [
      "Comma plus 'which' begins a nonrestrictive clause.",
      "Missing comma before 'which' is nonstandard.",
      "'That' would make it restrictive incorrectly.",
      "Semicolon cannot introduce 'which' here."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:During the residency, the playwright revised a scene in whic…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, which) satisfies the conventions."
      },
      "distractors": {
        "B": "Missing comma before 'which' is nonstandard.",
        "C": "'That' would make it restrictive incorrectly.",
        "D": "Semicolon cannot introduce 'which' here."
      }
    }
  },
  {
    "passage": "Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. ______ when reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.",
    "correctId": "A",
    "texts": [
      ", and",
      ",",
      "",
      " and,"
    ],
    "expls": [
      "Comma plus coordinating conjunction joins two independent clauses.",
      "Comma alone creates a comma splice.",
      "No punctuation produces a run-on.",
      "Misplaced conjunction is ungrammatical."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Neuroscientists studying synaptic plasticity in adult songbi…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, and) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone creates a comma splice.",
        "C": "No punctuation produces a run-on.",
        "D": "Misplaced conjunction is ungrammatical."
      }
    }
  },
  {
    "passage": "Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction that would qualify earlier extinction timelines linked to abrupt cooling. ______ the lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.",
    "correctId": "A",
    "texts": [
      ";",
      ",",
      ":",
      " and"
    ],
    "expls": [
      "Semicolon links two related independent clauses.",
      "Comma alone is a splice here.",
      "Colon requires explanatory structure.",
      "Missing semicolon before 'and' is wrong pattern."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Paleoclimatologists analyzing ice cores from the Antarctic p…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (;) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma alone is a splice here.",
        "C": "Colon requires explanatory structure.",
        "D": "Missing semicolon before 'and' is wrong pattern."
      }
    }
  },
  {
    "passage": "Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. ______ remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "—",
      ",",
      "(",
      ":"
    ],
    "expls": [
      "Em dash sets off the nonessential aside.",
      "Comma pairing would need a closing comma.",
      "Parenthesis must close properly.",
      "Colon misidentifies the aside function."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Ecologists monitoring mangrove restoration sites observed th…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (—) satisfies the conventions."
      },
      "distractors": {
        "B": "Comma pairing would need a closing comma.",
        "C": "Parenthesis must close properly.",
        "D": "Colon misidentifies the aside function."
      }
    }
  },
  {
    "passage": "Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three independent spectrometers and published raw traces alongside processed summaries. ______ popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.",
    "correctId": "A",
    "texts": [
      ":",
      ";",
      ",",
      "—"
    ],
    "expls": [
      "Colon introduces the list after a complete clause.",
      "Semicolon needs a second independent clause.",
      "Comma is too weak to introduce the list.",
      "Dash could work but list pattern fits colon."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Physicists probing quasicrystal growth under electromagnetic…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (:) satisfies the conventions."
      },
      "distractors": {
        "B": "Semicolon needs a second independent clause.",
        "C": "Comma is too weak to introduce the list.",
        "D": "Dash could work but list pattern fits colon."
      }
    }
  },
  {
    "passage": "Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. ______ secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      ", which",
      " which",
      ", that",
      "; which"
    ],
    "expls": [
      "Comma plus 'which' begins a nonrestrictive clause.",
      "Missing comma before 'which' is nonstandard.",
      "'That' would make it restrictive incorrectly.",
      "Semicolon cannot introduce 'which' here."
    ],
    "steps": {
      "step1": {
        "title": "Identify clause boundaries",
        "body": "Both sides of the blank are independent or complete units in: {{yellow:Medical researchers trialing a sleep-intervention protocol d…}}"
      },
      "step2": {
        "title": "Apply punctuation rules",
        "body": "Standard English conventions require the boundary mark that matches the clause relationship."
      },
      "step3": {
        "title": "Select the correct boundary",
        "body": "Choice A (, which) satisfies the conventions."
      },
      "distractors": {
        "B": "Missing comma before 'which' is nonstandard.",
        "C": "'That' would make it restrictive incorrectly.",
        "D": "Semicolon cannot introduce 'which' here."
      }
    }
  }
];
const FSS_SPECS = [
  {
    "passage": "Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional ______ improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. When reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.",
    "correctId": "A",
    "texts": [
      "have been",
      "has been",
      "was being",
      "are"
    ],
    "expls": [
      "Plural subject requires 'have been'.",
      "Singular verb disagrees with plural subject.",
      "Wrong tense/aspect for context.",
      "Present tense mismatches past context."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (have been) is grammatically correct."
      },
      "distractors": {
        "B": "Singular verb disagrees with plural subject.",
        "C": "Wrong tense/aspect for context.",
        "D": "Present tense mismatches past context."
      }
    }
  },
  {
    "passage": "Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent ______ layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction that would qualify earlier extinction timelines linked to abrupt cooling. The lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.",
    "correctId": "A",
    "texts": [
      "who",
      "whom",
      "which",
      "they"
    ],
    "expls": [
      "'Who' is subject of the relative clause.",
      "'Whom' would be object form incorrectly.",
      "'Which' is for things not people.",
      "Pronoun creates fragment."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (who) is grammatically correct."
      },
      "distractors": {
        "B": "'Whom' would be object form incorrectly.",
        "C": "'Which' is for things not people.",
        "D": "Pronoun creates fragment."
      }
    }
  },
  {
    "passage": "Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, ______ it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. Remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "its",
      "it's",
      "their",
      "there"
    ],
    "expls": [
      "Possessive 'its' has no apostrophe.",
      "It's means 'it is'.",
      "Their is plural possessive.",
      "There indicates place."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (its) is grammatically correct."
      },
      "distractors": {
        "B": "It's means 'it is'.",
        "C": "Their is plural possessive.",
        "D": "There indicates place."
      }
    }
  },
  {
    "passage": "Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked ______ whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three independent spectrometers and published raw traces alongside processed summaries. Popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.",
    "correctId": "A",
    "texts": [
      "were",
      "was",
      "is",
      "has been"
    ],
    "expls": [
      "Subjunctive/plural 'were' matches subject.",
      "'Was' disagrees with plural subject.",
      "Present tense wrong.",
      "Perfect aspect wrong here."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (were) is grammatically correct."
      },
      "distractors": {
        "B": "'Was' disagrees with plural subject.",
        "C": "Present tense wrong.",
        "D": "Perfect aspect wrong here."
      }
    }
  },
  {
    "passage": "Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, ______ yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. Secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "better than",
      "better then",
      "more better than",
      "best than"
    ],
    "expls": [
      "Comparative takes 'than'.",
      "'Then' is temporal adverb.",
      "Double comparative is ungrammatical.",
      "Superlative wrong degree."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (better than) is grammatically correct."
      },
      "distractors": {
        "B": "'Then' is temporal adverb.",
        "C": "Double comparative is ungrammatical.",
        "D": "Superlative wrong degree."
      }
    }
  },
  {
    "passage": "Historians revisiting treaty negotiations of 1919 argue that delegates' public rhetoric about self-determination often failed to qualify how colonial boundaries would remain intact, creating a gap between proclaimed principles and enforceable commitments. Archival cables show some diplomats privately described their own speeches as magnanimous gestures ______ designed to arrest domestic unrest rather than blueprint future borders. Economic historians add that reparations clauses compromised recovery in ways negotiators acknowledged only in marginal annotations, not in plenary transcripts students now memorize. Contemporary commentators who treat the conference as singular failure overlook regional agreements that succeeded on narrower terms, a nuance classroom narratives sometimes sacrifice for moral clarity. The synthesis emerging in recent monographs portrays delegates as constrained actors juggling coalition politics, public opinion, and incomplete information rather than architects of inevitable catastrophe. Further digitization of personal letters may shift emphasis again without resolving every counterfactual debate historians enjoy.",
    "correctId": "A",
    "texts": [
      "have been",
      "has been",
      "was being",
      "are"
    ],
    "expls": [
      "Plural subject requires 'have been'.",
      "Singular verb disagrees with plural subject.",
      "Wrong tense/aspect for context.",
      "Present tense mismatches past context."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (have been) is grammatically correct."
      },
      "distractors": {
        "B": "Singular verb disagrees with plural subject.",
        "C": "Wrong tense/aspect for context.",
        "D": "Present tense mismatches past context."
      }
    }
  },
  {
    "passage": "Urban sociologists studying mixed-income housing projects found that shared amenities increased cross-class interaction initially, yet proprietary attitudes toward security systems often arrested integration within two years of occupancy. Interviewees described polite coexistence that rarely qualified as friendship, complicating metrics that equate proximity with social cohesion. Developers ______ sometimes compromise design goals by reallocating communal square footage to private units when market forecasts shift, a decision documented in planning filings but absent from promotional brochures. Policy analysts recommend longitudinal ethnography rather than one-time satisfaction surveys, noting that residents' impressions evolve as maintenance disputes accumulate. Critics from market-oriented think tanks argue the data prove government intervention distorts housing preferences, while advocates counter that without subsidies the projects would never have been built. Both camps selectively emphasize findings that align with prior commitments, illustrating how evidence travels through ideological filters.",
    "correctId": "A",
    "texts": [
      "who",
      "whom",
      "which",
      "they"
    ],
    "expls": [
      "'Who' is subject of the relative clause.",
      "'Whom' would be object form incorrectly.",
      "'Which' is for things not people.",
      "Pronoun creates fragment."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (who) is grammatically correct."
      },
      "distractors": {
        "B": "'Whom' would be object form incorrectly.",
        "C": "'Which' is for things not people.",
        "D": "Pronoun creates fragment."
      }
    }
  },
  {
    "passage": "Anthropologists documenting oral histories in a post-industrial town recorded how former factory workers used the word \"loyalty\" in ways that could mean either steadfast craftsmanship or refusal to qualify management decisions that compromised safety. Younger residents, lacking direct experience on the line, sometimes interpreted the same stories ______ as cautionary tales about uncritical obedience, revealing generational plasticity in moral vocabulary. The research team avoided arresting narrative flow with rigid coding schemes, allowing thematic categories to emerge after repeated listening sessions. One worker's account of a strike described union leadership as magnanimous for accepting partial gains, whereas another labeled the same outcome a compromise that sacrificed newcomers' pensions. Rather than adjudicate, the ethnographers present juxtaposed transcripts so readers confront interpretive multiplicity directly. Funding agencies asked whether such ambiguity yields actionable policy; the authors reply that misunderstanding community memory produces worse outcomes than delayed consensus.",
    "correctId": "A",
    "texts": [
      "its",
      "it's",
      "their",
      "there"
    ],
    "expls": [
      "Possessive 'its' has no apostrophe.",
      "It's means 'it is'.",
      "Their is plural possessive.",
      "There indicates place."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (its) is grammatically correct."
      },
      "distractors": {
        "B": "It's means 'it is'.",
        "C": "Their is plural possessive.",
        "D": "There indicates place."
      }
    }
  },
  {
    "passage": "Political scientists analyzing referendum campaigns observed that ads emphasizing fiscal responsibility rarely cited data that might qualify sweeping promises, while opposition spots sometimes seized on minor accounting discrepancies to suggest systemic fraud without equivalent evidence. Focus groups revealed voters treated emotional tone as proxy for credibility, a heuristic ______ that can arrest deliberation when candidates perform sincerity convincingly. The study does not claim voters are irrational; instead, it documents how time-pressed citizens compromise depth for speed when ballots approach. Media literacy interventions tested in parallel cohorts showed modest gains in identifying unsupported synthesis, though effects faded unless reinforced during subsequent election cycles. Legislators citing the research disagree about remedies: some propose stricter disclosure rules, others argue transparency alone cannot fix structural incentives for equivocal messaging. The authors emphasize that institutional redesign and civic education must proceed together if public discourse is to shift measurably.",
    "correctId": "A",
    "texts": [
      "were",
      "was",
      "is",
      "has been"
    ],
    "expls": [
      "Subjunctive/plural 'were' matches subject.",
      "'Was' disagrees with plural subject.",
      "Present tense wrong.",
      "Perfect aspect wrong here."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (were) is grammatically correct."
      },
      "distractors": {
        "B": "'Was' disagrees with plural subject.",
        "C": "Present tense wrong.",
        "D": "Perfect aspect wrong here."
      }
    }
  },
  {
    "passage": "Economists examining microfinance programs in rural provinces found that initial repayment rates magnanimous lenders celebrated masked heterogeneous outcomes, with women-led enterprises benefiting while seasonal farmers faced cycles that compromise short-term cash flows. Randomized trials later qualified early optimism by showing default spikes correlated with harvest timing rather than borrower ______ character, undermining narratives that moralized creditworthiness. Program officers who arrested disbursements after first delinquencies inadvertently reduced long-term uptake, suggesting punitive responses can destroy social collateral built through years of community meetings. The team's policy brief recommends grace periods aligned with agricultural calendars and transparent interest formulas, changes some NGOs adopted while others feared donors would view flexibility as lax oversight. Development textbooks often simplify the story into success or failure binaries; this study argues for portfolios of small experiments whose combined evidence resists single-label verdicts.",
    "correctId": "A",
    "texts": [
      "better than",
      "better then",
      "more better than",
      "best than"
    ],
    "expls": [
      "Comparative takes 'than'.",
      "'Then' is temporal adverb.",
      "Double comparative is ungrammatical.",
      "Superlative wrong degree."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (better than) is grammatically correct."
      },
      "distractors": {
        "B": "'Then' is temporal adverb.",
        "C": "Double comparative is ungrammatical.",
        "D": "Superlative wrong degree."
      }
    }
  },
  {
    "passage": "In the dim corridor of the abandoned conservatory, Elise paused before a portrait whose varnish had cracked into networks resembling river deltas, as though time itself had mapped tributaries across the sitter's face. She had returned to the estate not for inheritance but for a letter tucked inside the frame, ______ a document that might revise every family story she had rehearsed since childhood. Her cousin Martin insisted the portrait was merely sentimental clutter, yet the ledger she discovered listed payments to a portraitist who, according to municipal archives, had died three years before the canvas was dated. The discrepancy did not prove fraud, but it qualified every oral tradition the family recited at holiday gatherings. Elise copied the ledger entries by hand, knowing that archives prefer ink to memory, and mailed duplicates to a historian who specialized in contested provenance. When Martin accused her of vandalizing heirlooms, she replied that",
    "correctId": "A",
    "texts": [
      "have been",
      "has been",
      "was being",
      "are"
    ],
    "expls": [
      "Plural subject requires 'have been'.",
      "Singular verb disagrees with plural subject.",
      "Wrong tense/aspect for context.",
      "Present tense mismatches past context."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (have been) is grammatically correct."
      },
      "distractors": {
        "B": "Singular verb disagrees with plural subject.",
        "C": "Wrong tense/aspect for context.",
        "D": "Present tense mismatches past context."
      }
    }
  },
  {
    "passage": "The novelist's notebook, recovered from a flooded basement, contained drafts that contradicted the polished memoir she published decades later, suggesting that public narrative and private doubt had coexisted throughout her career. In one fragment she described her protagonist's \"magnanimous surrender\" not as moral triumph but as exhaustion disguised as grace, a ______ reading her editors repeatedly rejected as too equivocal for a bestseller list. Scholars who study revision patterns argue that such contradictions reveal how authors compromise artistic integrity when market pressures demand unambiguous heroes. The notebook's water damage arrested legibility on several pages, yet ultraviolet imaging recovered sentences where she questioned whether forgiveness requires forgetting or merely performing forgetfulness on cue. Reading these lines, one biographer concluded that the memoir's serene tone was itself a literary device rather than a transparent confession. Future exhibitions may display notebook and memoir side by side so audiences can see how a single life",
    "correctId": "A",
    "texts": [
      "who",
      "whom",
      "which",
      "they"
    ],
    "expls": [
      "'Who' is subject of the relative clause.",
      "'Whom' would be object form incorrectly.",
      "'Which' is for things not people.",
      "Pronoun creates fragment."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (who) is grammatically correct."
      },
      "distractors": {
        "B": "'Whom' would be object form incorrectly.",
        "C": "'Which' is for things not people.",
        "D": "Pronoun creates fragment."
      }
    }
  },
  {
    "passage": "When the translation panel convened, members disagreed about whether the poet's central metaphor should remain opaque or yield to explanatory footnotes that might arrest the reader's interpretive wandering. The senior translator argued that every ambiguous line qualified the poem's emotional register, preventing sentiment from hardening into slogan. Her colleague countered that modern ______ readers expect clarity and that withholding glosses compromises accessibility in classroom settings where the poem circulates most widely. Both positions assumed that translation is negotiation rather than transcription, a view the chair endorsed before assigning parallel drafts. The published edition therefore presents the disputed stanza in the main text while reproducing alternate renderings in an appendix, inviting readers to compare how small lexical shifts alter tone. Critics praised the edition for treating uncertainty as feature rather than defect, though some reviewers still demanded a single authoritative line.",
    "correctId": "A",
    "texts": [
      "its",
      "it's",
      "their",
      "there"
    ],
    "expls": [
      "Possessive 'its' has no apostrophe.",
      "It's means 'it is'.",
      "Their is plural possessive.",
      "There indicates place."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (its) is grammatically correct."
      },
      "distractors": {
        "B": "It's means 'it is'.",
        "C": "Their is plural possessive.",
        "D": "There indicates place."
      }
    }
  },
  {
    "passage": "The memoir opens with a scene in which the narrator watches her grandmother sort letters beside a stove whose heat could compromise fragile envelopes, each message folded with a precision that implied ritual rather than mere storage. She learns that the grandmother once refused to qualify a accusation against a neighbor despite community ______ pressure, choosing silence that neighbors interpreted as magnanimous restraint rather than cowardice. Years later, archival research would reveal that the neighbor's arrest record had been expunged, complicating any simple moral ledger the family maintained. The narrator's prose mimics that ambiguity: sentences begin with concrete detail, then pivot through subordinate clauses that withhold judgment until the final line qualifies what seemed established three paragraphs earlier. Readers who prefer linear redemption arcs may find the structure frustrating, yet the form enacts the ethical uncertainty the narrator claims to inherit.",
    "correctId": "A",
    "texts": [
      "were",
      "was",
      "is",
      "has been"
    ],
    "expls": [
      "Subjunctive/plural 'were' matches subject.",
      "'Was' disagrees with plural subject.",
      "Present tense wrong.",
      "Perfect aspect wrong here."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (were) is grammatically correct."
      },
      "distractors": {
        "B": "'Was' disagrees with plural subject.",
        "C": "Present tense wrong.",
        "D": "Perfect aspect wrong here."
      }
    }
  },
  {
    "passage": "During the residency, the playwright revised a scene in which two siblings debate whether to sell a piano that had survived three migrations, its cracked soundboard a metaphor she initially treated as too on-the-nose for serious drama. Workshop participants argued the object grounded abstract grief in tactile memory, while others insisted the symbolism arrested ______ narrative momentum by announcing its themes prematurely. The playwright compromised by embedding the piano within a conversation about insurance appraisals, letting economic vocabulary carry emotional weight indirectly. In performance, audiences often cite that scene as the play's emotional center, suggesting that subtlety and explicitness can coexist when structure distributes attention across competing registers. The final script retains marginal notes documenting each rejected version, a record of craft decisions that future directors may consult when interpreting silence onstage.",
    "correctId": "A",
    "texts": [
      "better than",
      "better then",
      "more better than",
      "best than"
    ],
    "expls": [
      "Comparative takes 'than'.",
      "'Then' is temporal adverb.",
      "Double comparative is ungrammatical.",
      "Superlative wrong degree."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (better than) is grammatically correct."
      },
      "distractors": {
        "B": "'Then' is temporal adverb.",
        "C": "Double comparative is ungrammatical.",
        "D": "Superlative wrong degree."
      }
    }
  },
  {
    "passage": "Neuroscientists studying synaptic plasticity in adult songbirds found that exposure to novel melodies increased dendritic branching in auditory cortex regions, even when birds did not reproduce the songs they heard. The team cautioned that plasticity alone does not guarantee functional improvement: some branches retracted within weeks unless paired with reward contingencies that reinforced selective responses. ______ Control birds housed in silent chambers showed baseline turnover rates consistent with prior literature, which helped qualify claims that any auditory input suffices for lasting change. When reviewers requested clearer mechanisms, the authors added calcium-imaging data showing that novel stimuli arrested habitual firing patterns long enough for new associations to form. Policy implications remain equivocal because avian circuits differ from mammalian language networks, yet the study supports continued investigation into whether structured novelty aids rehabilitation after stroke. Replication across two additional species is underway at partner laboratories.",
    "correctId": "A",
    "texts": [
      "have been",
      "has been",
      "was being",
      "are"
    ],
    "expls": [
      "Plural subject requires 'have been'.",
      "Singular verb disagrees with plural subject.",
      "Wrong tense/aspect for context.",
      "Present tense mismatches past context."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (have been) is grammatically correct."
      },
      "distractors": {
        "B": "Singular verb disagrees with plural subject.",
        "C": "Wrong tense/aspect for context.",
        "D": "Present tense mismatches past context."
      }
    }
  },
  {
    "passage": "Paleoclimatologists analyzing ice cores from the Antarctic plateau identified sulfate spikes that did not align with known volcanic catalogs, prompting a hypothesis that undocumented eruptions or industrial emissions had compromised stratospheric records during the late nineteenth century. Isotope ratios in adjacent layers suggested the anomaly might instead reflect transport changes rather than new sources, a distinction ______ that would qualify earlier extinction timelines linked to abrupt cooling. The lead author refused to magnanimous concessions to critics who demanded immediate retraction, publishing a rebuttal that enumerated alternative models without arresting ongoing sample analysis. Peer commentary praised the transparency while noting that each model currently rests on incomplete spatial coverage. Until cores from complementary sites arrive, the team's conclusion remains provisional, though classroom textbooks may still simplify the finding into a single causal sentence that the paper itself avoids.",
    "correctId": "A",
    "texts": [
      "who",
      "whom",
      "which",
      "they"
    ],
    "expls": [
      "'Who' is subject of the relative clause.",
      "'Whom' would be object form incorrectly.",
      "'Which' is for things not people.",
      "Pronoun creates fragment."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (who) is grammatically correct."
      },
      "distractors": {
        "B": "'Whom' would be object form incorrectly.",
        "C": "'Which' is for things not people.",
        "D": "Pronoun creates fragment."
      }
    }
  },
  {
    "passage": "Ecologists monitoring mangrove restoration sites observed that seedlings planted in monoculture rows exhibited lower survival after storm surges than polyculture plots where species with differing root architectures compromised competing claims for sediment. The result did not imply monoculture plantings always fail; rather, it qualified recommendations that treated salinity tolerance as the sole selection criterion. Interviewed managers sometimes ______ described polyculture designs as administratively cumbersome, a practical objection the authors address by proposing modular planting templates rather than rigid prescriptions. Remote sensing data collected before and after the hurricane season showed that canopy closure arrested erosion on stabilized plots within eighteen months, whereas bare mudflats persisted where plantings died. These patterns support adaptive management frameworks that treat initial failure as information rather than verdict, though funding cycles rarely accommodate that patience. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "its",
      "it's",
      "their",
      "there"
    ],
    "expls": [
      "Possessive 'its' has no apostrophe.",
      "It's means 'it is'.",
      "Their is plural possessive.",
      "There indicates place."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (its) is grammatically correct."
      },
      "distractors": {
        "B": "It's means 'it is'.",
        "C": "Their is plural possessive.",
        "D": "There indicates place."
      }
    }
  },
  {
    "passage": "Physicists probing quasicrystal growth under electromagnetic fields reported that minor frequency shifts could arrest defect propagation at boundaries where conventional models predicted continuous disorder. The observation does not compromise existing thermodynamic proofs, which apply under equilibrium assumptions this experiment deliberately violated. Colleagues asked whether the effect might instead reflect instrumentation drift, so the team replicated measurements across three ______ independent spectrometers and published raw traces alongside processed summaries. Popular articles sometimes describe the work as overturning textbook physics, a characterization the authors qualify in every interview by emphasizing boundary conditions. If subsequent trials confirm the effect at scale, manufacturers of specialized coatings might exploit the phenomenon; until then, engineers should treat claims as promising rather than settled. Graduate students involved in the project noted that ambiguous preliminary graphs initially discouraged them, illustrating how equivocal data can still steer productive inquiry.",
    "correctId": "A",
    "texts": [
      "were",
      "was",
      "is",
      "has been"
    ],
    "expls": [
      "Subjunctive/plural 'were' matches subject.",
      "'Was' disagrees with plural subject.",
      "Present tense wrong.",
      "Perfect aspect wrong here."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (were) is grammatically correct."
      },
      "distractors": {
        "B": "'Was' disagrees with plural subject.",
        "C": "Present tense wrong.",
        "D": "Perfect aspect wrong here."
      }
    }
  },
  {
    "passage": "Medical researchers trialing a sleep-intervention protocol documented that participants who maintained consistent bedtimes showed improved glucose regulation, but the benefit disappeared when subjects napped irregularly during daylight hours, a finding that qualifies universal sleep-hygiene messaging. Magnanimous interpretations might attribute the failure to participant noncompliance, yet actigraphy data revealed that shift workers faced structural barriers no behavioral reminder could compromise ______ without employer cooperation. The authors therefore recommend policy-level scheduling reforms alongside individual counseling, arguing that clinical advice alone arrests at the hospital door when economic incentives push opposite directions. Secondary analyses hinted that women in the cohort responded differently, though sample size prevented definitive claims; preregistration documents note this limitation explicitly. Clinicians reading the study should avoid synthesizing a one-size prescription from heterogeneous evidence. The authors caution that replication remains necessary before treating the finding as settled.",
    "correctId": "A",
    "texts": [
      "better than",
      "better then",
      "more better than",
      "best than"
    ],
    "expls": [
      "Comparative takes 'than'.",
      "'Then' is temporal adverb.",
      "Double comparative is ungrammatical.",
      "Superlative wrong degree."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (better than) is grammatically correct."
      },
      "distractors": {
        "B": "'Then' is temporal adverb.",
        "C": "Double comparative is ungrammatical.",
        "D": "Superlative wrong degree."
      }
    }
  },
  {
    "passage": "Historians revisiting treaty negotiations of 1919 argue that delegates' public rhetoric about self-determination often failed to qualify how colonial boundaries would remain intact, creating a gap between proclaimed principles and enforceable commitments. Archival cables show some diplomats privately described their own speeches as magnanimous gestures designed to arrest domestic unrest rather than blueprint future borders. Economic historians add that reparations ______ clauses compromised recovery in ways negotiators acknowledged only in marginal annotations, not in plenary transcripts students now memorize. Contemporary commentators who treat the conference as singular failure overlook regional agreements that succeeded on narrower terms, a nuance classroom narratives sometimes sacrifice for moral clarity. The synthesis emerging in recent monographs portrays delegates as constrained actors juggling coalition politics, public opinion, and incomplete information rather than architects of inevitable catastrophe. Further digitization of personal letters may shift emphasis again without resolving every counterfactual debate historians enjoy.",
    "correctId": "A",
    "texts": [
      "have been",
      "has been",
      "was being",
      "are"
    ],
    "expls": [
      "Plural subject requires 'have been'.",
      "Singular verb disagrees with plural subject.",
      "Wrong tense/aspect for context.",
      "Present tense mismatches past context."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (have been) is grammatically correct."
      },
      "distractors": {
        "B": "Singular verb disagrees with plural subject.",
        "C": "Wrong tense/aspect for context.",
        "D": "Present tense mismatches past context."
      }
    }
  },
  {
    "passage": "Urban sociologists studying mixed-income housing projects found that shared amenities increased cross-class interaction initially, yet proprietary attitudes toward security systems often arrested integration within two years of occupancy. Interviewees described polite coexistence that rarely qualified as friendship, complicating metrics that equate proximity with social cohesion. Developers sometimes compromise design goals by reallocating communal square footage to private units when market forecasts ______ shift, a decision documented in planning filings but absent from promotional brochures. Policy analysts recommend longitudinal ethnography rather than one-time satisfaction surveys, noting that residents' impressions evolve as maintenance disputes accumulate. Critics from market-oriented think tanks argue the data prove government intervention distorts housing preferences, while advocates counter that without subsidies the projects would never have been built. Both camps selectively emphasize findings that align with prior commitments, illustrating how evidence travels through ideological filters.",
    "correctId": "A",
    "texts": [
      "who",
      "whom",
      "which",
      "they"
    ],
    "expls": [
      "'Who' is subject of the relative clause.",
      "'Whom' would be object form incorrectly.",
      "'Which' is for things not people.",
      "Pronoun creates fragment."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (who) is grammatically correct."
      },
      "distractors": {
        "B": "'Whom' would be object form incorrectly.",
        "C": "'Which' is for things not people.",
        "D": "Pronoun creates fragment."
      }
    }
  },
  {
    "passage": "Anthropologists documenting oral histories in a post-industrial town recorded how former factory workers used the word \"loyalty\" in ways that could mean either steadfast craftsmanship or refusal to qualify management decisions that compromised safety. Younger residents, lacking direct experience on the line, sometimes interpreted the same stories as cautionary tales about uncritical obedience, revealing generational plasticity in moral vocabulary. The research team ______ avoided arresting narrative flow with rigid coding schemes, allowing thematic categories to emerge after repeated listening sessions. One worker's account of a strike described union leadership as magnanimous for accepting partial gains, whereas another labeled the same outcome a compromise that sacrificed newcomers' pensions. Rather than adjudicate, the ethnographers present juxtaposed transcripts so readers confront interpretive multiplicity directly. Funding agencies asked whether such ambiguity yields actionable policy; the authors reply that misunderstanding community memory produces worse outcomes than delayed consensus.",
    "correctId": "A",
    "texts": [
      "its",
      "it's",
      "their",
      "there"
    ],
    "expls": [
      "Possessive 'its' has no apostrophe.",
      "It's means 'it is'.",
      "Their is plural possessive.",
      "There indicates place."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (its) is grammatically correct."
      },
      "distractors": {
        "B": "It's means 'it is'.",
        "C": "Their is plural possessive.",
        "D": "There indicates place."
      }
    }
  },
  {
    "passage": "Political scientists analyzing referendum campaigns observed that ads emphasizing fiscal responsibility rarely cited data that might qualify sweeping promises, while opposition spots sometimes seized on minor accounting discrepancies to suggest systemic fraud without equivalent evidence. Focus groups revealed voters treated emotional tone as proxy for credibility, a heuristic that can arrest deliberation when candidates perform sincerity convincingly. The study does not claim voters ______ are irrational; instead, it documents how time-pressed citizens compromise depth for speed when ballots approach. Media literacy interventions tested in parallel cohorts showed modest gains in identifying unsupported synthesis, though effects faded unless reinforced during subsequent election cycles. Legislators citing the research disagree about remedies: some propose stricter disclosure rules, others argue transparency alone cannot fix structural incentives for equivocal messaging. The authors emphasize that institutional redesign and civic education must proceed together if public discourse is to shift measurably.",
    "correctId": "A",
    "texts": [
      "were",
      "was",
      "is",
      "has been"
    ],
    "expls": [
      "Subjunctive/plural 'were' matches subject.",
      "'Was' disagrees with plural subject.",
      "Present tense wrong.",
      "Perfect aspect wrong here."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (were) is grammatically correct."
      },
      "distractors": {
        "B": "'Was' disagrees with plural subject.",
        "C": "Present tense wrong.",
        "D": "Perfect aspect wrong here."
      }
    }
  },
  {
    "passage": "Economists examining microfinance programs in rural provinces found that initial repayment rates magnanimous lenders celebrated masked heterogeneous outcomes, with women-led enterprises benefiting while seasonal farmers faced cycles that compromise short-term cash flows. Randomized trials later qualified early optimism by showing default spikes correlated with harvest timing rather than borrower character, undermining narratives that moralized creditworthiness. Program officers who arrested disbursements after first delinquencies inadvertently ______ reduced long-term uptake, suggesting punitive responses can destroy social collateral built through years of community meetings. The team's policy brief recommends grace periods aligned with agricultural calendars and transparent interest formulas, changes some NGOs adopted while others feared donors would view flexibility as lax oversight. Development textbooks often simplify the story into success or failure binaries; this study argues for portfolios of small experiments whose combined evidence resists single-label verdicts.",
    "correctId": "A",
    "texts": [
      "better than",
      "better then",
      "more better than",
      "best than"
    ],
    "expls": [
      "Comparative takes 'than'.",
      "'Then' is temporal adverb.",
      "Double comparative is ungrammatical.",
      "Superlative wrong degree."
    ],
    "steps": {
      "step1": {
        "title": "Identify the subject",
        "body": "Locate the noun the blank must agree with in the surrounding sentence."
      },
      "step2": {
        "title": "Check agreement and form",
        "body": "Verify tense, number, and pronoun case against Standard English conventions."
      },
      "step3": {
        "title": "Select the grammatical option",
        "body": "Choice A (better than) is grammatically correct."
      },
      "distractors": {
        "B": "'Then' is temporal adverb.",
        "C": "Double comparative is ungrammatical.",
        "D": "Superlative wrong degree."
      }
    }
  }
];
const SYN_SPECS = [
  {
    "goal": "emphasize the study's cautious conclusion while noting its policy relevance",
    "notes": "• Study 1 examines plasticity research with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward urban contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to emphasize the study's cautious conclusion while noting its policy relevance."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "introduce the research topic and highlight a key methodological limitation",
    "notes": "• Study 2 examines treaty historiography with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward coastal contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to introduce the research topic and highlight a key methodological limitation."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "compare two competing interpretations discussed in the notes",
    "notes": "• Study 3 examines mangrove restoration with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward clinical contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to compare two competing interpretations discussed in the notes."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "summarize the main finding and explain why replication is needed",
    "notes": "• Study 4 examines sleep intervention trials with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward industrial contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to summarize the main finding and explain why replication is needed."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "present the central claim and acknowledge contextual constraints",
    "notes": "• Study 5 examines automation impacts with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward literary contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to present the central claim and acknowledge contextual constraints."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "contrast initial optimism with later qualified findings",
    "notes": "• Study 6 examines plasticity research with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward urban contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to contrast initial optimism with later qualified findings."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "explain how evidence supports a provisional rather than absolute verdict",
    "notes": "• Study 7 examines treaty historiography with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward coastal contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to explain how evidence supports a provisional rather than absolute verdict."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "describe the phenomenon and identify a factor the notes flag as understudied",
    "notes": "• Study 8 examines mangrove restoration with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward clinical contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to describe the phenomenon and identify a factor the notes flag as understudied."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "emphasize converging evidence while noting remaining uncertainty",
    "notes": "• Study 9 examines sleep intervention trials with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward industrial contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to emphasize converging evidence while noting remaining uncertainty."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "introduce stakeholders' disagreement and summarize each position fairly",
    "notes": "• Study 10 examines automation impacts with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward literary contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to introduce stakeholders' disagreement and summarize each position fairly."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "highlight a trend in the data and caution against overgeneralization",
    "notes": "• Study 11 examines plasticity research with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward urban contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to highlight a trend in the data and caution against overgeneralization."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "synthesize the notes into a thesis suitable for an academic abstract",
    "notes": "• Study 12 examines treaty historiography with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward coastal contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to synthesize the notes into a thesis suitable for an academic abstract."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "emphasize practical implications without overstating certainty",
    "notes": "• Study 13 examines mangrove restoration with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward clinical contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to emphasize practical implications without overstating certainty."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "present the research question and preview the authors' bounded answer",
    "notes": "• Study 14 examines sleep intervention trials with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward industrial contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to present the research question and preview the authors' bounded answer."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "compare short-term and long-term outcomes described in the notes",
    "notes": "• Study 15 examines automation impacts with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward literary contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to compare short-term and long-term outcomes described in the notes."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "summarize how methodology addresses a limitation mentioned in the notes",
    "notes": "• Study 16 examines plasticity research with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward urban contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to summarize how methodology addresses a limitation mentioned in the notes."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "emphasize nuance in findings that resist binary labels",
    "notes": "• Study 17 examines treaty historiography with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward coastal contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to emphasize nuance in findings that resist binary labels."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "introduce the topic for a general audience while preserving scholarly caution",
    "notes": "• Study 18 examines mangrove restoration with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward clinical contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to introduce the topic for a general audience while preserving scholarly caution."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "present evidence for a claim and note an explicit caveat from the notes",
    "notes": "• Study 19 examines sleep intervention trials with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward industrial contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to present evidence for a claim and note an explicit caveat from the notes."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "describe a debate and explain which view the notes treat as better supported",
    "notes": "• Study 20 examines automation impacts with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward literary contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to describe a debate and explain which view the notes treat as better supported."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "highlight a pattern across studies cited in the notes",
    "notes": "• Study 21 examines plasticity research with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward urban contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to highlight a pattern across studies cited in the notes."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "emphasize why the notes recommend further investigation",
    "notes": "• Study 22 examines treaty historiography with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward coastal contexts",
    "correctId": "B",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to emphasize why the notes recommend further investigation."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "summarize findings relevant to policy makers without erasing limitations",
    "notes": "• Study 23 examines mangrove restoration with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 3 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward clinical contexts",
    "correctId": "C",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to summarize findings relevant to policy makers without erasing limitations."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "present the notes' central tension between promise and provisional status",
    "notes": "• Study 24 examines sleep intervention trials with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 4 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward industrial contexts",
    "correctId": "D",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to present the notes' central tension between promise and provisional status."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  },
  {
    "goal": "synthesize the most important takeaway for readers unfamiliar with the field",
    "notes": "• Study 25 examines automation impacts with preregistered methods\n• Main finding: effect sizes vary across subgroups\n• Authors caution against universal generalization\n• Replication at 2 additional sites is planned\n• Policy brief recommends adaptive rather than one-size approaches\n• Limitation: sample skews toward literary contexts",
    "correctId": "A",
    "texts": [
      "The research suggests promising patterns, yet the authors insist replication is needed before treating conclusions as settled—matching the notes' caution and policy angle.",
      "Scientists have completely proven every aspect of the topic, leaving no room for doubt or further study whatsoever.",
      "The notes mention a study but provide no finding, method, or limitation worth reporting.",
      "Policy makers should ignore the evidence and adopt the simplest slogan the notes never endorse."
    ],
    "expls": [
      "Synthesizes finding + limitation + policy as the goal requires.",
      "Overly broad absolute claim contradicts the notes.",
      "True-but-irrelevant: fails the rhetorical goal entirely.",
      "No-evidence synthesis not supported by the notes."
    ],
    "steps": {
      "step1": {
        "title": "Review the notes",
        "body": "Identify finding, limitation, and policy lines in the bullet list."
      },
      "step2": {
        "title": "Match the rhetorical goal",
        "body": "The goal asks you to synthesize the most important takeaway for readers unfamiliar with the field."
      },
      "step3": {
        "title": "Select effective synthesis",
        "body": "The correct choice integrates relevant notes without overstatement."
      },
      "distractors": {
        "B": "absolute language the notes reject.",
        "C": "ignores substantive note content.",
        "D": "unsupported policy prescription."
      }
    }
  }
];

const STEM_BOU = "Which choice completes the text so that it conforms to the conventions of Standard English?";
const STEM_FSS = STEM_BOU;

function buildWic(index) {
  const s = WIC_SPECS[index];
  let passage = passageForIndex(s.passageIdx);
  if (!passage.includes(s.word)) {
    const words = passage.split(/\s+/);
    words.splice(20, 0, s.word);
    passage = words.join(" ");
  }
  return finalizeRwRow(
    { skill: "WIC", rw_subtype: "vocabulary_in_context" },
    index,
    {
      question_text: `As used in the passage, "${s.word}" most nearly means`,
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
  const table = `| ${s.tableHeaders.join(" | ")} |\n| ${s.tableHeaders.map(() => "---").join(" | ")} |\n${s.tableRows.join("\n")}`;
  const stimulus = `${passage}\n\nThe table summarizes results from the study described above.\n\n${table}`;
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
  const p = `${passage.split(/(?<=[.!?])\s+/).slice(0, -1).join(" ")} ______ the final section extends the author's nuanced argument.`;
  const opts = longTraOptions(s.correctId, s.correctText, index + 4000, { challenged: true });
  return finalizeRwRow(
    { skill: "TRA", rw_subtype: "transition" },
    index,
    {
      question_text: "Which choice completes the text with the most logical transition?",
      stimulus_text: p,
      stimulus_type: "passage",
      options: opts,
      correct_answer: s.correctId,
      rw_format: "transition_blank",
    },
  );
}

function buildBou(index) {
  const s = BOU_SPECS[index];
  const passage = s.passage;
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
  const passage = s.passage;
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
  const notes = padBulletNotes(
    s.notes,
    SENTENCE_TARGETS.challenged.synBullets.min,
    SENTENCE_TARGETS.challenged.synBullets.max,
  );
  return finalizeConvRow(
    { skill: "SYN", rw_subtype: "notes_synthesis" },
    index,
    {
      question_text: `The student wants to ${s.goal}. Which choice most effectively uses information from the notes to accomplish this goal?`,
      stimulus_text: notes,
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
  if (!builder) throw new Error(`Unknown rw_subtype: ${spec.rw_subtype}`);
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
  if (meta.challenged_problem !== true && meta.challenged_problem !== "true") reasons.push("missing_challenged_problem");
  if (meta.difficulty_tier !== "challenged") reasons.push("missing_difficulty_tier");
  if (meta.dsat_blueprint_v1 !== true && row.dsat_blueprint_v1 !== true) reasons.push("missing_dsat_blueprint_v1");
  if (meta.explanation_v2 !== true) reasons.push("missing_explanation_v2");
  if (meta.generator !== GENERATOR) reasons.push("wrong_generator");

  const conv = CONVENTIONS_SKILLS.has(row.skill_id);
  const v = conv ? validateConventionsRow(row) : validateDsatRwQuestion(row);
  if (!v.ok) reasons.push(...(v.reasons ?? [v.reason].filter(Boolean)));

  return { ok: reasons.length === 0, reasons };
}
