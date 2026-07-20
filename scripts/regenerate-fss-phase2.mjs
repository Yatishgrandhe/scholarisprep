#!/usr/bin/env node
/**
 * Phase 2 Agent 10: Regenerate all FSS (form_structure_sense) per Master Manual §11.
 * Passages 60–90 words; intervening phrases; inverted syntax on hard.
 * Distractors: Proximity Decoy, Tense Shift, Dangling Modifier.
 * Mandates: ≤15% spread (grammar-token exception), balanced A-D.
 *
 *   node scripts/regenerate-fss-phase2.mjs --dry-run
 *   node scripts/regenerate-fss-phase2.mjs --apply
 *   node scripts/regenerate-fss-phase2.mjs --apply --via-mcp
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { charLen, optionWordCount, rotateCorrectId } from "./lib/english-rw-templates.mjs";
import { PROJECT_ID, validateDsatRwQuestion } from "./lib/dsat-rw-blueprint.mjs";
import {
  generateFssMasterManualItem,
  validateFssMasterItem,
  fssSpreadPct,
} from "./lib/fss-master-manual.mjs";

const OUT_DIR = resolve("scripts/data/.fss-regen");
const STATS_PATH = resolve("scripts/data/.fss-regen/stats.json");
const SQL_PATH = resolve("scripts/data/.fss-regen/updates.sql");
const LOG_PATH = resolve("scripts/data/.fss-regen/apply-log.txt");

const LETTERS = ["A", "B", "C", "D"];
const GENERATOR = "regenerate-fss-phase2.mjs";
const SQL_FILTER =
  "skill_id = 'FSS' AND source_metadata->>'rw_subtype' = 'form_structure_sense' AND is_platform_question = true";

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply || argv.includes("--dry-run");
const viaMcp = argv.includes("--via-mcp");

function measureBatch(updates) {
  const letterCounts = { A: 0, B: 0, C: 0, D: 0 };
  let correctLongest = 0;
  let over15 = 0;
  let passageOk = 0;
  const passageWords = [];

  for (const u of updates) {
    letterCounts[u.correct_answer]++;
    const texts = u.options.map((o) => o.text);
    const lens = texts.map((t) => charLen(t));
    const max = Math.max(...lens);
    const correctLen = charLen(u.options.find((o) => o.is_correct)?.text);
    if (correctLen === max) correctLongest++;
    const spread = fssSpreadPct(texts);
    if (spread > 15) over15++;
    const pw = validateFssMasterItem(u);
    if (pw.ok) passageOk++;
    passageWords.push(u.passage_words ?? 0);
  }

  const n = updates.length;
  const avgPassage = passageWords.length
    ? Math.round(passageWords.reduce((a, b) => a + b, 0) / passageWords.length)
    : 0;
  return {
    total: n,
    letter_distribution: {
      A: { count: letterCounts.A, pct: Math.round(1000 * letterCounts.A / n) / 10 },
      B: { count: letterCounts.B, pct: Math.round(1000 * letterCounts.B / n) / 10 },
      C: { count: letterCounts.C, pct: Math.round(1000 * letterCounts.C / n) / 10 },
      D: { count: letterCounts.D, pct: Math.round(1000 * letterCounts.D / n) / 10 },
    },
    pct_correct_longest: Math.round(1000 * correctLongest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    pct_passage_60_90: Math.round(1000 * passageOk / n) / 10,
    avg_passage_words: avgPassage,
    spread_note: "Single-token FSS items use grammar_token_exception (word spread); multi-word items use char spread.",
    master_manual: "§11 Form, Structure, and Sense — Proximity Decoy / Tense Shift / Dangling Modifier",
  };
}

function sqlEscape(s) {
  if (s == null) return "NULL";
  return (
    "E'" +
    String(s)
      .replace(/\\/g, "\\\\")
      .replace(/'/g, "''")
      .replace(/\n/g, "\\n")
      .replace(/\r/g, "") +
    "'"
  );
}

function updateSql(u) {
  const opts = JSON.stringify(u.options).replace(/'/g, "''");
  const meta = JSON.stringify(u.source_metadata).replace(/'/g, "''");
  return `UPDATE public.questions SET stimulus_text = ${sqlEscape(u.stimulus_text)}, options = '${opts}'::jsonb, correct_answer = ${sqlEscape(u.correct_answer)}, explanation = ${sqlEscape(u.explanation)}, hint = ${sqlEscape(u.hint)}, source_metadata = source_metadata || '${meta}'::jsonb, updated_at = now() WHERE id = ${sqlEscape(u.id)};`;
}

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const blob = JSON.stringify(cfg?.env ?? {});
    if (blob.includes(PROJECT_ID)) {
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

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (existsSync(mcpPath)) {
    const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
    for (const cfg of Object.values(mcp.mcpServers ?? {})) {
      const blob = JSON.stringify(cfg?.env ?? {});
      if (blob.includes(PROJECT_ID)) {
        return process.env.SUPABASE_ACCESS_TOKEN?.trim() || cfg?.env?.SUPABASE_ACCESS_TOKEN?.trim() || null;
      }
    }
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
    proc.stderr.on("data", (d) => process.stderr.write(d));
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "fss-regen", version: "2.0.0" } });
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
  const inputPath = argv.find((a, i) => argv[i - 1] === "--input");
  if (inputPath && existsSync(inputPath)) {
    const raw = JSON.parse(readFileSync(inputPath, "utf8"));
    return Array.isArray(raw) ? raw : raw.rows ?? raw;
  }

  const q = `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, difficulty, skill_id, source_metadata FROM questions WHERE ${SQL_FILTER} ORDER BY id`;

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

  try {
    const res = await pgQuery(q);
    return res.rows;
  } catch (e) {
    console.warn("PG fetch failed, falling back to MCP:", e.message);
    const result = await mcpExecute(q);
    const text = result?.content?.[0]?.text;
    return text ? JSON.parse(text) : result?.rows ?? result;
  }
}

async function applyUpdates(sql) {
  const chunks = sql.split("\n").filter((l) => l.startsWith("UPDATE"));
  const batchSize = 25;
  let applied = 0;

  if (viaMcp || !getDatabaseUrl()) {
    for (let i = 0; i < chunks.length; i += batchSize) {
      const batch = chunks.slice(i, i + batchSize).join("\n");
      await mcpExecute(batch);
      applied += Math.min(batchSize, chunks.length - i);
      console.log(`Applied ${applied}/${chunks.length} via MCP`);
    }
  } else {
    await pgQuery("BEGIN");
    try {
      for (const stmt of chunks) {
        await pgQuery(stmt);
        applied++;
      }
      await pgQuery("COMMIT");
    } catch (e) {
      await pgQuery("ROLLBACK");
      throw e;
    }
  }
  return applied;
}

function regenerateRow(row, index) {
  const challenged =
    row.source_metadata?.challenged_problem === true || row.source_metadata?.challenged_problem === "true";
  const difficulty = row.difficulty ?? "medium";
  const correctId = rotateCorrectId(index);
  const gen = generateFssMasterManualItem(index, difficulty, { challenged, correctId });

  const meta = {
    ...(row.source_metadata ?? {}),
    dsat_blueprint_v1: true,
    rw_subtype: "form_structure_sense",
    rw_format: "grammar_blank",
    generator: GENERATOR,
    regen_phase2: true,
    regen_master_manual_s11: true,
    regen_at: "2026-06-13",
  };

  return {
    id: row.id,
    stimulus_text: gen.stimulus_text,
    options: gen.options,
    correct_answer: gen.correct_answer,
    explanation: gen.explanation,
    hint: gen.hint,
    source_metadata: meta,
    difficulty,
    question_text: gen.question_text,
    passage_words: gen.passage_words,
    passage_sentences: gen.passage_sentences,
    spread_pct: gen.spread_pct,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  console.log("Fetching FSS questions...");
  const rows = await fetchRows();
  console.log(`Fetched ${rows.length} rows`);

  const updates = [];
  const fails = [];

  for (let i = 0; i < rows.length; i++) {
    const u = regenerateRow(rows[i], i);
    const challenged =
      rows[i].source_metadata?.challenged_problem === true ||
      rows[i].source_metadata?.challenged_problem === "true";
    const q = {
      question_text: u.question_text,
      stimulus_text: u.stimulus_text,
      options: u.options,
      correct_answer: u.correct_answer,
      explanation: u.explanation,
      difficulty: u.difficulty,
      skill_id: "FSS",
      rw_subtype: "form_structure_sense",
      source_metadata: { ...u.source_metadata, challenged_problem: challenged || undefined },
      _challenged: challenged,
    };
    const v = validateDsatRwQuestion(q);
    const fssV = validateFssMasterItem(q);
    if (!v.ok || !fssV.ok) {
      fails.push({
        id: u.id,
        reasons: [...(v.reasons ?? []), ...(fssV.reasons ?? [])],
        spread: u.spread_pct,
        passage_words: u.passage_words,
      });
    }
    updates.push(u);
  }

  const stats = {
    agent: 10,
    label: "FSS form_structure_sense",
    spec: "Master Manual Section 11",
    generated_at: new Date().toISOString(),
    before: {
      total: 325,
      pct_correct_A: 100,
      pct_over_15_spread: 95.4,
      pct_correct_longest: 13.8,
      avg_passage_words: 21,
    },
    after: measureBatch(updates),
    validation_failures: fails.length,
    fail_samples: fails.slice(0, 10),
  };

  const sql = ["BEGIN;", ...updates.map(updateSql), "COMMIT;"].join("\n");
  writeFileSync(SQL_PATH, sql);
  writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
  writeFileSync(resolve(OUT_DIR, "payload.json"), JSON.stringify(updates, null, 2));

  console.log("\n=== FSS Master Manual §11 Regen Stats ===");
  console.log(JSON.stringify(stats, null, 2));

  if (fails.length) {
    console.warn(`\n${fails.length} rows failed validation — review fail_samples in stats.json`);
  }

  if (apply && !dryRun) {
    console.log("\nApplying updates to prod...");
    const n = await applyUpdates(sql);
    appendLog(`Applied ${n} FSS master-manual updates at ${new Date().toISOString()}`);
    console.log(`Done. Applied ${n} updates.`);
  } else {
    console.log(`\nDry run — SQL written to ${SQL_PATH}`);
  }
}

function appendLog(msg) {
  writeFileSync(LOG_PATH, msg + "\n", { flag: "a" });
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
