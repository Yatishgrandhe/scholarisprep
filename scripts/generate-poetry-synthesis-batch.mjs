#!/usr/bin/env node
/**
 * Generate + apply poetry literary items and rhetorical synthesis replacements.
 *
 *   node scripts/generate-poetry-synthesis-batch.mjs --dry-run
 *   node scripts/generate-poetry-synthesis-batch.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";
import {
  getPoetrySynthesisBank,
  bankItemToRow,
  REPLACE_IDS,
} from "./lib/poetry-synthesis-bank.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.poetry-synthesis-batch");
const LOG = resolve("scripts/data/.poetry-synthesis-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, ${sqlEscape(row.hint)}, ${sqlEscape(row.topic)}, ${sqlEscape(row.subtopic)}, ${sqlEscape(row.section)}, ${sqlEscape(row.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, ${sqlEscape(row.external_id)}, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function buildPayload() {
  const { poetry, synthesis } = getPoetrySynthesisBank();
  const replaceIds = [...REPLACE_IDS.poetry, ...REPLACE_IDS.synthesis];
  const rows = [...poetry, ...synthesis].map((item) => bankItemToRow(item, randomUUID()));
  const sqlParts = ["BEGIN;"];
  if (replaceIds.length) {
    const idList = replaceIds.map((id) => `'${id}'`).join(",");
    sqlParts.push(`DELETE FROM public.questions WHERE id IN (${idList});`);
  }
  for (const row of rows) {
    sqlParts.push(insertSql(row));
  }
  sqlParts.push("COMMIT;");
  return { rows, replaceIds, sql: sqlParts.join("\n") };
}

function getMcpEnv() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return {};
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const url = cfg?.env?.SUPABASE_URL ?? cfg?.env?.NEXT_PUBLIC_SUPABASE_URL ?? "";
    if (url.includes(PROJECT_ID)) return cfg.env ?? {};
  }
  return {};
}

function getDatabaseUrl() {
  const env = getMcpEnv();
  return (
    process.env.DATABASE_URL?.trim() ||
    process.env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL?.trim() ||
    null
  );
}

function getMcpToken() {
  const env = getMcpEnv();
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function pgExecute(query) {
  const { default: pg } = await import("pg");
  const url = getDatabaseUrl();
  if (!url) throw new Error("No DATABASE_URL");
  const client = new pg.Client({
    connectionString: url,
    ssl: process.env.PGSSLMODE === "disable" ? false : { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function mcpCall(toolName, args) {
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
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "poetry-synthesis-batch", version: "1.0.0" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: toolName, arguments: args });
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
      await pgExecute(query);
      return { via: "pg" };
    } catch (e) {
      console.error(`pg failed: ${String(e.message ?? e).slice(0, 300)}`);
    }
  }
  const res = await mcpCall("execute_sql", { query });
  const text = res?.content?.[0]?.text ?? JSON.stringify(res);
  if (/error|failed/i.test(text) && !/below is the result/i.test(text)) {
    throw new Error(text.slice(0, 1500));
  }
  return { via: "mcp", text: text.slice(0, 300) };
}

async function main() {
  const { rows, replaceIds, sql } = buildPayload();
  mkdirSync(OUT_DIR, { recursive: true });
  writeFileSync(join(OUT_DIR, "insert.sql"), sql);
  writeFileSync(
    join(OUT_DIR, "manifest.json"),
    JSON.stringify(
      {
        generated: rows.length,
        replaced: replaceIds.length,
        poetry: rows.filter((r) => r.source_metadata.passage_genre === "poetry").length,
        synthesis: rows.filter((r) => r.rw_subtype === "notes_synthesis").length,
        sample_ids: rows.map((r) => ({ id: r.id, external_id: r.external_id, skill_id: r.skill_id, difficulty: r.difficulty })),
        replaced_ids: replaceIds,
      },
      null,
      2,
    ),
  );

  console.log(`Generated ${rows.length} items (${rows.filter((r) => r.source_metadata.passage_genre === "poetry").length} poetry, ${rows.filter((r) => r.rw_subtype === "notes_synthesis").length} synthesis)`);
  console.log(`Replace targets: ${replaceIds.length}`);
  console.log(`SQL: ${join(OUT_DIR, "insert.sql")}`);

  if (dryRun && !apply) {
    console.log("Dry run complete — no DB writes.");
    return;
  }

  if (!apply) {
    console.log("Pass --apply to load into Supabase.");
    return;
  }

  const result = await executeSql(sql);
  appendFileSync(LOG, `${new Date().toISOString()} applied via ${result.via}\n`);
  console.log(`Applied via ${result.via}`);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
