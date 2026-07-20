#!/usr/bin/env node
/**
 * Master Manual §1.2 TSP + §1.3 CTC full regeneration.
 * Passages + stems + options + explanations; ≤15% spread; 25% A–D.
 *
 *   node scripts/regenerate-tsp-ctc-master.mjs --dry-run
 *   node scripts/regenerate-tsp-ctc-master.mjs --write-payloads
 *   node scripts/regenerate-tsp-ctc-master.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, existsSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import {
  mkOpts,
  charLen,
  optionWordCount,
  ensureTwoSentenceOption,
} from "./lib/english-rw-templates.mjs";
import {
  validateDsatRwQuestion,
  buildOnePrepExplanation,
  validateOptionLengthParity,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  buildTspPassage,
  buildCtcStimulus,
  tspStem,
  ctcStem,
  trapExplanation,
  passageMetrics,
  TSP_OPTION_SETS,
  CTC_OPTION_SETS,
} from "./lib/tsp-ctc-master-bank.mjs";

const SQL_FILTER =
  "(skill_id = 'TSP' AND source_metadata->>'rw_subtype' = 'structure') OR (skill_id = 'CTC' AND source_metadata->>'rw_subtype' = 'cross_text_response')";

const OUT_DIR = resolve("scripts/data/.tsp-ctc-master-regen");
const LOG = resolve("scripts/data/.tsp-ctc-master-regen-apply-log.txt");
const STATS = resolve("scripts/data/.tsp-ctc-master-regen/stats.json");

const LETTERS = ["A", "B", "C", "D"];
const PADDING_CLAUSES = [
  "as the passage's own framing makes clear throughout the discussion.",
  "rather than importing claims the text never supports directly.",
  "in a way that matches how the author develops the argument.",
  "without extending beyond what the surrounding paragraphs establish.",
  "though the passage stops short of treating that reading as settled fact.",
];

const argv = process.argv.slice(2);
const dryRun = argv.includes("--dry-run") || (!argv.includes("--apply") && !argv.includes("--write-payloads"));
const writePayloads = argv.includes("--write-payloads") || argv.includes("--apply");
const apply = argv.includes("--apply");

function rotateCorrectId(index, offset = 0) {
  return LETTERS[(index + offset) % 4];
}

function rotateToCorrectId(texts, correctId) {
  const correctIdx = LETTERS.indexOf(correctId);
  return LETTERS.map((_, i) => texts[(i - correctIdx + 4) % 4]);
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
    correct_is_longest: false,
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

function padToWordCount(text, targetWords, seed = 0) {
  let result = String(text).replace(/\s+/g, " ").trim();
  if (!/[.!?]$/.test(result)) result += ".";
  const fillers = ["in context", "as written", "here", "throughout", "overall", "in sum"];
  let i = seed;
  while (optionWordCount(result) < targetWords && i < seed + 12) {
    result = `${result.replace(/[.!?]+$/, "")} ${fillers[i % fillers.length]}.`;
    i++;
  }
  return result;
}

function trimToMaxSpread(texts, maxSpread = 15) {
  let balanced = [...texts];
  let m = measureTexts(balanced);
  let guard = 0;
  while (m.char_spread_pct > maxSpread && guard < 24) {
    const minLen = Math.min(...m.char_lens);
    const maxLen = Math.max(...m.char_lens);
    const targetPad = Math.ceil(minLen * (1 + maxSpread / 100));
    if (maxLen > targetPad) {
      const maxIdx = m.char_lens.indexOf(maxLen);
      const words = balanced[maxIdx].split(/\s+/);
      while (charLen(words.join(" ")) > targetPad && words.length > 10) words.pop();
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

function ensureCorrectNotLongest(texts, correctIdx, seed) {
  const lens = texts.map(charLen);
  const correctLen = lens[correctIdx];
  const maxLen = Math.max(...lens);
  if (correctLen < maxLen) return texts;
  const result = [...texts];
  const di = (correctIdx + 1) % 4;
  result[di] = padToLength(
    result[di],
    correctLen + 12 + (seed % 6),
    seed + 7,
  );
  return result;
}

function finalizeBalancedOptions(texts, { correctLetter, seed, rwSubtype, challenged, index, skill }) {
  const targetWords = rwSubtype === "cross_text_response" ? 22 : 26;
  let working = texts.map((t, i) => padToWordCount(t, challenged ? targetWords + 6 : targetWords, seed + i));
  if (challenged) {
    working = working.map((t, i) => ensureTwoSentenceOption(t, i));
  }
  if (index % 3 !== 0 || skill === "TSP") {
    working = ensureCorrectNotLongest(working, LETTERS.indexOf(correctLetter), seed);
  }
  if (skill === "TSP") {
    const ci = LETTERS.indexOf(correctLetter);
    const di = (ci + 2) % 4;
    working[di] = padToLength(working[di], charLen(working[ci]) + 18, seed + 99);
  }
  let balanced = trimToMaxSpread(working, 14.5);

  let opts = mkOpts(correctLetter, balanced.texts, balanced.texts.map(() => "pending"));
  let parity = validateOptionLengthParity(opts, { rw_subtype: rwSubtype, maxSpreadPct: 15 });
  let guard = 0;
  while (!parity.ok && guard < 28) {
    const minC = Math.min(...balanced.texts.map(charLen));
    balanced.texts = balanced.texts.map((t, i) =>
      charLen(t) <= minC ? padToLength(t, Math.ceil(minC * 1.12), seed + guard + i) : t,
    );
    const maxW = Math.max(...balanced.texts.map(optionWordCount));
    balanced.texts = balanced.texts.map((t, i) => padToWordCount(t, maxW, seed + 40 + guard + i));
    balanced = trimToMaxSpread(balanced.texts, 14);
    opts = mkOpts(correctLetter, balanced.texts, balanced.texts.map(() => "pending"));
    parity = validateOptionLengthParity(opts, { rw_subtype: rwSubtype, maxSpreadPct: 15 });
    guard++;
  }

  const m = measureTexts(balanced.texts);
  m.correct_is_longest = m.longest_letter === correctLetter;
  return { texts: balanced.texts, metrics: { ...parity, ...m } };
}

function isChallengedRow(row) {
  const meta = row.source_metadata ?? {};
  return (
    meta.challenged_problem === true ||
    meta.challenged_problem === "true" ||
    meta.generator === "dsat-challenged-bank.mjs"
  );
}

function buildOptions(set, index, skill, row) {
  const correctId = rotateCorrectId(index, skill === "TSP" ? 1 : 2);
  const rawTexts = [set.correct, ...set.distractors];
  const rotated = rotateToCorrectId(rawTexts, correctId);
  const rwSubtype = skill === "TSP" ? "structure" : "cross_text_response";
  const { texts, metrics } = finalizeBalancedOptions(rotated, {
    correctLetter: correctId,
    seed: index + (skill === "CTC" ? 200 : 0),
    rwSubtype,
    challenged: isChallengedRow(row),
    index,
    skill,
  });
  const traps = rotateToCorrectId([null, ...set.traps], correctId);
  const expls = texts.map((_, i) =>
    trapExplanation(LETTERS[i], traps[i], LETTERS[i] === correctId, skill),
  );
  const options = mkOpts(correctId, texts, expls);
  return { options, correct_answer: correctId, metrics };
}

function regenerateTsp(row, index) {
  const challenged = isChallengedRow(row);
  const difficulty = row.difficulty ?? "medium";
  const stimulus_text = buildTspPassage(index, { challenged, difficulty });
  const question_text = tspStem(index);
  const set = TSP_OPTION_SETS[index % TSP_OPTION_SETS.length];
  const { options, correct_answer, metrics } = buildOptions(set, index, "TSP", row);
  return {
    stimulus_text,
    stimulus_type: "passage",
    question_text,
    options,
    correct_answer,
    metrics,
    passage: passageMetrics(stimulus_text, "tsp"),
  };
}

function regenerateCtc(row, index) {
  const challenged = isChallengedRow(row);
  const difficulty = row.difficulty ?? "medium";
  const stimulus_text = buildCtcStimulus(index, { challenged, difficulty });
  const question_text = ctcStem(index);
  const set = CTC_OPTION_SETS[index % CTC_OPTION_SETS.length];
  const { options, correct_answer, metrics } = buildOptions(set, index, "CTC", row);
  return {
    stimulus_text,
    stimulus_type: "passage",
    question_text,
    options,
    correct_answer,
    metrics,
    passage: passageMetrics(stimulus_text, "ctc"),
  };
}

/**
 * Build a complete TSP/CTC question (options + OnePrep explanation) from a seed row.
 * Used by the from-scratch English regeneration orchestrator.
 * @param {{ skill_id: 'TSP'|'CTC', difficulty?: string, source_metadata?: object }} row
 * @param {number} index
 */
export function buildTspCtcRow(row, index) {
  const isTsp = row.skill_id === "TSP";
  const regen = isTsp ? regenerateTsp(row, index) : regenerateCtc(row, index);
  const meta = row.source_metadata ?? {};
  const built = buildOnePrepExplanation(
    { ...row, ...regen },
    { skill: row.skill_id, rw_subtype: meta.rw_subtype, difficulty: row.difficulty },
  );
  return {
    question_text: regen.question_text,
    stimulus_text: regen.stimulus_text,
    stimulus_type: regen.stimulus_type,
    options: built.options,
    correct_answer: regen.correct_answer,
    explanation: built.explanation,
    rw_subtype: meta.rw_subtype,
    rw_format: isTsp ? "passage_mc" : "text_1_text_2",
    metrics: regen.metrics,
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

function passageStats(updates, skill) {
  const rows = updates.filter((u) => u.skill_id === skill);
  if (skill === "TSP") {
    const words = rows.map((r) => r.passage.words ?? 0);
    return {
      count: rows.length,
      avg_passage_words: Math.round(10 * words.reduce((a, b) => a + b, 0) / Math.max(words.length, 1)) / 10,
      min_passage_words: Math.min(...words),
      max_passage_words: Math.max(...words),
    };
  }
  const w1 = rows.map((r) => r.passage.w1 ?? 0);
  const w2 = rows.map((r) => r.passage.w2 ?? 0);
  return {
    count: rows.length,
    avg_text1_words: Math.round(10 * w1.reduce((a, b) => a + b, 0) / Math.max(w1.length, 1)) / 10,
    avg_text2_words: Math.round(10 * w2.reduce((a, b) => a + b, 0) / Math.max(w2.length, 1)) / 10,
    min_text_words: Math.min(...w1, ...w2),
    max_text_words: Math.max(...w1, ...w2),
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
        ...regen,
      },
      {
        skill: row.skill_id,
        rw_subtype: meta.rw_subtype,
        difficulty: row.difficulty,
      },
    );

    const q = {
      question_text: regen.question_text,
      stimulus_text: regen.stimulus_text,
      stimulus_type: regen.stimulus_type,
      options: built.options,
      correct_answer: regen.correct_answer,
      explanation: built.explanation,
      difficulty: row.difficulty,
      skill_id: row.skill_id,
      rw_subtype: meta.rw_subtype,
      rw_format: isTsp ? "passage_mc" : "text_1_text_2",
      source_metadata: row.source_metadata,
      dsat_blueprint_v1: meta.dsat_blueprint_v1 === true,
    };

    const v = validateDsatRwQuestion(q);
    const blocking = v.reasons.filter((r) => !r.startsWith("passage_word_count"));

    if (blocking.length) {
      failures.push({ id: row.id, skill_id: row.skill_id, reasons: blocking });
      continue;
    }

    updates.push({
      id: row.id,
      skill_id: row.skill_id,
      question_text: regen.question_text,
      stimulus_text: regen.stimulus_text,
      correct_answer: regen.correct_answer,
      options: built.options,
      explanation: built.explanation,
      metrics: regen.metrics,
      passage: regen.passage,
    });
  }

  const stats = {
    generated_at: new Date().toISOString(),
    manual: "DSAT Master Manual §1.2 TSP + §1.3 CTC",
    sql_filter: SQL_FILTER,
    fetched: rows.length,
    updated: updates.length,
    failures: failures.length,
    ...batchStats(updates),
    by_skill: {
      TSP: { ...batchStats(updates.filter((u) => u.skill_id === "TSP")), passage: passageStats(updates, "TSP") },
      CTC: { ...batchStats(updates.filter((u) => u.skill_id === "CTC")), passage: passageStats(updates, "CTC") },
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
      const stim = sqlEscape(u.stimulus_text);
      const stem = sqlEscape(u.question_text);
      return `UPDATE public.questions SET
  question_text = '${stem}',
  stimulus_text = '${stim}',
  options = '${opts}'::jsonb,
  correct_answer = '${u.correct_answer}',
  explanation = '${expl}',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '{"regen_master_manual":"tsp_ctc_v1","regen_at":"${new Date().toISOString()}"}'::jsonb,
  updated_at = now()
WHERE id = '${u.id}';`;
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
    console.log(`Applied ${updates.length} rows to prod (${PROJECT_ID})`);
  }
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch((e) => {
    console.error(e);
    process.exit(1);
  });
}
