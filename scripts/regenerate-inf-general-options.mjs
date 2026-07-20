#!/usr/bin/env node
/**
 * Phase 2 Agent 6: Regenerate INF general answer choices (length parity + letter rotation).
 *
 *   node scripts/regenerate-inf-general-options.mjs --dry-run
 *   node scripts/regenerate-inf-general-options.mjs --generate
 *   node scripts/regenerate-inf-general-options.mjs --apply-mcp
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  mkOpts,
  charLen,
  optionWordCount,
  ensureTwoSentenceOption,
} from "./lib/english-rw-templates.mjs";
import {
  validateDsatRwQuestion,
  validateOptionLengthParity,
  validateCorrectLetterDistribution,
  buildOnePrepExplanation,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";

const OUT_DIR = resolve("scripts/data/.inf-general-regen");
const SPECS_PATH = resolve("scripts/data/.inf-general-specs.json");
const STATS_PATH = join(OUT_DIR, "stats.json");
const SQL_FILTER =
  "skill_id = 'INF' AND source_metadata->>'rw_subtype' = 'general'";

const argv = process.argv.slice(2);
const dryRun = argv.includes("--dry-run") || (!argv.includes("--generate") && !argv.includes("--apply-mcp"));
const generate = argv.includes("--generate") || argv.includes("--apply-mcp");
const applyMcp = argv.includes("--apply-mcp");

const FRAMES = [
  (c) => `The passage most strongly suggests that ${c}.`,
  (c) => `It can reasonably be inferred from the passage that ${c}.`,
  (c) => `The passage implies that ${c}.`,
  (c) => `Based on the passage as a whole, ${c}.`,
];

const CLAUSE_EXPANSIONS = {
  correct: [
    ", consistent with the passage's cautiously stated empirical framing throughout",
    " when the study's acknowledged methodological limits are taken into account",
    ", reflecting the bounded inference the passage's evidence actually supports",
  ],
  distractor: [
    ", though the passage explicitly cautions against drawing such a sweeping conclusion",
    ", even when the wording echoes passage vocabulary without the required logical link",
    ", despite lacking the textual support the passage provides for narrower claims",
    ", in a way that misreads a local detail as proof of a universal thesis",
  ],
};

const SHORT_PADS = [
  "as the passage notes",
  "in this context",
  "given the evidence",
  "within stated limits",
  "on careful reading",
  "as researchers argue",
  "the text suggests",
  "in the study cited",
];

const GENERAL_STEMS = [
  "Which choice can most reasonably be inferred from the passage?",
  "It can reasonably be inferred from the passage that which of the following?",
  "Based on the passage, which statement is most strongly supported?",
  "The passage most strongly supports which of the following inferences?",
  "Which inference is most strongly supported by the passage?",
];

function loadSpecs() {
  if (!existsSync(SPECS_PATH)) {
    const bank = readFileSync(resolve("scripts/lib/dsat-challenged-bank.mjs"), "utf8");
    const start = bank.indexOf("const INF_GENERAL_SPECS = [");
    const end = bank.indexOf("const INF_PREDICTION_SPECS", start);
    const block = bank.slice(start, end).trim();
    const specs = eval(block.replace("const INF_GENERAL_SPECS = ", "").replace(/;\s*$/, ""));
    mkdirSync(resolve("scripts/data"), { recursive: true });
    writeFileSync(SPECS_PATH, JSON.stringify(specs, null, 2));
    return specs;
  }
  return JSON.parse(readFileSync(SPECS_PATH, "utf8"));
}

function normalizeClause(text) {
  let t = String(text ?? "").trim().replace(/\.$/, "");
  t = t.replace(/^The passage (most strongly )?(suggests|implies|indicates) that /i, "");
  t = t.replace(/^It can (most )?reasonably be inferred from the passage that /i, "");
  t = t.replace(/^Based on the passage( as a whole)?, /i, "");
  t = t.replace(/^A follow-up report would likely /i, "");
  return t.charAt(0).toLowerCase() + t.slice(1);
}

function rotateCorrectId(index) {
  return ["A", "B", "C", "D"][index % 4];
}

function wordSpreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

function charSpreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function measureOptions(options) {
  const wordLens = options.map((o) => optionWordCount(o.text));
  const charLens = options.map((o) => charLen(o.text));
  const correct = options.find((o) => o.is_correct);
  const maxChar = Math.max(...charLens);
  return {
    word_lens: wordLens,
    char_lens: charLens,
    word_spread_pct: wordSpreadPct(wordLens),
    char_spread_pct: charSpreadPct(charLens),
    correct_is_longest: correct ? charLen(correct.text) === maxChar : false,
  };
}

function padToLength(text, targetLen, seed) {
  let t = String(text ?? "").trim();
  if (!t.endsWith(".")) t += ".";
  let n = seed;
  while (charLen(t) < targetLen && n < seed + 40) {
    const pad = SHORT_PADS[n % SHORT_PADS.length];
    t = t.replace(/\.$/, "") + ", " + pad + ".";
    n++;
  }
  return t;
}

const TRAP_SUFFIXES = [
  "though the passage cautions against treating that reading as fully supported by the text",
  "even when the wording echoes passage vocabulary without the required logical relationship",
  "despite lacking the textual support the passage provides for narrower and more bounded claims",
  "in a way that contradicts the empirical framing the authors adopt throughout the discussion",
];

function infOptionTexts(clauses, frameIdx, index, attempt = 0) {
  const frame = FRAMES[frameIdx % FRAMES.length];
  const targetWords = 14 + (attempt % 4);
  const base = clauses.map((c, ci) => {
    const core = normalizeClause(c);
    if (ci === 0) {
      return frame(`${core}, consistent with the passage's cautiously stated empirical framing`);
    }
    return frame(`${core}, ${TRAP_SUFFIXES[(ci + index + attempt) % TRAP_SUFFIXES.length]}`);
  });
  const targetWordsFinal = targetWords;
  return base.map((text, ci) => {
    let t = text;
    let n = index + ci;
    while (optionWordCount(t) < targetWordsFinal && n < index + ci + 20) {
      t = t.replace(/\.$/, "") + ", " + SHORT_PADS[n % SHORT_PADS.length] + ".";
      n++;
    }
    if (optionWordCount(t) > targetWordsFinal) {
      const words = t.trim().split(/\s+/).slice(0, targetWordsFinal);
      t = words.join(" ").replace(/[,;]$/, "") + ".";
    }
    return t;
  });
}

function syncToCorrectLength(texts, correctIdx, index) {
  const t = [...texts];
  const target = charLen(t[correctIdx]);
  for (let i = 0; i < 4; i++) {
    if (i === correctIdx) continue;
    if (charLen(t[i]) < target) {
      t[i] = padToLength(t[i], target, index * 10 + i);
    } else if (charLen(t[i]) > target) {
      let words = t[i].trim().split(/\s+/);
      while (words.length > 8 && charLen(words.join(" ") + ".") > target) {
        words.pop();
      }
      t[i] = words.join(" ").replace(/[,;]$/, "") + ".";
      if (charLen(t[i]) < target) {
        t[i] = padToLength(t[i], target, index * 10 + i + 50);
      }
    }
  }
  return t;
}

function buildBalancedOptions(clauses, frameIdx, index, correctIdx, attempt = 0) {
  const rawCorrectFirst = infOptionTexts(clauses, frameIdx, index, attempt);
  const order = ["A", "B", "C", "D"];
  return order.map((_, i) => rawCorrectFirst[(i - correctIdx + 4) % 4]);
}

function normalizeStem(text, index) {
  const raw = String(text ?? "").trim();
  if (/follow-up report|most likely describe at the end|future outcome|prediction/i.test(raw)) {
    return GENERAL_STEMS[index % GENERAL_STEMS.length];
  }
  if (/most reasonably be inferred|most strongly supported|inferred from the passage/i.test(raw)) {
    return raw.split(" the authors treat")[0].split(" the team will")[0].trim();
  }
  return GENERAL_STEMS[index % GENERAL_STEMS.length];
}

function regenRow(row, index, specs, attempt = 0) {
  const spec = specs[index % specs.length];
  const correctId = rotateCorrectId(index);
  const order = ["A", "B", "C", "D"];
  const targetIdx = order.indexOf(correctId);
  const frameIdx = index + attempt;

  const oldOpts = row.options ?? [];
  const oldCorrect = oldOpts.find((o) => o.is_correct || o.id === row.correct_answer);

  let clauses = [...spec.texts];
  if (oldCorrect?.text) {
    const normalized = normalizeClause(oldCorrect.text);
    if (normalized.length > 15 && !/wrong|pricing|never|always fails/i.test(normalized)) {
      clauses[0] = normalized;
    }
  }

  let balanced = buildBalancedOptions(clauses, frameIdx, index + attempt * 7, targetIdx, attempt);

  const challenged = row.source_metadata?.challenged_problem === true;
  if (challenged) {
    balanced = balanced.map((txt, i) => ensureTwoSentenceOption(txt, index + i + attempt));
    balanced = syncToCorrectLength(balanced, targetIdx, index + 500 + attempt);
  }

  const rotatedExpls = order.map((_, i) => spec.expls[(i - targetIdx + 4) % 4]);
  const trapLabels = ["Over-inference", "Contradicted reading", "Outside scope", "Detail-only"];
  const options = mkOpts(correctId, balanced, rotatedExpls).map((o, i) => ({
    ...o,
    explanation: o.is_correct
      ? o.explanation
      : `${trapLabels[i % 4]}: ${o.explanation}`,
  }));

  const question_text = normalizeStem(row.question_text ?? spec.question_text, index);
  const draft = {
    question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type ?? "passage",
    options,
    correct_answer: correctId,
    explanation: row.explanation,
    difficulty: row.difficulty,
    skill_id: "INF",
    rw_subtype: "general",
    rw_format: row.source_metadata?.rw_format ?? "passage_mc",
    source_metadata: row.source_metadata,
    dsat_blueprint_v1: true,
  };

  const v2 = buildOnePrepExplanation(draft, {
    skill: "INF",
    rw_subtype: "general",
    difficulty: row.difficulty ?? "medium",
  });

  return {
    id: row.id,
    question_text,
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    metrics: measureOptions(v2.options),
  };
}

function regenRowWithRetry(row, index, specs) {
  for (let attempt = 0; attempt < 12; attempt++) {
    const regen = regenRow(row, index, specs, attempt);
    const q = {
      ...row,
      question_text: regen.question_text,
      options: regen.options,
      correct_answer: regen.correct_answer,
      explanation: regen.explanation,
      rw_subtype: "general",
    };
    const validation = validateDsatRwQuestion({
      question_text: q.question_text,
      stimulus_text: q.stimulus_text,
      stimulus_type: q.stimulus_type,
      options: q.options,
      correct_answer: q.correct_answer,
      explanation: q.explanation,
      difficulty: q.difficulty,
      skill_id: q.skill_id,
      rw_subtype: "general",
      source_metadata: q.source_metadata,
      dsat_blueprint_v1: true,
    });
    const parity = validateOptionLengthParity(q.options, { rw_subtype: "general" });
    if (validation.ok && parity.ok) {
      return { ...regen, validation, parity, attempts: attempt + 1 };
    }
  }
  const regen = regenRow(row, index, specs, index);
  const q = {
    ...row,
    question_text: regen.question_text,
    options: regen.options,
    correct_answer: regen.correct_answer,
    explanation: regen.explanation,
    rw_subtype: "general",
  };
  return {
    ...regen,
    validation: validateDsatRwQuestion({
      question_text: q.question_text,
      stimulus_text: q.stimulus_text,
      stimulus_type: q.stimulus_type,
      options: q.options,
      correct_answer: q.correct_answer,
      explanation: q.explanation,
      difficulty: q.difficulty,
      skill_id: q.skill_id,
      rw_subtype: "general",
      source_metadata: q.source_metadata,
      dsat_blueprint_v1: true,
    }),
    parity: validateOptionLengthParity(q.options, { rw_subtype: "general" }),
    attempts: 12,
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
  if (s == null) return "NULL";
  return `'${String(s).replace(/'/g, "''")}'`;
}

function updateSql(row) {
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const expl = sqlEscape(row.explanation);
  const stem = sqlEscape(row.question_text);
  return `UPDATE public.questions SET question_text = ${stem}, options = '${opts}'::jsonb, correct_answer = ${sqlEscape(row.correct_answer)}, explanation = ${expl}, updated_at = now() WHERE id = ${sqlEscape(row.id)};`;
}

function getMcpToken() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (existsSync(mcpPath)) {
    const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
    for (const cfg of Object.values(mcp.mcpServers ?? {})) {
      const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
      if (url.includes(PROJECT_ID)) {
        const t = cfg?.env?.SUPABASE_ACCESS_TOKEN?.trim();
        if (t) return t;
      }
    }
  }
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function mcpExecuteSql(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");

  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      {
        env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
        stdio: ["pipe", "pipe", "pipe"],
      },
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
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "inf-general-regen", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { query },
        });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

function batchStats(updates) {
  const n = updates.length;
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let correctLongest = 0;
  let over15 = 0;
  let validationFail = 0;
  let totalAttempts = 0;
  for (const u of updates) {
    letters[u.correct_answer]++;
    if (u.metrics.correct_is_longest) correctLongest++;
    if (u.metrics.char_spread_pct > 15) over15++;
    if (u.validation && !u.validation.ok) validationFail++;
    totalAttempts += u.attempts ?? 1;
  }
  return {
    total: n,
    pct_correct_A: Math.round(1000 * letters.A / n) / 10,
    pct_correct_B: Math.round(1000 * letters.B / n) / 10,
    pct_correct_C: Math.round(1000 * letters.C / n) / 10,
    pct_correct_D: Math.round(1000 * letters.D / n) / 10,
    pct_correct_longest: Math.round(1000 * correctLongest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    avg_char_spread: Math.round(10 * updates.reduce((s, u) => s + u.metrics.char_spread_pct, 0) / n) / 10,
    validation_failures: validationFail,
    avg_attempts: Math.round(10 * totalAttempts / n) / 10,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const specs = loadSpecs();

  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase in ~/.cursor/mcp.json");
    process.exit(1);
  }

  const { rows } = await pgQuery(
    `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, difficulty, skill_id, source_metadata
     FROM questions
     WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true
       AND ${SQL_FILTER}
     ORDER BY id`,
  );

  console.log(`Fetched ${rows.length} INF general rows`);

  const updates = [];
  for (let i = 0; i < rows.length; i++) {
    const regen = regenRowWithRetry(rows[i], i, specs);
    updates.push({ ...regen, before_correct: rows[i].correct_answer });
  }

  const stats = batchStats(updates);
  stats.letter_distribution = validateCorrectLetterDistribution(
    updates.map((u) => u.correct_answer),
  );
  stats.before = {
    note: "from research audit 2026-06-13",
    pct_correct_longest: 66.5,
    pct_over_15_spread: 92.3,
    pct_correct_C: 61.5,
    pct_correct_D: 0,
  };
  stats.generated_at = new Date().toISOString();
  stats.agent = 6;
  stats.label = "INF general";

  writeFileSync(join(OUT_DIR, "updates.json"), JSON.stringify(updates, null, 2));
  writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));

  const BATCH = 10;
  const payloads = [];
  for (let b = 0; b < updates.length; b += BATCH) {
    const chunk = updates.slice(b, b + BATCH);
    const query = chunk.map(updateSql).join("\n");
    const name = `inf-general-regen-${String(b / BATCH).padStart(2, "0")}`;
    const payload = { name, query, count: chunk.length };
    writeFileSync(join(OUT_DIR, `payload-${name}.json`), JSON.stringify(payload, null, 2));
    payloads.push(payload);
  }

  console.log(JSON.stringify(stats, null, 2));

  if (dryRun && !generate) {
    console.log(`Dry run — ${updates.length} updates prepared in ${OUT_DIR}`);
    return;
  }

  if (applyMcp) {
    let applied = 0;
    for (const p of payloads) {
      const res = await mcpExecuteSql(p.query);
      const text = res?.content?.[0]?.text ?? JSON.stringify(res);
      if (/error|failed|ZodError/i.test(text) && !/Below is the result/i.test(text)) {
        throw new Error(`Batch ${p.name} failed: ${text.slice(0, 800)}`);
      }
      applied += p.count;
      console.log(`Applied ${p.name} (${p.count} rows)`);
      await new Promise((r) => setTimeout(r, 800));
    }
    stats.applied_at = new Date().toISOString();
    stats.applied_count = applied;
    writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
    console.log(`Applied ${applied} rows via MCP`);
  } else {
    console.log(`Generated ${payloads.length} MCP payloads — run with --apply-mcp`);
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
