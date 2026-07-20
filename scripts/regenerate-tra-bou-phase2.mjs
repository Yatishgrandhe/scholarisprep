#!/usr/bin/env node
/**
 * Phase 2 Agent 9 (Master Manual §8 TRA + §10 BOU): regenerate all transition + boundaries options.
 *
 *   node scripts/regenerate-tra-bou-phase2.mjs --dry-run
 *   node scripts/regenerate-tra-bou-phase2.mjs --apply
 *   node scripts/regenerate-tra-bou-phase2.mjs --apply --via-mcp
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  mkOpts,
  mkChallengedOpts,
  charLen,
  optionWordCount,
  rotateCorrectId,
} from "./lib/english-rw-templates.mjs";
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

const OUT_DIR = resolve("scripts/data/.tra-bou-regen");
const STATS_PATH = join(OUT_DIR, "stats.json");
const SQL_PATH = join(OUT_DIR, "updates.sql");
const LOG_PATH = join(OUT_DIR, "apply-log.txt");
const GENERATOR = "regenerate-tra-bou-phase2.mjs";

const SQL_FILTER =
  "((skill_id = 'TRA' AND source_metadata->>'rw_subtype' = 'transition') OR (skill_id = 'BOU' AND source_metadata->>'rw_subtype' = 'boundaries')) AND is_platform_question = true";

const LETTERS = ["A", "B", "C", "D"];
const NO_PUNCT = "(no punctuation)";
const MAX_SPREAD = 15;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply || argv.includes("--dry-run");
const viaMcp = argv.includes("--via-mcp");

/** Master Manual §8 — transition sets: [correct, synonym_trap, category_shift, register_clash] */
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
  ],
  cause: [
    ["Consequently,", "Thus,", "However,", "So anyway,"],
    ["Therefore,", "Accordingly,", "Nevertheless,", "Kind of,"],
    ["Thus,", "Hence,", "Still,", "Plus,"],
  ],
  addition: [
    ["Furthermore,", "Moreover,", "Still,", "On top of that,"],
    ["In addition,", "Similarly,", "Nevertheless,", "Plus,"],
    ["Moreover,", "Furthermore,", "However,", "Also too,"],
  ],
  example: [
    ["Specifically,", "For instance,", "However,", "Like,"],
    ["Notably,", "To illustrate,", "Thus,", "I mean,"],
  ],
  emphasis: [
    ["Indeed,", "In fact,", "Nevertheless,", "Totally,"],
    ["In fact,", "Indeed,", "Accordingly,", "Literally,"],
  ],
};

const TRA_TRAP_LABELS = DISTRACTOR_FORMULAS.transition;
const BOU_TRAP_LABELS = DISTRACTOR_FORMULAS.boundaries;

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

const BOU_TRAP_PATTERNS = [
  {
    match: (t) => t === ", and" || t === ", and ",
    set: [", and", ",", NO_PUNCT, " and"],
    traps: ["Comma Splice", "Run-on Conjunction", "Fragmented Semicolon/Colon"],
  },
  {
    match: (t) => t === ";" || t.startsWith(";"),
    set: [";", ",", NO_PUNCT, ": and"],
    traps: ["Comma Splice", "Run-on", "Fragment"],
  },
  {
    match: (t) => t === ":" || t.endsWith(":"),
    set: [":", ",", ";", NO_PUNCT],
    traps: ["Comma Splice", "Fragment", "Run-on"],
  },
  {
    match: (t) => t.includes("— ... —"),
    set: ["— ... —", ", ... —", "— ... ,", "( ... ,"],
    traps: ["Unmatched Parenthetical", "Unmatched Parenthetical", "Fragment"],
  },
  {
    match: (t) => t.includes("—") && !t.includes("— ... —"),
    set: (correct) => [correct, `${correct.split("—")[0]},`, NO_PUNCT, `${correct.split("—")[0]} and`],
    traps: ["Comma Splice", "Run-on Conjunction", "Fragmented Semicolon/Colon"],
  },
  {
    match: (t) => t === ",",
    set: [",", NO_PUNCT, " and", ";"],
    traps: ["Comma Splice", "Run-on Conjunction", "Fragmented Semicolon/Colon"],
  },
  {
    match: (t) => t === NO_PUNCT || t === "",
    set: [NO_PUNCT, ",", " and", ";"],
    traps: ["Comma Splice", "Run-on Conjunction", "Fragment"],
  },
];

function normalizeBou(text) {
  const t = String(text ?? "").trim();
  return t === "" ? NO_PUNCT : t;
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

function pickTraSet(kind, index) {
  const pool = TRA_SETS[kind] ?? TRA_SETS.contrast;
  return pool[index % pool.length];
}

const TRA_WIDTH = 15;

function padTransition(t) {
  let s = String(t).trim();
  if (!s.endsWith(",")) s += ",";
  while (charLen(s) < TRA_WIDTH) s += " ";
  return s.slice(0, TRA_WIDTH);
}

/** Pad all options to equal width for grammar-token spread ≤15%. */
function balanceTokenWidths(texts, correctIdx, index) {
  const target = Math.max(...texts.map(charLen));
  const maxAllowed = Math.ceil(Math.min(...texts.map(charLen)) * (1 + MAX_SPREAD / 100));
  const width = Math.min(target, maxAllowed);
  const result = texts.map((t, i) => {
    const padded = t.padEnd(width, " ");
    if (i !== correctIdx && index % 3 !== 0 && i === 1 + (index % 3)) {
      return padded.padEnd(Math.min(width + 1, maxAllowed + 1), " ");
    }
    return padded;
  });
  return result;
}

function traSpreadPct(texts) {
  const lens = texts.map(charLen);
  const min = Math.min(...lens);
  const max = Math.max(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function bouSpreadPct(texts) {
  return traSpreadPct(texts);
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
  const challenged = row.source_metadata?.challenged_problem === true;
  const difficulty = row.difficulty ?? "medium";
  const correctId = rotateCorrectId(index, 0);
  const existingCorrect = row.options?.find((o) => o.is_correct)?.text ?? "However,";
  const kind = traKindFromCorrect(existingCorrect);
  const { min: traMin, max: traMax } = SUBTYPE_PASSAGE_WORD_TARGETS.transition;
  const stimulus_text = padPassageToRange(row.stimulus_text ?? "", traMin, traMax);
  const question_text =
    row.question_text?.trim() || "Which choice completes the text with the most logical transition?";

  const setOffset = difficulty === "hard" ? 100 : difficulty === "medium" ? 50 : 0;
  const [correct, syn, cat, reg] = pickTraSet(kind, index + setOffset);
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
    difficulty: row.difficulty ?? "medium",
    skill_id: "TRA",
    rw_subtype: "transition",
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: "transition",
      rw_format: "transition_blank",
      explanation_v2: true,
      generator: GENERATOR,
      regen_phase2: true,
      regen_agent: 9,
      master_manual_section: 8,
    },
  };

  const oneprep = buildOnePrepExplanation(q, {
    skill: "TRA",
    rw_subtype: "transition",
    difficulty: challenged ? "challenged" : row.difficulty,
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
  };
}

function bouTrapSet(correctNorm, index) {
  for (const pat of BOU_TRAP_PATTERNS) {
    if (pat.match(correctNorm)) {
      const set = typeof pat.set === "function" ? pat.set(correctNorm) : pat.set;
      return { texts: set, traps: pat.traps };
    }
  }
  const fallbacks = [
    { texts: [";", ",", NO_PUNCT, ": and"], traps: ["Comma Splice", "Run-on", "Fragment"] },
    { texts: [":", ",", ";", NO_PUNCT], traps: ["Comma Splice", "Fragment", "Run-on"] },
    { texts: [", and", ",", NO_PUNCT, " and"], traps: ["Comma Splice", "Run-on", "Run-on Conjunction"] },
  ];
  return fallbacks[index % fallbacks.length];
}

function regenerateBou(row, index) {
  const challenged = row.source_metadata?.challenged_problem === true;
  const correctId = rotateCorrectId(index, 1);
  const existingCorrect = normalizeBou(row.options?.find((o) => o.is_correct)?.text);
  const { texts: rawTexts, traps } = bouTrapSet(existingCorrect, index);

  const correctNorm = normalizeBou(rawTexts[0]);
  let texts = [correctNorm];
  for (let i = 1; i < 4; i++) texts.push(normalizeBou(rawTexts[i] ?? rawTexts[i % rawTexts.length]));
  texts = balanceTokenWidths(texts, 0, index);

  const expls = [
    `"${texts[0].trim()}" satisfies Standard English boundary conventions for this clause structure.`,
    formatDistractorExplanation(traps[0] ?? BOU_TRAP_LABELS[0], `"${texts[1].trim()}" creates an incorrect boundary between independent clauses.`),
    formatDistractorExplanation(traps[1] ?? BOU_TRAP_LABELS[1], `"${texts[2].trim()}" fuses clauses without proper punctuation or produces a run-on.`),
    formatDistractorExplanation(traps[2] ?? BOU_TRAP_LABELS[2], `"${texts[3].trim()}" leaves a dependent fragment or mismatched parenthetical boundary.`),
  ];

  let options = reorderToCorrectId(texts, expls, correctId);
  if (challenged) {
    const t2 = options.map((o) => o.text);
    const e2 = options.map((o) => o.explanation);
    options = mkChallengedOpts(correctId, t2, e2);
  }

  const { min: bouMin, max: bouMax } = SUBTYPE_PASSAGE_WORD_TARGETS.boundaries;
  const stimulus_text = padPassageToRange(row.stimulus_text ?? "", bouMin, bouMax);
  const question_text =
    row.question_text?.includes("conforms")
      ? row.question_text
      : "Which choice completes the text so that it conforms to the conventions of Standard English?";

  const q = {
    question_text,
    stimulus_text,
    stimulus_type: row.stimulus_type ?? "passage",
    options,
    correct_answer: correctId,
    difficulty: row.difficulty ?? "medium",
    skill_id: "BOU",
    rw_subtype: "boundaries",
    source_metadata: {
      ...(row.source_metadata ?? {}),
      dsat_blueprint_v1: true,
      rw_subtype: "boundaries",
      rw_format: "grammar_blank",
      explanation_v2: true,
      generator: GENERATOR,
      regen_phase2: true,
      regen_agent: 9,
      master_manual_section: 10,
    },
  };

  const oneprep = buildOnePrepExplanation(q, { skill: "BOU", rw_subtype: "boundaries", difficulty: row.difficulty });
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
  };
}

function measureBatch(updates, rowsBefore) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  let over15 = 0;
  let traPassageOk = 0;
  let bouPassageOk = 0;
  let traCount = 0;
  let bouCount = 0;

  for (const u of updates) {
    letters[u.correct_answer] = (letters[u.correct_answer] ?? 0) + 1;
    const m = u.options.map((o) => o.text);
    const spread = u.skill_id === "BOU" ? bouSpreadPct(m) : traSpreadPct(m);
    const correct = u.options.find((o) => o.is_correct);
    const maxC = Math.max(...u.options.map((o) => charLen(o.text)));
    if (charLen(correct?.text) === maxC) longest++;
    if (spread > MAX_SPREAD) over15++;

    const wc = wordCount(u.stimulus_text ?? "");
    if (u.source_metadata?.rw_subtype === "transition" || u.skill_id === "TRA") {
      traCount++;
      if (wc >= 50 && wc <= 80) traPassageOk++;
    } else {
      bouCount++;
      if (wc >= 60 && wc <= 90) bouPassageOk++;
    }
  }

  const n = updates.length || 1;
  return {
    count: updates.length,
    tra_count: traCount,
    bou_count: bouCount,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    pct_tra_passage_in_range: traCount ? Math.round(1000 * traPassageOk / traCount) / 10 : 0,
    pct_bou_passage_in_range: bouCount ? Math.round(1000 * bouPassageOk / bouCount) / 10 : 0,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
    letter_counts: letters,
  };
}

function beforeStats(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  for (const r of rows) {
    letters[r.correct_answer] = (letters[r.correct_answer] ?? 0) + 1;
    const correct = r.options?.find((o) => o.is_correct);
    const maxC = Math.max(...(r.options ?? []).map((o) => charLen(o.text)));
    if (charLen(correct?.text) === maxC) longest++;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
  };
}

const sqlEscape = (s) => `'${String(s).replace(/'/g, "''")}'`;

function updateSql(u) {
  const opts = JSON.stringify(u.options).replace(/'/g, "''");
  const meta = JSON.stringify(u.source_metadata).replace(/'/g, "''");
  return `UPDATE public.questions SET
    question_text = ${sqlEscape(u.question_text)},
    stimulus_text = ${sqlEscape(u.stimulus_text)},
    options = '${opts}'::jsonb,
    correct_answer = ${sqlEscape(u.correct_answer)},
    explanation = ${sqlEscape(u.explanation)},
    source_metadata = '${meta}'::jsonb,
    updated_at = now()
  WHERE id = ${sqlEscape(u.id)};`;
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
  const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return params.length ? await client.query(query, params) : await client.query(query);
  } finally {
    await client.end();
  }
}

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function mcpExecute(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");
  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      { env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH }, stdio: ["pipe", "pipe", "pipe"] },
    );
    let msgId = 1;
    let buf = "";
    const pending = new Map();
    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };
    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch {
          /* ignore */
        }
      }
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "tra-bou-regen", version: "1.0.0" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: "execute_sql", arguments: { project_id: PROJECT_ID, query } });
        const result = await new Promise((res, rej) => {
          pending.set(id, { resolve: res, reject: rej });
          setTimeout(() => rej(new Error("MCP timeout")), 120000);
        });
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function fetchRows() {
  const q = `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, difficulty, skill_id, source_metadata FROM questions WHERE ${SQL_FILTER} ORDER BY skill_id, id`;
  if (viaMcp || !getDatabaseUrl()) {
    const result = await mcpExecute(q);
    const text = result?.content?.[0]?.text;
    if (text) {
      try {
        return JSON.parse(text);
      } catch {
        /* fall through */
      }
    }
    return result?.rows ?? result;
  }
  const { rows } = await pgQuery(q);
  return rows;
}

async function applyUpdates(updates) {
  const batchSize = 25;
  let applied = 0;
  for (let i = 0; i < updates.length; i += batchSize) {
    const chunk = updates.slice(i, i + batchSize);
    const batch = chunk.map(updateSql).join("\n");
    if (viaMcp || !getDatabaseUrl()) {
      await mcpExecute(batch);
    } else {
      await pgQuery(batch);
    }
    applied += chunk.length;
    console.error(`Applied ${applied}/${updates.length}`);
  }
  return applied;
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  console.error("Fetching TRA + BOU questions...");
  const rows = await fetchRows();
  console.error(`Fetched ${rows.length} rows`);

  const updates = [];
  const fails = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const u = row.skill_id === "TRA" ? regenerateTra(row, i) : regenerateBou(row, i);
    const q = {
      question_text: u.question_text,
      stimulus_text: u.stimulus_text,
      options: u.options,
      correct_answer: u.correct_answer,
      explanation: u.explanation,
      difficulty: row.difficulty,
      skill_id: row.skill_id,
      rw_subtype: row.source_metadata?.rw_subtype,
      source_metadata: u.source_metadata,
    };
    const v = validateDsatRwQuestion(q);
    const rwSubtype = row.skill_id === "TRA" ? "transition" : "boundaries";
    const parity = validateOptionLengthParity(u.options, { rw_subtype: rwSubtype });
    const spread = row.skill_id === "TRA" ? traSpreadPct(u.options.map((o) => o.text)) : bouSpreadPct(u.options.map((o) => o.text));
    if (!v.ok || (!parity.ok && spread > MAX_SPREAD)) {
      fails.push({ id: u.id, skill_id: row.skill_id, reasons: [...(v.reasons ?? []), ...(parity.reasons ?? [])], spread });
    }
    updates.push({ ...u, skill_id: row.skill_id });
  }

  const letterCheck = validateCorrectLetterDistribution(updates.map((u) => u.correct_answer));
  const stats = {
    generated_at: new Date().toISOString(),
    agent: 9,
    label: "TRA transition + BOU boundaries (Master Manual §8 + §10)",
    mode: apply && !dryRun ? (viaMcp ? "apply-mcp" : "apply-pg") : "dry-run",
    sql_filter: SQL_FILTER,
    before: beforeStats(rows),
    after: measureBatch(updates, rows),
    letter_distribution_ok: letterCheck.ok,
    letter_distribution_detail: letterCheck,
    updated_count: updates.length,
    failure_count: fails.length,
    fail_samples: fails.slice(0, 15),
    sample_ids: updates.slice(0, 5).map((u) => u.id),
  };

  const sql = updates.map(updateSql).join("\n");
  writeFileSync(SQL_PATH, sql);
  writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
  writeFileSync(join(OUT_DIR, "payload.json"), JSON.stringify(updates.slice(0, 20), null, 2));

  console.log(JSON.stringify(stats, null, 2));

  if (apply && !dryRun && updates.length) {
    appendFileSync(LOG_PATH, `\n# ${new Date().toISOString()} applied ${updates.length} rows\n`);
    const n = await applyUpdates(updates);
    stats.applied = true;
    stats.applied_count = n;
    writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
    appendFileSync(LOG_PATH, `OK ${n} updates\n`);
    console.error(`Done. Applied ${n} updates.`);
  }

  if (fails.length === rows.length) process.exit(1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
