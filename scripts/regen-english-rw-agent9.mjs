#!/usr/bin/env node
/**
 * Phase 2 Agent 9: TRA transition + BOU boundaries (650 rows).
 *
 *   node scripts/regen-english-rw-agent9.mjs --dry-run
 *   node scripts/regen-english-rw-agent9.mjs --apply
 *   node scripts/regen-english-rw-agent9.mjs --apply --mcp
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  regenerateTraQuestion,
  regenerateBouQuestion,
  validateRegenRow,
  measureSpread,
  batchStats,
} from "./lib/english-rw-regen.mjs";
import {
  validateCorrectLetterDistribution,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import { charLen } from "./lib/english-rw-templates.mjs";

const RESEARCH = resolve("scripts/data/.english-rw-regen-research.json");
const OUT_DIR = resolve("scripts/data/.english-rw-regen-agent-09-tra-bou");
const AGENT_NUM = 9;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;
const useMcp = argv.includes("--mcp");

function loadAgentPlan() {
  const research = JSON.parse(readFileSync(RESEARCH, "utf8"));
  return research.agent_partition_plan.agents[AGENT_NUM - 1];
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
      clientInfo: { name: "regen-english-rw-agent9", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { project_id: PROJECT_ID, query },
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

function beforeStatsFromRows(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let longest = 0;
  let over15 = 0;
  let emptyOpts = 0;
  for (const r of rows) {
    letters[r.correct_answer] = (letters[r.correct_answer] ?? 0) + 1;
    const m = measureSpread(r.options);
    if (m.correct_is_longest) longest++;
    if (m.char_spread_pct > 15 || m.word_spread_pct > 15) over15++;
    if ((r.options ?? []).some((o) => !String(o.text ?? "").trim())) emptyOpts++;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    empty_option_rows: emptyOpts,
    letter_distribution: Object.fromEntries(
      ["A", "B", "C", "D"].map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
  };
}

function isGrammarTokenRow(row) {
  if (row.skill_id === "BOU") return true;
  if (row.skill_id === "TRA" && row.difficulty !== "hard" && row.source_metadata?.challenged_problem !== true) {
    return true;
  }
  return false;
}

function regenRow(row, globalIndex) {
  if (row.skill_id === "TRA") return regenerateTraQuestion(row, globalIndex);
  if (row.skill_id === "BOU") return regenerateBouQuestion(row, globalIndex);
  throw new Error(`Unexpected skill_id: ${row.skill_id}`);
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

async function main() {
  const agent = loadAgentPlan();
  mkdirSync(OUT_DIR, { recursive: true });
  const statsPath = join(OUT_DIR, "stats.json");
  const logPath = join(OUT_DIR, "apply-log.txt");

  const sqlFilter = `${agent.sql_filter} AND is_platform_question = true`;
  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase in ~/.cursor/mcp.json");
    process.exit(1);
  }

  console.error(`Agent ${AGENT_NUM}: ${agent.label} (${agent.count} expected)`);

  const { rows } = await pgQuery(
    `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, difficulty, skill_id, source_metadata
     FROM questions WHERE ${sqlFilter} ORDER BY skill_id, id`,
  );

  console.error(`Fetched ${rows.length} rows`);

  const before = beforeStatsFromRows(rows);
  const updates = [];
  const failures = [];
  let traIdx = 0;
  let bouIdx = 0;

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const idx = row.skill_id === "TRA" ? traIdx++ : bouIdx++;
    // Global letter rotation uses combined row index for balanced A-D across full shard
    const rotIndex = i;
    let regen = row.skill_id === "TRA"
      ? regenerateTraQuestion(row, rotIndex)
      : regenerateBouQuestion(row, rotIndex);
    let v = validateRegenRow(regen, { grammarToken: isGrammarTokenRow(row) });
    let attempts = 0;
    while (!v.ok && attempts < 5) {
      regen = row.skill_id === "TRA"
        ? regenerateTraQuestion(row, rotIndex + attempts * 997 + 5000)
        : regenerateBouQuestion(row, rotIndex + attempts * 997 + 5000);
      v = validateRegenRow(regen, { grammarToken: isGrammarTokenRow(row) });
      attempts++;
    }
    if (!v.ok) {
      failures.push({ id: row.id, skill_id: row.skill_id, difficulty: row.difficulty, reasons: v.reasons });
      continue;
    }
    updates.push({
      id: row.id,
      external_id: row.external_id,
      question_text: regen.question_text,
      stimulus_text: regen.stimulus_text,
      options: regen.options,
      correct_answer: regen.correct_answer,
      explanation: regen.explanation,
      source_metadata: regen.source_metadata,
    });
  }

  const after = batchStats(updates.map((u) => ({ options: u.options, correct_answer: u.correct_answer })));
  const letterCheck = validateCorrectLetterDistribution(updates.map((u) => u.correct_answer));

  const stats = {
    generated_at: new Date().toISOString(),
    agent: AGENT_NUM,
    label: agent.label,
    mode: apply ? (useMcp ? "apply-mcp" : "apply-pg") : "dry-run",
    sql_filter: sqlFilter,
    before,
    after,
    letter_distribution_ok: letterCheck.ok,
    letter_distribution_detail: letterCheck,
    updated_count: updates.length,
    failure_count: failures.length,
    sample_ids: updates.slice(0, 5).map((u) => u.id),
    sample_external_ids: updates.filter((u) => u.external_id).slice(0, 5).map((u) => u.external_id),
    failures: failures.slice(0, 25),
  };

  writeFileSync(statsPath, JSON.stringify(stats, null, 2));
  console.error(`Prepared ${updates.length}/${rows.length}; failures ${failures.length}`);

  if (apply && updates.length) {
    appendFileSync(logPath, `\n# agent ${AGENT_NUM} ${new Date().toISOString()}\n`);
    const BATCH = 25;
    for (let b = 0; b < updates.length; b += BATCH) {
      const chunk = updates.slice(b, b + BATCH);
      const sql = chunk.map(updateSql).join("\n");
      const payloadPath = join(OUT_DIR, `payload-${String(Math.floor(b / BATCH)).padStart(2, "0")}.json`);
      writeFileSync(payloadPath, JSON.stringify({ query: sql }));

      if (useMcp) {
        await mcpExecuteSql(sql);
      } else {
        await pgQuery(sql);
      }
      appendFileSync(logPath, `OK batch ${Math.floor(b / BATCH)} (${chunk.length} rows)\n`);
      console.error(`Applied batch ${Math.floor(b / BATCH) + 1}/${Math.ceil(updates.length / BATCH)}`);
    }
    stats.applied = true;
    writeFileSync(statsPath, JSON.stringify(stats, null, 2));
  }

  console.log(JSON.stringify(stats, null, 2));

  if (failures.length && failures.length === rows.length) process.exit(1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
