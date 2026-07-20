#!/usr/bin/env node
/**
 * Phase 2 English RW shard regeneration — UPDATE existing rows (keep IDs).
 *
 *   node scripts/regen-english-rw-shard.mjs --agent 7 --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regen-english-rw-shard.mjs --agent 7 --apply
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regen-english-rw-shard.mjs --agent 7 --apply --mcp
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  validateDsatRwQuestion,
  validateOptionLengthParity,
  validateCorrectLetterDistribution,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import { charLen } from "./lib/english-rw-templates.mjs";
import { buildSynRegenItem } from "./lib/syn-regen-bank.mjs";
import {
  regenerateInfQuestion,
  validateRegenRow,
  measureSpread,
} from "./lib/english-rw-regen.mjs";

const RESEARCH = resolve("scripts/data/.english-rw-regen-research.json");

const OUT_DIRS = {
  1: resolve("scripts/data/.syn-regen-shard"),
  7: resolve("scripts/data/.inf-implication-prediction-regen"),
};

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;
const useMcp = argv.includes("--mcp");
const agentNum = Number(argv.find((a, i) => argv[i - 1] === "--agent") ?? 1);

function loadAgentPlan() {
  const research = JSON.parse(readFileSync(RESEARCH, "utf8"));
  const agent = research.agent_partition_plan.agents.find((a) => a.agent === agentNum);
  if (!agent) throw new Error(`Unknown agent ${agentNum}`);
  return agent;
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
      clientInfo: { name: "regen-english-rw-shard", version: "1.0.0" },
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
        resolvePromise(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

function rowToQuestion(row, index) {
  const meta = row.source_metadata ?? {};
  return {
    question_text: row.question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type,
    options: row.options,
    correct_answer: row.correct_answer,
    explanation: row.explanation,
    difficulty: row.difficulty,
    skill_id: row.skill_id,
    rw_subtype: meta.rw_subtype,
    rw_format: meta.rw_format,
    source_metadata: meta,
    dsat_blueprint_v1: meta.dsat_blueprint_v1 === true,
    _index: index,
    _challenged: meta.challenged_problem === true || meta.challenged_problem === "true",
  };
}

function computeBeforeStats(rows) {
  let longest = 0;
  let over15 = 0;
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  for (const row of rows) {
    const m = measureSpread(row.options);
    if (m.correct_is_longest) longest++;
    if (m.char_spread_pct > 15 || m.word_spread_pct > 15) over15++;
    letters[row.correct_answer] = (letters[row.correct_answer] ?? 0) + 1;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    letter_distribution: Object.fromEntries(
      ["A", "B", "C", "D"].map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
    letters,
  };
}

function isBoilerplatePassage(text) {
  const t = String(text ?? "");
  return /dataset \d+|archive \d+|passage \d+/i.test(t) && /local conditions shape outcomes/i.test(t);
}

function isBoilerplateNotes(text) {
  const t = String(text ?? "");
  if (/Study \d+ examines .* with preregistered methods/i.test(t)) return true;
  if (/effect sizes vary across subgroups/i.test(t) && /Replication at \d+ additional sites/i.test(t)) return true;
  return false;
}

function mergeSynRegen(existing, generated, index) {
  const meta = { ...(existing.source_metadata ?? {}) };
  meta.generator = "regen-english-rw-shard.mjs";
  meta.regen_phase = 2;
  meta.regen_agent = agentNum;
  meta.regen_at = new Date().toISOString();
  const useNewNotes = isBoilerplateNotes(existing.stimulus_text) || !String(existing.stimulus_text ?? "").includes("•");
  return {
    question_text: generated.question_text,
    stimulus_text: useNewNotes ? generated.stimulus_text : existing.stimulus_text,
    options: generated.options,
    correct_answer: generated.correct_answer,
    explanation: generated.explanation,
    hint: generated.hint ?? existing.hint,
    source_metadata: meta,
    _index: index,
    difficulty: existing.difficulty,
    skill_id: existing.skill_id,
    stimulus_type: existing.stimulus_type ?? "passage",
    rw_subtype: meta.rw_subtype ?? "notes_synthesis",
    rw_format: meta.rw_format ?? "bullet_notes",
    dsat_blueprint_v1: true,
  };
}

function mergeInfRegen(existing, generated) {
  const meta = { ...generated.source_metadata };
  meta.regen_at = new Date().toISOString();
  const useNewPassage = isBoilerplatePassage(existing.stimulus_text);
  return {
    question_text: generated.question_text,
    stimulus_text: useNewPassage ? generated.stimulus_text : existing.stimulus_text,
    options: generated.options,
    correct_answer: generated.correct_answer,
    explanation: generated.explanation,
    hint: existing.hint,
    source_metadata: meta,
    difficulty: existing.difficulty,
    skill_id: "INF",
    stimulus_type: "passage",
    rw_subtype: meta.rw_subtype,
    rw_format: "passage_mc",
    dsat_blueprint_v1: true,
    _challenged: meta.challenged_problem === true,
  };
}

function generateForAgent(row, index, agent) {
  if (agentNum === 1) {
    return buildSynRegenItem(index, row.difficulty, row.external_id, {
      challenged: row.source_metadata?.challenged_problem === true || row.source_metadata?.challenged_problem === "true",
    });
  }
  if (agentNum === 7) {
    return regenerateInfQuestion(row, index);
  }
  throw new Error(`Agent ${agentNum} handler not implemented`);
}

function mergeForAgent(existing, generated, index) {
  if (agentNum === 1) return mergeSynRegen(existing, generated, index);
  if (agentNum === 7) return mergeInfRegen(existing, generated);
  return generated;
}

async function main() {
  const agent = loadAgentPlan();
  const OUT_DIR = OUT_DIRS[agentNum] ?? resolve(`scripts/data/.regen-agent-${agentNum}`);
  console.error(`Agent ${agent.agent}: ${agent.label} (${agent.count} expected)`);
  console.error(`SQL filter: ${agent.sql_filter}`);

  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase MCP in ~/.cursor/mcp.json");
    process.exit(1);
  }

  mkdirSync(OUT_DIR, { recursive: true });

  const { rows } = await pgQuery(
    `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, hint, difficulty, skill_id, source_metadata
     FROM questions
     WHERE ${agent.sql_filter}
       AND is_platform_question = true
     ORDER BY id`,
  );

  if (rows.length !== agent.count) {
    console.warn(`Warning: expected ${agent.count} rows, fetched ${rows.length}`);
  }

  const beforeStats = computeBeforeStats(rows);
  const updates = [];
  const failures = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    let generated;
    try {
      generated = generateForAgent(row, i, agent);
    } catch (e) {
      failures.push({ id: row.id, error: String(e.message ?? e) });
      continue;
    }

    const merged = mergeForAgent(row, generated, i);
    const q = rowToQuestion({ ...row, ...merged }, i);
    const rwSubtype = merged.rw_subtype ?? merged.source_metadata?.rw_subtype;

    let v;
    if (agentNum === 7) {
      v = validateRegenRow(q);
    } else {
      const base = validateDsatRwQuestion(q);
      const parity = validateOptionLengthParity(merged.options, { rw_subtype: rwSubtype });
      v = {
        ok: base.ok && parity.ok,
        reasons: [...(base.ok ? [] : base.reasons), ...(parity.ok ? [] : parity.reasons)],
        parity,
      };
    }

    if (!v.ok) {
      let regen = generated;
      for (let attempt = 1; attempt <= 12 && !v.ok; attempt++) {
        regen = generateForAgent(row, i + attempt * 997, agent);
        const m2 = mergeForAgent(row, regen, i);
        const q2 = rowToQuestion({ ...row, ...m2 }, i);
        if (agentNum === 7) {
          v = validateRegenRow(q2);
        } else {
          const base2 = validateDsatRwQuestion(q2);
          const parity2 = validateOptionLengthParity(m2.options, { rw_subtype: rwSubtype });
          v = {
            ok: base2.ok && parity2.ok,
            reasons: [...(base2.ok ? [] : base2.reasons), ...(parity2.ok ? [] : parity2.reasons)],
            parity: parity2,
          };
        }
        if (v.ok) Object.assign(merged, m2);
      }
    }

    if (!v.ok) {
      failures.push({ id: row.id, external_id: row.external_id, reasons: v.reasons });
      continue;
    }

    const parity = v.parity ?? validateOptionLengthParity(merged.options, { rw_subtype: rwSubtype });
    updates.push({
      id: row.id,
      external_id: row.external_id,
      question_text: merged.question_text,
      stimulus_text: merged.stimulus_text,
      options: merged.options,
      correct_answer: merged.correct_answer,
      explanation: merged.explanation,
      hint: merged.hint,
      source_metadata: merged.source_metadata,
      parity,
      correct_is_longest: parity.correct_is_longest,
    });
  }

  const afterLetters = validateCorrectLetterDistribution(updates.map((u) => u.correct_answer));
  const longestAfter = updates.filter((u) => u.correct_is_longest).length;
  const afterStats = {
    count: updates.length,
    pct_correct_longest: updates.length ? Math.round(1000 * longestAfter / updates.length) / 10 : 0,
    letter_distribution: Object.fromEntries(
      ["A", "B", "C", "D"].map((l) => [
        l,
        updates.length
          ? Math.round(1000 * (afterLetters.counts[l] ?? 0) / updates.length) / 10
          : 0,
      ]),
    ),
    letters: afterLetters.counts,
    letter_distribution_ok: afterLetters.ok,
    pct_over_15_spread: updates.length
      ? Math.round(1000 * updates.filter((u) => !u.parity.ok).length / updates.length) / 10
      : 0,
  };

  const report = {
    generated_at: new Date().toISOString(),
    agent: agentNum,
    label: agent.label,
    sql_filter: `${agent.sql_filter} AND is_platform_question = true`,
    mode: apply ? "apply" : "dry-run",
    before: beforeStats,
    after: afterStats,
    updated_count: apply ? updates.length : 0,
    prepared_count: updates.length,
    failure_count: failures.length,
    sample_external_ids: updates.filter((u) => u.external_id).slice(0, 6).map((u) => u.external_id),
    sample_ids: updates.slice(0, 5).map((u) => u.id),
    failures: failures.slice(0, 20),
  };

  writeFileSync(resolve(OUT_DIR, "stats.json"), JSON.stringify(report, null, 2));

  if (apply && updates.length) {
    const logPath = resolve(OUT_DIR, "apply-log.txt");
    appendFileSync(logPath, `\n# apply ${new Date().toISOString()} agent=${agentNum} mcp=${useMcp}\n`);

    const BATCH = 25;
    for (let b = 0; b < updates.length; b += BATCH) {
      const chunk = updates.slice(b, b + BATCH);
      const sql = chunk
        .map((u) => {
          const opts = JSON.stringify(u.options).replace(/'/g, "''");
          const meta = JSON.stringify(u.source_metadata).replace(/'/g, "''");
          const esc = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);
          return `UPDATE public.questions SET
            question_text = ${esc(u.question_text)},
            stimulus_text = ${esc(u.stimulus_text)},
            options = '${opts}'::jsonb,
            correct_answer = ${esc(u.correct_answer)},
            explanation = ${esc(u.explanation)},
            source_metadata = '${meta}'::jsonb,
            updated_at = now()
          WHERE id = ${esc(u.id)};`;
        })
        .join("\n");

      if (useMcp) {
        await mcpExecuteSql(sql);
      } else {
        await pgQuery(sql);
      }
      appendFileSync(logPath, `OK batch ${Math.floor(b / BATCH)} (${chunk.length} rows)\n`);
      console.error(`Applied batch ${Math.floor(b / BATCH) + 1}/${Math.ceil(updates.length / BATCH)}`);
    }
    report.applied = true;
    writeFileSync(resolve(OUT_DIR, "stats.json"), JSON.stringify(report, null, 2));
  } else {
    console.error("Dry run — pass --apply to write to prod (--mcp for MCP execute_sql)");
  }

  console.log(JSON.stringify(report, null, 2));

  if (failures.length && failures.length === rows.length) process.exit(1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
