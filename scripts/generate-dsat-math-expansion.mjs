#!/usr/bin/env node
/**
 * Expand DSAT Math bank to 300 per skill + 25 challenged per skill (6175 total).
 *
 *   node scripts/generate-dsat-math-expansion.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/generate-dsat-math-expansion.mjs --apply
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import pg from "pg";
import {
  MATH_SKILLS,
  SKILLS,
  DEFAULT_TARGET_PER_SKILL,
  CHALLENGED_PER_SKILL,
  generateDsatMathQuestion,
  generateChallengedDsatMathQuestion,
  sourceMetadataForInsert,
  difficultyForCell,
  validateDsatMathQuestion,
} from "./lib/dsat-math-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.dsat-math-expansion");
const LOG = resolve("scripts/data/.dsat-math-expansion-apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const targetPerSkill = Number(argv.find((a, i) => argv[i - 1] === "--target-per-skill") ?? DEFAULT_TARGET_PER_SKILL);
const challengedPerSkill = Number(argv.find((a, i) => argv[i - 1] === "--challenged-per-skill") ?? CHALLENGED_PER_SKILL);

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options ?? []).replace(/'/g, "''");
  const skill = SKILLS[row.skill_id];
  const qType = row.question_type ?? "multiple_choice";
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(skill.topic)}, ${sqlEscape(skill.subtopic)}, 'math', ${sqlEscape(skill.domain_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.difficulty)}::public.difficulty, true, 'SAT', ${sqlEscape(qType)}::public.question_type, true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function generateBank() {
  const rows = [];
  const stats = {
    bySkill: {},
    byDifficulty: { easy: 0, medium: 0, hard: 0 },
    challenged: 0,
    spr: 0,
    mcq: 0,
    validationFails: 0,
  };

  for (const skill of MATH_SKILLS) {
    stats.bySkill[skill] = { standard: 0, challenged: 0 };

    for (let i = 0; i < targetPerSkill; i++) {
      const difficulty = difficultyForCell(i, targetPerSkill);
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        q = generateDsatMathQuestion({
          skill,
          index: i + attempts * 7919,
          difficulty,
        });
        const v = validateDsatMathQuestion(q);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateDsatMathQuestion(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL ${skill} #${i}: ${finalV.reasons.join(", ")}`);
      }
      const { _challenged, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow),
      });
      stats.bySkill[skill].standard++;
      stats.byDifficulty[difficulty]++;
      if (insertRow.question_type === "grid_in") stats.spr++;
      else stats.mcq++;
    }

    for (let c = 0; c < challengedPerSkill; c++) {
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        q = generateChallengedDsatMathQuestion({ skill, index: c + attempts * 3137 });
        const v = validateDsatMathQuestion(q);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateDsatMathQuestion(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL challenged ${skill} #${c}: ${finalV.reasons.join(", ")}`);
      }
      const { _challenged, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow, {
          generator: "dsat-challenged-math-bank.mjs",
        }),
      });
      stats.bySkill[skill].challenged++;
      stats.challenged++;
      stats.byDifficulty.hard++;
      stats.mcq++;
    }
  }

  return { rows, stats };
}

function buildSql(rows) {
  const parts = [
    "BEGIN;",
    `DELETE FROM public.questions WHERE exam_type = 'SAT' AND section = 'math' AND is_platform_question = true;`,
  ];
  for (const row of rows) parts.push(insertSql(row));
  parts.push("COMMIT;");
  return parts.join("\n");
}

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

function chunkMegas(sql, megaDir, size = 12) {
  mkdirSync(megaDir, { recursive: true });
  const inner = sql.replace(/^BEGIN;\n?/i, "").replace(/\n?COMMIT;?\s*$/i, "");
  const stmts = inner.split(/\n(?=INSERT|DELETE)/i).filter((s) => /^(INSERT|DELETE)/i.test(s.trim()));
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += size) {
    const chunk = stmts.slice(i, i + size);
    writeFileSync(
      join(megaDir, `mega-${String(megaIdx).padStart(3, "0")}.sql`),
      "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;\n",
    );
    megaIdx++;
  }
  return megaIdx;
}

async function applyMegas(megaDir) {
  const files = readdirSync(megaDir)
    .filter((f) => /^mega-\d+\.sql$/.test(f))
    .sort();
  let ok = 0;
  let fail = 0;
  for (const file of files) {
    const sql = readFileSync(join(megaDir, file), "utf8");
    try {
      await pgQuery(sql);
      ok++;
      process.stdout.write(`ok ${file}\n`);
    } catch (e) {
      fail++;
      try {
        await pgQuery("ROLLBACK");
      } catch {
        /* ignore */
      }
      process.stdout.write(`FAIL ${file}: ${String(e.message).slice(0, 120)}\n`);
    }
  }
  return { ok, fail, total: files.length };
}

async function verify() {
  const queries = {
    mathTotal: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true`,
    bySkill: `SELECT skill_id, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true GROUP BY 1 ORDER BY 1`,
    byDifficulty: `SELECT difficulty, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true GROUP BY 1 ORDER BY 1`,
    challenged: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true AND source_metadata->>'challenged_problem'='true'`,
    blueprint: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true AND source_metadata->>'dsat_math_blueprint_v1'='true'`,
    spr: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true AND question_type='grid_in'`,
  };
  const out = {};
  for (const [key, q] of Object.entries(queries)) {
    const r = await pgQuery(q);
    out[key] = r.rows;
  }
  return out;
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const { rows, stats } = generateBank();
  const sql = buildSql(rows);
  writeFileSync(join(OUT_DIR, "insert.sql"), sql);
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify({ ...stats, total: rows.length, targetPerSkill, challengedPerSkill }, null, 2));
  const megaCount = chunkMegas(sql, join(OUT_DIR, "megas"), 12);
  console.log(JSON.stringify({ ...stats, total: rows.length, megas: megaCount }, null, 2));

  if (dryRun) {
    console.log("dry-run complete — no DB changes");
    return;
  }

  if (apply) {
    console.log("Applying megas to prod...");
    const result = await applyMegas(join(OUT_DIR, "megas"));
    writeFileSync(LOG, `${new Date().toISOString()} ok=${result.ok} fail=${result.fail}\n`);
    const post = await verify();
    console.log("post-verify:", JSON.stringify(post, null, 2));
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
