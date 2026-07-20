/**
 * Master Manual §7 — Inferences (INF): premise-only passages + named distractor formulas.
 */
import {
  mkOpts,
  charLen,
  optionWordCount,
  rotateCorrectId,
  balanceOptionLengths,
  ensureTwoSentenceOption,
} from "./english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validateOptionLengthParity,
  trimToWordRange,
  wordCount,
  padToSentenceCount,
  PASSAGE_WORD_TARGETS,
  SENTENCE_TARGETS,
} from "./dsat-rw-blueprint.mjs";

const LETTERS = ["A", "B", "C", "D"];
const INF_WORDS = PASSAGE_WORD_TARGETS.inf;

const CONCLUSION_RE =
  /\b(in conclusion|therefore|thus|the passage (argues|concludes|supports|invites)|readers should infer|policy briefs cited|the authors plan|follow-up survey|pilot programs|recent digitization|administrators in|field monitoring|the essay concludes|the team argues that protecting)\b/i;

/** @type {Array<{ premises: string, gap: string, correct: string, speculative: string, equivocation: string, reverse: string }>} */
export const INF_LOGIC_CHAINS = [
  {
    premises:
      "In many insect species, the synthesis of the hormone ecdysone is strictly dependent on the activation of the prothoracicotropic hormone (PTTH) receptor pathway. When environmental temperatures fall below a critical threshold of $12^\\circ\\text{C}$, the cellular transcription of PTTH is completely arrested. Without active PTTH transcription, insects cannot initiate apolysis—the separation of the old cuticle from the epidermis during molting—and their developmental cycle is paused.",
    gap: "Biologists studying a population of alpine beetles in a temperature-controlled chamber observed that despite maintaining a constant, warm chamber temperature of $22^\\circ\\text{C}$, several of the beetle larvae failed to undergo apolysis.",
    correct:
      "the developmental pause in these larvae was caused by a genetic mutation or chemical block that prevented the activation of their PTTH receptor pathway",
    speculative:
      "these larvae would eventually molt successfully if researchers extended the observation period by several additional weeks at the same temperature",
    equivocation:
      "PTTH transcription is the only biological process in alpine beetles that is sensitive to temperature changes under any laboratory condition",
    reverse:
      "these larvae would have successfully undergone apolysis if the chamber temperature had been lowered below $12^\\circ\\text{C}$",
  },
  {
    premises:
      "Marine biologists found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure.",
    gap: "At those depleted sites, coral recruitment dropped sharply even when water temperature and salinity remained stable, while nearby no-take reserves showed bare rock patches reappearing only where grazing intensity returned to historical norms.",
    correct:
      "protecting herbivorous fish is a functional requirement for reef recovery rather than merely a conservation aesthetic preference",
    speculative:
      "international tourism revenue would increase measurably within two years if every coastal nation adopted identical no-take zone legislation",
    equivocation:
      "coral recruitment and coral settlement refer to entirely different ecological processes that cannot occur on the same reef substrate",
    reverse:
      "declining parrotfish populations must have been caused by the observed drop in coral recruitment at monitored reef sites",
  },
  {
    premises:
      "Psychologists reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping. Brain-imaging subsamples showed differences in hippocampal activity during retrieval.",
    gap: "The researchers matched study time, list difficulty, and initial exposure across groups, yet the sleep cohort still outperformed the awake cohort on both immediate and delayed recall tests under identical lab conditions.",
    correct:
      "sleep consolidates declarative memories even when both groups studied for equal duration and initial exposure was controlled",
    speculative:
      "students in real classrooms would always outperform worksheet-only instruction if schools mandated eight hours of nightly sleep for every teenager",
    equivocation:
      "recall accuracy and hippocampal activation are synonymous measures that always rise and fall together in every memory experiment",
    reverse:
      "participants who recalled word lists accurately must have slept eight hours before every retrieval test in the study",
  },
  {
    premises:
      "Engineers demonstrated that tubercle-like ridges on turbine blades delay airflow separation, maintaining lift across a wider range of wind speeds common in residential installations. Standard flat blades stall when air flow separates early, wasting kinetic energy. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits.",
    gap: "Field monitoring over six months confirmed that the gain persisted under variable seasonal winds rather than reflecting a single favorable test day, while flat-blade prototypes underperformed at identical wind speeds in controlled comparisons.",
    correct:
      "biomimetic blade design inspired by whale fins improves turbine efficiency at moderate wind speeds without exceeding local noise limits",
    speculative:
      "residential wind adoption would double nationwide within five years if every manufacturer immediately copied the tubercle ridge pattern",
    equivocation:
      "airflow separation and kinetic energy loss describe the same physical failure mode and therefore always co-occur at identical wind speeds",
    reverse:
      "flat-blade designs must have inspired the tubercle-like ridges because flat blades consistently outperformed ridged prototypes in field tests",
  },
  {
    premises:
      "Archaeologists discovered pottery shards containing residue of fermented grain at site layers associated with a ceremonial plaza rather than domestic kitchens. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. Nearby hearths showed feasting debris concentrated on solstice dates.",
    gap: "Residue profiles from adjacent domestic settlements lacked the same fermentation markers, suggesting the practice was localized to ritual contexts rather than routine meal preparation.",
    correct:
      "the community brewed beverages for ritual gatherings rather than for daily meals according to the material evidence recovered",
    speculative:
      "modern craft breweries could authentically recreate every ancient recipe if archaeologists published complete chemical profiles from each shard",
    equivocation:
      "fermentation compounds and feasting debris are interchangeable evidence that always prove identical cultural practices across all ancient sites",
    reverse:
      "solstice feasting must have caused the fermentation compounds because feasting debris and fermentation markers never appear together otherwise",
  },
  {
    premises:
      "Economists observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. National chains waited for centralized distribution centers to reopen and could not pivot without corporate approval cycles.",
    gap: "Corner shops that phoned alternate suppliers during the stall retained higher customer loyalty scores eighteen months later, while chains bound to uniform pricing algorithms could not shift product mix as quickly.",
    correct:
      "local supplier relationships helped small retailers adapt faster during supply-chain disruptions than organizational scale alone would predict",
    speculative:
      "every national retail chain will permanently shrink its store footprint because the study proves large firms cannot survive any future logistics failure",
    equivocation:
      "customer loyalty and product mix flexibility are the same operational metric and therefore always increase together during supply stalls",
    reverse:
      "supply-chain stalls must have been caused by national chains' inability to reorder from local wholesalers within days",
  },
  {
    premises:
      "Educators concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers reported that discussion students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion.",
    gap: "Standardized pre- and post-tests showed a twelve-point average gain for the structured discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit with matched reading materials.",
    correct:
      "structured peer discussion improves reading comprehension more than silent worksheet completion when prompts require citing textual evidence",
    speculative:
      "every school district nationwide would eliminate worksheets entirely if administrators read the twelve-point gain reported in this single study",
    equivocation:
      "comprehension scores and textual evidence citation measure identical literacy skills and therefore always rise in perfect parallel",
    reverse:
      "students who cited textual evidence during disagreements must have been assigned worksheet-only instruction before joining pair discussions",
  },
  {
    premises:
      "Historians examining desert trade routes note that camel caravans carried astronomical tables alongside commercial goods, spreading navigation techniques across regions long before printed maps existed. A recovered ledger lists dates, caravan leaders, and scientific texts exchanged at each oasis.",
    gap: "When one city tightened tariffs, caravans rerouted through secondary wells, and marginal notes from star charts copied onto leather scrolls appeared at those secondary stops within the same trading season.",
    correct:
      "desert trade routes circulated scientific knowledge alongside commercial goods rather than functioning as simple supply chains alone",
    speculative:
      "modern GPS technology would have made camel-carried star charts obsolete within a single generation even if printing had never been invented",
    equivocation:
      "marginal notes and tariff records are equivalent proof that every scientific text was copied solely for commercial tax assessment purposes",
    reverse:
      "tightened tariffs must have been imposed because caravan leaders preferred secondary wells that lacked astronomical texts",
  },
];

const PREMISE_PADS = [
  "Independent reviewers noted that alternative explanations have not yet been fully excluded in parallel cohorts.",
  "Measurement protocols held unrelated variables stable across repeated observation cycles.",
  "The recorded pattern appeared in multiple subsamples analyzed under identical procedural constraints.",
  "Observers documented the same relationship across baseline and intervention periods in the study.",
];

const GENERAL_STEMS = [
  "Which choice most logically completes the text?",
  "Which choice can most reasonably be inferred from the passage?",
  "Based on the passage, which statement is most strongly implied?",
];

const IMPLICATION_STEMS = [
  "Which choice most logically completes the text?",
  "Which choice most logically follows from the passage as a whole?",
  "Based on the passage, which statement is most strongly implied?",
];

const PREDICTION_STEMS = [
  "Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?",
  "Which prediction is most supported by the passage?",
  "If the trend described continues, which result is most likely?",
];

const FRAME = {
  general: (c) => `The passage most strongly suggests that ${c}.`,
  implication: (c) => `It can be inferred that ${c}.`,
  prediction: (c) => `The researchers would most likely conclude that ${c}.`,
};

const TRAP_LABELS = ["Speculative Narrative", "Equivocation", "Reverse Conditional"];

function splitSentences(text) {
  return String(text ?? "")
    .trim()
    .split(/(?<=[.!?])\s+/)
    .filter((s) => s.trim().length > 0);
}

/** Strip concluding / summary sentences — premises only per §7. */
export function stripConcludingSentences(text) {
  let sentences = splitSentences(text);
  while (sentences.length > 2) {
    const last = sentences[sentences.length - 1];
    if (CONCLUSION_RE.test(last)) {
      sentences = sentences.slice(0, -1);
    } else {
      break;
    }
  }
  return sentences.join(" ").trim();
}

export function buildInfPremisePassage(index, { challenged = false, difficulty = "medium" } = {}) {
  const chain = INF_LOGIC_CHAINS[index % INF_LOGIC_CHAINS.length];
  let raw = `${chain.premises} ${chain.gap}`;
  raw = stripConcludingSentences(raw);

  let wc = wordCount(raw);
  let pad = 0;
  while (wc < INF_WORDS.min && pad < PREMISE_PADS.length) {
    raw = `${raw} ${PREMISE_PADS[(index + pad) % PREMISE_PADS.length]}`;
    raw = stripConcludingSentences(raw);
    wc = wordCount(raw);
    pad++;
  }

  if (challenged) {
    const { min, max } = SENTENCE_TARGETS.challenged.stimulus;
    raw = padToSentenceCount(raw, min, max);
  } else if (difficulty === "hard") {
    const { min, max } = SENTENCE_TARGETS.hard.wicPassage;
    raw = padToSentenceCount(raw, min, max);
  }

  let passage = trimToWordRange(raw, INF_WORDS.min, INF_WORDS.max);
  passage = stripConcludingSentences(passage);

  const minSent = challenged
    ? SENTENCE_TARGETS.challenged.stimulus.min
    : difficulty === "hard"
      ? SENTENCE_TARGETS.hard.wicPassage.min
      : 0;
  const maxSent = challenged
    ? SENTENCE_TARGETS.challenged.stimulus.max
    : difficulty === "hard"
      ? SENTENCE_TARGETS.hard.wicPassage.max
      : null;

  if (minSent > 0) {
    passage = padToSentenceCount(passage, minSent, maxSent);
    passage = trimToWordRange(passage, INF_WORDS.min, INF_WORDS.max);
    if (wordCount(passage) < INF_WORDS.min) {
      passage = trimToWordRange(
        `${passage} ${PREMISE_PADS[(index + 1) % PREMISE_PADS.length]}`,
        INF_WORDS.min,
        INF_WORDS.max,
      );
    }
  }

  return passage.trim();
}

function frameOptions(subtype, chain, index) {
  const fn = FRAME[subtype] ?? FRAME.general;
  const correct = fn(chain.correct);
  const distractors = [
    { type: TRAP_LABELS[0], text: fn(chain.speculative) },
    { type: TRAP_LABELS[1], text: fn(chain.equivocation) },
    { type: TRAP_LABELS[2], text: fn(chain.reverse) },
  ];
  return { correct, distractors };
}

function stemFor(subtype, index) {
  if (subtype === "prediction") return PREDICTION_STEMS[index % PREDICTION_STEMS.length];
  if (subtype === "implication") return IMPLICATION_STEMS[index % IMPLICATION_STEMS.length];
  return GENERAL_STEMS[index % GENERAL_STEMS.length];
}

export function measureInfSpread(options) {
  const wordLens = options.map((o) => optionWordCount(o.text));
  const charLens = options.map((o) => charLen(o.text));
  const wordAvg = wordLens.reduce((a, b) => a + b, 0) / wordLens.length;
  const charMin = Math.min(...charLens);
  const charMax = Math.max(...charLens);
  const wordMin = Math.min(...wordLens);
  const wordMax = Math.max(...wordLens);
  const correct = options.find((o) => o.is_correct);
  return {
    word_spread_pct: wordAvg > 0 ? Math.round(1000 * (wordMax - wordMin) / wordAvg) / 10 : 0,
    char_spread_pct: charMin > 0 ? Math.round(1000 * (charMax - charMin) / charMin) / 10 : 0,
    correct_is_longest: correct ? charLen(correct.text) === charMax : false,
  };
}

export function regenerateInfMasterItem(row, globalIndex, attempt = 0) {
  const rwSubtype = row.source_metadata?.rw_subtype ?? row.rw_subtype ?? "general";
  const difficulty = row.difficulty ?? "medium";
  const challenged =
    row.source_metadata?.challenged_problem === true ||
    row.source_metadata?.challenged_problem === "true";
  const index = globalIndex + attempt * 997;
  const correctId = rotateCorrectId(index, rwSubtype === "prediction" ? 1 : rwSubtype === "implication" ? 2 : 0);
  const chain = INF_LOGIC_CHAINS[index % INF_LOGIC_CHAINS.length];
  const passage = buildInfPremisePassage(index, { challenged, difficulty });
  const { correct, distractors } = frameOptions(rwSubtype, chain, index);

  const correctIdx = LETTERS.indexOf(correctId);
  const rawTexts = [correct, ...distractors.map((d) => d.text)];
  let balancedArr = balanceOptionLengths(rawTexts[0], rawTexts.slice(1), {
    varyLongestIndex: index % 5 === 0 ? index : null,
  });

  if (challenged) {
    balancedArr = balancedArr.map((txt, i) => ensureTwoSentenceOption(txt, index + i + attempt));
    const target = charLen(balancedArr[correctIdx]);
    for (let i = 0; i < 4; i++) {
      if (i === correctIdx) continue;
      let guard = 0;
      while (charLen(balancedArr[i]) < target && guard < 14) {
        balancedArr[i] = `${balancedArr[i].replace(/\.$/, "")}. The passage never establishes such a sweeping claim from its premises alone.`;
        guard++;
      }
      if (charLen(balancedArr[i]) > Math.ceil(target * 1.15)) {
        const words = balancedArr[i].split(/\s+/);
        balancedArr[i] = `${words.slice(0, Math.max(12, words.length - 4)).join(" ").replace(/[,;]$/, "")}.`;
      }
    }
  }

  const balanced = balancedArr;

  const rotated = LETTERS.map((_, i) => balanced[(i - correctIdx + 4) % 4]);
  const trapOrder = LETTERS.map((_, i) => {
    if (i === correctIdx) return null;
    return distractors[(i - correctIdx + 3) % 3];
  });

  const expls = rotated.map((text, i) => {
    const id = LETTERS[i];
    if (id === correctId) {
      return "Logically necessary from the stated premises; requires no speculative leap beyond the text.";
    }
    const trap = trapOrder[i];
    return `${trap?.type ?? TRAP_LABELS[0]}: ${text.slice(0, 72)}… cannot be proven solely from the premises given.`;
  });

  let options = mkOpts(correctId, rotated, expls);

  const question_text = stemFor(rwSubtype, index);

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
      generator: "regenerate-inf-master.mjs",
      master_manual_section: 7,
      regen_phase2: true,
      regen_at: new Date().toISOString(),
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

export function validateInfMasterRow(q) {
  const v = validateDsatRwQuestion(q);
  const p = validateOptionLengthParity(q.options, { rw_subtype: q.rw_subtype });
  const reasons = [...(v.ok ? [] : v.reasons), ...(p.ok ? [] : p.reasons)];
  const wc = wordCount(q.stimulus_text ?? "");
  if (wc < INF_WORDS.min || wc > INF_WORDS.max) {
    reasons.push(`inf_passage_words:${wc}`);
  }
  const lastSentence = splitSentences(q.stimulus_text ?? "").pop() ?? "";
  if (CONCLUSION_RE.test(lastSentence)) {
    reasons.push("inf_concluding_sentence");
  }
  return { ok: reasons.length === 0, reasons, parity: p, validation: v };
}

export function regenerateInfMasterWithRetry(row, globalIndex) {
  for (let attempt = 0; attempt < 16; attempt++) {
    const q = regenerateInfMasterItem(row, globalIndex, attempt);
    const v = validateInfMasterRow(q);
    if (v.ok) return { ...q, parity: v.parity, attempts: attempt + 1 };
  }
  const q = regenerateInfMasterItem(row, globalIndex, globalIndex);
  return { ...q, parity: validateOptionLengthParity(q.options), attempts: 16 };
}
