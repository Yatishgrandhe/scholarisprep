#!/usr/bin/env node
/**
 * Expand DSAT RW bank to 300 per rw_subtype + 25 challenged per subtype.
 *
 *   node scripts/generate-dsat-rw-expansion.mjs --dry-run
 *   node scripts/generate-dsat-rw-expansion.mjs --apply
 *   node scripts/generate-dsat-rw-expansion.mjs --target-per-subtype 300 --challenged-per-subtype 25
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, readFileSync, appendFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import pg from "pg";
import {
  DSAT_SUBTYPE_SPECS,
  SKILLS,
  DEFAULT_TARGET_PER_SUBTYPE,
  CHALLENGED_PER_SUBTYPE,
  generateDsatRwQuestion,
  generateChallengedDsatRwQuestion,
  sourceMetadataForInsert,
  difficultyForCell,
  validateDsatRwQuestion,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  generateConventionsBatch,
  generateChallengedConventionsItem,
  validateConventionsRow,
} from "./lib/dsat-conventions-bank.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.dsat-rw-expansion");
const LOG = resolve("scripts/data/.dsat-rw-expansion-apply-log.txt");

const CONVENTIONS_SKILLS = new Set(["BOU", "FSS", "SYN"]);
const CONVENTIONS_SUBTYPES = {
  BOU: "boundaries",
  FSS: "form_structure_sense",
  SYN: "notes_synthesis",
};

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run");
const targetPerSubtype = Number(argv.find((a, i) => argv[i - 1] === "--target-per-subtype") ?? DEFAULT_TARGET_PER_SUBTYPE);
const challengedPerSubtype = Number(argv.find((a, i) => argv[i - 1] === "--challenged-per-subtype") ?? CHALLENGED_PER_SUBTYPE);

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const skill = SKILLS[row.skill_id];
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, ${sqlEscape(row.hint)}, ${sqlEscape(skill.topic)}, ${sqlEscape(skill.subtopic)}, ${sqlEscape(skill.section)}, ${sqlEscape(skill.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function validateRow(row) {
  if (CONVENTIONS_SKILLS.has(row.skill_id) && !row._challenged) {
    return validateConventionsRow(row);
  }
  return validateDsatRwQuestion(row);
}

function generateConventionsSubtype(skill, count, startIndex) {
  const rows = [];
  const batch = generateConventionsBatch({ skill, count, startIndex });
  for (let i = 0; i < batch.length; i++) {
    const difficulty = difficultyForCell(i, count);
    let row = {
      ...batch[i],
      id: randomUUID(),
      difficulty,
      rw_subtype: CONVENTIONS_SUBTYPES[skill],
      source_metadata: {
        ...batch[i].source_metadata,
        dsat_blueprint_v1: true,
        rw_subtype: CONVENTIONS_SUBTYPES[skill],
        rw_format: batch[i].rw_format,
        generator: "generate-dsat-rw-expansion.mjs",
        explanation_v2: true,
        original: true,
      },
    };
    let v = validateRow(row);
    let attempts = 0;
    while (!v.ok && attempts < 10) {
      const retry = generateConventionsBatch({ skill, count: 1, startIndex: startIndex + i + attempts * 997 })[0];
      row = {
        ...retry,
        id: randomUUID(),
        difficulty,
        rw_subtype: CONVENTIONS_SUBTYPES[skill],
        source_metadata: {
          ...retry.source_metadata,
          dsat_blueprint_v1: true,
          rw_subtype: CONVENTIONS_SUBTYPES[skill],
          rw_format: retry.rw_format,
          generator: "generate-dsat-rw-expansion.mjs",
          explanation_v2: true,
          original: true,
        },
      };
      v = validateRow(row);
      attempts++;
    }
    rows.push(row);
  }
  return rows;
}

function generateBank() {
  const rows = [];
  const stats = {
    bySubtype: {},
    byDifficulty: { easy: 0, medium: 0, hard: 0 },
    challenged: 0,
    validationFails: 0,
  };

  for (const spec of DSAT_SUBTYPE_SPECS) {
    stats.bySubtype[spec.rw_subtype] = { standard: 0, challenged: 0 };

    if (CONVENTIONS_SKILLS.has(spec.skill)) {
      const standard = generateConventionsSubtype(spec.skill, targetPerSubtype, spec.skill.length * 10000);
      rows.push(...standard);
      stats.bySubtype[spec.rw_subtype].standard = standard.length;
      for (const r of standard) stats.byDifficulty[r.difficulty]++;

      for (let c = 0; c < challengedPerSubtype; c++) {
        let row = {
          ...generateChallengedConventionsItem(spec.skill, c + spec.skill.length * 200),
          id: randomUUID(),
          rw_subtype: spec.rw_subtype,
        };
        let v = validateRow(row);
        let attempts = 0;
        while (!v.ok && attempts < 10) {
          row = {
            ...generateChallengedConventionsItem(spec.skill, c + attempts * 500 + 15000),
            id: randomUUID(),
            rw_subtype: spec.rw_subtype,
          };
          v = validateRow(row);
          attempts++;
        }
        if (!v.ok) stats.validationFails++;
        row._challenged = true;
        rows.push(row);
        stats.bySubtype[spec.rw_subtype].challenged++;
        stats.challenged++;
        stats.byDifficulty.hard++;
      }
      continue;
    }

    for (let i = 0; i < targetPerSubtype; i++) {
      const difficulty = difficultyForCell(i, targetPerSubtype);
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        const idx = i + attempts * 7919;
        q = generateDsatRwQuestion({
          spec,
          index: idx + spec.skill.length * 1000 + spec.rw_subtype.length * 100,
          difficulty,
        });
        const v = validateDsatRwQuestion(q);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateDsatRwQuestion(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL ${spec.rw_subtype} #${i}: ${finalV.reasons.join(", ")}`);
      }
      const { _index, _challenged, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow),
      });
      stats.bySubtype[spec.rw_subtype].standard++;
      stats.byDifficulty[difficulty]++;
    }

    for (let c = 0; c < challengedPerSubtype; c++) {
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        q = generateChallengedDsatRwQuestion({
          spec,
          index: c + attempts * 3137 + spec.rw_subtype.length * 500,
        });
        const v = validateDsatRwQuestion(q);
        if (v.ok) break;
        attempts++;
      }
      const finalV = validateDsatRwQuestion(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL challenged ${spec.rw_subtype} #${c}: ${finalV.reasons.join(", ")}`);
      }
      const { _index, _challenged, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow),
      });
      stats.bySubtype[spec.rw_subtype].challenged++;
      stats.challenged++;
      stats.byDifficulty.hard++;
    }
  }

  return { rows, stats };
}

function buildSql(rows) {
  const parts = [
    "BEGIN;",
    `DELETE FROM public.questions WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true;`,
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

function chunkMegas(sql, megaDir, size = 15) {
  mkdirSync(megaDir, { recursive: true });
  const inner = sql.replace(/^BEGIN;\n?/i, "").replace(/\n?COMMIT;?\s*$/i, "");
  const stmts = inner.split(/\n(?=INSERT|DELETE)/i).filter((s) => /^(INSERT|DELETE)/i.test(s.trim()));
  let megaIdx = 0;
  for (let i = 0; i < stmts.length; i += size) {
    const chunk = stmts.slice(i, i + size);
    writeFileSync(join(megaDir, `mega-${String(megaIdx).padStart(3, "0")}.sql`), "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;\n");
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
    total: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true`,
    bySkill: `SELECT skill_id, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true GROUP BY skill_id ORDER BY 1`,
    bySubtype: `SELECT source_metadata->>'rw_subtype' AS rw_subtype, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true GROUP BY 1 ORDER BY 1`,
    byDifficulty: `SELECT difficulty, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true GROUP BY difficulty ORDER BY 1`,
    blueprint: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'dsat_blueprint_v1')='true'`,
    challenged: `SELECT source_metadata->>'rw_subtype' AS rw_subtype, COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true' GROUP BY 1 ORDER BY 1`,
    challengedTotal: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true AND (source_metadata->>'challenged_problem')='true'`,
    math: `SELECT COUNT(*) AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true`,
  };
  const out = {};
  for (const [key, q] of Object.entries(queries)) {
    const r = await pgQuery(q);
    out[key] = r.rows;
  }
  return out;
}

async function main() {
  const expectedTotal = DSAT_SUBTYPE_SPECS.length * (targetPerSubtype + challengedPerSubtype);
  console.log(
    JSON.stringify(
      {
        subtypes: DSAT_SUBTYPE_SPECS.length,
        targetPerSubtype,
        challengedPerSubtype,
        expectedTotal,
      },
      null,
      2,
    ),
  );

  const { rows, stats } = generateBank();
  const sql = buildSql(rows);
  const megaDir = join(OUT_DIR, "megas");

  mkdirSync(OUT_DIR, { recursive: true });
  writeFileSync(join(OUT_DIR, "insert.sql"), sql + "\n");
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(stats, null, 2));
  const megaCount = chunkMegas(sql, megaDir, 15);

  console.log(JSON.stringify({ generated: rows.length, stats, megas: megaCount }, null, 2));

  if (dryRun) return;

  if (!apply) {
    console.log("Wrote SQL to scripts/data/.dsat-rw-expansion/ — pass --apply to insert");
    return;
  }

  appendFileSync(LOG, `\n# apply ${new Date().toISOString()} rows=${rows.length}\n`);
  const applyResult = await applyMegas(megaDir);
  appendFileSync(LOG, JSON.stringify(applyResult) + "\n");

  const counts = await verify();
  console.log(JSON.stringify({ apply: applyResult, verify: counts }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
