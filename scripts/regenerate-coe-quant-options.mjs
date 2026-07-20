#!/usr/bin/env node
/**
 * Phase 2 Agent 3 — Regenerate all COE quantitative_table options (325 items).
 *
 *   node scripts/regenerate-coe-quant-options.mjs --dry-run
 *   node scripts/regenerate-coe-quant-options.mjs --apply
 */
import { writeFileSync, mkdirSync, readFileSync, readdirSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";
import {
  regenerateCoeQuantRow,
  measureBatch,
  letterPlan,
  seededShuffle,
} from "./lib/coe-quant-regen.mjs";
import { validateDsatRwQuestion } from "./lib/dsat-rw-blueprint.mjs";
import { charLen, optionWordCount } from "./lib/english-rw-templates.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.coe-quant-regen");
const LOG = resolve("scripts/data/.coe-quant-regen-apply-log.txt");
const SQL_FILTER = `skill_id = 'COE' AND source_metadata->>'rw_subtype' = 'quantitative_table'`;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;
const BATCH_SIZE = 25;

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

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
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
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

async function mcpCall(toolName, args) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN — run `supabase login` first");

  return new Promise((resolvePromise, reject) => {
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
      clientInfo: { name: "regenerate-coe-quant-options", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: toolName, arguments: args });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolvePromise(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

function buildUpdateSql(updates) {
  const parts = ["BEGIN;"];
  for (const u of updates) {
    const opts = JSON.stringify(u.options).replace(/'/g, "''");
    const meta = u.source_metadata
      ? `, source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${JSON.stringify(u.source_metadata).replace(/'/g, "''")}'::jsonb`
      : "";
    parts.push(
      `UPDATE public.questions SET options = '${opts}'::jsonb, correct_answer = ${sqlEscape(u.correct_answer)}, explanation = ${sqlEscape(u.explanation)}, updated_at = now()${meta} WHERE id = '${u.id}';`,
    );
  }
  parts.push("COMMIT;");
  return parts.join("\n");
}

function spreadPct(options) {
  const lens = options.map((o) => charLen(o.text));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

async function fetchRows() {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    const { rows } = await pgQuery(
      `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
              explanation, difficulty, skill_id, source_metadata
       FROM public.questions
       WHERE ${SQL_FILTER}
         AND is_platform_question = true
         AND section = 'reading_writing'
       ORDER BY id`,
    );
    return rows;
  }

  const res = await mcpCall("execute_sql", {
    project_id: PROJECT_ID,
    query: `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
                   explanation, difficulty, skill_id, source_metadata
            FROM public.questions
            WHERE ${SQL_FILTER}
              AND is_platform_question = true
              AND section = 'reading_writing'
            ORDER BY id`,
  });
  const text = res?.content?.[0]?.text ?? "[]";
  return JSON.parse(text);
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });

  const rows = await fetchRows();
  console.log(`Fetched ${rows.length} COE quantitative_table rows`);

  const letters = seededShuffle(letterPlan(rows.length));
  const updates = [];
  const fails = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const targetLetter = letters[i];
    let regen = null;
    let updated = null;
    let blocking = null;

    for (let attempt = 0; attempt < 8; attempt++) {
      try {
        regen = regenerateCoeQuantRow(row, i + attempt * 17, targetLetter);
        updated = {
          ...row,
          options: regen.options,
          correct_answer: regen.correct_answer,
          explanation: regen.explanation,
          rw_subtype: row.source_metadata?.rw_subtype ?? "quantitative_table",
        };
        const v = validateDsatRwQuestion(updated);
        blocking = v.reasons.filter((r) => !r.startsWith("passage_word_count"));
        if (blocking.length === 0) break;
      } catch (e) {
        blocking = [String(e.message ?? e)];
      }
    }

    if (blocking?.length) {
      fails.push({ id: row.id, external_id: row.external_id, reasons: blocking });
      continue;
    }

    updates.push({
      id: row.id,
      external_id: row.external_id,
      options: regen.options,
      correct_answer: regen.correct_answer,
      explanation: regen.explanation,
      source_metadata: {
        coe_quant_regen_v1: true,
        coe_quant_regen_at: new Date().toISOString(),
        generator: "regenerate-coe-quant-options.mjs",
      },
      spread_pct: spreadPct(regen.options),
      meta: regen.meta,
    });
  }

  const stats = measureBatch(updates);
  stats.fails = fails.length;
  stats.updated = updates.length;
  stats.sample_external_ids = updates
    .filter((u) => u.external_id)
    .slice(0, 8)
    .map((u) => u.external_id);
  stats.sample_ids = updates.slice(0, 5).map((u) => ({ id: u.id, external_id: u.external_id, correct: u.correct_answer, spread: u.spread_pct }));

  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(stats, null, 2));
  writeFileSync(join(OUT_DIR, "updates.json"), JSON.stringify(updates, null, 2));

  const batches = [];
  for (let b = 0; b < updates.length; b += BATCH_SIZE) {
    const chunk = updates.slice(b, b + BATCH_SIZE);
    const sql = buildUpdateSql(chunk);
    const file = join(OUT_DIR, `payload-${String(b / BATCH_SIZE).padStart(2, "0")}.json`);
    writeFileSync(file, JSON.stringify({ query: sql }, null, 2));
    batches.push(file);
  }

  console.log(JSON.stringify(stats, null, 2));
  if (fails.length) {
    console.error(`Validation failures: ${fails.length}`, fails.slice(0, 5));
    process.exit(1);
  }

  if (dryRun) {
    console.log(`Dry run OK — ${batches.length} payload files in ${OUT_DIR}`);
    return;
  }

  appendFileSync(LOG, `\n# apply ${new Date().toISOString()} count=${updates.length}\n`);
  let applied = 0;
  for (const file of batches) {
    const { query } = JSON.parse(readFileSync(file, "utf8"));
    await mcpCall("execute_sql", { project_id: PROJECT_ID, query });
    applied++;
    appendFileSync(LOG, `OK ${file}\n`);
    console.error(`Applied batch ${applied}/${batches.length}`);
  }

  const verify = await mcpCall("execute_sql", {
    project_id: PROJECT_ID,
    query: `SELECT count(*)::int AS total,
      count(*) FILTER (WHERE correct_answer='A')::int AS a,
      count(*) FILTER (WHERE correct_answer='B')::int AS b,
      count(*) FILTER (WHERE correct_answer='C')::int AS c,
      count(*) FILTER (WHERE correct_answer='D')::int AS d,
      count(*) FILTER (WHERE source_metadata->>'coe_quant_regen_v1'='true')::int AS regen
    FROM questions WHERE ${SQL_FILTER} AND is_platform_question=true`,
  });
  const verifyText = verify?.content?.[0]?.text ?? "{}";
  writeFileSync(join(OUT_DIR, "verify.json"), verifyText);
  appendFileSync(LOG, `VERIFY ${verifyText}\n`);
  console.log(verifyText);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
