#!/usr/bin/env node
/**
 * Audit DSAT Math platform questions (hard + challenged) against blueprint validators.
 *
 *   node scripts/audit-dsat-math-quality.mjs
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/audit-dsat-math-quality.mjs --apply-report
 */
import { writeFileSync } from "node:fs";
import { readFileSync, existsSync } from "node:fs";
import { join } from "node:path";
import { homedir } from "node:os";
import pg from "pg";
import { validateDsatMathQuestion } from "./lib/dsat-math-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT = "scripts/data/.dsat-math-quality-audit.json";

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    if (!JSON.stringify(cfg?.env ?? {}).includes(PROJECT_ID)) continue;
    return cfg.env.POSTGRES_URL_NON_POOLING?.trim() || cfg.env.POSTGRES_URL?.trim();
  }
  throw new Error("no Postgres URL");
}

async function pgQuery(query) {
  const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function main() {
  const q = `SELECT id, skill_id, difficulty, question_type, question_text, stimulus_text, options, correct_answer, explanation, source_metadata
FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true
AND (difficulty='hard' OR source_metadata->>'challenged_problem'='true')`;
  const { rows } = await pgQuery(q);
  let pass = 0;
  let fail = 0;
  const fails = [];
  for (const row of rows) {
    const v = validateDsatMathQuestion(row);
    if (v.ok) pass++;
    else {
      fail++;
      if (fails.length < 50) fails.push({ id: row.id, skill: row.skill_id, reasons: v.reasons });
    }
  }
  const report = { audited: rows.length, pass, fail, passRate: rows.length ? pass / rows.length : 0, sampleFails: fails };
  writeFileSync(OUT, JSON.stringify(report, null, 2));
  console.log(JSON.stringify(report, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
