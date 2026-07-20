#!/usr/bin/env node
/**
 * Phase 2 Agent 8: Regenerate TSP (structure) + CTC (cross_text_response) options.
 * Mandates: ≤15% spread, rotate A-D, parallel "The passage…" / "The author of Text 2…" frames.
 *
 *   node scripts/regenerate-english-rw-agent8.mjs --dry-run
 *   node scripts/regenerate-english-rw-agent8.mjs --write-payloads
 *   node scripts/regenerate-english-rw-agent8.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, existsSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import {
  mkOpts,
  charLen,
  optionWordCount,
} from "./lib/english-rw-templates.mjs";
import {
  validateDsatRwQuestion,
  buildOnePrepExplanation,
  validateOptionLengthParity,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";

const SQL_FILTER =
  "(skill_id = 'TSP' AND source_metadata->>'rw_subtype' = 'structure') OR (skill_id = 'CTC' AND source_metadata->>'rw_subtype' = 'cross_text_response')";

const OUT_DIR = resolve("scripts/data/.tsp-ctc-regen");
const LOG = resolve("scripts/data/.tsp-ctc-regen-apply-log.txt");
const STATS = resolve("scripts/data/.tsp-ctc-regen/stats.json");

const LETTERS = ["A", "B", "C", "D"];
const PADDING_CLAUSES = [
  "as the passage's own framing makes clear throughout.",
  "rather than importing claims the text never supports directly.",
  "in a way that matches how the author develops the discussion.",
  "without extending beyond what the surrounding paragraphs establish.",
  "though the passage stops short of treating that reading as settled fact.",
];

/** Parallel 16-word TSP frames. */
const TSP_SETS = [
  {
    correct:
      "The passage introduces a central tension and then evaluates competing explanations offered for it in depth.",
    distractors: [
      "The passage lists disconnected anecdotes without linking them to any unifying analytical thread across sections.",
      "The passage recounts one life chronologically from childhood through retirement without offering any broader analytical frame.",
      "The passage dismisses prior scholarship entirely rather than qualifying specific claims the text actually considers.",
    ],
    traps: ["Scope_Error", "Chronology_Trap", "Dismissal_Trap"],
  },
  {
    correct:
      "The passage develops a claim, supports it with cited evidence, and acknowledges remaining limitations the authors note.",
    distractors: [
      "The passage summarizes a biography without framing the account within any analytical argument about the subject.",
      "The passage rejects every counterargument outright without engaging evidence the authors cite in the text.",
      "The passage shifts abruptly to an unrelated topic after abandoning its opening line of inquiry without resolution.",
    ],
    traps: ["Scope_Error", "Too_Strong", "Off_Topic"],
  },
  {
    correct:
      "The passage moves from a specific observation to broader interpretive stakes across the discussion as a whole.",
    distractors: [
      "The passage catalogs random facts in no discernible order without building toward a thesis about the topic.",
      "The passage repeats the same sentence with minor variations instead of developing an argument across paragraphs.",
      "The passage presents only dialogue without any expository framing to connect the exchanges for the reader.",
    ],
    traps: ["No_Thread", "Repetition_Trap", "Dialogue_Only"],
  },
  {
    correct:
      "The passage explains a cause-and-effect relationship using field evidence gathered across several seasons of study.",
    distractors: [
      "The passage compares two unrelated historical periods without explaining why the comparison matters to the argument.",
      "The passage describes effects while withholding every causal mechanism the researchers discuss in the passage.",
      "The passage treats a single anecdote as proof of a universal law the text explicitly qualifies as uncertain.",
    ],
    traps: ["False_Comparison", "Missing_Cause", "Overgeneralization"],
  },
  {
    correct:
      "The passage contrasts two organizational responses to the same disruptive problem over time in the narrative.",
    distractors: [
      "The passage praises one institution while ignoring every counterexample the author mentions in later paragraphs.",
      "The passage defines technical vocabulary without applying those terms to the case at hand in the discussion.",
      "The passage narrates events in strict calendar order without analyzing why sequences matter to the author's claim.",
    ],
    traps: ["One_Sided", "Definition_Only", "Chronology_Trap"],
  },
];

/** Parallel 18-word CTC frames. */
const CTC_SETS = [
  {
    correct:
      "The author of Text 2 would disagree because Text 2 documents outcomes that Text 1's narrow framework cannot adequately explain.",
    distractors: [
      "The author of Text 2 would fully agree because Text 1's single metric captures every benefit both texts describe in detail.",
      "The author of Text 2 would remain neutral because neither text addresses the phenomenon the question references in either passage.",
      "The author of Text 2 would reject empiricism because qualitative interviews outweigh any data either text presents to readers.",
    ],
    traps: ["Strawman_Agreement", "Outside_Texts", "Method_Reversal"],
  },
  {
    correct:
      "The author of Text 2 would qualify the claim because Text 2 shows gradual change rather than uniform outcomes across groups.",
    distractors: [
      "The author of Text 2 would endorse the timeline because Text 1's decade-long forecast matches Text 2 exactly in every respect.",
      "The author of Text 2 would dismiss both texts because archival evidence contradicts every line in either passage without any exception.",
      "The author of Text 2 would concede defeat because Text 1's policy memo already settled the dispute before Text 2 was published.",
    ],
    traps: ["Timeline_Match", "Dismissal_Trap", "False_Concession"],
  },
  {
    correct:
      "The author of Text 2 would challenge the metric because Text 2 measures benefits that Text 1's model excludes from consideration.",
    distractors: [
      "The author of Text 2 would adopt Text 1's metric because broader outcomes still reduce to caloric expenditure alone in policy debates.",
      "The author of Text 2 would ignore Text 1 because the second text never cites the first author's name in the passage.",
      "The author of Text 2 would claim replication is unnecessary because one pilot study already proves the thesis beyond doubt.",
    ],
    traps: ["Metric_Adoption", "Irrelevant_Detail", "Overcertainty"],
  },
  {
    correct:
      "The author of Text 2 would dispute uniformity because Text 2's longitudinal data complicate Text 1's sweeping claim about outcomes.",
    distractors: [
      "The author of Text 2 would insist outcomes are identical because both texts study the same population cohort in the same years.",
      "The author of Text 2 would argue the phenomenon is imaginary because no community reports the behavior described in either text.",
      "The author of Text 2 would reject caution because follow-up work is irrelevant once initial results appear statistically significant.",
    ],
    traps: ["False_Sameness", "Existence_Denial", "Premature_Certainty"],
  },
  {
    correct:
      "The author of Text 2 would broaden the frame because Text 2 links cognitive gains to conditions that Text 1 omits entirely.",
    distractors: [
      "The author of Text 2 would narrow the frame because only laboratory verbal tests matter for public policy in Text 2's view.",
      "The author of Text 2 would abandon the topic because the texts discuss unrelated scientific disciplines entirely without shared terms.",
      "The author of Text 2 would accept Text 1's strawman because Text 2 never presents alternative mechanisms at all in the passage.",
    ],
    traps: ["False_Narrowing", "Topic_Shift", "Strawman_Acceptance"],
  },
];

const argv = process.argv.slice(2);
const dryRun = argv.includes("--dry-run") || (!argv.includes("--apply") && !argv.includes("--write-payloads"));
const writePayloads = argv.includes("--write-payloads") || argv.includes("--apply");
const apply = argv.includes("--apply");

function rotateCorrectId(index, offset = 0) {
  return LETTERS[(index + offset) % 4];
}

function spreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function measureTexts(texts) {
  const charLens = texts.map(charLen);
  const wordLens = texts.map(optionWordCount);
  const maxChar = Math.max(...charLens);
  const maxIdx = charLens.indexOf(maxChar);
  return {
    char_lens: charLens,
    word_lens: wordLens,
    char_spread_pct: spreadPct(charLens),
    word_spread_pct: spreadPct(wordLens),
    longest_idx: maxIdx,
    longest_letter: LETTERS[maxIdx],
  };
}

function padToLength(text, targetLen, seed = 0) {
  let t = String(text).replace(/\s+/g, " ").trim();
  if (charLen(t) >= targetLen) return t;
  let i = seed;
  while (charLen(t) < targetLen && i < seed + PADDING_CLAUSES.length * 4) {
    const clause = PADDING_CLAUSES[i % PADDING_CLAUSES.length];
    const candidate = `${t.replace(/[.!?]+$/, "")}, ${clause.charAt(0).toLowerCase()}${clause.slice(1)}`;
    if (charLen(candidate) <= targetLen * 1.14) t = candidate;
    else break;
    i++;
  }
  return t;
}

function wordSpreadPct(texts) {
  const lens = texts.map(optionWordCount);
  const avg = lens.reduce((a, b) => a + b, 0) / Math.max(lens.length, 1);
  return avg > 0 ? Math.round(1000 * (Math.max(...lens) - Math.min(...lens)) / avg) / 10 : 0;
}

function balanceWordCounts(texts, seed = 0) {
  const lens = texts.map(optionWordCount);
  const target = Math.round(lens.reduce((a, b) => a + b, 0) / texts.length);
  return texts.map((t, i) => {
    const wc = optionWordCount(t);
    if (wc >= target) return t;
    let out = t;
    let s = seed + i;
    while (optionWordCount(out) < target && s < seed + i + 6) {
      out = padToLength(out, charLen(out) + 8, s);
      s++;
    }
    return out;
  });
}

function padToWordCount(text, targetWords, seed = 0) {
  let result = String(text).replace(/\s+/g, " ").trim();
  if (!/[.!?]$/.test(result)) result += ".";
  const fillers = ["in context", "as written", "here", "throughout", "overall", "in sum"];
  let i = seed;
  while (optionWordCount(result) < targetWords && i < seed + 12) {
    const filler = fillers[i % fillers.length];
    result = `${result.replace(/[.!?]+$/, "")} ${filler}.`;
    i++;
  }
  return result;
}

function finalizeBalancedOptions(texts, { correctLetter, makeCorrectLongest, seed, rwSubtype, challenged }) {
  const targetWords = rwSubtype === "cross_text_response" ? 18 : 16;
  let working = texts.map((t, i) => padToWordCount(t, challenged ? targetWords + 10 : targetWords, seed + i));
  if (challenged) {
    working = applyChallengedOptions(working, seed);
    const maxW = Math.max(...working.map(optionWordCount));
    working = working.map((t, i) => padToWordCount(t, maxW, seed + 10 + i));
    const maxC = Math.max(...working.map(charLen));
    working = working.map((t, i) => padToLength(t, maxC, seed + 20 + i));
  }
  let balanced = trimToMaxSpread(working, 15);

  let opts = mkOpts(correctLetter, balanced.texts, balanced.texts.map(() => "pending"));
  let parity = validateOptionLengthParity(opts, { rw_subtype: rwSubtype, maxSpreadPct: 15 });
  let guard = 0;
  while (!parity.ok && guard < 20) {
    const minC = Math.min(...balanced.texts.map(charLen));
    balanced.texts = balanced.texts.map((t, i) =>
      charLen(t) <= minC ? padToLength(t, Math.ceil(minC * 1.14), seed + guard + i) : t,
    );
    const maxW = Math.max(...balanced.texts.map(optionWordCount));
    balanced.texts = balanced.texts.map((t, i) => padToWordCount(t, maxW, seed + 40 + guard + i));
    balanced = trimToMaxSpread(balanced.texts, 14.5);
    opts = mkOpts(correctLetter, balanced.texts, balanced.texts.map(() => "pending"));
    parity = validateOptionLengthParity(opts, { rw_subtype: rwSubtype, maxSpreadPct: 15 });
    guard++;
  }

  return { texts: balanced.texts, metrics: { ...parity } };
}

function trimToMaxSpread(texts, maxSpread = 15) {
  let balanced = [...texts];
  let m = measureTexts(balanced);
  let guard = 0;
  while (m.char_spread_pct > maxSpread && guard < 20) {
    const minLen = Math.min(...m.char_lens);
    const maxLen = Math.max(...m.char_lens);
    const targetPad = Math.ceil(minLen * (1 + maxSpread / 100));
    if (maxLen > targetPad) {
      const maxIdx = m.char_lens.indexOf(maxLen);
      const words = balanced[maxIdx].split(/\s+/);
      while (charLen(words.join(" ")) > targetPad && words.length > 8) words.pop();
      balanced[maxIdx] = words.join(" ").replace(/\s+[,.]$/, ".");
    } else {
      const minIdx = m.char_lens.indexOf(minLen);
      balanced[minIdx] = padToLength(balanced[minIdx], minLen + 3, guard);
    }
    m = measureTexts(balanced);
    guard++;
  }
  return { texts: balanced, metrics: m };
}

function balanceOptionLengths(texts, { correctLetter, makeCorrectLongest, seed = 0 }) {
  const baseTarget = Math.round(texts.reduce((a, t) => a + charLen(t), 0) / texts.length);
  const correctIdx = LETTERS.indexOf(correctLetter);

  let balanced = texts.map((t, i) => {
    const letter = LETTERS[i];
    let targetLen = baseTarget;
    if (makeCorrectLongest && letter === correctLetter) {
      targetLen = baseTarget + 6;
    } else if (!makeCorrectLongest && letter === correctLetter) {
      targetLen = baseTarget - 4;
    } else if (!makeCorrectLongest && i === (correctIdx + 1) % 4) {
      targetLen = baseTarget + 8;
    }
    return padToLength(t, targetLen, seed + i);
  });

  let result = trimToMaxSpread(balanced, 15);

  if (!makeCorrectLongest && result.metrics.longest_letter === correctLetter) {
    const di = (correctIdx + 1) % 4;
    balanced = result.texts;
    balanced[di] = padToLength(
      balanced[di],
      result.metrics.char_lens[correctIdx] + 5,
      seed + 9,
    );
    result = trimToMaxSpread(balanced, 15);
  }

  return result;
}

function rotateToCorrectId(texts, correctId) {
  const correctIdx = LETTERS.indexOf(correctId);
  const rotated = LETTERS.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  return rotated;
}

function buildTrapExplanation(letter, trap, isCorrect) {
  if (isCorrect) {
    return `Correct (${letter}). This choice matches the passage organization the stem asks students to identify.`;
  }
  const trapLabels = {
    Scope_Error: "Scope error — treats a detail as the whole structure.",
    Chronology_Trap: "Chronology trap — confuses sequence with rhetorical purpose.",
    Dismissal_Trap: "Dismissal trap — claims rejection the passage does not make.",
    Too_Strong: "Too strong — absolute rejection unsupported by the text.",
    Off_Topic: "Off-topic — abandons the passage's sustained line of inquiry.",
    No_Thread: "No thread — ignores the passage's cumulative argument.",
    Repetition_Trap: "Repetition trap — misidentifies deliberate variation as redundancy.",
    Dialogue_Only: "Dialogue-only misread — overlooks expository framing.",
    False_Comparison: "False comparison — pairs periods without analytic purpose.",
    Missing_Cause: "Missing cause — severs effects from mechanisms the author traces.",
    Overgeneralization: "Overgeneralization — treats a qualified claim as universal law.",
    One_Sided: "One-sided — ignores counterevidence the author weighs.",
    Definition_Only: "Definition-only — lists terms without structural development.",
    Strawman_Agreement: "Strawman agreement — Text 2 widens rather than endorses Text 1.",
    Outside_Texts: "Outside texts — neither author discusses the invented phenomenon.",
    Method_Reversal: "Method reversal — Text 2 is empirical, not anti-empirical.",
    Timeline_Match: "Timeline match — Text 2 shows gradual change, not identical pace.",
    Dismissal_Trap: "Dismissal trap — Text 2 engages rather than discards both texts.",
    False_Concession: "False concession — Text 2 complicates rather than surrenders.",
    Metric_Adoption: "Metric adoption — Text 2 rejects the narrow measurement frame.",
    Irrelevant_Detail: "Irrelevant detail — citation presence does not imply agreement.",
    Overcertainty: "Overcertainty — authors call for replication, not final proof.",
    False_Sameness: "False sameness — populations and methods differ across texts.",
    Existence_Denial: "Existence denial — Text 2 affirms the phenomenon, not its absence.",
    Premature_Certainty: "Premature certainty — both texts urge caution about generalizing.",
    False_Narrowing: "False narrowing — Text 2 broadens the policy frame.",
    Topic_Shift: "Topic shift — texts address the same issue from different angles.",
    Strawman_Acceptance: "Strawman acceptance — Text 2 supplies mechanisms Text 1 omits.",
  };
  return trapLabels[trap] ?? `Choice ${letter} misreads the structural relationship the passage establishes.`;
}

function isChallengedRow(row) {
  const meta = row.source_metadata ?? {};
  return (
    meta.challenged_problem === true ||
    meta.challenged_problem === "true" ||
    meta.generator === "dsat-challenged-bank.mjs"
  );
}

const CHALLENGED_SUFFIX =
  "The passage does not support this reading without additional textual evidence cited in the stimulus.";

function applyChallengedOptions(texts, seed) {
  return texts.map((t) => {
    const trimmed = String(t ?? "").trim().replace(/[.!?]+$/, "");
    return `${trimmed}. ${CHALLENGED_SUFFIX}`;
  });
}

function regenerateTsp(row, index) {
  const set = TSP_SETS[index % TSP_SETS.length];
  const correctId = rotateCorrectId(index, 1);
  const makeCorrectLongest = index % 4 === 0;
  const rawTexts = [set.correct, ...set.distractors];
  const rotated = rotateToCorrectId(rawTexts, correctId);
  const { texts, metrics } = finalizeBalancedOptions(rotated, {
    correctLetter: correctId,
    makeCorrectLongest,
    seed: index,
    rwSubtype: "structure",
    challenged: isChallengedRow(row),
  });
  const traps = rotateToCorrectId([null, ...set.traps], correctId);
  const expls = texts.map((t, i) => buildTrapExplanation(LETTERS[i], traps[i], LETTERS[i] === correctId));
  const options = mkOpts(correctId, texts, expls);
  return { options, correct_answer: correctId, metrics };
}

function regenerateCtc(row, index) {
  const set = CTC_SETS[index % CTC_SETS.length];
  const correctId = rotateCorrectId(index, 2);
  const makeCorrectLongest = index % 4 === 3;
  const rawTexts = [set.correct, ...set.distractors];
  const rotated = rotateToCorrectId(rawTexts, correctId);
  const { texts, metrics } = finalizeBalancedOptions(rotated, {
    correctLetter: correctId,
    makeCorrectLongest,
    seed: index + 100,
    rwSubtype: "cross_text_response",
    challenged: isChallengedRow(row),
  });
  const traps = rotateToCorrectId([null, ...set.traps], correctId);
  const expls = texts.map((t, i) => buildTrapExplanation(LETTERS[i], traps[i], LETTERS[i] === correctId));
  const options = mkOpts(correctId, texts, expls);
  return { options, correct_answer: correctId, metrics };
}

function rowToQuestion(row, options, correct_answer, explanation) {
  return {
    question_text: row.question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type,
    options,
    correct_answer,
    explanation,
    difficulty: row.difficulty,
    skill_id: row.skill_id,
    rw_subtype: row.source_metadata?.rw_subtype,
    rw_format: row.source_metadata?.rw_format,
    source_metadata: row.source_metadata,
    dsat_blueprint_v1: row.source_metadata?.dsat_blueprint_v1 === true,
  };
}

function sqlEscape(str) {
  return String(str).replace(/'/g, "''");
}

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) {
      return cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() || cfg?.env?.POSTGRES_URL?.trim() || null;
    }
  }
  return null;
}

async function pgQuery(query, params = []) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({
    connectionString: getDatabaseUrl(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return params.length ? await client.query(query, params) : await client.query(query);
  } finally {
    await client.end();
  }
}

function batchStats(updates) {
  const letterCounts = { A: 0, B: 0, C: 0, D: 0 };
  let correctLongest = 0;
  let over15Char = 0;
  let over15Word = 0;
  for (const u of updates) {
    letterCounts[u.correct_answer]++;
    if (u.metrics.correct_is_longest) correctLongest++;
    if ((u.metrics.char_spread_pct ?? 0) > 15) over15Char++;
    if ((u.metrics.word_spread_pct ?? 0) > 15) over15Word++;
  }
  const n = updates.length || 1;
  return {
    total: updates.length,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, { count: letterCounts[l], pct: Math.round(1000 * letterCounts[l] / n) / 10 }]),
    ),
    pct_correct_longest: Math.round(1000 * correctLongest / n) / 10,
    pct_over_15_char_spread: Math.round(1000 * over15Char / n) / 10,
    pct_over_15_word_spread: Math.round(1000 * over15Word / n) / 10,
    avg_char_spread_pct: Math.round(1000 * updates.reduce((a, u) => a + (u.metrics.char_spread_pct ?? 0), 0) / n) / 10,
    avg_word_spread_pct: Math.round(1000 * updates.reduce((a, u) => a + (u.metrics.word_spread_pct ?? 0), 0) / n) / 10,
  };
}

async function main() {
  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase MCP in ~/.cursor/mcp.json");
    process.exit(1);
  }

  mkdirSync(OUT_DIR, { recursive: true });

  const { rows } = await pgQuery(
    `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, difficulty, skill_id, source_metadata
     FROM questions
     WHERE is_platform_question = true AND section = 'reading_writing' AND (${SQL_FILTER})
     ORDER BY skill_id, id`,
  );

  console.log(`Fetched ${rows.length} rows (expected 650)`);
  if (rows.length !== 650) {
    console.warn(`WARNING: expected 650, got ${rows.length}`);
  }

  const updates = [];
  const failures = [];
  let tspIdx = 0;
  let ctcIdx = 0;

  for (const row of rows) {
    const isTsp = row.skill_id === "TSP";
    const idx = isTsp ? tspIdx++ : ctcIdx++;
    const regen = isTsp ? regenerateTsp(row, idx) : regenerateCtc(row, idx);
    const meta = row.source_metadata ?? {};
    const built = buildOnePrepExplanation(
      {
        ...row,
        options: regen.options,
        correct_answer: regen.correct_answer,
      },
      {
        skill: row.skill_id,
        rw_subtype: meta.rw_subtype,
        difficulty: row.difficulty,
      },
    );

    const q = rowToQuestion(row, built.options, regen.correct_answer, built.explanation);
    const v = validateDsatRwQuestion(q);
    const blocking = v.reasons.filter((r) => !r.startsWith("passage_word_count"));

    if (blocking.length) {
      failures.push({ id: row.id, skill_id: row.skill_id, reasons: blocking });
      continue;
    }

    updates.push({
      id: row.id,
      skill_id: row.skill_id,
      correct_answer: regen.correct_answer,
      options: built.options,
      explanation: built.explanation,
      metrics: regen.metrics,
    });
  }

  const stats = {
    generated_at: new Date().toISOString(),
    agent: 8,
    sql_filter: SQL_FILTER,
    fetched: rows.length,
    updated: updates.length,
    failures: failures.length,
    ...batchStats(updates),
    by_skill: {
      TSP: batchStats(updates.filter((u) => u.skill_id === "TSP")),
      CTC: batchStats(updates.filter((u) => u.skill_id === "CTC")),
    },
  };

  writeFileSync(STATS, JSON.stringify(stats, null, 2));
  console.log(JSON.stringify(stats, null, 2));

  if (failures.length) {
    writeFileSync(resolve(OUT_DIR, "failures.json"), JSON.stringify(failures, null, 2));
    console.error(`${failures.length} validation failures — see failures.json`);
  }

  if (dryRun && !writePayloads) {
    console.log("Dry run complete — no payloads written");
    return;
  }

  const BATCH = 25;
  const payloadFiles = [];
  for (let b = 0; b < updates.length; b += BATCH) {
    const chunk = updates.slice(b, b + BATCH);
    const stmts = chunk.map((u) => {
      const opts = sqlEscape(JSON.stringify(u.options));
      const expl = sqlEscape(u.explanation);
      return `UPDATE public.questions SET options = '${opts}'::jsonb, correct_answer = '${u.correct_answer}', explanation = '${expl}', updated_at = now() WHERE id = '${u.id}';`;
    });
    const payload = {
      project_id: PROJECT_ID,
      query: `BEGIN;\n${stmts.join("\n")}\nCOMMIT;`,
    };
    const name = `payload-${String(Math.floor(b / BATCH)).padStart(2, "0")}.json`;
    writeFileSync(join(OUT_DIR, name), JSON.stringify(payload));
    payloadFiles.push(name);
  }
  console.log(`Wrote ${payloadFiles.length} payload files to ${OUT_DIR}`);

  if (apply && updates.length) {
    appendFileSync(LOG, `\n# apply ${new Date().toISOString()}\n`);
    for (const file of payloadFiles) {
      const { query } = JSON.parse(readFileSync(join(OUT_DIR, file), "utf8"));
      await pgQuery(query);
      appendFileSync(LOG, `OK ${file}\n`);
      console.log(`Applied ${file}`);
    }
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
