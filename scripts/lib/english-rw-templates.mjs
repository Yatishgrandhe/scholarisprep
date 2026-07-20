/**
 * Shared Digital SAT RW question templates (scholaris_ai + upgrade pipelines).
 * Stores taxonomy alignment in rw_subtype / rw_format on returned metadata.
 */

export const RW_SKILLS = [
  "CID", "COE", "INF", "CTC", "TSP", "WIC", "SYN", "TRA", "BOU", "FSS",
];

export const TIER23_WORDS = [
  "equivocal", "perfunctory", "sanguine", "obfuscate", "laconic",
  "ephemeral", "intransigent", "profligate", "surreptitious", "veracious",
  "abstruse", "capricious", "didactic", "fastidious", "garrulous",
];

const LONG_PASSAGES = [
  (n) =>
    `Marine biologists studying reef ecosystem ${n} found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without sustained grazing, fast-growing algae can smother reefs within a single season, turning complex habitat into a uniform green mat. The researchers tracked grazing rates across three seasons and compared sites where parrotfish populations had declined after local fishing pressure. At those sites, coral recruitment—the process by which free-floating larvae attach to hard substrate—dropped sharply even when water temperature and salinity remained stable. The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events. Their follow-up surveys showed that small patches of bare rock reappeared only where grazing intensity returned to historical norms. Policy briefs cited in the study recommend no-take zones sized to herbivore home ranges rather than arbitrary coastline percentages.`,
  (n) =>
    `Historians examining trade route ${n} note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed. Merchants who survived the crossing depended on star charts copied onto leather scrolls, and those copies often accumulated marginal notes from later travelers. A ledger recovered near route ${n} lists dates, caravan leaders, and the scientific texts exchanged at each oasis, suggesting that commerce and scholarship moved together. When one city tightened tariffs, caravans rerouted through secondary wells, and the astronomical knowledge rerouted with them. Modern scholars therefore treat desert trade networks as early information highways rather than simple supply chains. The passage emphasizes how practical navigation needs drove the circulation of technical knowledge among communities that rarely shared a written language. Recent digitization projects have linked surviving ledger fragments to star-chart marginalia, strengthening the case for integrated commercial and intellectual exchange.`,
  (n) =>
    `In her essay on urban soundscapes, writer ${n} argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones. She describes neighborhoods where sirens, construction, and highway hum overlap for eighteen hours a day, leaving residents with fragmented sleep even when air quality meets regulatory standards. Community interviews quoted in the essay repeatedly mention difficulty concentrating at work and heightened irritability at home. The writer contrasts cosmetic beautification projects—new planters and paint—with measurable acoustic interventions such as berms, low-noise pavement, and delivery-time restrictions. She acknowledges that complete silence is impossible in dense cities, yet insists that reducing predictable high-decibel spikes could yield health benefits comparable to modest improvements in green space. The essay concludes that sound belongs in urban planning budgets alongside light and air. Pilot programs in three cities reported measurable sleep gains after targeted speed reductions on arterial roads.`,
  (n) =>
    `Economists analyzing market ${n} observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days. While big-box stores waited for centralized distribution centers to reopen, corner shops phoned alternate suppliers named in handwritten contact lists. The economists interviewed owners who shifted product mix toward shelf-stable goods and services that did not depend on overseas shipping. National chains, bound to national contracts and uniform pricing algorithms, could not pivot as quickly without corporate approval cycles. The study does not claim small stores always outperform chains; rather, it shows that flexibility and local relationships became decisive when long-distance logistics failed. Readers should infer that organizational scale can become a liability during sudden disruptions. A follow-up survey eighteen months later found that retailers who diversified suppliers during the stall retained higher customer loyalty scores.`,
  (n) =>
    `Archaeologists at site ${n} discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals. Layer analysis placed the shards in a ceremonial plaza rather than domestic kitchens, and nearby hearths showed feasting debris concentrated on solstice dates. Chemical tests identified compounds consistent with controlled fermentation but not with large-scale storage for everyday consumption. The team compared the findings with neighboring settlements where grain storage pits dominated the record. That contrast supports the interpretation that brewing here marked special occasions and social bonding. The passage invites readers to connect material evidence with inferred cultural practice without claiming certainty about every recipe detail. Residue profiles from adjacent sites lacked the same fermentation markers, suggesting the practice was localized rather than regional.`,
  (n) =>
    `Psychologists testing memory task ${n} reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long. The awake group was kept in a quiet lounge with books and puzzles to prevent napping, yet their recall still lagged behind the sleep group on both immediate and delayed tests. Brain-imaging subsamples showed differences in hippocampal activity during retrieval, aligning with theories that sleep consolidates declarative memories. The researchers caution that the study measured short lists under lab conditions and may not generalize to complex real-world learning. Still, the controlled comparison isolates sleep as the key variable because study time, list difficulty, and initial exposure were matched. The passage presents sleep as a cognitive process with measurable downstream effects on recall. The authors plan a replication with longer study materials to test whether the consolidation effect scales with content complexity.`,
  (n) =>
    `Engineers prototyping turbine ${n} demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins. Standard flat blades stall when air flow separates early, wasting kinetic energy that never reaches the generator. The prototype's tubercle-like ridges delay separation, maintaining lift across a wider range of wind speeds common in residential installations. Wind-tunnel tests documented a twelve-percent gain at moderate speeds without increasing noise above local ordinance limits. The engineers note that biomimicry here is not decorative; it directly addresses a performance bottleneck that limits small-scale renewable adoption. The passage moves from biological observation to mechanical testing to a practical deployment implication. Field monitoring over six months confirmed that the gain persisted under variable seasonal winds rather than reflecting a single favorable test day.`,
  (n) =>
    `Educators reviewing literacy program ${n} concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone. Teachers in the pair-discussion classrooms reported that students referenced textual evidence when disagreeing, a behavior rarely observed during silent worksheet completion. Standardized pre- and post-tests showed a twelve-point average gain for the discussion cohort versus a four-point gain for the worksheet cohort over the same six-week unit. The educators emphasize that discussion prompts were structured—not unstructured chat—and required each partner to cite a line from the text. They argue that collaborative talk externalizes comprehension strategies that weaker readers otherwise keep invisible. The passage supports structured peer dialogue as an instructional lever rather than a replacement for independent reading. Administrators in two participating districts later expanded discussion protocols to science and history units after reviewing the literacy gains.`,
];

const HARD_PASSAGES = LONG_PASSAGES.map(
  (fn) => (n) =>
    `${fn(n)} The authors stress that replication across independent sites remains necessary before policymakers treat the finding as settled, yet the converging evidence already shifts the burden of proof toward intervention rather than passive observation.`,
);

const CTC_TEXT1_BODIES = [
  (year) =>
    `Urban planners in ${year} argued that municipal parks primarily benefit residents who engage in vigorous exercise, treating caloric expenditure as the sole measurable outcome of green-space investment. In policy memos circulated to city councils, they recommended funding trails and athletic courts while de-emphasizing passive seating areas because, in their view, residents who did not exercise received negligible health returns from park proximity. Critics at the time noted that the model relied on self-reported activity logs rather than clinical biomarkers, but the planners maintained that exercise minutes were the only scalable metric available across cities. Their framework therefore shaped budget hearings for more than a decade, channeling capital toward sports infrastructure and away from quiet woodland buffers abutting residential blocks.`,
  (year) =>
    `Economist Dr. Helena Marsh argued in ${year} that automation would uniformly reduce manufacturing employment within a decade, citing early robotics deployments at automotive plants. Her widely cited forecast treated every factory task as equally susceptible to machine substitution and predicted that retraining programs could absorb displaced workers only if launched immediately at national scale. Editorial boards amplified the claim, and several legislatures debated emergency wage subsidies before longitudinal plant-level data had accumulated. Marsh acknowledged uncertainty in footnotes but insisted that historical parallels with earlier mechanization waves supported a rapid net job loss scenario rather than a gradual occupational reshuffling.`,
];

const CTC_TEXT2_BODIES = [
  (year) =>
    `A longitudinal ${year} study tracked children living within a five-minute walk of neighborhood parks and found that they read outdoors more frequently and reported lower cortisol levels, even when they rarely participated in structured athletics. Parents described parks as quiet venues for homework and conversation rather than exclusively as athletic facilities. Classroom teachers linked the outdoor reading habit to stronger summary writing on informational texts, suggesting cognitive benefits unrelated to heart-rate elevation. The researchers cautioned that correlation does not prove causation, yet the pattern held after controlling for household income and baseline reading scores. Municipal designers reviewing the data began prototyping shaded reading nooks and low-noise play zones distinct from soccer fields.`,
  (year) =>
    `A ${year} industry analysis found that factories adopting collaborative robots often reclassified rather than eliminated roles, with technicians maintaining automated cells and logistics staff managing reconfigured supply lines. Productivity gains appeared gradually over four years, and total headcount at studied plants remained within five percent of pre-automation levels while output per shift rose. The report emphasized that firms paired technology purchases with apprenticeship tracks, contradicting narratives of instantaneous workforce collapse. Surveyed managers ranked task redesign and safety retraining as more decisive than the robots themselves for sustaining employment quality.`,
];

const NOTES_SETS = [
  (n) =>
    `• Literacy intervention ${n} mandated structured pair-discussion protocols during informational-text units\n• Comprehension scores rose twelve points on post-tests versus a four-point gain for worksheet-only cohorts\n• Teachers observed students citing textual evidence during disagreements\n• Scripted prompts required each partner to paraphrase a counterargument before advancing a claim\n• District coaches recorded higher engagement during observed lessons in discussion classrooms`,
  (n) =>
    `• Turbine prototype ${n} employs tubercle-inspired blade geometry modeled on humpback whale fins\n• Field tests documented twelve-percent efficiency gains at moderate wind speeds\n• Conventional flat-blade designs underperformed at identical wind speeds in controlled comparisons\n• Overnight noise monitoring confirmed compliance with local residential ordinances\n• Six-month field monitoring showed gains persisted across seasonal wind variability`,
  (n) =>
    `• Reef survey ${n} compared sites with depleted parrotfish biomass to no-take reserve sites\n• Coral recruitment fell sharply where grazing intensity declined despite stable temperature and salinity\n• Transects showed bare rock patches reappeared only when herbivore populations recovered\n• Policy briefs recommend no-take zones sized to herbivore home ranges\n• Authors caution that local reef geology still influences settlement success`,
  (n) =>
    `• Memory study ${n} matched study duration across sleep and wake cohorts\n• Sleep group outperformed wake group on immediate and twenty-four-hour delayed recall tests\n• Hippocampal imaging subsamples showed differential activation during retrieval\n• Researchers plan replication with longer study materials\n• Lab conditions may limit generalization to classroom learning`,
];

const HARD_TRA_CONTRAST = [
  "Blurring the sharp contrast the passage has drawn between the two claims,",
  "Complicating the binary the author has established in the opening paragraphs,",
  "Undermining the neat separation outlined above between cause and effect,",
  "Qualifying the sweeping claim made in the prior sentence with added nuance,",
];

const HARD_TRA_CAUSE = [
  "Drawing the logical consequence from the evidence just presented in the passage,",
  "Extending the causal chain the author has begun to trace across the study,",
  "Building directly on the mechanism described above in the preceding analysis,",
];

const HARD_TRA_ADDITION = [
  "Extending the author's line of reasoning further into the policy implications,",
  "Reinforcing the cumulative case the passage has assembled through converging evidence,",
  "Adding a parallel example that deepens the same point about methodological limits,",
];

const HARD_TRA_EXAMPLE = [
  "Illustrating the abstract claim with a concrete case drawn from the data,",
  "Grounding the general statement in a specific instance the researchers documented,",
];

const CHALLENGED_OPTION_SUFFIXES = [
  "The passage does not support this reading without additional textual evidence.",
  "This choice extends beyond what the authors explicitly claim or carefully qualify.",
  "No line in the stimulus anchors this interpretation as the best available answer.",
  "The wording oversimplifies a relationship the passage presents as conditional or bounded.",
  "This option imports a conclusion the text never states or reasonably implies.",
  "The selection misreads the scope of the claim the authors intend to advance.",
  "Evidence in the passage contradicts or fails to corroborate this interpretation.",
  "The answer treats a provisional finding as settled in a way the text rejects.",
];

export function sentenceCount(text) {
  if (!text) return 0;
  return String(text)
    .trim()
    .split(/(?<=[.!?])\s+/)
    .filter((s) => s.replace(/[.!?]+$/, "").trim().length > 0).length;
}

export function optionWordCount(text) {
  if (!text) return 0;
  return String(text).trim().split(/\s+/).filter(Boolean).length;
}

/** Ensure challenged-tier options are two complete sentences. */
export function ensureTwoSentenceOption(text, n = 0) {
  const trimmed = String(text ?? "").trim();
  if (sentenceCount(trimmed) >= 2) return trimmed;
  const base = trimmed.replace(/[.!?]+$/, "");
  const suffix = CHALLENGED_OPTION_SUFFIXES[n % CHALLENGED_OPTION_SUFFIXES.length];
  return `${base}. ${suffix}`;
}

export function mkChallengedOpts(correctId, texts, expls) {
  const twoSentTexts = texts.map((t, i) => ensureTwoSentenceOption(t, i));
  return mkOpts(correctId, twoSentTexts, expls);
}

const SIMPLE_TRANSITION_MAP = {
  however: "contrast", nevertheless: "contrast", yet: "contrast",
  therefore: "cause", thus: "cause", consequently: "cause",
  similarly: "addition", moreover: "addition", furthermore: "addition",
  "for example": "example", "for instance": "example",
};

export function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

export function longPassage(n) {
  return LONG_PASSAGES[n % LONG_PASSAGES.length](n + 1);
}

export function hardPassage(n) {
  return HARD_PASSAGES[n % HARD_PASSAGES.length](n + 1);
}

export function passageForDifficulty(difficulty, n) {
  return difficulty === "hard" ? hardPassage(n) : longPassage(n);
}

export function charLen(text) {
  return text ? String(text).length : 0;
}

const LETTERS = ["A", "B", "C", "D"];

/** Rotate correct letter for batch balance (~25% each A–D). */
export function rotateCorrectId(index, offset = 0) {
  return LETTERS[(index + offset) % 4];
}

export function optionCharSpreadPct(texts) {
  const lens = texts.map((t) => charLen(t));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

export function optionWordSpreadPct(texts) {
  const lens = texts.map((t) => optionWordCount(t));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

const DISTRACTOR_LENGTH_PADS = [
  "as the student's research notes explicitly document in the bullet list",
  "according to the specific details recorded in the student's project notes",
  "in ways that align with the methodological cautions the notes describe",
  "reflecting the bounded claims the student's notes summarize for the assignment",
  "consistent with the evidence the student collected while researching the topic",
  "matching the scope of facts the bullet notes provide without outside inference",
  "within the limits of what the student's documented sources actually support",
  "as outlined in the student's notes rather than from unsupported outside knowledge",
];

function padDistractorToChars(text, targetChars, padStart) {
  let result = String(text ?? "").trim();
  if (!result.endsWith(".")) result += ".";
  let i = padStart;
  while (charLen(result) < targetChars && i - padStart < 12) {
    result += ` ${DISTRACTOR_LENGTH_PADS[i % DISTRACTOR_LENGTH_PADS.length]}.`;
    i++;
  }
  return result;
}

function trimOptionToChars(text, maxChars) {
  let result = String(text ?? "").trim();
  if (charLen(result) <= maxChars) return result.endsWith(".") ? result : `${result}.`;
  const words = result.replace(/[.!?]+$/, "").split(/\s+/);
  let built = "";
  for (const w of words) {
    const next = built ? `${built} ${w}` : w;
    if (charLen(next) + 1 > maxChars) break;
    built = next;
  }
  return built.endsWith(".") ? built : `${built}.`;
}

function trimOptionToWords(text, maxWords) {
  const words = String(text ?? "").trim().replace(/[.!?]+$/, "").split(/\s+/).filter(Boolean);
  if (words.length <= maxWords) {
    const s = words.join(" ");
    return s.endsWith(".") ? s : `${s}.`;
  }
  return `${words.slice(0, maxWords).join(" ")}.`;
}

/**
 * Pad distractors only (never the correct answer) to meet char/word spread ≤ maxSpreadPct.
 * @param {string} correctText
 * @param {string[]} distractorTexts length 3
 * @param {{ maxSpreadPct?: number, varyLongestIndex?: number|null }} [opts]
 */
export function balanceOptionLengths(correctText, distractorTexts, { maxSpreadPct = 15, varyLongestIndex = null } = {}) {
  const texts = [correctText, ...distractorTexts.slice(0, 3)];

  const rebalance = () => {
    const correctChars = charLen(texts[0]);
    const correctWords = optionWordCount(texts[0]);
    const minChars = Math.max(1, Math.ceil(correctChars / (1 + maxSpreadPct / 100)));
    const maxChars = Math.floor(correctChars * (1 + maxSpreadPct / 100));
    const wordSlack = Math.max(1, Math.floor(correctWords * (maxSpreadPct / 100)));

    for (let i = 1; i < 4; i++) {
      if (charLen(texts[i]) < minChars) {
        texts[i] = padDistractorToChars(texts[i], minChars, i);
      }
      if (charLen(texts[i]) > maxChars) {
        texts[i] = trimOptionToChars(texts[i], maxChars);
      }
      let wc = optionWordCount(texts[i]);
      let guard = 0;
      while (wc < correctWords - wordSlack && guard < 10) {
        texts[i] = padDistractorToChars(texts[i], charLen(texts[i]) + 28, i + guard);
        wc = optionWordCount(texts[i]);
        guard++;
      }
      if (wc > correctWords + wordSlack) {
        texts[i] = trimOptionToWords(texts[i], correctWords + wordSlack);
      }
    }

    if (varyLongestIndex != null && varyLongestIndex % 4 !== 0) {
      const distIdx = 1 + ((varyLongestIndex >> 2) % 3);
      const floorChars = Math.min(...texts.map(charLen));
      const allowedMax = Math.floor(floorChars * (1 + maxSpreadPct / 100));
      if (charLen(texts[distIdx]) <= charLen(texts[0])) {
        texts[distIdx] = padDistractorToChars(
          texts[distIdx],
          Math.min(allowedMax, charLen(texts[0]) + Math.max(2, Math.floor(charLen(texts[0]) * 0.06))),
          distIdx + varyLongestIndex,
        );
      }
      for (let i = 1; i < 4; i++) {
        if (charLen(texts[i]) > allowedMax) texts[i] = trimOptionToChars(texts[i], allowedMax);
        if (optionWordCount(texts[i]) > optionWordCount(texts[0]) + wordSlack) {
          texts[i] = trimOptionToWords(texts[i], optionWordCount(texts[0]) + wordSlack);
        }
      }
    }
  };

  const tighten = () => {
    const wordLens = texts.map((t) => optionWordCount(t));
    const minW = Math.min(...wordLens);
    const maxW = Math.max(...wordLens);
    const avgW = wordLens.reduce((a, b) => a + b, 0) / wordLens.length;
    const wordSpread = avgW > 0 ? (100 * (maxW - minW)) / avgW : 0;
    if (wordSpread > maxSpreadPct) {
      const targetW = optionWordCount(texts[0]);
      const slack = Math.max(1, Math.floor(targetW * (maxSpreadPct / 100)) - 1);
      for (let i = 1; i < 4; i++) {
        if (optionWordCount(texts[i]) > targetW + slack) {
          texts[i] = trimOptionToWords(texts[i], targetW + slack);
        }
        if (optionWordCount(texts[i]) < targetW - slack) {
          texts[i] = padDistractorToChars(texts[i], charLen(texts[i]) + 25, i);
        }
      }
      const minW = Math.min(...texts.map(optionWordCount));
      for (let i = 1; i < 4; i++) {
        if (optionWordCount(texts[i]) === minW && minW < targetW - 1) {
          texts[i] = padDistractorToChars(texts[i], charLen(texts[i]) + 35, i + 7);
        }
      }
    }
    const charLens = texts.map(charLen);
    const minC = Math.min(...charLens);
    const maxAllowedC = Math.floor(minC * (1 + maxSpreadPct / 100));
    for (let i = 1; i < 4; i++) {
      if (charLen(texts[i]) > maxAllowedC) texts[i] = trimOptionToChars(texts[i], maxAllowedC);
      if (charLen(texts[i]) < minC) texts[i] = padDistractorToChars(texts[i], minC, i);
    }
  };

  for (let round = 0; round < 8; round++) {
    rebalance();
    tighten();
  }

  return texts;
}

/** @deprecated use balanceOptionLengths({ varyLongestIndex }) */
export function varyLongestChoice(texts, index) {
  return balanceOptionLengths(texts[0], texts.slice(1), { varyLongestIndex: index });
}

/** Build options with letter rotation; texts[0] is always the correct answer. */
export function buildBalancedOpts(index, texts, expls, offset = 0) {
  const correctId = rotateCorrectId(index, offset);
  const order = LETTERS;
  const correctIdx = order.indexOf(correctId);
  const rotatedTexts = order.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  const rotatedExpls = order.map((_, i) => expls[(i - correctIdx + 4) % 4]);
  return { options: mkOpts(correctId, rotatedTexts, rotatedExpls), correctId };
}

function transitionKind(text) {
  const key = String(text ?? "").trim().toLowerCase().replace(/[.,;:!?]+$/, "");
  return SIMPLE_TRANSITION_MAP[key] ?? "contrast";
}

function traPool(kind) {
  if (kind === "cause") return HARD_TRA_CAUSE;
  if (kind === "addition") return HARD_TRA_ADDITION;
  if (kind === "example") return HARD_TRA_EXAMPLE;
  return HARD_TRA_CONTRAST;
}

export function longTraOptions(correctId, correctText, n, { challenged = false } = {}) {
  const kind = transitionKind(correctText);
  const pool = traPool(kind);
  const correct = pool[n % pool.length];
  const others = [...HARD_TRA_CONTRAST, ...HARD_TRA_CAUSE, ...HARD_TRA_ADDITION, ...HARD_TRA_EXAMPLE].filter((p) => p !== correct);
  const distractors = [];
  for (let i = 0; distractors.length < 3; i++) {
    const d = others[(n + i * 3) % others.length];
    if (!distractors.includes(d)) distractors.push(d);
  }
  let texts = [correct, ...distractors];
  const order = ["A", "B", "C", "D"];
  const correctIdx = order.indexOf(correctId);
  let rotated = order.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  if (challenged) {
    rotated = rotated.map((t, i) =>
      ensureTwoSentenceOption(
        `${t} the subsequent clause must preserve the rhetorical relationship established above.`,
        n + i,
      ),
    );
  }
  const expls = rotated.map((t, i) => {
    const id = order[i];
    if (id === correctId) {
      return `${t} This participial phrase signals ${kind} while preserving sentence grammar, matching Digital SAT hard transition expectations.`;
    }
    return `${t} This phrase suggests a different rhetorical relationship than the one required between the two clauses.`;
  });
  return mkOpts(correctId, rotated, expls);
}

function buildExplanation(main, correctId, options, stimulus) {
  const correct = options.find((o) => o.id === correctId)?.text ?? "";
  const snippet = stimulus ? stimulus.replace(/\s+/g, " ").trim().slice(0, 100) : "";
  const parts = [main.endsWith(".") ? main : `${main}.`];
  if (snippet) {
    parts.push(`The stimulus anchors the correct choice in language such as "${snippet}…".`);
  }
  parts.push(`Choice ${correctId} is correct: ${String(correct).slice(0, 120)}${correct.length > 120 ? "…" : ""}.`);
  parts.push("Incorrect options contradict explicit details, import absent information, or answer a different question than the stem asks.");
  return parts.join(" ");
}

export function ctcStimulus(n, difficulty) {
  const year1 = 2010 + (n % 8);
  const year2 = 2020 + (n % 6);
  const t1 = CTC_TEXT1_BODIES[n % CTC_TEXT1_BODIES.length](year1);
  const t2 = CTC_TEXT2_BODIES[n % CTC_TEXT2_BODIES.length](year2);
  if (difficulty === "hard") {
    const extra1 = " Proponents of the narrow model dismissed qualitative health interviews as anecdotal, yet those interviews repeatedly surfaced in later policy revisions.";
    const extra2 = " Interview transcripts quoted caregivers describing parks as extensions of living rooms during heat waves, a use pattern absent from exercise-only metrics.";
    return `Text 1\n${t1}${extra1}\n\nText 2\n${t2}${extra2}`;
  }
  return `Text 1\n${t1}\n\nText 2\n${t2}`;
}

function inferVariant(n) {
  return n % 3;
}

/**
 * @returns {{ stimulus_text, stimulus_type, question_text, options, correct_answer, explanation, rw_subtype?, rw_format? }}
 */
export function generateRwQuestion(skill, difficulty, index) {
  const n = index + 1;
  const p = passageForDifficulty(difficulty, n);
  const meta = {};

  if (skill === "CID") {
    meta.rw_subtype = "main_idea";
    return {
      ...meta,
      stimulus_text: p,
      stimulus_type: "passage",
      question_text:
        n % 3 === 0
          ? "Which choice best states the main idea of the passage?"
          : "According to the passage, which statement is best supported by the text?",
      options: mkOpts(
        "A",
        [
          "Protecting herbivorous fish helps reefs recover because grazing controls algae and enables coral settlement.",
          "Reefs never recover once algae appear, regardless of grazing or recruitment.",
          "The passage rejects scientific study of reefs in favor of anecdotal fishing reports.",
          "Coral larvae cannot survive on any hard surface mentioned in marine research.",
        ],
        [
          "The passage centers on grazing, algae control, and coral recruitment as interconnected processes.",
          "The passage describes recovery mechanisms; it does not claim permanent loss once algae appear.",
          "The passage cites research and field surveys; it does not reject scientific methods.",
          "The passage states larvae settle on bare rock when grazing permits it.",
        ],
      ),
      correct_answer: "A",
      explanation: buildExplanation("The passage develops a causal chain linking herbivory to reef recovery.", "A", mkOpts("A", ["x"], ["x"]), p),
    };
  }

  if (skill === "COE") {
    const twoPart = n % 2 === 0;
    meta.rw_format = twoPart ? "two_part_evidence" : "supporting_finding";
    meta.rw_subtype = twoPart ? "part_a_part_b" : "textual_evidence";
    const claim =
      "protecting herbivorous fish is a functional requirement for reef recovery after disturbance";
    if (twoPart) {
      return {
        ...meta,
        stimulus_text: p,
        stimulus_type: "passage",
        question_text: `Part A: Which choice best states the author's main claim about reef recovery?\n\nPart B: Which quotation from the passage best supports the answer to Part A?`,
        options: mkOpts(
          "B",
          [
            '"Policy briefs cited in the study recommend arbitrary coastline percentages without reference to ecology."',
            '"The team argues that protecting herbivorous fish is not merely a conservation aesthetic but a functional requirement for reef recovery after bleaching events."',
            '"Water temperature and salinity remained stable at every monitored site throughout the study period."',
            '"Marine biologists studying reef ecosystems publish findings in peer-reviewed journals each year."',
          ],
          [
            "This sentence discusses policy briefs but does not state the author's main functional claim about herbivory.",
            "This quotation directly states the functional requirement claim that Part A identifies as central.",
            "Temperature stability is supporting context, not the main claim about herbivorous fish.",
            "Publication venue is irrelevant to the author's argument about reef recovery mechanisms.",
          ],
        ),
        correct_answer: "B",
        explanation: buildExplanation(
          `Part A: The author's main claim is that ${claim}. Part B: The best supporting quotation explicitly states that protecting herbivorous fish is a functional requirement.`,
          "B",
          mkOpts("B", ["x"], ["x"]),
          p,
        ),
      };
    }
    return {
      ...meta,
      stimulus_text: p,
      stimulus_type: "passage",
      question_text:
        "Which finding from the passage, if true, would best support the author's claim about organizational adaptation during supply-chain disruption?",
      options: mkOpts(
        "B",
        [
          "National chains never order from wholesalers under any circumstances.",
          "Local wholesalers could restock small retailers within days while centralized distribution remained delayed.",
          "Supply chains never stall in modern economies.",
          "Printed astronomical tables spread faster than camel caravans.",
        ],
        [
          "Irrelevant to adaptation speed during logistics failures.",
          "Explains why small retailers adapted quickly via local restocking.",
          "Contradicts the passage's premise that supply chains stalled.",
          "Belongs to a different passage about desert trade.",
        ],
      ),
      correct_answer: "B",
      explanation: buildExplanation("The passage claims small retailers adapted faster when logistics failed.", "B", mkOpts("B", ["x"], ["x"]), p),
    };
  }

  if (skill === "INF") {
    const variant = inferVariant(n);
    if (variant === 1) {
      meta.rw_subtype = "prediction";
      return {
        ...meta,
        stimulus_text: p,
        stimulus_type: "passage",
        question_text:
          "Based on the passage, which outcome would the author most likely describe at the end of a follow-up report on this research?",
        options: mkOpts(
          "C",
          [
            "The researchers would abandon the project because initial results contradicted every hypothesis they had registered.",
            "Replication efforts would be unnecessary once a single pilot study produced a statistically significant result.",
            "A follow-up report would likely emphasize extending the finding to related contexts while noting methodological limits the authors already acknowledge.",
            "The passage would conclude that policymakers should ignore the evidence until universal proof is established across all ecosystems.",
          ],
          [
            "The passage reports published findings; it does not suggest abandoning the project.",
            "The authors explicitly call for replication rather than treating one pilot as definitive.",
            "Prediction items ask what logically follows from cautiously stated findings; extension with limits matches the passage's tone.",
            "The passage urges intervention-oriented interpretation, not indefinite policy delay.",
          ],
        ),
        correct_answer: "C",
        explanation: buildExplanation(
          "The passage presents findings with stated limitations yet implies broader applicability—typical of prediction/forecast inference items.",
          "C",
          mkOpts("C", ["x"], ["x"]),
          p,
        ),
      };
    }
    if (variant === 2) {
      meta.rw_subtype = "implication";
      return {
        ...meta,
        stimulus_text: p,
        stimulus_type: "passage",
        question_text: "Which choice most logically follows from the passage as a whole?",
        options: mkOpts(
          "B",
          [
            "Readers should dismiss the study because laboratory conditions never resemble real classrooms or ecosystems.",
            "The described mechanism could inform practice or policy beyond the immediate case, though the authors stop short of universal claims.",
            "The passage proves that every similar system will behave identically in all future circumstances.",
            "The authors conceal contradictory data that would invalidate the reported pattern.",
          ],
          [
            "The passage acknowledges limits but still draws implications; it does not urge total dismissal.",
            "Implication items reward reasonable extension with acknowledged bounds.",
            "The passage explicitly cautions against overgeneralization.",
            "No evidence of concealed data appears in the text.",
          ],
        ),
        correct_answer: "B",
        explanation: buildExplanation("The passage supports a bounded implication rather than absolute proof.", "B", mkOpts("B", ["x"], ["x"]), p),
      };
    }
    meta.rw_subtype = "general";
    return {
      ...meta,
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: "Which choice can most reasonably be inferred from the passage?",
      options: mkOpts(
        "C",
        [
          "The researchers refused to publish results because findings contradicted their hypothesis.",
          "Every participant always fails when the studied variable is absent.",
          "The described mechanism could apply beyond the specific example given in the passage.",
          "The passage lists exact retail prices for all goods mentioned.",
        ],
        [
          "The passage reports published findings; it does not suggest suppression.",
          "Too absolute; the passage compares groups under controlled conditions.",
          "Reasonable inference with stated limitations noted in the text.",
          "No pricing information appears.",
        ],
      ),
      correct_answer: "C",
      explanation: buildExplanation("The passage implies a principle beyond the immediate case with explicit cautions.", "C", mkOpts("C", ["x"], ["x"]), p),
    };
  }

  if (skill === "CTC") {
    meta.rw_subtype = "cross_text_response";
    meta.rw_format = "text_1_text_2";
    const stimulus = ctcStimulus(n, difficulty);
    const q =
      n % 2 === 0
        ? "Based on the texts, how would the author of Text 2 most likely respond to the claim articulated in Text 1?"
        : "Which choice best describes a difference in how the authors of Text 1 and Text 2 view the issue discussed in the texts?";
    return {
      ...meta,
      stimulus_text: stimulus,
      stimulus_type: "passage",
      question_text: q,
      options: mkOpts(
        "B",
        [
          "By agreeing that only the narrow outcome emphasized in Text 1 matters for policy decisions.",
          "By demonstrating benefits or evidence in Text 2 that Text 1's framework fails to account for.",
          "By claiming the phenomenon described in both texts does not exist in any community.",
          "By rejecting all empirical methods regardless of the data presented in Text 2.",
        ],
        [
          "Text 2 widens the benefit model; its author would not fully endorse Text 1's narrow framing.",
          "Text 2 documents outcomes outside Text 1's metric, directly challenging its exclusivity.",
          "Text 2 affirms the phenomenon; it disputes the narrow interpretation, not existence.",
          "Text 2 is empirical research; it does not dismiss research categorically.",
        ],
      ),
      correct_answer: "B",
      explanation: buildExplanation("Text 1 advances a narrow claim; Text 2 documents broader benefits or gradual effects that complicate Text 1.", "B", mkOpts("B", ["x"], ["x"]), stimulus),
    };
  }

  if (skill === "TSP") {
    meta.rw_subtype = "structure";
    const purposes = [
      "to explain a cause-and-effect relationship supported by field evidence",
      "to compare two organizational responses to the same disruptive problem",
      "to describe how investigators moved from observation to tested conclusion",
    ];
    const purpose = purposes[n % 3];
    return {
      ...meta,
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: "Which choice best describes the overall structure of the passage?",
      options: mkOpts(
        "A",
        [
          `The passage is organized ${purpose}.`,
          "The passage lists unrelated facts with no thematic connection between paragraphs.",
          "The passage argues that scientific research should be abandoned as unreliable.",
          "The passage provides a chronological biography of one individual from childhood to retirement.",
        ],
        [
          `The passage develops an explanatory arc matching ${purpose}.`,
          "The passage connects ideas across paragraphs; it is not a random list.",
          "The passage presents research findings rather than rejecting inquiry.",
          "No single biography structures the passage.",
        ],
      ),
      correct_answer: "A",
      explanation: buildExplanation(`The passage is organized ${purpose}.`, "A", mkOpts("A", ["x"], ["x"]), p),
    };
  }

  if (skill === "WIC") {
    meta.rw_subtype = "vocabulary_in_context";
    const words =
      difficulty === "hard"
        ? TIER23_WORDS
        : ["mitigate", "tenuous", "bolster", "ambiguous", "scrutinize"];
    const word = words[n % words.length];
    const passage = `${p} The team's initial conclusion remained ${word} until replicated trials across all three field sites corroborated the pattern.`;
    const defs = {
      equivocal: ["unambiguous", "open to more than one interpretation", "permanently settled", "fabricated"],
      mitigate: ["to worsen", "to lessen or make less severe", "to ignore", "to multiply"],
      tenuous: ["obvious", "fragile or weakly supported", "permanent", "loud"],
      bolster: ["to weaken", "to support or strengthen", "to hide", "to erase"],
    };
    const texts = defs[word] ?? ["incorrect", "correct meaning", "wrong", "wrong2"];
    const correctId = difficulty === "hard" ? "B" : "B";
    const expls = texts.map((t, i) => {
      const id = ["A", "B", "C", "D"][i];
      return id === correctId
        ? `"${word}" fits "${t}" given the provisional conclusion awaiting replication.`
        : `"${t}" contradicts the sentence logic requiring a provisional judgment.`;
    });
    return {
      ...meta,
      stimulus_text: passage,
      stimulus_type: "passage",
      question_text: `As used in the passage, "${word}" most nearly means`,
      options: mkOpts(correctId, texts, expls),
      correct_answer: correctId,
      explanation: buildExplanation(`Context shows the conclusion required replication; "${word}" must fit a provisional sense.`, correctId, mkOpts(correctId, texts, expls), passage),
    };
  }

  if (skill === "SYN") {
    meta.rw_subtype = "notes_synthesis";
    meta.rw_format = "bullet_notes";
    const notes = NOTES_SETS[n % NOTES_SETS.length](n);
    const goals = [
      "emphasize the most empirically supported approach documented in the notes",
      "introduce the turbine design and its measured performance advantage",
      "explain why protecting herbivorous fish matters for reef recovery",
      "summarize how sleep affected recall in the controlled study",
    ];
    const goal = goals[n % goals.length];
    return {
      ...meta,
      stimulus_text: notes,
      stimulus_type: "passage",
      question_text: `The student wants to ${goal}. Which choice most effectively uses relevant information from the notes to accomplish this goal?`,
      options: mkOpts(
        "A",
        [
          `Structured pair discussion in intervention ${n} outperformed worksheets, producing a twelve-point comprehension gain supported by teacher observations.`,
          "Whale-fin tubercles inspired unrelated inventions that the notes never mention or evaluate.",
          "Worksheets are the only valid tool because they require silent focus regardless of measured outcomes.",
          "Reported score changes in the notes prove instructional methods never influence learning.",
        ],
        [
          "Synthesizes the notes to highlight the approach linked to the largest measured gain.",
          "Imports information absent from the notes.",
          "Contradicted by the notes' reported gains for discussion.",
          "Contradicted by documented score changes for both cohorts.",
        ],
      ),
      correct_answer: "A",
      explanation: buildExplanation("Notes synthesis items require selecting the option that accomplishes the stated rhetorical goal using only note content.", "A", mkOpts("A", ["x"], ["x"]), notes),
    };
  }

  if (skill === "TRA") {
    meta.rw_subtype = "transition";
    const sentences = `The first trial failed to detect a statistically reliable effect despite adequate sample size. ______ the second trial, which enrolled more participants and extended the observation window, showed a clear pattern consistent with the researchers' hypothesis.`;
    if (difficulty === "hard") {
      const correctId = "A";
      const opts = longTraOptions(correctId, "However", n);
      return {
        ...meta,
        stimulus_text: sentences,
        stimulus_type: null,
        question_text: "Which choice completes the text with the most logical transition?",
        options: opts,
        correct_answer: correctId,
        explanation: buildExplanation("The clauses contrast a null first trial with a successful second trial.", correctId, opts, sentences),
      };
    }
    const transitions = [["However,", "Therefore,", "Similarly,", "For example,"], ["Nevertheless,", "Thus,", "Meanwhile,", "In contrast,"]];
    const [correct, w1, w2, w3] = transitions[n % 2];
    const correctId = "A";
    return {
      ...meta,
      stimulus_text: sentences,
      stimulus_type: null,
      question_text: "Which choice completes the text with the most logical transition?",
      options: mkOpts(
        correctId,
        [correct, w1, w2, w3],
        [
          `${correct} signals contrast between failed and successful trials.`,
          `${w1} implies consequence rather than contrast.`,
          `${w2} suggests addition or simultaneity where contrast is required.`,
          `${w3} introduces example or mismatched relation.`,
        ],
      ),
      correct_answer: correctId,
      explanation: buildExplanation(`Contrast transition ${correct} links the two trial outcomes.`, correctId, mkOpts(correctId, ["x"], ["x"]), sentences),
    };
  }

  if (skill === "BOU") {
    meta.rw_subtype = "boundaries";
    const variants = [
      { stem: "The committee reviewed the proposal it was thorough and well documented", correct: "proposal; it", distractors: ["proposal, it", "proposal it", "proposal: it"] },
      { stem: "After the lecture ended the students asked follow up questions", correct: "ended, the", distractors: ["ended the", "ended; the", "ended: the"] },
    ];
    const v = variants[n % variants.length];
    const opts = [v.correct, ...v.distractors.filter((d) => d !== v.correct)].slice(0, 4);
    const correctId = ["A", "B", "C", "D"][opts.indexOf(v.correct)];
    return {
      ...meta,
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which choice completes the sentence so that it follows the conventions of Standard English?\n\n${v.stem} ______ continued.`,
      options: mkOpts(
        correctId,
        opts.map((o) => `…${o}…`),
        opts.map((o) => (o === v.correct ? "Correct boundary punctuation." : `Incorrect boundary: …${o}… creates a run-on or splice.`)),
      ),
      correct_answer: correctId,
      explanation: buildExplanation("Boundary items require recognizing where one clause ends and the next begins.", correctId, mkOpts(correctId, ["x"], ["x"]), null),
    };
  }

  if (skill === "FSS") {
    meta.rw_subtype = "form_structure_sense";
    const items = [
      { bad: "Neither the coaches nor the athlete were ready", good: "was", wrong: ["were", "are", "have been"] },
      { bad: "The data from the experiments suggest a trend", good: "suggests", wrong: ["suggest", "suggesting", "have suggested"] },
    ];
    const it = items[n % items.length];
    const correctId = "B";
    return {
      ...meta,
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which choice completes the text so that it conforms to the conventions of Standard English?\n\n${it.bad} ______ conclusive.`,
      options: mkOpts(
        correctId,
        [it.wrong[0], it.good, it.wrong[1], it.wrong[2]],
        [
          `Agreement error: requires "${it.good}".`,
          `Correct verb form "${it.good}".`,
          `Agreement error: "${it.wrong[1]}" does not match.`,
          `Wrong tense: "${it.wrong[2]}".`,
        ],
      ),
      correct_answer: correctId,
      explanation: buildExplanation(`The subject requires "${it.good}" for agreement.`, correctId, mkOpts(correctId, ["x"], ["x"]), null),
    };
  }

  throw new Error(`Unsupported RW skill: ${skill}`);
}

export function metadataFromQuestion(q) {
  const out = {};
  if (q.rw_subtype) out.rw_subtype = q.rw_subtype;
  if (q.rw_format) out.rw_format = q.rw_format;
  return out;
}
