#!/usr/bin/env node
/**
 * Expand SAT vocabulary from curated Digital SAT sources.
 * Sources: 345 Tutoring DSAT 365, IvyMax 500, Test Advantage lists,
 * FreeVocabulary SAT6000 (majortests/freevocabulary.com), existing seed.
 * Usage: node scripts/expand-sat-vocabulary.mjs
 */
import fs from "node:fs";
import path from "node:path";

const root = path.resolve(import.meta.dirname, "..");
const outJson = path.join(root, "scripts/data/sat-vocabulary.json");
const batchDir = path.join(root, "scripts/data/vocab-batches");
const tutoringPath = path.join(
  process.env.HOME ?? "",
  ".cursor/projects/Users-yatishgrandhe-Downloads-scholaris-main/agent-tools/bbc34fb3-b243-4b24-a274-600b14d1afb5.txt",
);
const ivymaxPath = path.join(
  process.env.HOME ?? "",
  ".cursor/projects/Users-yatishgrandhe-Downloads-scholaris-main/agent-tools/a44bb9bf-1ae3-480e-960e-7d766171db2d.txt",
);
const testAdvantage2025Path = path.join(
  process.env.HOME ?? "",
  ".cursor/projects/Users-yatishgrandhe-Downloads-scholaris-main/agent-tools/35d99ac3-421a-4c5b-83ea-a9b9c0262179.txt",
);
const testAdvantage300Path = path.join(
  process.env.HOME ?? "",
  ".cursor/projects/Users-yatishgrandhe-Downloads-scholaris-main/agent-tools/80decf39-3a19-432d-a524-ef3a476c107f.txt",
);
const sat6000Path = path.join(root, "scripts/data/sat6000-source.json");

/** Skip junk entries from scraped lists. */
const SKIP_WORDS = new Set(
  [
    "blender", "fled", "impedius", "meteged", "partiate", "commonwith",
    "gaining on", "lighthearted about", "hesitancy about", "animosities toward",
    "similarities with", "collaboration with", "contingent to", "conflate with",
    "manifest in", "improve on", "indication of", "inextricable from",
    "to convene", "to vacate", "affinity for", "deserve", "discount", "replace",
    "reject", "reserve", "suppress", "occupy", "define", "popular", "peaceful",
    "traditional", "tranquil", "novel", "municipal", "relocation", "incident",
    "comparison", "consequences", "interpretation", "classification", "continuity",
    "reprieve", "synopsis", "terrace", "terraced", "jointly", "cited", "familiarize",
    "visualize", "lobbying", "monetizing", "exploiting", "influenced", "overlooked",
    "superseded", "reconstituted", "coincided with", "designate", "enumerate",
  ].map((w) => w.toLowerCase()),
);

const POS_MAP = {
  "noun.": "noun",
  "noun": "noun",
  "verb.": "verb",
  "verb": "verb",
  "adj.": "adjective",
  "adj": "adjective",
  "adjective": "adjective",
  "adv.": "adverb",
  "adv": "adverb",
  "adverb": "adverb",
};

const EASY_WORDS = new Set(
  [
    "abundant", "acclaim", "advocate", "ambiguous", "assert", "assess", "attribute",
    "beneficial", "candid", "coherent", "compelling", "concede", "conventional",
    "convey", "decisive", "deduce", "demographic", "distinctive", "emphasize",
    "enhance", "equivalent", "erratic", "exceed", "extensive", "facilitate",
    "fluctuate", "foster", "hypothesis", "illuminate", "immense", "inevitable",
    "integral", "legitimate", "lucid", "meticulous", "novel", "obvious",
    "plausible", "pragmatic", "prevalent", "profound", "prolific", "propose",
    "reinforce", "scrutinize", "singular", "substantiate", "succinct", "tangible",
    "tentative", "theoretical", "transcend", "turbulent", "ubiquitous", "universal",
    "variable", "vivid", "yield",
  ].map((w) => w.toLowerCase()),
);

const HARD_WORDS = new Set(
  [
    "aberration", "abjure", "abrogate", "abscond", "abstemious", "abstruse", "acerbic",
    "acrimony", "adulation", "adulterate", "aggrandize", "alacrity", "anathema",
    "antediluvian", "apocryphal", "approbation", "arcane", "asperity", "assiduous",
    "atavistic", "auspicious", "avarice", "bellicose", "bombastic", "cacophony",
    "cajole", "capricious", "chicanery", "clandestine", "cogent", "commensurate",
    "conflagration", "conundrum", "credulous", "dearth", "deleterious", "delineate",
    "dilatory", "dissemble", "ebullient", "egregious", "enervate", "ennui",
    "ephemeral", "equanimity", "equivocate", "erudite", "esoteric", "exculpate",
    "expiate", "expunge", "extol", "fallacious", "fastidious", "fatuous",
    "garrulous", "grandiloquent", "hackneyed", "hegemony", "hubris", "iconoclast",
    "idiosyncratic", "ignominious", "impecunious", "impetuous", "inchoate",
    "incontrovertible", "incorrigible", "indefatigable", "ineffable", "inexorable",
    "inscrutable", "insidious", "intransigent", "invective", "irascible",
    "laconic", "lambaste", "languid", "legerdemain", "loquacious", "lugubrious",
    "magnanimous", "mellifluous", "mercurial", "misanthropic", "munificent",
    "nefarious", "obdurate", "obfuscate", "obsequious", "obstreperous",
    "ossify", "ostensible", "palimpsest", "parsimonious", "pedantic", "penchant",
    "penurious", "perfidious", "perspicacious", "phlegmatic", "precocious",
    "prescient", "proclivity", "propensity", "prosaic", "puerile", "pugnacious",
    "quixotic", "recalcitrant", "recondite", "redoubtable", "sagacious",
    "sanguine", "sardonic", "spurious", "stratagem", "surreptitious", "sycophant",
    "taciturn", "trenchant", "truculent", "turgid", "umbrage", "unctuous",
    "vacillate", "venerable", "veracity", "vicarious", "vitriolic", "vociferous",
    "voracious", "winsome", "zealous",
  ].map((w) => w.toLowerCase()),
);

/** IvyMax / Barron-style supplement (definition only — examples generated). */
const IVYMAX_SUPPLEMENT = [
  ["Abdicate", "To renounce one's throne or position of power", "verb"],
  ["Aberrant", "Departing from an accepted standard", "adjective"],
  ["Abnegate", "To renounce or give up something valued", "verb"],
  ["Acrimonious", "Angry and bitter in speech or tone", "adjective"],
  ["Altruistic", "Showing selfless concern for others", "adjective"],
  ["Amorphous", "Lacking a clear structure or form", "adjective"],
  ["Anathema", "Something or someone greatly disliked", "noun"],
  ["Antipathy", "A deep-seated feeling of dislike", "noun"],
  ["Apathy", "Lack of interest or concern", "noun"],
  ["Appease", "To calm or satisfy someone", "verb"],
  ["Ardent", "Enthusiastic or passionate", "adjective"],
  ["Articulate", "Able to express ideas clearly and effectively", "adjective"],
  ["Ascetic", "Practicing severe self-discipline", "adjective"],
  ["Asperity", "Harshness of tone or manner", "noun"],
  ["Astute", "Having an ability to accurately assess situations", "adjective"],
  ["Audacious", "Showing a willingness to take bold risks", "adjective"],
  ["Auspicious", "Conducive to success; favorable", "adjective"],
  ["Avaricious", "Having extreme greed for wealth", "adjective"],
  ["Banal", "Lacking originality or freshness", "adjective"],
  ["Beguile", "To charm or enchant deceptively", "verb"],
  ["Benevolent", "Well meaning and kindly", "adjective"],
  ["Benign", "Gentle and kind; not harmful", "adjective"],
  ["Blithe", "Showing casual and cheerful indifference", "adjective"],
  ["Boisterous", "Noisy, energetic, and cheerful", "adjective"],
  ["Bombastic", "High-sounding but with little meaning", "adjective"],
  ["Brazen", "Bold and without shame", "adjective"],
  ["Brevity", "Concise and exact use of words", "noun"],
  ["Brusque", "Abrupt or blunt in manner", "adjective"],
  ["Bucolic", "Relating to pleasant aspects of the countryside", "adjective"],
  ["Cajole", "To persuade with flattery or gentle urging", "verb"],
  ["Callous", "Showing insensitive disregard for others", "adjective"],
  ["Candor", "The quality of being open and honest", "noun"],
  ["Capitulate", "To surrender or give up resistance", "verb"],
  ["Caustic", "Sarcastic and bitter in tone", "adjective"],
  ["Charlatan", "A person falsely claiming expertise", "noun"],
  ["Chicanery", "The use of trickery to achieve a purpose", "noun"],
  ["Clandestine", "Kept secret, especially for illicit purposes", "adjective"],
  ["Clemency", "Mercy or leniency", "noun"],
  ["Coalesce", "To come together to form one group or whole", "verb"],
  ["Complacent", "Showing smug satisfaction with oneself", "adjective"],
  ["Conciliatory", "Intended to make peace or reduce hostility", "adjective"],
  ["Condescend", "To show feelings of superiority", "verb"],
  ["Consensus", "General agreement", "noun"],
  ["Contrite", "Feeling remorse or guilt", "adjective"],
  ["Conundrum", "A confusing and difficult problem", "noun"],
  ["Convoluted", "Extremely complex and difficult to follow", "adjective"],
  ["Credulous", "Too ready to believe things", "adjective"],
  ["Cryptic", "Having a mysterious or obscure meaning", "adjective"],
  ["Cursory", "Hasty and not thorough", "adjective"],
  ["Dearth", "A scarcity or lack of something", "noun"],
  ["Debacle", "A sudden and humiliating failure", "noun"],
  ["Decorous", "Keeping with good taste and propriety", "adjective"],
  ["Decorum", "Behavior in keeping with good taste", "noun"],
  ["Deference", "Humble submission and respect", "noun"],
  ["Demure", "Reserved, modest, and shy", "adjective"],
  ["Deride", "To mock or ridicule", "verb"],
  ["Despot", "A ruler with absolute power", "noun"],
  ["Didactic", "Intended to teach, often with moral instruction", "adjective"],
  ["Diffident", "Modest or shy from lack of self-confidence", "adjective"],
  ["Dilatory", "Slow to act; causing delay", "adjective"],
  ["Disingenuous", "Not candid or sincere", "adjective"],
  ["Disperse", "To spread out in different directions", "verb"],
  ["Dogmatic", "Stubbornly asserting opinions as fact", "adjective"],
  ["Ebullient", "Cheerful and full of energy", "adjective"],
  ["Eclectic", "Drawing ideas from a wide range of sources", "adjective"],
  ["Egregious", "Outstandingly bad", "adjective"],
  ["Elucidate", "To make something clear; explain", "verb"],
  ["Emaciated", "Abnormally thin or weak", "adjective"],
  ["Embellish", "To make more attractive by adding details", "verb"],
  ["Empirical", "Based on observation or experience", "adjective"],
  ["Enervate", "To weaken or drain energy", "verb"],
  ["Engender", "To give rise to a feeling or situation", "verb"],
  ["Enigma", "A person or thing that is mysterious", "noun"],
  ["Enigmatic", "Difficult to interpret or understand", "adjective"],
  ["Ennui", "Listlessness from lack of excitement", "noun"],
  ["Ephemeral", "Lasting for a very short time", "adjective"],
  ["Equitable", "Fair and just", "adjective"],
  ["Equivocal", "Unclear or open to multiple interpretations", "adjective"],
  ["Erudite", "Having or showing great knowledge", "adjective"],
  ["Euphemism", "A mild word substituted for a harsh one", "noun"],
  ["Exculpate", "To clear from blame or guilt", "verb"],
  ["Exonerate", "To officially absolve someone of blame", "verb"],
  ["Expeditious", "Done quickly and efficiently", "adjective"],
  ["Expiate", "To atone for guilt or sin", "verb"],
  ["Expunge", "To erase or remove completely", "verb"],
  ["Extol", "To praise highly or enthusiastically", "verb"],
  ["Extraneous", "Irrelevant or unrelated", "adjective"],
  ["Fallacious", "Based on a mistaken belief", "adjective"],
  ["Fatuous", "Silly and pointless", "adjective"],
  ["Feckless", "Lacking initiative or strength of character", "adjective"],
  ["Fervent", "Having intense feeling or passion", "adjective"],
  ["Fickle", "Changing frequently, especially in loyalty", "adjective"],
  ["Flagrant", "Conspicuously offensive", "adjective"],
  ["Foment", "To instigate or stir up", "verb"],
  ["Fortuitous", "Happening by chance in a lucky way", "adjective"],
  ["Frugal", "Sparing or economical with money", "adjective"],
  ["Garrulous", "Excessively talkative", "adjective"],
  ["Gregarious", "Sociable and enjoying company", "adjective"],
  ["Hackneyed", "Lacking significance through overuse", "adjective"],
  ["Harangue", "A lengthy and aggressive speech", "noun"],
  ["Hegemony", "Leadership or dominance over others", "noun"],
  ["Iconoclast", "A person who attacks cherished beliefs", "noun"],
  ["Ignominious", "Deserving or causing public disgrace", "adjective"],
  ["Impecunious", "Having little or no money", "adjective"],
  ["Impetuous", "Acting quickly without thought", "adjective"],
  ["Inchoate", "Just begun and not fully formed", "adjective"],
  ["Incontrovertible", "Unable to be denied or disputed", "adjective"],
  ["Incorrigible", "Not able to be corrected or reformed", "adjective"],
  ["Indefatigable", "Persisting tirelessly", "adjective"],
  ["Ineffable", "Too great to be expressed in words", "adjective"],
  ["Inexorable", "Impossible to stop or prevent", "adjective"],
  ["Inscrutable", "Impossible to understand or interpret", "adjective"],
  ["Insidious", "Proceeding in a gradual, harmful way", "adjective"],
  ["Invective", "Insulting or abusive language", "noun"],
  ["Irascible", "Easily angered", "adjective"],
  ["Laconic", "Using very few words", "adjective"],
  ["Lambaste", "To criticize harshly", "verb"],
  ["Languid", "Slow, relaxed, or lacking energy", "adjective"],
  ["Legerdemain", "Skillful deception or trickery", "noun"],
  ["Loquacious", "Very talkative", "adjective"],
  ["Lugubrious", "Looking or sounding sad and dismal", "adjective"],
  ["Mendacious", "Not telling the truth; lying", "adjective"],
  ["Nefarious", "Wicked or criminal", "adjective"],
  ["Obstreperous", "Noisy and difficult to control", "adjective"],
  ["Ossify", "To become rigid or inflexible", "verb"],
  ["Parsimonious", "Unwilling to spend money or use resources", "adjective"],
  ["Pedantic", "Overly concerned with minor details", "adjective"],
  ["Penurious", "Extremely poor or stingy", "adjective"],
  ["Perfidious", "Deceitful and untrustworthy", "adjective"],
  ["Phlegmatic", "Having an unemotional and calm disposition", "adjective"],
  ["Proclivity", "A natural tendency to behave in a certain way", "noun"],
  ["Prosaic", "Lacking poetic beauty; commonplace", "adjective"],
  ["Puerile", "Childishly silly and trivial", "adjective"],
  ["Pugnacious", "Eager or quick to argue or fight", "adjective"],
  ["Recondite", "Little known; abstruse", "adjective"],
  ["Redoubtable", "Formidable, especially as an opponent", "adjective"],
  ["Sardonic", "Grimly mocking or cynical", "adjective"],
  ["Sycophant", "A person who acts obsequiously to gain advantage", "noun"],
  ["Truculent", "Eager to argue or fight; aggressively defiant", "adjective"],
  ["Turgid", "Swollen or pompous in style", "adjective"],
  ["Umbrage", "Offense or annoyance", "noun"],
  ["Unctuous", "Excessively flattering or ingratiating", "adjective"],
  ["Venerable", "Accorded great respect due to age or wisdom", "adjective"],
  ["Vicarious", "Experienced through another person", "adjective"],
  ["Vitriolic", "Filled with bitter criticism", "adjective"],
  ["Winsome", "Attractive or appealing in appearance or character", "adjective"],
];

function titleCase(word) {
  if (!word) return word;
  return word.charAt(0).toUpperCase() + word.slice(1).toLowerCase();
}

function normalizeLemma(raw) {
  let w = raw.trim().toLowerCase();
  w = w.replace(/\s+/g, " ");
  // skip multi-word scientific phrases for SAT core deck
  if (w.includes(" ") && !["adapt to", "conflated with", "contingent on", "demarcated from"].includes(w)) {
    return null;
  }
  const map = {
    "adapt to": "adapt",
    "conflated with": "conflate",
    "contingent on": "contingent",
    "demarcated from": "demarcate",
    alludes: "allude",
    acquired: "acquire",
    depicts: "depict",
    conveyed: "convey",
    infers: "infer",
    invokes: "invoke",
    proposes: "propose",
    suggests: "suggest",
    undermines: "undermine",
    warrants: "warrant",
    consolidated: "consolidate",
    coiled: "coil",
    lacking: "lack",
    inspired: "inspire",
    intertwined: "intertwine",
    predetermined: "predetermine",
    preconceived: "preconceive",
    corrugated: "corrugate",
    beneficially: "beneficial",
    inadvertently: "inadvertent",
    ostensibly: "ostensible",
    strenuously: "strenuous",
    smoothly: "smooth",
    unoriginal: "unoriginal",
  };
  if (map[w]) w = map[w];
  else if (w.endsWith("ies") && w.length > 4) w = w.slice(0, -3) + "y";
  else if (w.endsWith("ing") && w.length > 5) w = w.slice(0, -3);
  else if (w.endsWith("ed") && w.length > 4 && !w.endsWith("ied")) w = w.slice(0, -2);
  else if (w.endsWith("es") && w.length > 4 && !/(ous|ious|eous|uous)es$/.test(w)) w = w.slice(0, -2);
  else if (
    w.endsWith("s") &&
    w.length > 3 &&
    !w.endsWith("ss") &&
    !w.endsWith("us") &&
    !/(ous|ious|eous|uous|sis|tis|ics|ness|less|ful|ity|ism|ist|ate|ive|ent|ant|ary|ory|ify|ize|ise)$/.test(w)
  ) {
    w = w.slice(0, -1);
  }
  return titleCase(w);
}

function inferDifficulty(word, pos) {
  const key = word.toLowerCase();
  if (EASY_WORDS.has(key)) return "easy";
  if (HARD_WORDS.has(key)) return "hard";
  if (key.length <= 6 && (pos === "noun" || pos === "verb")) return "easy";
  if (key.length >= 11) return "hard";
  return "medium";
}

function hashSeed(s) {
  let h = 0;
  for (let i = 0; i < s.length; i++) h = (h * 31 + s.charCodeAt(i)) | 0;
  return Math.abs(h);
}

function naturalExample(word, definition, pos) {
  const w = word.toLowerCase();
  const templates = {
    verb: [
      `The author hoped the new policy would ${w} tensions in the region.`,
      `Critics argued that the plan might ${w} the very problem it aimed to solve.`,
      `Over time, the community learned to ${w} its differences through dialogue.`,
    ],
    noun: [
      `The essay highlights the ${w} of the reform as a turning point in the debate.`,
      `Scholars noted a striking ${w} between the two historical accounts.`,
      `Her ${w} became evident only after reading the full passage.`,
    ],
    adjective: [
      `The reviewer described the tone as ${w}, which shaped how readers interpreted the claim.`,
      `What seemed ${w} at first proved central to the author's argument.`,
      `The passage presents a ${w} portrait of life during the transition.`,
    ],
    adverb: [
      `She spoke ${w}, leaving little doubt about her position.`,
      `The results were ${w} linked to changes in public policy.`,
      `He ${w} overlooked details that later proved decisive.`,
    ],
  };
  const list = templates[pos] ?? templates.noun;
  return list[hashSeed(w + pos) % list.length];
}

function inferPos(definition, word) {
  const d = definition.toLowerCase();
  const w = word.toLowerCase();
  if (w.endsWith("ly")) return "adverb";
  if (/^(to |.*\bto [a-z])/.test(d) && !d.startsWith("too ")) return "verb";
  if (
    /^(a |an |the |something|someone|one who|a person|a state|a feeling|the quality|the act)/.test(d)
  ) {
    return "noun";
  }
  if (
    /^(having|showing|characterized|relating|based|open|not |unable|full of|given to|extremely|very )/.test(d)
  ) {
    return "adjective";
  }
  if (w.endsWith("tion") || w.endsWith("ness") || w.endsWith("ity") || w.endsWith("ism")) return "noun";
  if (w.endsWith("ous") || w.endsWith("ent") || w.endsWith("ive") || w.endsWith("able") || w.endsWith("ful")) {
    return "adjective";
  }
  if (w.endsWith("ate") || w.endsWith("ify") || w.endsWith("ize")) return "verb";
  return "noun";
}

function parseIvyMaxFile(text) {
  const rows = [];
  for (const line of text.split("\n")) {
    if (!line.startsWith("|")) continue;
    if (line.includes("---")) continue;
    const m = line.match(/^\|\s*([A-Za-z][^|]*?)\s*\|\s*(.+?)\s*\|$/);
    if (!m) continue;
    const raw = m[1].trim();
    if (raw.length < 3 || raw.length > 40) continue;
    if (/^\d+\)/.test(raw)) continue;
    let definition = m[2].trim();
    if (definition.length < 8 || definition.includes("---")) continue;
    definition = definition.replace(/\s*–\s*.+$/, "").replace(/\s*\(.+$/, "").trim();
    const lemma = normalizeLemma(raw);
    if (!lemma) continue;
    const pos = inferPos(definition, lemma);
    rows.push({
      word: lemma,
      definition: definition.charAt(0).toUpperCase() + definition.slice(1),
      part_of_speech: pos,
      source: "ivymax",
    });
  }
  return rows;
}

function isValidLemma(word) {
  const w = word.trim();
  if (w.length < 3 || w.length > 28) return false;
  if (!/^[A-Za-z][A-Za-z'-]*$/.test(w)) return false;
  if (SKIP_WORDS.has(w.toLowerCase())) return false;
  return true;
}

function cleanDefinition(definition) {
  return definition
    .replace(/\s*\(Note:.*$/i, "")
    .replace(/\s*\*+\s*$/, "")
    .replace(/\.$/, "")
    .trim();
}

function parseTestAdvantageTable(text) {
  const rows = [];
  for (const line of text.split("\n")) {
    const m = line.match(/^\|\s*([A-Za-z][^|*]{1,40}?)\*?\s*\|\s*(.+?)\s*\|/);
    if (!m) continue;
    let rawWord = m[1].trim();
    if (rawWord === "Word" || rawWord === "---") continue;
    rawWord = rawWord.replace(/\*$/, "").trim();
    const lemma = normalizeLemma(rawWord) ?? (isValidLemma(rawWord) ? titleCase(rawWord) : null);
    if (!lemma) continue;
    let definition = cleanDefinition(m[2].trim());
    if (definition.length < 5 || definition.startsWith("---")) continue;
    definition = definition.charAt(0).toUpperCase() + definition.slice(1);
    const pos = inferPos(definition, lemma);
    rows.push({ word: lemma, definition, part_of_speech: pos, source: "testadvantage" });
  }
  return rows;
}

function parseSat6000File(entries) {
  const rows = [];
  for (const entry of entries) {
    const rawWords = String(entry.word ?? "")
      .split(/[,;/]/)
      .map((w) => w.trim())
      .filter(Boolean);
    const definition = cleanDefinition(String(entry.def ?? entry.definition ?? "").trim());
    if (definition.length < 4) continue;
    for (const raw of rawWords) {
      const lemma = normalizeLemma(raw) ?? (isValidLemma(raw) ? titleCase(raw) : null);
      if (!lemma) continue;
      const pos = inferPos(definition, lemma);
      rows.push({
        word: lemma,
        definition: definition.charAt(0).toUpperCase() + definition.slice(1),
        part_of_speech: pos,
        source: "sat6000",
      });
    }
  }
  return rows;
}

function parse345File(text) {
  const rows = [];
  for (const line of text.split("\n")) {
    if (!line.startsWith("|") || line.includes("---")) continue;
    const m = line.match(
      /^\|\s*([^|]+?)\s*\|\s*(noun|verb|adj|adv)\.\s*(.+?)\s*[("]([^")]+)[")]\s*\|/i,
    );
    if (!m) continue;
    const rawWord = m[1].trim();
    const posKey = m[2].toLowerCase() + ".";
    const pos = POS_MAP[posKey] ?? "noun";
    const defBody = m[3].trim();
    const example = m[4].trim();
    const definition = defBody.replace(/\s*\([^)]*\)\s*$/, "").replace(/\.$/, "").trim();
    const lemma = normalizeLemma(rawWord);
    if (!lemma) continue;
    rows.push({ word: lemma, definition, example_sentence: example, part_of_speech: pos, source: "345tutoring" });
  }
  return rows;
}

function loadExisting() {
  const p = path.join(root, "scripts/data/sat-vocabulary.json");
  return JSON.parse(fs.readFileSync(p, "utf8"));
}

function mergeWords(sources) {
  const byKey = new Map();

  function upsert(entry, priority) {
    const key = entry.word.toLowerCase();
    const existing = byKey.get(key);
    if (!existing || priority > existing.priority) {
      byKey.set(key, { ...entry, priority });
    } else if (existing && priority === existing.priority) {
      if (
        entry.example_sentence &&
        (!existing.example_sentence || existing.example_sentence.includes("The passage uses"))
      ) {
        byKey.set(key, { ...existing, ...entry, priority });
      }
    }
  }

  for (const w of loadExisting()) {
    upsert(
      {
        word: titleCase(w.word),
        definition: w.definition,
        example_sentence: w.example_sentence,
        part_of_speech: w.part_of_speech,
        difficulty: w.difficulty,
      },
      1,
    );
  }

  if (fs.existsSync(tutoringPath)) {
    const parsed = parse345File(fs.readFileSync(tutoringPath, "utf8"));
    for (const row of parsed) upsert(row, 3);
    console.log(`345 Tutoring: parsed ${parsed.length} rows`);
  } else {
    console.warn("345 tutoring file not found — skipping");
  }

  for (const [word, definition, pos] of IVYMAX_SUPPLEMENT) {
    upsert({ word, definition, part_of_speech: pos, source: "ivymax" }, 2);
  }

  if (fs.existsSync(ivymaxPath)) {
    const ivymax = parseIvyMaxFile(fs.readFileSync(ivymaxPath, "utf8"));
    for (const row of ivymax) upsert(row, 2);
    console.log(`IvyMax: parsed ${ivymax.length} rows`);
  }

  if (fs.existsSync(testAdvantage2025Path)) {
    const ta = parseTestAdvantageTable(fs.readFileSync(testAdvantage2025Path, "utf8"));
    for (const row of ta) upsert(row, 2.5);
    console.log(`Test Advantage 2023-2025: parsed ${ta.length} rows`);
  } else {
    console.warn("Test Advantage 2023-2025 file not found — skipping");
  }

  if (fs.existsSync(testAdvantage300Path)) {
    const ta300 = parseTestAdvantageTable(fs.readFileSync(testAdvantage300Path, "utf8"));
    for (const row of ta300) upsert(row, 2.5);
    console.log(`Test Advantage 300+: parsed ${ta300.length} rows`);
  } else {
    console.warn("Test Advantage 300+ file not found — skipping");
  }

  if (fs.existsSync(sat6000Path)) {
    const sat6000 = parseSat6000File(JSON.parse(fs.readFileSync(sat6000Path, "utf8")));
    for (const row of sat6000) upsert(row, 0);
    console.log(`SAT6000 (FreeVocabulary/MajorTests): parsed ${sat6000.length} rows`);
  } else {
    console.warn("sat6000-source.json not found — skipping");
  }

  // Drop truncated lemma artifacts when the full form exists (e.g. Ambiguou vs Ambiguous)
  const keys = new Set([...byKey.keys()]);
  for (const key of [...keys]) {
    if (key.endsWith("ou") && keys.has(`${key}s`)) byKey.delete(key);
    if (key.endsWith("u") && keys.has(`${key}s`)) byKey.delete(key);
  }

  const result = [...byKey.values()]
    .filter(({ definition }) => !definition?.includes("Frequently tested on Digital SAT"))
    .filter(({ word }) => !/\wou$/.test(word.toLowerCase()) || word.toLowerCase().endsWith("you"))
    .map(({ priority: _p, source, ...w }) => {
      const pos = w.part_of_speech ?? "noun";
      const difficulty =
        w.difficulty && w.difficulty !== "expert" ? w.difficulty : inferDifficulty(w.word, pos);
      let example = (w.example_sentence ?? "").replace(/^[""]|[""]$/g, "").trim();
      if (!example || example.includes('The passage uses "')) {
        example = naturalExample(w.word, w.definition, pos);
      }
      return {
        word: w.word,
        definition: w.definition,
        part_of_speech: pos,
        difficulty,
        example_sentence: example,
      };
    })
    .sort((a, b) => a.word.localeCompare(b.word));

  return result;
}

function writeBatches(words, batchSize = 50) {
  if (!fs.existsSync(batchDir)) fs.mkdirSync(batchDir, { recursive: true });
  for (const f of fs.readdirSync(batchDir)) {
    if (/^batch-\d+\.(sql|json)$/.test(f)) fs.unlinkSync(path.join(batchDir, f));
  }

  function esc(value) {
    return String(value).replace(/'/g, "''");
  }

  const chunks = [];
  for (let i = 0; i < words.length; i += batchSize) {
    chunks.push(words.slice(i, i + batchSize));
  }

  chunks.forEach((chunk, idx) => {
    const num = String(idx).padStart(2, "0");
    const values = chunk
      .map(
        (w) =>
          `('${esc(w.word)}', '${esc(w.definition)}', '${esc(w.example_sentence)}', '${esc(w.part_of_speech)}', '${w.difficulty}'::public.difficulty, 'SAT'::public.exam_type)`,
      )
      .join(",\n  ");

    const sql = `INSERT INTO public.vocabulary_words (word, definition, example_sentence, part_of_speech, difficulty, exam_type)
VALUES
  ${values}
ON CONFLICT (word, exam_type) DO UPDATE SET
  definition = EXCLUDED.definition,
  example_sentence = EXCLUDED.example_sentence,
  part_of_speech = EXCLUDED.part_of_speech,
  difficulty = EXCLUDED.difficulty;
`;
    fs.writeFileSync(path.join(batchDir, `batch-${num}.sql`), sql);
    fs.writeFileSync(
      path.join(batchDir, `batch-${num}.json`),
      JSON.stringify({ project_id: "aioyzumxxsepbnfivvdd", query: sql }),
    );
  });

  return chunks.length;
}

const before = loadExisting().length;
const merged = mergeWords();
fs.writeFileSync(outJson, JSON.stringify(merged, null, 2) + "\n");
const batchCount = writeBatches(merged);

const generic = merged.filter((w) => w.example_sentence?.includes("The passage uses"));
console.log(
  JSON.stringify({
    before,
    after: merged.length,
    added: merged.length - before,
    batches: batchCount,
    genericExamplesRemaining: generic.length,
    easy: merged.filter((w) => w.difficulty === "easy").length,
    medium: merged.filter((w) => w.difficulty === "medium").length,
    hard: merged.filter((w) => w.difficulty === "hard").length,
  }),
);
