#!/usr/bin/env node
/**
 * Generate + apply blueprint-grade BOU/FSS/SYN gap fill.
 *
 *   node scripts/generate-conventions-gap.mjs --dry-run
 *   node scripts/generate-conventions-gap.mjs --apply
 *   node scripts/generate-conventions-gap.mjs --apply --replace-bou-fss
 *
 * Targets (prod gap 2026-06-12):
 *   BOU 120 (replace templated 300-row bank)
 *   FSS 120 (replace templated 300-row bank)
 *   SYN  48 (add to existing 72 → 120)
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { spawn } from "node:child_process";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import {
  generateConventionsBatch,
  validateConventionsRow,
} from "./lib/dsat-conventions-bank.mjs";
import { SKILLS } from "./lib/dsat-rw-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.conventions-gap");
const LOG = resolve("scripts/data/.conventions-gap-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const replaceBouFss = !argv.includes("--no-replace");
const skillsArg = argv.find((a, i) => argv[i - 1] === "--skills");
const activeSkills = skillsArg ? new Set(skillsArg.split(",")) : new Set(["BOU", "FSS", "SYN"]);

const TARGETS = {
  BOU: { count: 120, replace: true },
  FSS: { count: 120, replace: true },
  SYN: { count: 120, replace: true },
};

/** 36/48/36 for 120-item cells (matches CID, WIC, etc.) */
function difficultyFor120(index) {
  if (index < 36) return "easy";
  if (index < 84) return "medium";
  return "hard";
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify({
    ...row.source_metadata,
    dsat_blueprint_v1: true,
    rw_subtype: row.rw_subtype,
    rw_format: row.rw_format,
    explanation_v2: true,
    generator: "generate-conventions-gap.mjs",
    original: true,
  }).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const skill = SKILLS[row.skill_id];
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, ${sqlEscape(row.hint)}, ${sqlEscape(skill.topic)}, ${sqlEscape(skill.subtopic)}, ${sqlEscape(skill.section)}, ${sqlEscape(skill.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function buildRows() {
  const all = [];
  const stats = { BOU: 0, FSS: 0, SYN: 0, fails: 0 };

  for (const [skill, spec] of Object.entries(TARGETS)) {
    if (!activeSkills.has(skill)) continue;
    const batch = generateConventionsBatch({
      skill,
      count: spec.count,
      startIndex: spec.startIndex ?? 0,
    });
    for (let i = 0; i < batch.length; i++) {
      let row = { ...batch[i], id: randomUUID(), difficulty: difficultyFor120(i) };
      let v = validateConventionsRow(row);
      let attempts = 0;
      while (!v.ok && attempts < 8) {
        const retry = generateConventionsBatch({ skill, count: 1, startIndex: i + attempts * 997 + 5000 })[0];
        row = { ...retry, id: randomUUID() };
        v = validateConventionsRow(row);
        attempts++;
      }
      if (!v.ok) {
        stats.fails++;
        console.error(`FAIL ${skill} #${i}: ${v.reasons.join(", ")}`);
      }
      all.push(row);
      stats[skill]++;
    }
  }
  return { rows: all, stats };
}

function buildSql(rows, { replaceBouFss, replaceSkills }) {
  const parts = ["BEGIN;"];
  const toDelete = [...replaceSkills];
  if (toDelete.length) {
    const list = toDelete.map((s) => `'${s}'`).join(",");
    parts.push(`DELETE FROM public.questions WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true AND skill_id IN (${list});`);
  }
  for (const row of rows) {
    parts.push(insertSql(row));
  }
  parts.push("COMMIT;");
  return parts.join("\n");
}

function getMcpEnv() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return {};
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const blob = JSON.stringify(cfg?.env ?? {});
    if (blob.includes(PROJECT_ID)) return cfg.env ?? {};
  }
  return {};
}

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  const env = getMcpEnv();
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

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
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "conventions-gap", version: "1.0.0" } });
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

async function pgExecute(query) {
  const { default: pg } = await import("pg");
  const env = getMcpEnv();
  const url =
    process.env.DATABASE_URL?.trim() ||
    env.POSTGRES_URL_NON_POOLING?.trim() ||
    env.POSTGRES_URL?.trim();
  if (!url) throw new Error("No DATABASE_URL");
  const client = new pg.Client({
    connectionString: url,
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function executeSql(query) {
  try {
    await pgExecute(query);
    return "pg";
  } catch (e) {
    console.error(`pg failed (${String(e.message).slice(0, 120)}), trying MCP...`);
    await mcpExecute(query);
    return "mcp";
  }
}

async function verify() {
  const q = `SELECT skill_id, difficulty, COUNT(*) as cnt,
    COUNT(*) FILTER (WHERE source_metadata->>'dsat_blueprint_v1'='true') as blueprint
    FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
    AND skill_id IN ('BOU','FSS','SYN') GROUP BY skill_id, difficulty ORDER BY 1,2;`;
  try {
    const r = await pgExecute(q);
    return r.rows;
  } catch {
    const res = await mcpExecute(q);
    const text = res?.content?.[0]?.text ?? "[]";
    const match = text.match(/\[[\s\S]*\]/);
    return match ? JSON.parse(match[0]) : [];
  }
}

async function main() {
  const replaceSkills = [...activeSkills].filter((s) => TARGETS[s]?.replace);

  const { rows, stats } = buildRows();
  const sql = buildSql(rows, { replaceBouFss, replaceSkills });

  mkdirSync(OUT_DIR, { recursive: true });
  writeFileSync(join(OUT_DIR, "insert.sql"), sql + "\n");
  writeFileSync(join(OUT_DIR, "rows.json"), JSON.stringify(rows, null, 2));

  // Chunk into MCP payloads (20 inserts each)
  const stmts = sql.replace(/^BEGIN;\n?/i, "").replace(/\n?COMMIT;?\s*$/i, "").split(/\n(?=INSERT|DELETE)/i).filter(Boolean);
  let payloadIdx = 0;
  for (let i = 0; i < stmts.length; i += 20) {
    const chunk = stmts.slice(i, i + 20);
    const payloadSql = "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;";
    writeFileSync(
      join(OUT_DIR, `payload-${String(payloadIdx).padStart(2, "0")}.json`),
      JSON.stringify({ project_id: PROJECT_ID, query: payloadSql }),
    );
    payloadIdx++;
  }

  console.log(JSON.stringify({ generated: stats, payloads: payloadIdx, rows: rows.length }, null, 2));

  if (dryRun) return;

  if (!apply) {
    console.log("Wrote SQL to scripts/data/.conventions-gap/ — pass --apply to insert");
    return;
  }

  appendFileSync(LOG, `\n# apply ${new Date().toISOString()}\n`);
  const via = await executeSql(sql);
  appendFileSync(LOG, `OK insert (${via}) ${rows.length} rows\n`);

  const counts = await verify();
  console.log(JSON.stringify({ ok: true, via, verify: counts }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
