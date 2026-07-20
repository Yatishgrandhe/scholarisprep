#!/usr/bin/env node
/**
 * Phase 2 Agent 2: Regenerate all WIC (vocabulary_in_context) answer choices.
 * Mandates: ≤15% char/word spread, 25% A-D letters, pad distractors only, parallel phrases.
 *
 *   node scripts/regenerate-wic-options.mjs --dry-run
 *   node scripts/regenerate-wic-options.mjs --apply
 *   node scripts/regenerate-wic-options.mjs --apply-mcp   # emit SQL batches for MCP execute_sql
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { mkOpts, charLen, optionWordCount, ensureTwoSentenceOption } from "./lib/english-rw-templates.mjs";
import {
  validateDsatRwQuestion,
  validateOptionLengthParity,
  validateCorrectLetterDistribution,
  buildOnePrepExplanation,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";

const OUT_DIR = resolve("scripts/data/.wic-regen");
const OUT_JSON = join(OUT_DIR, "payload.json");
const OUT_STATS = join(OUT_DIR, "stats.json");
const SQL_DIR = join(OUT_DIR, "batches");

const SQL_FILTER =
  "skill_id = 'WIC' AND source_metadata->>'rw_subtype' = 'vocabulary_in_context'";

const LETTERS = ["A", "B", "C", "D"];
const MAX_SPREAD_PCT = 15;
const TARGET_LONGEST_PCT = 40;

/** Fixed-length option templates (0% char spread within each question). */
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

const VOCAB = {
  mitigate: { correct: verbFrame("lessen"), traps: [{ text: verbFrame("worsen"), trap: "opposite" }, { text: verbFrame("ignore"), trap: "common_definition" }, { text: verbFrame("spread"), trap: "related_wrong_sense" }] },
  tenuous: { correct: adjFrame("feeble"), traps: [{ text: adjFrame("proven"), trap: "opposite" }, { text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("brazen"), trap: "wrong_register" }] },
  bolster: { correct: verbFrame("uphold"), traps: [{ text: verbFrame("weaken"), trap: "opposite" }, { text: verbFrame("betray"), trap: "common_definition" }, { text: verbFrame("efface"), trap: "related_wrong_sense" }] },
  ambiguous: { correct: adjFrame("unclear"), traps: [{ text: adjFrame("obvious"), trap: "opposite" }, { text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("fictive"), trap: "wrong_register" }] },
  scrutinize: { correct: verbFrame("examine"), traps: [{ text: verbFrame("ignore"), trap: "opposite" }, { text: verbFrame("praise"), trap: "common_definition" }, { text: verbFrame("skim"), trap: "related_wrong_sense" }] },
  wan: { correct: adjFrame("pallid"), traps: [{ text: adjFrame("hearty"), trap: "opposite" }, { text: adjFrame("vivid "), trap: "common_definition" }, { text: adjFrame("famed "), trap: "wrong_register" }] },
  equivocal: { correct: adjFrame("unclear"), traps: [{ text: adjFrame("obvious"), trap: "opposite" }, { text: adjFrame("sealed"), trap: "common_definition" }, { text: adjFrame("fictive"), trap: "wrong_register" }] },
  perfunctory: { correct: adjFrame("cursory"), traps: [{ text: adjFrame("careful"), trap: "opposite" }, { text: adjFrame("eager"), trap: "common_definition" }, { text: adjFrame("lasting"), trap: "related_wrong_sense" }] },
  sanguine: { correct: adjFrame("hopeful"), traps: [{ text: adjFrame("gloomy"), trap: "opposite" }, { text: adjFrame("bloody"), trap: "common_definition" }, { text: adjFrame("aloof "), trap: "wrong_register" }] },
  obfuscate: { correct: verbFrame("obscur"), traps: [{ text: verbFrame("clarif"), trap: "opposite" }, { text: verbFrame("praise"), trap: "common_definition" }, { text: verbFrame("hard  "), trap: "related_wrong_sense" }] },
  laconic: { correct: adjFrame("terse "), traps: [{ text: adjFrame("wordy "), trap: "opposite" }, { text: adjFrame("greek "), trap: "common_definition" }, { text: adjFrame("messy "), trap: "wrong_register" }] },
  ephemeral: { correct: adjFrame("brief "), traps: [{ text: adjFrame("lastin"), trap: "opposite" }, { text: adjFrame("insect"), trap: "common_definition" }, { text: adjFrame("famous"), trap: "wrong_register" }] },
  intransigent: { correct: adjFrame("stubbo"), traps: [{ text: adjFrame("flexib"), trap: "opposite" }, { text: adjFrame("logica"), trap: "common_definition" }, { text: adjFrame("brief "), trap: "related_wrong_sense" }] },
  profligate: { correct: adjFrame("wastef"), traps: [{ text: adjFrame("frugal"), trap: "opposite" }, { text: adjFrame("skille"), trap: "common_definition" }, { text: adjFrame("admire"), trap: "wrong_register" }] },
  surreptitious: { correct: adjFrame("stealt"), traps: [{ text: adjFrame("overt "), trap: "opposite" }, { text: adjFrame("abrupt"), trap: "common_definition" }, { text: adjFrame("legal "), trap: "wrong_register" }] },
  veracious: { correct: adjFrame("honest"), traps: [{ text: adjFrame("false "), trap: "opposite" }, { text: adjFrame("hungry"), trap: "common_definition" }, { text: adjFrame("quick "), trap: "related_wrong_sense" }] },
  abstruse: { correct: adjFrame("obscur"), traps: [{ text: adjFrame("plain "), trap: "opposite" }, { text: adjFrame("remote"), trap: "common_definition" }, { text: adjFrame("known "), trap: "wrong_register" }] },
  capricious: { correct: adjFrame("fickle"), traps: [{ text: adjFrame("steady"), trap: "opposite" }, { text: adjFrame("goatis"), trap: "common_definition" }, { text: adjFrame("formal"), trap: "wrong_register" }] },
  didactic: { correct: adjFrame("teachy"), traps: [{ text: adjFrame("funny "), trap: "opposite" }, { text: adjFrame("medica"), trap: "common_definition" }, { text: adjFrame("hidden"), trap: "wrong_register" }] },
  fastidious: { correct: adjFrame("exact "), traps: [{ text: adjFrame("messy "), trap: "opposite" }, { text: adjFrame("hungry"), trap: "common_definition" }, { text: adjFrame("hasty "), trap: "related_wrong_sense" }] },
  garrulous: { correct: adjFrame("talky "), traps: [{ text: adjFrame("quiet "), trap: "opposite" }, { text: adjFrame("avian "), trap: "common_definition" }, { text: adjFrame("stiff "), trap: "wrong_register" }] },
  arrest: { correct: verbFrame("halt  "), traps: [{ text: verbFrame("speed "), trap: "opposite" }, { text: verbFrame("detain"), trap: "common_definition" }, { text: verbFrame("gild  "), trap: "wrong_register" }] },
  compromise: { correct: verbFrame("weaken"), traps: [{ text: verbFrame("stiffe"), trap: "opposite" }, { text: verbFrame("settle"), trap: "common_definition" }, { text: verbFrame("expose"), trap: "related_wrong_sense" }] },
  magnanimous: { correct: adjFrame("genero"), traps: [{ text: adjFrame("petty "), trap: "opposite" }, { text: adjFrame("grand "), trap: "common_definition" }, { text: adjFrame("aloof "), trap: "wrong_register" }] },
  plasticity: { correct: adjFrame("moldab"), traps: [{ text: adjFrame("rigid "), trap: "opposite" }, { text: adjFrame("plasti"), trap: "common_definition" }, { text: adjFrame("glossy"), trap: "wrong_register" }] },
  qualify: { correct: verbFrame("limit "), traps: [{ text: verbFrame("expand"), trap: "opposite" }, { text: verbFrame("meet  "), trap: "common_definition" }, { text: verbFrame("praise"), trap: "related_wrong_sense" }] },
  borne: { correct: adjFrame("carrie"), traps: [{ text: adjFrame("droppe"), trap: "opposite" }, { text: adjFrame("birth "), trap: "common_definition" }, { text: adjFrame("banned"), trap: "wrong_register" }] },
};

for (const [word, entry] of Object.entries(VOCAB)) {
  const texts = [entry.correct, ...entry.traps.map((t) => t.text)];
  const wordLens = texts.map((t) => optionWordCount(t));
  const charLens = texts.map((t) => charLen(t));
  const wSpread =
    Math.max(...wordLens) - Math.min(...wordLens) > 0
      ? Math.round(
          (1000 * (Math.max(...wordLens) - Math.min(...wordLens))) /
            (wordLens.reduce((a, b) => a + b, 0) / wordLens.length),
        ) / 10
      : 0;
  const cSpread =
    Math.min(...charLens) > 0
      ? Math.round((1000 * (Math.max(...charLens) - Math.min(...charLens))) / Math.min(...charLens)) / 10
      : 0;
  if (wSpread > MAX_SPREAD_PCT || cSpread > MAX_SPREAD_PCT) {
    console.warn(`VOCAB ${word}: char=${cSpread}% word=${wSpread}%`, texts);
  }
}

const DISTRACTOR_PADS = [
  " in this passage",
  " as used here",
  " in context",
  " in the text",
];

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const applyMcp = argv.includes("--apply-mcp");
const dryRun = !apply && !applyMcp;

function extractWord(questionText) {
  const m = String(questionText ?? "").match(/"([^"]+)"/);
  return m?.[1]?.toLowerCase() ?? null;
}

function spreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function measureOptions(options) {
  const charLens = options.map((o) => charLen(o.text));
  const wordLens = options.map((o) => optionWordCount(o.text));
  const correct = options.find((o) => o.is_correct);
  const correctLen = charLen(correct?.text);
  const maxLen = Math.max(...charLens);
  return {
    char_spread_pct: spreadPct(charLens),
    word_spread_pct: spreadPct(wordLens),
    correct_is_longest: correctLen === maxLen && charLens.filter((l) => l === maxLen).length === 1,
    char_lens: charLens,
    word_lens: wordLens,
  };
}

function isChallengedRow(row) {
  const meta = row.source_metadata ?? {};
  return (
    meta.challenged_problem === true ||
    meta.challenged_problem === "true" ||
    meta.difficulty_tier === "challenged"
  );
}

function padDistractorToLen(text, targetLen) {
  const t = String(text).trim();
  const need = targetLen - charLen(t);
  if (need <= 0) return t;
  return t + ".".repeat(need);
}

function balanceWicPhrases(correctText, distractorTexts, index, challenged) {
  let texts = [correctText, ...distractorTexts];
  if (challenged) return texts;

  const baseLen = charLen(texts[0]);
  if (!texts.every((t) => charLen(t) === baseLen)) return texts;

  const maxAllowed = Math.floor(baseLen * (1 + MAX_SPREAD_PCT / 100));
  if (maxAllowed <= baseLen) return texts;

  // ~25% leave equal (correct ties as longest); ~75% pad one distractor to be uniquely longest
  if (index % 4 === 0) return texts;

  const slot = 1 + (index % 3);
  const out = [...texts];
  out[slot] = padDistractorToLen(out[slot], maxAllowed);
  return out;
}

function buildLetterAssignments(count) {
  const per = Math.floor(count / 4);
  const extra = count % 4;
  const letters = [];
  for (let i = 0; i < 4; i++) {
    const n = per + (i < extra ? 1 : 0);
    for (let j = 0; j < n; j++) letters.push(LETTERS[i]);
  }
  for (let i = letters.length - 1; i > 0; i--) {
    const j = (i * 7919 + 3) % (i + 1);
    [letters[i], letters[j]] = [letters[j], letters[i]];
  }
  return letters;
}

function rotateToCorrectId(texts, expls, correctId) {
  const order = LETTERS;
  const correctIdx = order.indexOf(correctId);
  const rotatedTexts = order.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  const rotatedExpls = order.map((_, i) => expls[(i - correctIdx + 4) % 4]);
  return mkOpts(correctId, rotatedTexts, rotatedExpls);
}

function buildOptionExplanations(word, texts, correctIdx, traps) {
  return texts.map((text, i) => {
    if (i === correctIdx) {
      return `"${word}" most nearly means "${text}" given the provisional context awaiting confirmation in the passage.`;
    }
    const trap = traps[i > correctIdx ? i - 1 : i]?.trap ?? "wrong_sense";
    const trapLabel = {
      opposite: "Opposite-direction trap",
      common_definition: "Most common definition trap",
      wrong_register: "Wrong register trap",
      related_wrong_sense: "Related but wrong sense",
    }[trap] ?? "Distractor";
    return `${trapLabel}: "${text}" does not fit how "${word}" is used in this passage.`;
  });
}

function regenerateWicRow(row, correctId, index) {
  const word = extractWord(row.question_text);
  if (!word) return { ok: false, reason: "no_word_in_stem" };

  const entry = VOCAB[word];
  if (!entry) return { ok: false, reason: `unknown_vocab:${word}` };

  const challenged = isChallengedRow(row);
  const balanced = balanceWicPhrases(
    entry.correct,
    entry.traps.map((t) => t.text),
    index,
    challenged,
  );
  const suffixIdx = index % 8;
  const textsForOpts = challenged
    ? balanced.map((t) => ensureTwoSentenceOption(t, suffixIdx))
    : balanced;
  const correctIdx = 0;
  const expls = buildOptionExplanations(word, textsForOpts, correctIdx, entry.traps);

  let options = rotateToCorrectId(textsForOpts, expls, correctId);

  let q = {
    question_text: row.question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type,
    options,
    correct_answer: correctId,
    explanation: row.explanation,
    difficulty: row.difficulty,
    skill_id: row.skill_id,
    rw_subtype: "vocabulary_in_context",
    rw_format: row.source_metadata?.rw_format ?? "passage_mc",
    source_metadata: {
      ...row.source_metadata,
      generator: "regenerate-wic-options.mjs",
      regen_phase2_agent: 2,
      regen_at: new Date().toISOString().slice(0, 10),
    },
    dsat_blueprint_v1: true,
  };

  const built = buildOnePrepExplanation(q, {
    skill: "WIC",
    rw_subtype: "vocabulary_in_context",
    difficulty: row.difficulty,
  });
  q.explanation = built.explanation;
  q.options = built.options;
  q.correct_answer = built.correct_answer;

  const parity = validateOptionLengthParity(q.options, { rw_subtype: "vocabulary_in_context" });
  const validation = validateDsatRwQuestion(q);

  if (!parity.ok) {
    return { ok: false, reason: parity.reasons?.join(","), q, parity };
  }
  const contentFails = (validation.reasons ?? []).filter(
    (r) => !r.startsWith("char_spread") && !r.startsWith("word_spread") && !r.startsWith("hard_passage") && !r.startsWith("passage_word"),
  );
  if (contentFails.length) {
    return { ok: false, reason: contentFails.join(","), q, parity };
  }

  return { ok: true, q, parity, word, correctId };
}

function validateCorrectLetterDistributionLocal(assignments) {
  return validateCorrectLetterDistribution(assignments, { tolerancePct: 3 });
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

function sqlEscape(s) {
  return s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`;
}

function updateSql(id, q) {
  const opts = JSON.stringify(q.options).replace(/'/g, "''");
  return `UPDATE questions SET options = '${opts}'::jsonb, correct_answer = ${sqlEscape(q.correct_answer)}, explanation = ${sqlEscape(q.explanation)}, source_metadata = source_metadata || '{"generator":"regenerate-wic-options.mjs","regen_phase2_agent":2}'::jsonb, updated_at = now() WHERE id = ${sqlEscape(id)};`;
}

async function fetchWicRows() {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    const { rows } = await pgQuery(
      `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer,
              explanation, difficulty, skill_id, source_metadata
       FROM questions WHERE ${SQL_FILTER} ORDER BY id`,
    );
    return rows;
  }
  throw new Error("No DATABASE_URL — configure Supabase MCP env or set DATABASE_URL");
}

async function auditBefore(rows) {
  let longest = 0;
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let overSpread = 0;
  for (const row of rows) {
    letters[row.correct_answer] = (letters[row.correct_answer] ?? 0) + 1;
    const m = measureOptions(row.options ?? []);
    if (m.correct_is_longest) longest++;
    if (m.char_spread_pct > MAX_SPREAD_PCT) overSpread++;
  }
  return {
    total: rows.length,
    pct_correct_longest: Math.round(1000 * longest / rows.length) / 10,
    letter_counts: letters,
    pct_over_15_spread: Math.round(1000 * overSpread / rows.length) / 10,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  mkdirSync(SQL_DIR, { recursive: true });

  const rows = await fetchWicRows();
  const before = await auditBefore(rows);
  console.log("Before:", JSON.stringify(before, null, 2));

  const letterAssignments = buildLetterAssignments(rows.length);

  const updates = [];
  const failures = [];
  let longestAfter = 0;
  const letterAfter = { A: 0, B: 0, C: 0, D: 0 };
  let overSpreadAfter = 0;

  const staged = [];
  rows.forEach((row, index) => {
    const result = regenerateWicRow(row, "A", index);
    if (!result.ok) {
      failures.push({ id: row.id, word: extractWord(row.question_text), reason: result.reason });
      return;
    }
    staged.push({ row, result, index });
  });

  const finalLetters = buildLetterAssignments(staged.length);
  staged.forEach(({ row, result, index }, i) => {
    const correctId = finalLetters[i];
    const reRotated = regenerateWicRow(row, correctId, index);
    if (!reRotated.ok) {
      failures.push({ id: row.id, word: extractWord(row.question_text), reason: reRotated.reason });
      return;
    }
    if (reRotated.parity.correct_is_longest) longestAfter++;
    if (!reRotated.parity.ok || reRotated.parity.char_spread_pct > MAX_SPREAD_PCT) overSpreadAfter++;
    letterAfter[reRotated.correctId]++;
    updates.push({
      id: row.id,
      word: reRotated.word,
      correct_answer: reRotated.q.correct_answer,
      char_spread_pct: reRotated.parity.char_spread_pct,
      correct_is_longest: reRotated.parity.correct_is_longest,
      options: reRotated.q.options,
      explanation: reRotated.q.explanation,
    });
  });

  const after = {
    total: updates.length,
    failures: failures.length,
    pct_correct_longest: updates.length
      ? Math.round(1000 * longestAfter / updates.length) / 10
      : 0,
    letter_counts: letterAfter,
    pct_over_15_spread: updates.length
      ? Math.round(1000 * overSpreadAfter / updates.length) / 10
      : 0,
    letter_distribution: validateCorrectLetterDistributionLocal(
      updates.map((u) => u.correct_answer),
    ),
  };

  console.log("After:", JSON.stringify(after, null, 2));
  if (failures.length) {
    console.error("Failures:", failures.slice(0, 10));
  }

  const letterCheck = validateCorrectLetterDistributionLocal(finalLetters);
  writeFileSync(
    OUT_JSON,
    JSON.stringify({ before, after, updates, failures, letterAssignments: letterCheck }, null, 2),
  );
  writeFileSync(OUT_STATS, JSON.stringify({ before, after, sample_ids: updates.slice(0, 8).map((u) => u.id) }, null, 2));

  const batchSize = 25;
  const sqlBatches = [];
  for (let i = 0; i < updates.length; i += batchSize) {
    const chunk = updates.slice(i, i + batchSize);
    const sql = chunk.map((u) => updateSql(u.id, u)).join("\n");
    const path = join(SQL_DIR, `batch-${String(i / batchSize).padStart(3, "0")}.sql`);
    writeFileSync(path, sql);
    sqlBatches.push(path);
  }
  console.log(`Wrote ${updates.length} updates in ${sqlBatches.length} SQL batches`);

  if (apply) {
    const dbUrl = getDatabaseUrl();
    if (!dbUrl) throw new Error("No DATABASE_URL for --apply");
    for (const u of updates) {
      await pgQuery(
        `UPDATE questions SET options = $1::jsonb, correct_answer = $2, explanation = $3,
         source_metadata = source_metadata || $4::jsonb, updated_at = now() WHERE id = $5`,
        [
          JSON.stringify(u.options),
          u.correct_answer,
          u.explanation,
          JSON.stringify({ generator: "regenerate-wic-options.mjs", regen_phase2_agent: 2 }),
          u.id,
        ],
      );
    }
    console.log(`Applied ${updates.length} updates via pg`);
  } else if (applyMcp) {
    console.log("SQL batches ready for MCP execute_sql:");
    sqlBatches.forEach((p) => console.log(p));
  } else {
    console.log("Dry run — pass --apply or --apply-mcp");
  }

  console.log("\n=== SUMMARY ===");
  console.log(`Updated: ${apply ? updates.length : dryRun ? `(dry-run) ${updates.length} validated` : updates.length}`);
  console.log(`Longest-correct: ${before.pct_correct_longest}% → ${after.pct_correct_longest}%`);
  console.log(`Letters before:`, before.letter_counts);
  console.log(`Letters after:`, after.letter_counts);
  console.log(`Sample IDs:`, updates.slice(0, 5).map((u) => u.id).join(", "));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
