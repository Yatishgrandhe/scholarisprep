#!/usr/bin/env node
/**
 * Master Manual §5–6 — Full COE regeneration (textual_evidence + quantitative_table).
 *
 *   node scripts/regenerate-coe-master.mjs --dry-run
 *   node scripts/regenerate-coe-master.mjs --apply
 *   node scripts/regenerate-coe-master.mjs --apply --subtype=quantitative_table
 */
import { writeFileSync, mkdirSync, readFileSync, appendFileSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  regenerateCoeRow,
  measureCoeBatch,
  measureCoeRow,
  letterPlan,
  seededShuffle,
} from "./lib/coe-master-regen.mjs";
import { validateDsatRwQuestion } from "./lib/dsat-rw-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.coe-master-regen");
const LOG = resolve("scripts/data/.coe-master-regen-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;
const subtypeArg = argv.find((a) => a.startsWith("--subtype="));
const subtypeFilter = subtypeArg ? subtypeArg.split("=")[1] : null;

const SQL_BASE = `skill_id = 'COE' AND is_platform_question = true AND section = 'reading_writing' AND exam_type = 'SAT'`;
const SQL_FILTER = subtypeFilter
  ? `${SQL_BASE} AND source_metadata->>'rw_subtype' = '${subtypeFilter}'`
  : `${SQL_BASE} AND source_metadata->>'rw_subtype' IN ('textual_evidence', 'quantitative_table')`;

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

async function mcpCall(toolName, args) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN — run `supabase login` first");
  return new Promise((resolvePromise, reject) => {
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
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "regenerate-coe-master", version: "1.0.0" } });
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

async function fetchRows() {
  const q = `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
                    explanation, difficulty, skill_id, source_metadata
             FROM public.questions
             WHERE ${SQL_FILTER}
             ORDER BY source_metadata->>'rw_subtype', id`;
  try {
    return (await pgQuery(q)).rows;
  } catch (e) {
    console.error("pg fetch failed, trying MCP:", e.message);
    const res = await mcpCall("execute_sql", { project_id: PROJECT_ID, query: q });
    return JSON.parse(res?.content?.[0]?.text ?? "[]");
  }
}

function buildUpdateSql(updates) {
  const parts = ["BEGIN;"];
  for (const u of updates) {
    const opts = JSON.stringify(u.options).replace(/'/g, "''");
    const meta = JSON.stringify(u.source_metadata).replace(/'/g, "''");
    parts.push(
      `UPDATE public.questions SET
        question_text = ${sqlEscape(u.question_text)},
        stimulus_text = ${sqlEscape(u.stimulus_text)},
        stimulus_type = ${sqlEscape(u.stimulus_type)},
        options = '${opts}'::jsonb,
        correct_answer = ${sqlEscape(u.correct_answer)},
        explanation = ${sqlEscape(u.explanation)},
        source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${meta}'::jsonb,
        updated_at = now()
      WHERE id = '${u.id}';`,
    );
  }
  parts.push("COMMIT;");
  return parts.join("\n");
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const rows = await fetchRows();
  console.log(`Fetched ${rows.length} COE rows (${subtypeFilter ?? "both subtypes"})`);

  const letters = seededShuffle(letterPlan(rows.length));
  const updates = [];
  const fails = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const targetLetter = letters[i];
    let regen = null;
    let blocking = null;

    for (let attempt = 0; attempt < 6; attempt++) {
      try {
        regen = regenerateCoeRow(row, i + attempt * 13, targetLetter);
        const subtype = row.source_metadata?.rw_subtype;
        const v = validateDsatRwQuestion({
          ...row,
          ...regen,
          rw_subtype: subtype,
          rw_format: regen.source_metadata.rw_format,
          dsat_blueprint_v1: true,
          source_metadata: { ...(row.source_metadata ?? {}), ...regen.source_metadata, dsat_blueprint_v1: true },
        });
        blocking = v.reasons.filter(
          (r) =>
            !r.startsWith("passage_word_count") &&
            !r.startsWith("hard_passage_sentences") &&
            !r.startsWith("stimulus_sentences") &&
            !r.startsWith("word_spread"),
        );
        const m = measureCoeRow(regen);
        if (m.char_spread_pct > 15) blocking = [...(blocking ?? []), `spread:${m.char_spread_pct}`];
        if (!blocking?.length) break;
      } catch (e) {
        blocking = [String(e.message ?? e)];
      }
    }

    if (blocking?.length) {
      fails.push({ id: row.id, external_id: row.external_id, subtype: row.source_metadata?.rw_subtype, reasons: blocking });
      continue;
    }

    updates.push({ id: row.id, external_id: row.external_id, ...regen });
  }

  const bySubtype = {};
  for (const u of updates) {
    const st = u.source_metadata.rw_subtype;
    bySubtype[st] = bySubtype[st] ?? [];
    bySubtype[st].push(u);
  }

  const stats = {
    total: updates.length,
    fails: fails.length,
    by_subtype: Object.fromEntries(
      Object.entries(bySubtype).map(([k, v]) => [k, measureCoeBatch(v)]),
    ),
    overall: measureCoeBatch(updates),
    generator: "regenerate-coe-master.mjs",
    master_manual: "§5 COE-T + §6 COE-Q",
  };

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
    try {
      await pgQuery(query);
    } catch {
      await mcpCall("execute_sql", { project_id: PROJECT_ID, query });
    }
    applied++;
    appendFileSync(LOG, `OK ${file}\n`);
    console.error(`Applied batch ${applied}/${batches.length}`);
  }

  console.log("Done.");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
