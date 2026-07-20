#!/usr/bin/env node
/**
 * Master Manual Section 1 (WIC) — regenerate all 325 vocabulary_in_context rows.
 * Passage 50–100 words, 2–4 sentences; Collocation Decoy / Flat Literal / Tone Inversion.
 *
 *   node scripts/regenerate-wic-full.mjs
 *   node scripts/regenerate-wic-full.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";
import {
  regenerateWicRow,
  measureOptions,
  letterPlan,
  seededShuffle,
  MASTER_WIC_WORD_MIN,
  MASTER_WIC_WORD_MAX,
} from "./lib/wic-regen.mjs";
import {
  validateCorrectLetterDistribution,
  PROJECT_ID,
  wordCount,
  sentenceCount,
} from "./lib/dsat-rw-blueprint.mjs";

const OUT_DIR = resolve("scripts/data/.wic-full-regen");
const LOG = resolve("scripts/data/.wic-full-regen-apply-log.txt");
const STATS = resolve("scripts/data/.wic-full-regen-stats.json");
const SQL_FILTER =
  "exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true AND skill_id = 'WIC' AND source_metadata->>'rw_subtype' = 'vocabulary_in_context'";

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const fromCache = argv.includes("--from-cache");
const ROWS_CACHE = join(OUT_DIR, "rows.json");

function sqlEscape(s) {
  if (s == null) return "NULL";
  return `'${String(s).replace(/'/g, "''")}'`;
}

function updateSql(row) {
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const meta = JSON.stringify({
    generator: "regenerate-wic-full.mjs",
    master_manual_section: "WIC-1",
    regen_at: new Date().toISOString().slice(0, 10),
  }).replace(/'/g, "''");
  return `UPDATE public.questions SET
  question_text = ${sqlEscape(row.question_text)},
  stimulus_text = ${sqlEscape(row.stimulus_text)},
  options = '${opts}'::jsonb,
  correct_answer = ${sqlEscape(row.correct_answer)},
  explanation = ${sqlEscape(row.explanation)},
  source_metadata = source_metadata || '${meta}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(row.id)};`;
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

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  if (process.env.SUPABASE_ACCESS_TOKEN?.trim()) return process.env.SUPABASE_ACCESS_TOKEN.trim();
  return null;
}

async function pgQuery(query) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({
    connectionString: getDatabaseUrl(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function mcpExecuteSql(query) {
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
      for (const line of buf.split("\n")) {
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
          /* partial */
        }
      }
      buf = buf.split("\n").pop() ?? "";
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "wic-full-regen", version: "1.0" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: "execute_sql", arguments: { project_id: PROJECT_ID, query } });
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

async function executeSql(query) {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    try {
      await pgQuery(query);
      return "pg";
    } catch (e) {
      console.error(`pg failed: ${String(e.message).slice(0, 120)}`);
    }
  }
  await mcpExecuteSql(query);
  return "mcp";
}

async function fetchRows() {
  if (fromCache && existsSync(ROWS_CACHE)) {
    return JSON.parse(readFileSync(ROWS_CACHE, "utf8"));
  }
  const q = `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
    explanation, difficulty, skill_id, source_metadata
    FROM public.questions WHERE ${SQL_FILTER} ORDER BY id`;
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    try {
      const { rows } = await pgQuery(q);
      return rows;
    } catch {
      /* fall through to MCP */
    }
  }
  const result = await mcpExecuteSql(q);
  const content = result?.content?.[0]?.text;
  if (!content) throw new Error("MCP fetch returned no content");
  const parsed = JSON.parse(content);
  return Array.isArray(parsed) ? parsed : parsed.rows ?? parsed;
}

function auditBefore(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let overSpread = 0;
  let correctLongest = 0;
  let outOfMasterRange = 0;
  let avgWords = 0;

  for (const row of rows) {
    letters[row.correct_answer] = (letters[row.correct_answer] ?? 0) + 1;
    const m = measureOptions(row.options ?? []);
    if (m.correct_is_longest) correctLongest++;
    if (m.char_spread_pct > 15) overSpread++;
    const w = wordCount(row.stimulus_text ?? "");
    avgWords += w;
    if (w < MASTER_WIC_WORD_MIN || w > MASTER_WIC_WORD_MAX) outOfMasterRange++;
  }

  return {
    total: rows.length,
    pct_correct_longest: Math.round(1000 * correctLongest / rows.length) / 10,
    letter_counts: letters,
    pct_over_15_spread: Math.round(1000 * overSpread / rows.length) / 10,
    pct_outside_50_100_words: Math.round(1000 * outOfMasterRange / rows.length) / 10,
    avg_passage_words: Math.round(10 * avgWords / rows.length) / 10,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  mkdirSync(resolve("scripts/data"), { recursive: true });

  console.error("Fetching WIC rows...");
  const rows = await fetchRows();
  console.error(`Fetched ${rows.length} rows`);

  const before = auditBefore(rows);
  const letters = seededShuffle(letterPlan(rows.length));

  const updates = [];
  const failures = [];

  for (let i = 0; i < rows.length; i++) {
    const result = regenerateWicRow(rows[i], letters[i], i);
    if (!result.ok) {
      failures.push({ id: rows[i].id, reason: result.reason, word: result.word });
      continue;
    }
    const m = measureOptions(result.draft.options);
    updates.push({
      id: rows[i].id,
      external_id: rows[i].external_id,
      question_text: result.draft.question_text,
      stimulus_text: result.draft.stimulus_text,
      options: result.draft.options,
      correct_answer: result.draft.correct_answer,
      explanation: result.draft.explanation,
      word: result.word,
      passage_words: result.passage_words,
      passage_sentences: result.passage_sentences,
      char_spread_pct: m.char_spread_pct,
      correct_is_longest: m.correct_is_longest,
    });
  }

  let overSpreadAfter = 0;
  let correctLongestAfter = 0;
  let outOfRangeAfter = 0;
  const letterAfter = { A: 0, B: 0, C: 0, D: 0 };
  let avgWordsAfter = 0;
  let avgSentAfter = 0;

  for (const u of updates) {
    letterAfter[u.correct_answer]++;
    if (u.char_spread_pct > 15) overSpreadAfter++;
    if (u.correct_is_longest) correctLongestAfter++;
    avgWordsAfter += u.passage_words;
    avgSentAfter += u.passage_sentences;
    if (u.passage_words < MASTER_WIC_WORD_MIN || u.passage_words > MASTER_WIC_WORD_MAX) outOfRangeAfter++;
  }

  const after = {
    total: updates.length,
    failures: failures.length,
    pct_correct_longest: updates.length ? Math.round(1000 * correctLongestAfter / updates.length) / 10 : 0,
    letter_counts: letterAfter,
    pct_over_15_spread: updates.length ? Math.round(1000 * overSpreadAfter / updates.length) / 10 : 0,
    pct_outside_50_100_words: updates.length ? Math.round(1000 * outOfRangeAfter / updates.length) / 10 : 0,
    avg_passage_words: updates.length ? Math.round(10 * avgWordsAfter / updates.length) / 10 : 0,
    avg_passage_sentences: updates.length ? Math.round(10 * avgSentAfter / updates.length) / 10 : 0,
    letter_distribution: validateCorrectLetterDistribution(
      updates.map((u) => u.correct_answer),
      { tolerancePct: 3 },
    ),
    master_manual: {
      passage_words: `${MASTER_WIC_WORD_MIN}-${MASTER_WIC_WORD_MAX}`,
      sentences: "2-4",
      distractors: ["Collocation Decoy", "Flat Literal", "Tone Inversion"],
    },
  };

  const stats = { before, after, sample_ids: updates.slice(0, 5).map((u) => u.id), failures: failures.slice(0, 10) };
  writeFileSync(STATS, JSON.stringify(stats, null, 2));
  writeFileSync(join(OUT_DIR, "payload.json"), JSON.stringify({ updates, failures }, null, 2));

  const BATCH = 25;
  const payloadDir = join(OUT_DIR, "payloads");
  mkdirSync(payloadDir, { recursive: true });
  for (let b = 0; b < updates.length; b += BATCH) {
    const chunk = updates.slice(b, b + BATCH);
    const query = `BEGIN;\n${chunk.map((u) => updateSql(u)).join("\n")}\nCOMMIT;`;
    writeFileSync(
      join(payloadDir, `payload-${String(b / BATCH).padStart(3, "0")}.json`),
      JSON.stringify({ project_id: PROJECT_ID, query }, null, 0),
    );
  }

  if (apply) {
    appendFileSync(LOG, `\n# WIC full regen apply ${new Date().toISOString()}\n`);
    const files = readdirSync(payloadDir)
      .filter((f) => f.startsWith("payload-"))
      .sort();
    for (const file of files) {
      const { query } = JSON.parse(readFileSync(join(payloadDir, file), "utf8"));
      const via = await executeSql(query);
      appendFileSync(LOG, `OK ${file} via ${via}\n`);
      console.error(`Applied ${file} (${via})`);
    }
  }

  console.log(JSON.stringify({ ok: failures.length === 0, applied: apply ? updates.length : 0, before, after }, null, 2));
  if (failures.length) process.exit(1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
