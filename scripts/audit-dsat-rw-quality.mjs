#!/usr/bin/env node
/**
 * Audit hard + challenged DSAT RW rows against sentence/option quality validators.
 *
 *   node scripts/audit-dsat-rw-quality.mjs
 *   node scripts/audit-dsat-rw-quality.mjs --json > scripts/data/.dsat-quality-audit.json
 */
import { writeFileSync, mkdirSync } from "node:fs";
import { resolve } from "node:path";
import { homedir } from "node:os";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";
import pg from "pg";
import { validateDsatRwQuestion, validateContentQuality, PROJECT_ID } from "./lib/dsat-rw-blueprint.mjs";
import { validateChallengedRow } from "./lib/dsat-challenged-bank.mjs";

const OUT = resolve("scripts/data/.dsat-quality-audit.json");
const jsonOut = process.argv.includes("--json");

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) throw new Error("no mcp.json");
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    return (
      env.POSTGRES_URL_NON_POOLING?.trim() ||
      env.POSTGRES_URL?.trim() ||
      env.DATABASE_URL?.trim() ||
      null
    );
  }
  throw new Error("no Postgres URL");
}

async function pgQuery(query) {
  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

function validateRow(row) {
  const q = {
    question_text: row.question_text,
    stimulus_text: row.stimulus_text,
    stimulus_type: row.stimulus_type,
    options: row.options,
    correct_answer: row.correct_answer,
    explanation: row.explanation,
    difficulty: row.difficulty,
    skill_id: row.skill_id,
    rw_subtype: row.source_metadata?.rw_subtype ?? row.rw_subtype,
    rw_format: row.source_metadata?.rw_format,
    source_metadata: row.source_metadata,
    dsat_blueprint_v1: row.source_metadata?.dsat_blueprint_v1 === true,
  };
  const challenged =
    row.source_metadata?.challenged_problem === true || row.source_metadata?.challenged_problem === "true";
  const v = challenged ? validateChallengedRow(q) : validateDsatRwQuestion(q);
  return { ok: v.ok, reasons: v.reasons ?? [] };
}

async function main() {
  const sql = `
SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation,
       difficulty, skill_id, source_metadata
FROM questions
WHERE exam_type = 'SAT'
  AND section = 'reading_writing'
  AND is_platform_question = true
  AND (source_metadata->>'dsat_blueprint_v1') = 'true'
  AND (
    difficulty = 'hard'
    OR (source_metadata->>'challenged_problem') = 'true'
  )
ORDER BY source_metadata->>'rw_subtype', difficulty, id;
`;

  const { rows } = await pgQuery(sql);
  const stats = {
    auditedAt: new Date().toISOString(),
    projectId: PROJECT_ID,
    total: rows.length,
    pass: 0,
    fail: 0,
    challenged: { total: 0, pass: 0, fail: 0 },
    hardOnly: { total: 0, pass: 0, fail: 0 },
    failByReason: {},
    failBySubtype: {},
    sampleFails: [],
  };

  for (const row of rows) {
    const challenged = row.source_metadata?.challenged_problem === true;
    const bucket = challenged ? stats.challenged : stats.hardOnly;
    bucket.total++;
    const subtype = row.source_metadata?.rw_subtype ?? "unknown";
    const v = validateRow(row);
    if (v.ok) {
      stats.pass++;
      bucket.pass++;
    } else {
      stats.fail++;
      bucket.fail++;
      if (!stats.failBySubtype[subtype]) stats.failBySubtype[subtype] = 0;
      stats.failBySubtype[subtype]++;
      for (const r of v.reasons) {
        const key = r.split(":")[0];
        stats.failByReason[key] = (stats.failByReason[key] ?? 0) + 1;
      }
      if (stats.sampleFails.length < 12) {
        stats.sampleFails.push({ id: row.id, subtype, challenged, reasons: v.reasons.slice(0, 5) });
      }
    }
  }

  stats.passRate = stats.total ? Number(((stats.pass / stats.total) * 100).toFixed(1)) : 100;

  mkdirSync(resolve("scripts/data"), { recursive: true });
  writeFileSync(OUT, JSON.stringify(stats, null, 2));

  if (jsonOut) {
    console.log(JSON.stringify(stats, null, 2));
  } else {
    console.log(JSON.stringify(stats, null, 2));
    console.log(`\nWrote ${OUT}`);
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
