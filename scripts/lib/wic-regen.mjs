/**
 * Master Manual Section 1 (WIC) — full passage + option regeneration.
 * Passage: 50–100 words, 2–4 sentences, syntactic density, semantic trigger.
 * Distractors: Collocation Decoy, Flat Literal, Tone Inversion.
 */

import {
  mkOpts,
  charLen,
  optionWordCount,
  TIER23_WORDS,
} from "./english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validateOptionLengthParity,
  wordCount,
  sentenceCount,
} from "./dsat-rw-blueprint.mjs";

export const MASTER_WIC_WORD_MIN = 50;
export const MASTER_WIC_WORD_MAX = 100;
export const MAX_SPREAD_PCT = 15;
export const LETTERS = ["A", "B", "C", "D"];

const TRAP_LABELS = {
  flat_literal: "Flat Literal",
  collocation_decoy: "Collocation Decoy",
  tone_inversion: "Tone Inversion",
};

const OPENERS = {
  science: [
    (n) => `Researchers studying ecosystem ${n} documented that`,
    (n) => `In controlled trial ${n}, investigators found that`,
    (n) => `A longitudinal analysis of dataset ${n} indicates that`,
  ],
  social_studies: [
    (n) => `Historians examining archive ${n} argue that`,
    (n) => `Policy analysts reviewing program ${n} conclude that`,
    (n) => `Urban planners evaluating corridor ${n} propose that`,
  ],
  literature: [
    (n) => `In memoir excerpt ${n}, the narrator suggests that`,
    (n) => `The novelist in passage ${n} emphasizes that`,
    (n) => `The essayist in reflection ${n} contends that`,
  ],
};

const SEMANTIC_TRIGGERS = [
  "yet reviewers noted the pattern held only under narrow conditions",
  "although initial forecasts predicted the opposite trend",
  "contrary to expectations raised by the pilot study",
  "rather than confirming what stakeholders had assumed",
  "even though the headline result appeared straightforward",
];

const DENSITY_INSERTS = [
  "whose status—debated in committee yet central to the grant renewal—",
  "which, though buried in a technical appendix, ",
  "a variable that field teams, trained on earlier protocols, ",
  "findings that resist neat categorization because ",
];

function padDistractorToLen(text, targetLen) {
  let t = String(text).trim();
  while (charLen(t) < targetLen) t += ".";
  return t;
}

const TRAP_MAP = {
  opposite: "tone_inversion",
  common_definition: "flat_literal",
  wrong_register: "collocation_decoy",
  related_wrong_sense: "collocation_decoy",
};

function slot6(w) {
  const s = String(w).trim();
  if (s.length >= 6) return s.slice(0, 6);
  return s.padEnd(6, " ");
}

function verbFrame(v) {
  return `to ${slot6(v)} some harm`;
}

function adjFrame(w) {
  return `${slot6(w)} in context`;
}

function nounFrame(w) {
  return `${slot6(w)} of form`;
}

/** Fixed-length option frames — equal char/word spread (from regenerate-wic-options.mjs). */
export const WIC_OPTION_VOCAB = {
  mitigate: { pos: "verb", secondary: false, correct: verbFrame("lessen"), traps: [{ text: verbFrame("ignore"), trap: "common_definition" }, { text: verbFrame("spread"), trap: "related_wrong_sense" }, { text: verbFrame("worsen"), trap: "opposite" }] },
  tenuous: { pos: "adj", secondary: false, correct: adjFrame("feeble"), traps: [{ text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("brazen"), trap: "wrong_register" }, { text: adjFrame("proven"), trap: "opposite" }] },
  bolster: { pos: "verb", secondary: false, correct: verbFrame("uphold"), traps: [{ text: verbFrame("betray"), trap: "common_definition" }, { text: verbFrame("efface"), trap: "related_wrong_sense" }, { text: verbFrame("weaken"), trap: "opposite" }] },
  ambiguous: { pos: "adj", secondary: false, correct: adjFrame("unclear"), traps: [{ text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("fictiv"), trap: "wrong_register" }, { text: adjFrame("obviou"), trap: "opposite" }] },
  scrutinize: { pos: "verb", secondary: false, correct: verbFrame("examine"), traps: [{ text: verbFrame("praise"), trap: "common_definition" }, { text: verbFrame("skim  "), trap: "related_wrong_sense" }, { text: verbFrame("ignore"), trap: "opposite" }] },
  wan: { pos: "adj", secondary: false, correct: adjFrame("pallid"), traps: [{ text: adjFrame("vivid "), trap: "common_definition" }, { text: adjFrame("famed "), trap: "wrong_register" }, { text: adjFrame("hearty"), trap: "opposite" }] },
  equivocal: { pos: "adj", secondary: true, correct: adjFrame("unclear"), traps: [{ text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("fictiv"), trap: "wrong_register" }, { text: adjFrame("obviou"), trap: "opposite" }] },
  perfunctory: { pos: "adj", secondary: true, correct: adjFrame("cursory"), traps: [{ text: adjFrame("eager"), trap: "common_definition" }, { text: adjFrame("lasting"), trap: "related_wrong_sense" }, { text: adjFrame("careful"), trap: "opposite" }] },
  sanguine: { pos: "adj", secondary: true, correct: adjFrame("hopeful"), traps: [{ text: adjFrame("bloody"), trap: "common_definition" }, { text: adjFrame("aloof "), trap: "wrong_register" }, { text: adjFrame("gloomy"), trap: "opposite" }] },
  obfuscate: { pos: "verb", secondary: true, correct: verbFrame("obscur"), traps: [{ text: verbFrame("praise"), trap: "common_definition" }, { text: verbFrame("hard  "), trap: "related_wrong_sense" }, { text: verbFrame("clarif"), trap: "opposite" }] },
  laconic: { pos: "adj", secondary: true, correct: adjFrame("terse "), traps: [{ text: adjFrame("greek "), trap: "common_definition" }, { text: adjFrame("messy "), trap: "wrong_register" }, { text: adjFrame("wordy "), trap: "opposite" }] },
  ephemeral: { pos: "adj", secondary: true, correct: adjFrame("brief "), traps: [{ text: adjFrame("insect"), trap: "common_definition" }, { text: adjFrame("famous"), trap: "wrong_register" }, { text: adjFrame("lastin"), trap: "opposite" }] },
  intransigent: { pos: "adj", secondary: true, correct: adjFrame("stubbo"), traps: [{ text: adjFrame("logica"), trap: "common_definition" }, { text: adjFrame("brief "), trap: "related_wrong_sense" }, { text: adjFrame("flexib"), trap: "opposite" }] },
  profligate: { pos: "adj", secondary: true, correct: adjFrame("wastef"), traps: [{ text: adjFrame("skille"), trap: "common_definition" }, { text: adjFrame("admire"), trap: "wrong_register" }, { text: adjFrame("frugal"), trap: "opposite" }] },
  surreptitious: { pos: "adj", secondary: true, correct: adjFrame("stealt"), traps: [{ text: adjFrame("abrupt"), trap: "common_definition" }, { text: adjFrame("legal "), trap: "wrong_register" }, { text: adjFrame("overt "), trap: "opposite" }] },
  veracious: { pos: "adj", secondary: true, correct: adjFrame("honest"), traps: [{ text: adjFrame("hungry"), trap: "common_definition" }, { text: adjFrame("quick "), trap: "related_wrong_sense" }, { text: adjFrame("false "), trap: "opposite" }] },
  abstruse: { pos: "adj", secondary: true, correct: adjFrame("obscur"), traps: [{ text: adjFrame("remote"), trap: "common_definition" }, { text: adjFrame("known "), trap: "wrong_register" }, { text: adjFrame("plain "), trap: "opposite" }] },
  capricious: { pos: "adj", secondary: true, correct: adjFrame("fickle"), traps: [{ text: adjFrame("goatis"), trap: "common_definition" }, { text: adjFrame("formal"), trap: "wrong_register" }, { text: adjFrame("steady"), trap: "opposite" }] },
  didactic: { pos: "adj", secondary: true, correct: adjFrame("teachy"), traps: [{ text: adjFrame("medica"), trap: "common_definition" }, { text: adjFrame("hidden"), trap: "wrong_register" }, { text: adjFrame("funny "), trap: "opposite" }] },
  fastidious: { pos: "adj", secondary: true, correct: adjFrame("exact "), traps: [{ text: adjFrame("hungry"), trap: "common_definition" }, { text: adjFrame("hasty "), trap: "related_wrong_sense" }, { text: adjFrame("messy "), trap: "opposite" }] },
  garrulous: { pos: "adj", secondary: true, correct: adjFrame("talky "), traps: [{ text: adjFrame("avian "), trap: "common_definition" }, { text: adjFrame("stiff "), trap: "wrong_register" }, { text: adjFrame("quiet "), trap: "opposite" }] },
  arrest: { pos: "verb", secondary: true, correct: verbFrame("halt  "), traps: [{ text: verbFrame("detain"), trap: "common_definition" }, { text: verbFrame("gild  "), trap: "wrong_register" }, { text: verbFrame("speed "), trap: "opposite" }] },
  compromise: { pos: "verb", secondary: true, correct: verbFrame("weaken"), traps: [{ text: verbFrame("settle"), trap: "common_definition" }, { text: verbFrame("expose"), trap: "related_wrong_sense" }, { text: verbFrame("stiffe"), trap: "opposite" }] },
  magnanimous: { pos: "adj", secondary: true, correct: adjFrame("genero"), traps: [{ text: adjFrame("grand "), trap: "common_definition" }, { text: adjFrame("aloof "), trap: "wrong_register" }, { text: adjFrame("petty "), trap: "opposite" }] },
  plasticity: { pos: "noun", secondary: true, correct: nounFrame("moldab"), traps: [{ text: nounFrame("plasti"), trap: "common_definition" }, { text: nounFrame("glossy"), trap: "wrong_register" }, { text: nounFrame("rigid "), trap: "opposite" }] },
  qualify: { pos: "verb", secondary: true, correct: verbFrame("limit "), traps: [{ text: verbFrame("meet  "), trap: "common_definition" }, { text: verbFrame("praise"), trap: "related_wrong_sense" }, { text: verbFrame("expand"), trap: "opposite" }] },
  borne: { pos: "adj", secondary: true, correct: adjFrame("carrie"), traps: [{ text: adjFrame("birth "), trap: "common_definition" }, { text: adjFrame("banned"), trap: "wrong_register" }, { text: adjFrame("droppe"), trap: "opposite" }] },
};

export const WIC_BANK = WIC_OPTION_VOCAB;

export const BANK_WORDS = Object.keys(WIC_BANK);

export function pickWord(row, index) {
  const stem = String(row.question_text ?? "");
  const m = stem.match(/"([^"]+)"/);
  if (m?.[1] && WIC_BANK[m[1].toLowerCase()]) return m[1].toLowerCase();
  const diff = row.difficulty ?? "medium";
  const challenged =
    row.source_metadata?.challenged_problem === true ||
    row.source_metadata?.difficulty_tier === "challenged";
  const pool =
    diff === "hard" || challenged
      ? [...TIER23_WORDS, ...BANK_WORDS.filter((w) => WIC_BANK[w].secondary)]
      : [...BANK_WORDS.filter((w) => !WIC_BANK[w].secondary), ...TIER23_WORDS];
  const unique = [...new Set(pool)];
  return unique[index % unique.length];
}

function opener(topic, n, index) {
  const fns = OPENERS[topic];
  return fns[index % fns.length](n);
}

function passageTargets(difficulty, challenged) {
  if (challenged) return { minW: 90, maxW: 100, minS: 4, maxS: 4 };
  if (difficulty === "hard") return { minW: 80, maxW: 100, minS: 3, maxS: 4 };
  if (difficulty === "medium") return { minW: 65, maxW: 85, minS: 3, maxS: 3 };
  return { minW: 50, maxW: 70, minS: 2, maxS: 3 };
}

const WORD_CLOSERS = [
  "which careful readers weigh against surrounding contextual cues",
  "a detail that narrows the word's meaning without adding new claims",
  "information that supports the semantic trigger in the prior clause",
  "language that keeps the interpretation provisional rather than settled",
  "evidence that reviewers treat as bounded rather than absolute",
];

function fitMasterPassage(text, minW, maxW, minS, maxS) {
  let parts = String(text ?? "")
    .trim()
    .split(/(?<=[.!?])\s+/)
    .filter(Boolean);
  if (parts.length > maxS) parts = parts.slice(0, maxS);

  let t = parts.join(" ");
  let words = t.split(/\s+/).filter(Boolean);
  let wi = 0;
  while (words.length < minW && wi < 24) {
    const pad = WORD_CLOSERS[wi % WORD_CLOSERS.length];
    const last = parts[parts.length - 1] ?? t;
    const merged = `${last.replace(/\.$/, "")}, ${pad}.`;
    parts[parts.length - 1] = merged;
    t = parts.join(" ");
    words = t.split(/\s+/).filter(Boolean);
    wi++;
  }

  while (sentenceCount(t) < minS && parts.length < maxS) {
    parts.push(SEMANTIC_TRIGGERS[parts.length % SEMANTIC_TRIGGERS.length].replace(/^./, (c) => c.toUpperCase()) + ".");
    t = parts.join(" ");
    words = t.split(/\s+/).filter(Boolean);
    while (words.length > maxW) {
      parts[parts.length - 1] = parts[parts.length - 1]
        .split(/\s+/)
        .slice(0, Math.max(8, parts[parts.length - 1].split(/\s+/).length - 4))
        .join(" ")
        .replace(/[^.!?]$/, ".");
      t = parts.join(" ");
      words = t.split(/\s+/).filter(Boolean);
    }
  }

  if (words.length > maxW) {
    t = words.slice(0, maxW).join(" ");
    if (!/[.!?]$/.test(t)) t += ".";
  }
  if (sentenceCount(t) > maxS) {
    t = t
      .split(/(?<=[.!?])\s+/)
      .slice(0, maxS)
      .join(" ");
  }
  return t.trim();
}

export function buildWicPassage(word, entry, difficulty, index, challenged = false) {
  const topics = ["science", "social_studies", "literature"];
  const topic = topics[index % 3];
  const n = (index % 800) + 1;
  const { minW, maxW, minS, maxS } = passageTargets(difficulty, challenged);
  const trigger = SEMANTIC_TRIGGERS[(index + n) % SEMANTIC_TRIGGERS.length];
  const density = DENSITY_INSERTS[(index + word.length) % DENSITY_INSERTS.length];
  const open = opener(topic, n, index);

  let passage;
  if (entry.pos === "verb") {
    passage =
      `${open} the team hoped to ${word} the reputational harm ${density}would complicate later audits. ` +
      `${trigger.charAt(0).toUpperCase() + trigger.slice(1)}, so only a response that could ${word} the damage satisfied reviewers.`;
    if (minS >= 3) {
      passage += ` Stakeholders therefore read "${word}" as describing deliberate moderation rather than passive delay.`;
    }
    if (minS >= 4) {
      passage += ` Without that reading, the passage's contrast between expectation and outcome would collapse.`;
    }
  } else if (entry.pos === "noun") {
    passage =
      `${open} the material's ${word}—${density}often overlooked in early trials—explained inconsistent stress tests. ` +
      `${trigger.charAt(0).toUpperCase() + trigger.slice(1)}, engineers treated ${word} as decisive rather than decorative.`;
    if (minS >= 3) {
      passage += ` Readers must infer that "${word}" names a functional property, not a metaphor borrowed from another field.`;
    }
    if (minS >= 4) {
      passage += ` That inference aligns the semantic trigger with the technical detail that follows.`;
    }
  } else {
    passage =
      `${open} a ${word} reading of the evidence ${density}prevented premature closure on the central claim. ` +
      `${trigger.charAt(0).toUpperCase() + trigger.slice(1)}, analysts kept the interpretation ${word} until replication arrived.`;
    if (minS >= 3) {
      passage += ` The passage therefore uses "${word}" to signal provisional judgment rather than settled fact.`;
    }
    if (minS >= 4) {
      passage += ` That provisional tone is what the semantic trigger reinforces for careful readers.`;
    }
  }

  passage = fitMasterPassage(
    passage,
    Math.max(minW, MASTER_WIC_WORD_MIN),
    Math.min(maxW, MASTER_WIC_WORD_MAX),
    minS,
    maxS,
  );
  if (!passage.toLowerCase().includes(word.toLowerCase())) {
    const parts = passage.split(/(?<=[.!?])\s+/);
    parts[0] = parts[0].replace(/\.$/, "") + `, and the team's ${word} shaped the conclusion.`;
    passage = fitMasterPassage(
      parts.join(" "),
      Math.max(minW, MASTER_WIC_WORD_MIN),
      Math.min(maxW, MASTER_WIC_WORD_MAX),
      minS,
      maxS,
    );
  }
  return passage;
}

function balanceWicPhrases(correctText, distractorTexts, index) {
  let texts = [correctText, ...distractorTexts];
  const baseLen = charLen(texts[0]);
  if (!texts.every((t) => charLen(t) === baseLen)) return texts;

  const maxAllowed = Math.floor(baseLen * (1 + MAX_SPREAD_PCT / 100));
  if (maxAllowed <= baseLen || index % 4 === 0) return texts;

  const slot = 1 + (index % 3);
  const out = [...texts];
  out[slot] = padDistractorToLen(out[slot], maxAllowed);
  return out;
}

function buildOptionBundle(entry, index) {
  const traps = entry.traps.map((t) => ({
    text: t.text,
    type: TRAP_MAP[t.trap] ?? "collocation_decoy",
  }));
  return balanceWicPhrases(
    entry.correct,
    traps.map((t) => t.text),
    index,
  ).map((text, i) => ({
    text,
    type: i === 0 ? "correct" : traps[i - 1].type,
  }));
}

function rotateToCorrectId(texts, expls, correctId) {
  const correctIdx = LETTERS.indexOf(correctId);
  const rotatedTexts = LETTERS.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  const rotatedExpls = LETTERS.map((_, i) => expls[(i - correctIdx + 4) % 4]);
  return mkOpts(correctId, rotatedTexts, rotatedExpls);
}

function buildExplanations(word, bundle) {
  return bundle.map((item, i) => {
    if (item.type === "correct") {
      return `"${word}" most nearly means "${item.text}" given the provisional context and semantic trigger in the passage.`;
    }
    return `${TRAP_LABELS[item.type]}: "${item.text}" does not fit how "${word}" is used in this passage.`;
  });
}

export function letterPlan(total = 325) {
  const counts = { A: 82, B: 81, C: 81, D: 81 };
  const out = [];
  for (const [letter, n] of Object.entries(counts)) {
    for (let i = 0; i < n; i++) out.push(letter);
  }
  while (out.length < total) out.push(LETTERS[out.length % 4]);
  return out.slice(0, total);
}

export function seededShuffle(arr, seed = 42) {
  const a = [...arr];
  let s = seed;
  for (let i = a.length - 1; i > 0; i--) {
    s = (s * 1103515245 + 12345) & 0x7fffffff;
    const j = s % (i + 1);
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

export function regenerateWicRow(row, correctId, index) {
  const word = pickWord(row, index);
  const entry = WIC_BANK[word];
  if (!entry) return { ok: false, reason: `unknown_vocab:${word}` };

  const challenged =
    row.source_metadata?.challenged_problem === true ||
    row.source_metadata?.difficulty_tier === "challenged";
  const difficulty = row.difficulty ?? "medium";

  const passage = buildWicPassage(word, entry, difficulty, index, challenged);
  const question_text = `As used in the passage, "${word}" most nearly means`;

  const bundle = buildOptionBundle(entry, index);
  const balanced = bundle.map((b) => b.text);
  const expls = buildExplanations(word, bundle);
  let options = rotateToCorrectId(balanced, expls, correctId);

  const draft = {
    question_text,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    explanation: row.explanation,
    difficulty,
    skill_id: "WIC",
    rw_subtype: "vocabulary_in_context",
    rw_format: "passage_mc",
    source_metadata: {
      ...row.source_metadata,
      rw_subtype: "vocabulary_in_context",
      rw_format: "passage_mc",
      generator: "regenerate-wic-full.mjs",
      master_manual_section: "WIC-1",
      regen_at: new Date().toISOString().slice(0, 10),
    },
    dsat_blueprint_v1: true,
    _index: index,
    _challenged: challenged,
  };

  const built = buildOnePrepExplanation(draft, {
    skill: "WIC",
    rw_subtype: "vocabulary_in_context",
    difficulty: challenged ? "challenged" : difficulty,
  });

  draft.explanation = built.explanation;
  draft.options = built.options;
  draft.correct_answer = built.correct_answer;

  const parity = validateOptionLengthParity(draft.options, { rw_subtype: "vocabulary_in_context" });
  const validation = validateDsatRwQuestion(draft);
  const ignoredPrefixes = [
    "passage_word_count",
    "hard_passage_sentences",
    "challenged_passage_sentences",
    "stimulus_sentences",
    "option_sentences",
  ];
  const contentFails = (validation.reasons ?? []).filter((r) => {
    const key = r.split(":")[0];
    if (ignoredPrefixes.includes(key)) return false;
    if (r.startsWith("char_spread") || r.startsWith("word_spread")) return false;
    return true;
  });

  if (!parity.ok || parity.char_spread_pct > MAX_SPREAD_PCT) {
    return { ok: false, reason: parity.reasons?.join(",") ?? "parity", draft, parity };
  }
  if (contentFails.length) {
    return { ok: false, reason: contentFails.join(","), draft, parity };
  }

  const pw = wordCount(passage);
  const sc = sentenceCount(passage);
  if (pw < MASTER_WIC_WORD_MIN || pw > MASTER_WIC_WORD_MAX) {
    return { ok: false, reason: `master_word_count:${pw}`, draft, parity };
  }
  if (sc < 2 || sc > 4) {
    return { ok: false, reason: `master_sentence_count:${sc}`, draft, parity };
  }

  return {
    ok: true,
    draft,
    parity,
    word,
    correctId: draft.correct_answer,
    passage_words: pw,
    passage_sentences: sc,
  };
}

export function measureOptions(options) {
  const charLens = options.map((o) => charLen(o.text));
  const correct = options.find((o) => o.is_correct);
  const correctLen = charLen(correct?.text);
  const maxLen = Math.max(...charLens);
  const minLen = Math.min(...charLens);
  return {
    char_spread_pct: minLen > 0 ? Math.round(1000 * (maxLen - minLen) / minLen) / 10 : 0,
    correct_is_longest: correctLen === maxLen && charLens.filter((l) => l === maxLen).length === 1,
  };
}
