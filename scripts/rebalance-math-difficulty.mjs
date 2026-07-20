#!/usr/bin/env node
/**
 * Rebalance SAT math platform questions toward ~40% easy / 35% medium / 25% hard per skill.
 * Reclassifies surplus-tier rows (prefers non-hard_content_v2, college_board_opensat).
 *
 *   node scripts/rebalance-math-difficulty.mjs --use-mcp --fetch-json scripts/data/rebalance-math-input.json --output-sql scripts/data/rebalance-math.sql --dry-run
 *   node scripts/chunk-sql.mjs scripts/data/rebalance-math.sql 50 scripts/data/rebalance-math-chunks --update
 *   node scripts/rebalance-math-difficulty.mjs --build-mega scripts/data/rebalance-math-chunks/rebalance-math-chunks scripts/data/rebalance-math-mega 40
 *   node scripts/apply-mega-execute-sql.mjs scripts/data/rebalance-math-mega 800
 */

import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const VERSION = "math_difficulty_rebalance_v1";
const MIX = { easy: 0.4, medium: 0.35, hard: 0.25 };

const MATH_SKILLS = [
  "LIN", "LIF", "LEQ", "SYS", "INE", "NRM", "NRE", "EQS", "RAT", "PER",
  "OIA", "TVA", "PRO", "IEE", "EVA", "ARE", "LIN_G", "RIG", "CIR",
];

function parseArgs() {
  const f = {
    outputSql: null,
    inputJson: null,
    fetchJson: null,
    useMcp: false,
    dryRun: false,
    buildMega: null,
    megaOut: null,
    megaSize: 40,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 40);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--input-json") f.inputJson = argv[++i];
    else if (a === "--fetch-json") f.fetchJson = argv[++i];
    else if (a === "--use-mcp") f.useMcp = true;
    else if (a === "--dry-run") f.dryRun = true;
  }
  return f;
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

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
        } catch {
          /* ignore */
        }
      }
    });
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "rebalance-math", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: "execute_sql", arguments: { query } });
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

function parseMcpRows(res) {
  const text = res?.content?.[0]?.text ?? "[]";
  const m = text.match(/\[[\s\S]*\]/);
  if (!m) return [];
  return JSON.parse(m[0]);
}

async function fetchRows() {
  const query = `SELECT id, skill_id, difficulty::text AS difficulty, source,
    COALESCE((source_metadata->>'hard_content_v2')::boolean, false) AS hard_content_v2
  FROM questions
  WHERE is_platform_question = true AND section = 'math' AND exam_type = 'SAT'
  ORDER BY skill_id, difficulty, source, id`;
  const res = await mcpExecuteSql(query);
  return parseMcpRows(res);
}

function targetCounts(total) {
  const easy = Math.round(total * MIX.easy);
  const medium = Math.round(total * MIX.medium);
  const hard = total - easy - medium;
  return { easy, medium, hard };
}

function candidateScore(row) {
  let s = 0;
  if (!row.hard_content_v2) s += 10;
  if (row.source === "college_board_opensat") s += 5;
  if (row.source === "scholaris_ai") s += 2;
  return s;
}

function rebalancePlan(rows) {
  const bySkill = new Map();
  for (const row of rows) {
    if (!bySkill.has(row.skill_id)) bySkill.set(row.skill_id, { easy: [], medium: [], hard: [] });
    bySkill.get(row.skill_id)[row.difficulty]?.push(row);
  }

  const changes = [];
  const summary = [];

  for (const skill of MATH_SKILLS) {
    const buckets = bySkill.get(skill) ?? { easy: [], medium: [], hard: [] };
    const total = buckets.easy.length + buckets.medium.length + buckets.hard.length;
    if (total === 0) continue;

    const target = targetCounts(total);
    const current = {
      easy: buckets.easy.length,
      medium: buckets.medium.length,
      hard: buckets.hard.length,
    };

    const deficits = {
      easy: Math.max(0, target.easy - current.easy),
      medium: Math.max(0, target.medium - current.medium),
      hard: Math.max(0, target.hard - current.hard),
    };
    const surpluses = {
      easy: Math.max(0, current.easy - target.easy),
      medium: Math.max(0, current.medium - target.medium),
      hard: Math.max(0, current.hard - target.hard),
    };

    summary.push({ skill, total, current, target, deficits, surpluses });

    const pool = (tier) =>
      [...buckets[tier]].sort((a, b) => candidateScore(b) - candidateScore(a));

    const take = (fromTier, count) => {
      const out = [];
      for (const row of pool(fromTier)) {
        if (out.length >= count) break;
        if (changes.some((c) => c.id === row.id)) continue;
        out.push(row);
      }
      return out;
    };

    const assign = (fromTier, toTier, count) => {
      for (const row of take(fromTier, count)) {
        changes.push({ id: row.id, skill_id: skill, from: fromTier, to: toTier, row });
      }
    };

    // Fill easy deficits: medium→easy, then hard→easy
    assign("medium", "easy", deficits.easy);
    const easyStill = deficits.easy - changes.filter((c) => c.skill_id === skill && c.to === "easy").length;
    if (easyStill > 0) assign("hard", "easy", easyStill);

    // Fill hard deficits: medium→hard, then easy→hard (only non-hard_content_v2)
    const hardDone = changes.filter((c) => c.skill_id === skill && c.to === "hard").length;
    assign("medium", "hard", deficits.hard - hardDone);
    const hardStill = deficits.hard - changes.filter((c) => c.skill_id === skill && c.to === "hard").length;
    if (hardStill > 0) assign("easy", "hard", hardStill);

    // Fill medium deficits: easy→medium or hard→medium
    const medDone = changes.filter((c) => c.skill_id === skill && c.to === "medium").length;
    assign("hard", "medium", deficits.medium - medDone);
    const medStill = deficits.medium - changes.filter((c) => c.skill_id === skill && c.to === "medium").length;
    if (medStill > 0) assign("easy", "medium", medStill);
  }

  return { changes, summary };
}

function updateSql(change) {
  const meta = JSON.stringify({
    math_difficulty_rebalance: VERSION,
    math_difficulty_rebalanced_at: new Date().toISOString(),
    rebalance_method: "rebalance-math-difficulty.mjs",
    prior_difficulty: change.from,
    rebalance_from: change.from,
    rebalance_to: change.to,
  }).replace(/'/g, "''");
  return `UPDATE public.questions SET
  difficulty = ${sqlEscape(change.to)},
  source_metadata = COALESCE(source_metadata, '{}'::jsonb) || '${meta}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(change.id)};`;
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
    writeFileSync(
      join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`),
      "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n",
    );
    megaIdx++;
  }
  return { megaFiles: megaIdx, statements: stmts.length };
}

async function main() {
  const flags = parseArgs();

  if (flags.buildMega) {
    const r = buildMegaFromChunks(flags.buildMega, flags.megaOut, flags.megaSize);
    console.log(JSON.stringify({ ok: true, ...r }, null, 2));
    return;
  }

  let rows;
  if (flags.inputJson) {
    rows = JSON.parse(readFileSync(resolve(flags.inputJson), "utf8"));
  } else if (flags.useMcp) {
    rows = await fetchRows();
    if (flags.fetchJson) writeFileSync(resolve(flags.fetchJson), JSON.stringify(rows, null, 2));
  } else {
    throw new Error("Provide --input-json or --use-mcp");
  }

  const { changes, summary } = rebalancePlan(rows);

  console.error(`Rebalance plan: ${changes.length} UPDATEs across ${summary.length} skills`);
  for (const s of summary) {
    const d = s.deficits;
    const surplus = s.surpluses;
    if (d.easy + d.medium + d.hard + surplus.easy + surplus.medium + surplus.hard > 0) {
      console.error(
        `  ${s.skill} (${s.total}): now E${s.current.easy}/M${s.current.medium}/H${s.current.hard} → target E${s.target.easy}/M${s.target.medium}/H${s.target.hard}`,
      );
    }
  }

  if (flags.dryRun) {
    console.log(JSON.stringify({ ok: true, dryRun: true, updates: changes.length, summary }, null, 2));
    return;
  }

  if (!flags.outputSql) throw new Error("--output-sql required");

  const sql = "BEGIN;\n" + changes.map(updateSql).join("\n") + "\nCOMMIT;\n";
  writeFileSync(resolve(flags.outputSql), sql);
  console.log(JSON.stringify({ ok: true, updates: changes.length, output: flags.outputSql }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
