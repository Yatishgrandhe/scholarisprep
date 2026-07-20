#!/usr/bin/env node
/**
 * Restore SAT RW medium tier after hard-content push wiped medium→hard upgrades.
 * Downgrades hard rows with source_metadata.prior_difficulty='medium' to medium
 * with medium-tier template content (english_content_v3 templates).
 *
 *   node scripts/rebalance-english-medium.mjs --use-mcp --fetch-json scripts/data/rebalance-medium-input.json --output-sql scripts/data/rebalance-medium.sql --target-medium 350
 *   node scripts/chunk-sql.mjs scripts/data/rebalance-medium.sql 8 scripts/data/rebalance-medium-chunks
 *   node scripts/rebalance-english-medium.mjs --build-mega scripts/data/rebalance-medium-chunks scripts/data/rebalance-medium-mega 35
 *   node scripts/apply-mega-execute-sql.mjs scripts/data/rebalance-medium-mega 1000
 */

import { createHash } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { dirname, resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { createClient } from "@supabase/supabase-js";
import { generateRwQuestion, metadataFromQuestion, RW_SKILLS } from "./lib/english-rw-templates.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const REBALANCE_VERSION = "english_medium_rebalance_v1";
const TARGET_MEDIUM = 350;

function parseArgs() {
  const f = {
    outputSql: null,
    inputJson: null,
    fetchJson: null,
    useMcp: false,
    dryRun: false,
    limit: Infinity,
    targetMedium: TARGET_MEDIUM,
    buildMega: null,
    megaOut: null,
    megaSize: 35,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 35);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--input-json") f.inputJson = argv[++i];
    else if (a === "--fetch-json") f.fetchJson = argv[++i];
    else if (a === "--use-mcp") f.useMcp = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--limit") f.limit = Number(argv[++i]);
    else if (a === "--target-medium") f.targetMedium = Number(argv[++i]);
  }
  return f;
}

function loadEnv() {
  try {
    const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
    const env = {};
    for (const line of raw.split("\n")) {
      const m = line.match(/^([^#=]+)=(.*)$/);
      if (m) env[m[1].trim()] = m[2].trim().replace(/^["']|["']$/g, "");
    }
    return env;
  } catch {
    return {};
  }
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function seedFromId(id) {
  return parseInt(createHash("sha256").update(id).digest("hex").slice(0, 8), 16);
}

function mergeMetadata(existing, rwMeta = {}) {
  return {
    ...(existing ?? {}),
    ...rwMeta,
    english_medium_rebalance: REBALANCE_VERSION,
    english_medium_rebalanced_at: new Date().toISOString(),
    rebalance_method: "rebalance-english-medium.mjs",
    hard_content_v2: false,
  };
}

function rebalanceRow(row, cellIndex) {
  const skill = row.skill_id;
  if (!RW_SKILLS.includes(skill)) return null;
  const n = cellIndex ?? seedFromId(row.id) % 1000;
  const raw = generateRwQuestion(skill, "medium", n);
  const { rw_subtype, rw_format, ...q } = raw;
  return {
    ...q,
    stimulus_type: q.stimulus_type ?? row.stimulus_type ?? null,
    difficulty: "medium",
    rwMeta: metadataFromQuestion(raw),
  };
}

function updateSql(id, upgraded, sourceMetadata) {
  const { rwMeta, difficulty, ...payload } = upgraded;
  const metaJson = JSON.stringify(mergeMetadata(sourceMetadata, rwMeta)).replace(/'/g, "''");
  const optsJson = JSON.stringify(payload.options).replace(/'/g, "''");
  return `UPDATE public.questions SET
  stimulus_text = ${sqlEscape(payload.stimulus_text)},
  question_text = ${sqlEscape(payload.question_text)},
  stimulus_type = ${sqlEscape(payload.stimulus_type ?? null)},
  options = '${optsJson}'::jsonb,
  correct_answer = ${sqlEscape(payload.correct_answer)},
  explanation = ${sqlEscape(payload.explanation)},
  difficulty = 'medium',
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(id)};`;
}

function buildCellIndexMap(rows) {
  const counters = new Map();
  const map = new Map();
  for (const row of rows) {
    const key = `${row.skill_id}:${row.source ?? "unknown"}`;
    const idx = counters.get(key) ?? 0;
    counters.set(key, idx + 1);
    map.set(row.id, idx);
  }
  return map;
}

function buildMegaFromChunks(chunkDir, outDir, stmtsPerMega) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
    .sort();
  const stmts = [];
  for (const f of files) {
    const sql = readFileSync(join(chunkDir, f), "utf8");
    const parts = sql
      .split(/\n(?=UPDATE)/i)
      .filter((s) => /^UPDATE/i.test(s.trim()))
      .map((p) => p.trim().replace(/\nCOMMIT;?\s*$/i, "").replace(/^BEGIN;?\s*\n?/i, ""));
    stmts.push(...parts);
  }
  mkdirSync(outDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += stmtsPerMega) {
    const batch = stmts.slice(i, i + stmtsPerMega);
    writeFileSync(join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`), "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n");
    megaIdx++;
  }
  return { megaFiles: megaIdx, statements: stmts.length };
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

async function mcpExecuteSql(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");
  return new Promise((resolve, reject) => {
    const proc = spawn("npx", ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID], {
      env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
      stdio: ["pipe", "pipe", "pipe"],
    });
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
        } catch { /* ignore */ }
      }
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "rebalance-medium", version: "1.0.0" } });
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

function parseMcpRows(result) {
  try {
    const content = result?.content?.[0]?.text;
    if (content) {
      const parsed = JSON.parse(content);
      return Array.isArray(parsed) ? parsed : [];
    }
  } catch { /* ignore */ }
  return [];
}

async function fetchHardMediumCandidatesViaMcp(limit) {
  const rows = [];
  let offset = 0;
  const pageSize = 200;
  while (rows.length < limit) {
    const query = `SELECT id, source, skill_id, difficulty, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, source_metadata, created_at
FROM public.questions
WHERE exam_type='SAT' AND is_platform_question=true AND section='reading_writing'
  AND difficulty='hard'
  AND source_metadata->>'prior_difficulty' = 'medium'
ORDER BY skill_id, source, created_at
LIMIT ${pageSize} OFFSET ${offset};`;
    const result = await mcpExecuteSql(query);
    const batch = parseMcpRows(result);
    if (!batch.length) break;
    rows.push(...batch);
    if (batch.length < pageSize) break;
    offset += pageSize;
  }
  return rows.slice(0, limit);
}

async function fetchHardMediumCandidatesSupabase(limit) {
  const env = { ...process.env, ...loadEnv() };
  const url = env.NEXT_PUBLIC_SUPABASE_URL;
  const key = env.SUPABASE_SERVICE_ROLE_KEY ?? env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
  if (!url || !key) throw new Error("Need Supabase credentials or --use-mcp / --input-json");
  const supabase = createClient(url, key);
  const { data, error } = await supabase
    .from("questions")
    .select("id, source, skill_id, difficulty, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, source_metadata, created_at")
    .eq("exam_type", "SAT")
    .eq("is_platform_question", true)
    .eq("section", "reading_writing")
    .eq("difficulty", "hard")
    .filter("source_metadata->>prior_difficulty", "eq", "medium")
    .order("skill_id")
    .order("created_at")
    .limit(limit);
  if (error) throw new Error(error.message);
  return data ?? [];
}

async function main() {
  const f = parseArgs();
  if (f.buildMega) {
    const result = buildMegaFromChunks(resolve(f.buildMega), resolve(f.megaOut), f.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  if (f.dryRun && !f.inputJson && !f.fetchJson && !f.useMcp) {
    const ctc = generateRwQuestion("CTC", "medium", 0);
    const inf = generateRwQuestion("INF", "medium", 1);
    console.log(JSON.stringify({
      ok: true,
      dryRun: true,
      templateOnly: true,
      ctcChars: ctc.stimulus_text?.length ?? 0,
      infSubtype: inf.rw_subtype,
      coeFormat: generateRwQuestion("COE", "medium", 0).rw_format,
      synNotesChars: generateRwQuestion("SYN", "medium", 0).stimulus_text?.length ?? 0,
    }, null, 2));
    return;
  }

  let rows;
  if (f.inputJson) {
    rows = JSON.parse(readFileSync(resolve(f.inputJson), "utf8"));
  } else if (f.useMcp) {
    rows = await fetchHardMediumCandidatesViaMcp(f.limit);
  } else {
    rows = await fetchHardMediumCandidatesSupabase(f.limit);
  }

  if (f.fetchJson) {
    mkdirSync(dirname(resolve(f.fetchJson)), { recursive: true });
    writeFileSync(resolve(f.fetchJson), JSON.stringify(rows, null, 2) + "\n");
    console.error(`Exported ${rows.length} hard rows (prior medium) → ${f.fetchJson}`);
  }

  const rebalanceCount = Math.min(rows.length, f.targetMedium);
  const cellIndex = buildCellIndexMap(rows);
  const updates = [];

  for (let i = 0; i < rebalanceCount; i++) {
    const row = rows[i];
    const upgraded = rebalanceRow(row, cellIndex.get(row.id) ?? i);
    if (!upgraded) continue;
    updates.push(updateSql(row.id, upgraded, row.source_metadata));
  }

  console.error(`Prepared ${updates.length} medium rebalance UPDATEs (target=${f.targetMedium})`);

  if (f.dryRun) {
    const ctc = generateRwQuestion("CTC", "medium", 0);
    const inf = generateRwQuestion("INF", "medium", 1);
    console.log(JSON.stringify({
      ok: true,
      dryRun: true,
      updates: updates.length,
      ctcChars: ctc.stimulus_text?.length ?? 0,
      infSubtype: inf.rw_subtype,
      coeFormat: generateRwQuestion("COE", "medium", 0).rw_format,
    }, null, 2));
    return;
  }

  if (f.outputSql) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), updates.join("\n") + "\n");
    console.error(`Wrote ${f.outputSql}`);
  }

  console.log(JSON.stringify({ ok: true, updates: updates.length, outputSql: f.outputSql ?? null }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
