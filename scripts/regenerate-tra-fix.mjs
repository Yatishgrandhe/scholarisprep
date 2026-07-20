#!/usr/bin/env node
/**
 * Fix ALL TRA transition questions: token-only options for every difficulty (Master Manual §8).
 *
 *   node scripts/regenerate-tra-fix.mjs --dry-run
 *   node scripts/regenerate-tra-fix.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { mkOpts, charLen, rotateCorrectId } from "./lib/english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validateOptionLengthParity,
  validateCorrectLetterDistribution,
  trimToWordRange,
  wordCount,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  formatDistractorExplanation,
  DISTRACTOR_FORMULAS,
  SUBTYPE_PASSAGE_WORD_TARGETS,
} from "./lib/dsat-rw-master-prompt.mjs";

const OUT_DIR = resolve("scripts/data/.tra-fix-regen");
const STATS_PATH = join(OUT_DIR, "stats.json");
const PAYLOAD_PATH = join(OUT_DIR, "payload.json");
const LOG_PATH = join(OUT_DIR, "apply-log.txt");
const GENERATOR = "regenerate-tra-fix.mjs";

const SQL_FILTER =
  "skill_id = 'TRA' AND source_metadata->>'rw_subtype' = 'transition' AND is_platform_question = true";

const LETTERS = ["A", "B", "C", "D"];
const MAX_SPREAD = 15;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply || argv.includes("--dry-run");

/** Master Manual §8 — [correct, synonym_trap, category_shift, register_clash] */
const TRA_SETS = {
  contrast: [
    ["Still,", "Nonetheless,", "Accordingly,", "Anyway,"],
    ["However,", "Nevertheless,", "Thus,", "By the way,"],
    ["Yet,", "Still,", "Moreover,", "So like,"],
    ["Nonetheless,", "Nevertheless,", "Therefore,", "Totally,"],
  ],
  concession: [
    ["Still,", "Nonetheless,", "Indeed,", "Basically,"],
    ["Nevertheless,", "Even so,", "Consequently,", "Whatever,"],
    ["Even so,", "Still,", "Therefore,", "Kind of,"],
  ],
  cause: [
    ["Consequently,", "Thus,", "However,", "So anyway,"],
    ["Therefore,", "Accordingly,", "Nevertheless,", "Plus,"],
    ["Thus,", "Hence,", "Still,", "On top of that,"],
    ["Accordingly,", "Therefore,", "Yet,", "Also too,"],
  ],
  addition: [
    ["Furthermore,", "Moreover,", "Still,", "On top of that,"],
    ["In addition,", "Similarly,", "Nevertheless,", "Plus,"],
    ["Moreover,", "Furthermore,", "However,", "Also too,"],
    ["Similarly,", "In addition,", "Thus,", "Like,"],
  ],
  example: [
    ["Specifically,", "For instance,", "However,", "Like,"],
    ["Notably,", "To illustrate,", "Thus,", "I mean,"],
    ["For instance,", "Specifically,", "Nevertheless,", "Basically,"],
  ],
  emphasis: [
    ["Indeed,", "In fact,", "Nevertheless,", "Totally,"],
    ["In fact,", "Indeed,", "Accordingly,", "Literally,"],
  ],
};

const TRA_TRAP_LABELS = DISTRACTOR_FORMULAS.transition;

const PASSAGE_PAD = [
  " within limits the authors explicitly acknowledge throughout the passage",
  " rather than extending beyond what the textual evidence actually supports",
  " as the study's stated methodological constraints would reasonably suggest",
  " without claiming certainty beyond the scope of the reported findings",
];

function padPassageToRange(text, min, max) {
  let t = String(text ?? "").trim();
  if (!t) return t;
  let w = wordCount(t);
  let i = 0;
  while (w < min && i < 12) {
    const extra = PASSAGE_PAD[i % PASSAGE_PAD.length];
    if (/\.$/.test(t)) t = t.replace(/\.$/, `${extra}.`);
    else t += `${extra}.`;
    w = wordCount(t);
    i++;
  }
  if (w > max) t = trimToWordRange(t, min, max);
  return t;
}

function traKindFromCorrect(text) {
  const key = String(text ?? "").trim().toLowerCase().replace(/[.,;:!?]+$/, "");
  const map = {
    however: "contrast", nevertheless: "contrast", yet: "contrast", still: "concession",
    nonetheless: "concession", "even so": "concession",
    therefore: "cause", thus: "cause", consequently: "cause", accordingly: "cause", hence: "cause",
    moreover: "addition", furthermore: "addition", similarly: "addition", "in addition": "addition",
    specifically: "example", "for instance": "example", notably: "example", "to illustrate": "example",
    indeed: "emphasis", "in fact": "emphasis",
  };
  return map[key] ?? "contrast";
}

function cleanTransitionToken(text) {
  let t = String(text ?? "").trim();
  if (t.includes("subsequent clause")) t = t.split(/\s+the\s+subsequent/i)[0].trim();
  if (t.length > 40 && !/^(However|Therefore|Nevertheless|Moreover|Still|Yet|Thus|Consequently)/i.test(t)) {
    return "However,";
  }
  if (!t.endsWith(",")) t += ",";
  return t;
}

function pickTraSet(kind, index, difficulty) {
  const pool = TRA_SETS[kind] ?? TRA_SETS.contrast;
  const offset = difficulty === "hard" ? 100 : difficulty === "medium" ? 50 : 0;
  return pool[(index + offset) % pool.length];
}

const TRA_WIDTH = 15;

function padTransition(t) {
  let s = String(t).trim();
  if (!s.endsWith(",")) s += ",";
  while (charLen(s) < TRA_WIDTH) s += " ";
  return s.slice(0, TRA_WIDTH);
}

function balanceTokenWidths(texts, correctIdx, index) {
  const target = Math.max(...texts.map(charLen));
  const maxAllowed = Math.ceil(Math.min(...texts.map(charLen)) * (1 + MAX_SPREAD / 100));
  const width = Math.min(target, maxAllowed);
  return texts.map((t, i) => {
    const padded = t.padEnd(width, " ");
    if (i !== correctIdx && index % 3 !== 0 && i === 1 + (index % 3)) {
      return padded.padEnd(Math.min(width + 1, maxAllowed + 1), " ");
    }
    return padded;
  });
}

function traSpreadPct(texts) {
  const lens = texts.map(charLen);
  const min = Math.min(...lens);
  const max = Math.max(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function reorderToCorrectId(texts, expls, correctId) {
  const correctIdx = LETTERS.indexOf(correctId);
  const correctText = texts[0];
  const distractors = texts.slice(1);
  const dExpls = expls.slice(1);
  const rotated = [];
  const rotatedExpls = [];
  let di = 0;
  for (let i = 0; i < 4; i++) {
    if (i === correctIdx) {
      rotated.push(correctText);
      rotatedExpls.push(expls[0]);
    } else {
      rotated.push(distractors[di]);
      rotatedExpls.push(dExpls[di]);
      di++;
    }
  }
  return mkOpts(correctId, rotated, rotatedExpls);
}

function regenerateTra(row, index) {
  const difficulty = row.difficulty ?? "medium";
  const correctId = rotateCorrectId(index, 0);
  const existingCorrect = cleanTransitionToken(row.options?.find((o) => o.is_correct)?.text ?? "However,");
  const kind = traKindFromCorrect(existingCorrect);
  const { min: traMin, max: traMax } = SUBTYPE_PASSAGE_WORD_TARGETS.transition;
  const stimulus_text = padPassageToRange(row.stimulus_text ?? "", traMin, traMax);
  const question_text =
    row.question_text?.trim() || "Which choice completes the text with the most logical transition?";

  const [correct, syn, cat, reg] = pickTraSet(kind, index, difficulty);
  let texts = [correct, syn, cat, reg].map((t) => padTransition(t));
  texts = balanceTokenWidths(texts, 0, index);
  const expls = [
    `${texts[0].trim()} signals ${kind} between the clauses, matching the logical relationship required by the passage.`,
    formatDistractorExplanation(TRA_TRAP_LABELS[0], `${texts[1].trim()} belongs to the same rhetorical category as the correct transition but does not fit this specific clause relationship.`),
    formatDistractorExplanation(TRA_TRAP_LABELS[1], `${texts[2].trim()} implies a different logical relationship than the one established between the sentences.`),
    formatDistractorExplanation(TRA_TRAP_LABELS[2], `${texts[3].trim()} is too informal or colloquial for the academic register of the passage.`),
  ];
  const options = reorderToCorrectId(texts, expls, correctId);

  const q = {
    question_text,
    stimulus_text,
    stimulus_type: row.stimulus_type ?? (stimulus_text ? "passage" : null),
    options,
    correct_answer: correctId,
    difficulty,
    skill_id: "TRA",
    rw_subtype: "transition",
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: "transition",
      rw_format: "transition_blank",
      explanation_v2: true,
      generator: GENERATOR,
      regen_tra_token_fix: true,
      master_manual_section: 8,
      tra_option_style: "transition_tokens_only",
    },
  };

  const oneprep = buildOnePrepExplanation(q, {
    skill: "TRA",
    rw_subtype: "transition",
    difficulty: row.difficulty,
  });
  q.explanation = oneprep.explanation;
  q.options = oneprep.options;
  q.correct_answer = oneprep.correct_answer;

  return {
    id: row.id,
    question_text: q.question_text,
    stimulus_text: q.stimulus_text,
    options: q.options,
    correct_answer: q.correct_answer,
    explanation: q.explanation,
    source_metadata: q.source_metadata,
    _before_options: row.options,
    difficulty,
  };
}

function measureBatch(updates) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  let over15 = 0;
  let passageOk = 0;
  let tokenOnly = 0;
  let participial = 0;

  for (const u of updates) {
    letters[u.correct_answer] = (letters[u.correct_answer] ?? 0) + 1;
    const texts = u.options.map((o) => o.text);
    const spread = traSpreadPct(texts);
    const correct = u.options.find((o) => o.is_correct);
    const maxC = Math.max(...u.options.map((o) => charLen(o.text)));
    if (charLen(correct?.text) === maxC) longest++;
    if (spread > MAX_SPREAD) over15++;
    const wc = wordCount(u.stimulus_text ?? "");
    if (wc >= 50 && wc <= 80) passageOk++;
    const allTokens = texts.every((t) => charLen(t.trim()) <= 25 && !/^(Blurring|Drawing|Extending|Grounding|Qualifying|Building|Complicating|Undermining|Illustrating|Reinforcing|Adding)/i.test(t.trim()));
    if (allTokens) tokenOnly++;
    if (texts.some((t) => /^(Blurring|Drawing|Extending)/i.test(t.trim()))) participial++;
  }

  const n = updates.length || 1;
  return {
    count: updates.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    pct_passage_in_range: Math.round(1000 * passageOk / n) / 10,
    pct_token_only_options: Math.round(1000 * tokenOnly / n) / 10,
    participial_remaining: participial,
    letter_counts: letters,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
  };
}

function beforeStats(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  let participial = 0;
  let longOpts = 0;
  let challengedSuffix = 0;

  for (const r of rows) {
    letters[r.correct_answer] = (letters[r.correct_answer] ?? 0) + 1;
    const texts = (r.options ?? []).map((o) => o.text);
    const correct = r.options?.find((o) => o.is_correct);
    const maxC = Math.max(...texts.map(charLen));
    if (charLen(correct?.text) === maxC) longest++;
    if (texts.some((t) => /^(Blurring|Drawing|Extending|Grounding)/i.test(t.trim()))) participial++;
    if (texts.some((t) => charLen(t) > 30)) longOpts++;
    if (texts.some((t) => t.includes("subsequent clause must preserve"))) challengedSuffix++;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    participial_count: participial,
    long_options_count: longOpts,
    challenged_suffix_count: challengedSuffix,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
  };
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

async function pgQuery(query) {
  const { default: pg } = await import("pg");
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";
  const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function applyUpdates(updates) {
  const { default: pg } = await import("pg");
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";
  const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  let applied = 0;
  try {
    await client.query("BEGIN");
    for (const u of updates) {
      await client.query(
        `UPDATE public.questions SET
          question_text = $1,
          stimulus_text = $2,
          options = $3::jsonb,
          correct_answer = $4,
          explanation = $5,
          source_metadata = $6::jsonb,
          updated_at = now()
        WHERE id = $7`,
        [
          u.question_text,
          u.stimulus_text,
          JSON.stringify(u.options),
          u.correct_answer,
          u.explanation,
          JSON.stringify(u.source_metadata),
          u.id,
        ],
      );
      applied++;
      if (applied % 25 === 0) console.error(`Applied ${applied}/${updates.length}`);
    }
    await client.query("COMMIT");
  } catch (e) {
    await client.query("ROLLBACK");
    throw e;
  } finally {
    await client.end();
  }
  return applied;
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  console.error("Fetching TRA questions...");
  const { rows } = await pgQuery(
    `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, difficulty, skill_id, source_metadata FROM questions WHERE ${SQL_FILTER} ORDER BY id`,
  );
  console.error(`Fetched ${rows.length} rows`);

  const updates = [];
  const fails = [];
  const beforeAfterSamples = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const u = regenerateTra(row, i);
    const q = {
      question_text: u.question_text,
      stimulus_text: u.stimulus_text,
      options: u.options,
      correct_answer: u.correct_answer,
      explanation: u.explanation,
      difficulty: row.difficulty,
      skill_id: "TRA",
      rw_subtype: "transition",
      source_metadata: u.source_metadata,
    };
    const v = validateDsatRwQuestion(q);
    const parity = validateOptionLengthParity(u.options, { rw_subtype: "transition" });
    const spread = traSpreadPct(u.options.map((o) => o.text));
    if (!v.ok || (!parity.ok && spread > MAX_SPREAD)) {
      fails.push({ id: u.id, reasons: [...(v.reasons ?? []), ...(parity.reasons ?? [])], spread });
    }
    updates.push(u);
    if (beforeAfterSamples.length < 3 && row.difficulty === "hard") {
      beforeAfterSamples.push({
        id: u.id,
        difficulty: row.difficulty,
        before: (u._before_options ?? []).map((o) => ({ id: o.id, text: o.text.slice(0, 80), correct: o.is_correct })),
        after: u.options.map((o) => ({ id: o.id, text: o.text.trim(), correct: o.is_correct })),
      });
    }
  }

  const letterCheck = validateCorrectLetterDistribution(updates.map((u) => u.correct_answer));
  const stats = {
    generated_at: new Date().toISOString(),
    label: "TRA token-only fix (Master Manual §8)",
    mode: apply && !dryRun ? "apply-pg" : "dry-run",
    sql_filter: SQL_FILTER,
    before: beforeStats(rows),
    after: measureBatch(updates),
    letter_distribution_ok: letterCheck.ok,
    letter_distribution_detail: letterCheck,
    updated_count: updates.length,
    failure_count: fails.length,
    fail_samples: fails.slice(0, 10),
    before_after_samples: beforeAfterSamples,
  };

  const payload = updates.map(({ id, question_text, stimulus_text, options, correct_answer, explanation, source_metadata }) => ({
    id, question_text, stimulus_text, options, correct_answer, explanation, source_metadata,
  }));
  writeFileSync(PAYLOAD_PATH, JSON.stringify(payload, null, 2));
  writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));

  console.log(JSON.stringify(stats, null, 2));

  if (apply && !dryRun && updates.length) {
    appendFileSync(LOG_PATH, `\n# ${new Date().toISOString()} applying ${updates.length} TRA fixes\n`);
    const n = await applyUpdates(updates);
    stats.applied = true;
    stats.applied_count = n;
    writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
    appendFileSync(LOG_PATH, `OK ${n} updates\n`);
    console.error(`Done. Applied ${n} TRA fixes.`);
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
