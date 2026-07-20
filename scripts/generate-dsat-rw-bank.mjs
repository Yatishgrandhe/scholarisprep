#!/usr/bin/env node
/**
 * Generate full Digital SAT RW bank from dsat-rw-blueprint.mjs.
 *
 *   node scripts/generate-dsat-rw-bank.mjs --target-per-subtype 300 --output-sql scripts/data/dsat-rw-bank.sql
 *   node scripts/chunk-sql.mjs scripts/data/dsat-rw-bank.sql 20 scripts/data/dsat-rw-chunks
 *   node scripts/generate-dsat-rw-bank.mjs --build-mega scripts/data/dsat-rw-chunks/dsat-rw-bank-chunks scripts/data/dsat-rw-mega 20
 *   node scripts/apply-dsat-rw-mcp.mjs scripts/data/.dsat-rw-mcp-batches 0 99
 *
 * Flags:
 *   --target-per-subtype N   Minimum per rw_subtype bucket (default 300)
 *   --output-sql PATH        Write INSERT SQL
 *   --delete-sql PATH        Write DELETE SQL for existing RW platform rows
 *   --build-mega IN OUT N    Bundle chunk SQL into mega files (N stmts each)
 *   --build-payloads DIR     Write MCP payload JSON from mega SQL
 *   --dry-run                Print plan only
 */

import { randomUUID } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { dirname, resolve, join, basename } from "node:path";
import {
  DSAT_SUBTYPE_SPECS,
  SKILLS,
  generateDsatRwQuestion,
  sourceMetadataForInsert,
  difficultyForCell,
  validateDsatRwQuestion,
} from "./lib/dsat-rw-blueprint.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";

function parseArgs() {
  const f = {
    targetPerSubtype: 300,
    outputSql: null,
    deleteSql: null,
    buildMega: null,
    megaOut: null,
    megaSize: 20,
    buildPayloads: null,
    dryRun: false,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 20);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--target-per-subtype") f.targetPerSubtype = Number(argv[++i]);
    else if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--delete-sql") f.deleteSql = argv[++i];
    else if (a === "--build-payloads") f.buildPayloads = argv[++i];
    else if (a === "--dry-run") f.dryRun = true;
  }
  return f;
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const skill = SKILLS[row.skill_id];
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(skill.topic)}, ${sqlEscape(skill.subtopic)}, ${sqlEscape(skill.section)}, ${sqlEscape(skill.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function deleteSql() {
  return `-- Delete all SAT RW platform questions (math untouched)
BEGIN;
DELETE FROM public.questions
WHERE exam_type = 'SAT'
  AND section = 'reading_writing'
  AND is_platform_question = true;
COMMIT;`;
}

function buildPlan(target) {
  return DSAT_SUBTYPE_SPECS.map((spec) => ({
    ...spec,
    target,
    difficulties: {
      easy: Math.floor(target * 0.42),
      medium: Math.floor(target * 0.35),
      hard: target - Math.floor(target * 0.42) - Math.floor(target * 0.35),
    },
  }));
}

function generateBank(target) {
  const rows = [];
  const stats = {
    bySubtype: {},
    byDifficulty: { easy: 0, medium: 0, hard: 0 },
    validationFails: 0,
    validationReasons: {},
  };

  for (const spec of DSAT_SUBTYPE_SPECS) {
    stats.bySubtype[spec.rw_subtype] = 0;
    for (let i = 0; i < target; i++) {
      const difficulty = difficultyForCell(i, target);
      let q = null;
      let attempts = 0;
      while (attempts < 12) {
        const idx = i + attempts * 7919;
        q = generateDsatRwQuestion({ spec, index: idx + spec.skill.length * 1000 + spec.rw_subtype.length * 100, difficulty });
        const v = validateDsatRwQuestion(q);
        if (v.ok) break;
        for (const r of v.reasons) {
          stats.validationReasons[r] = (stats.validationReasons[r] ?? 0) + 1;
        }
        attempts++;
      }
      const finalV = validateDsatRwQuestion(q);
      if (!finalV.ok) {
        stats.validationFails++;
        console.error(`FAIL ${spec.rw_subtype} cell ${i}: ${finalV.reasons.join(", ")}`);
      }
      const { _index, ...insertRow } = q;
      rows.push({
        id: randomUUID(),
        ...insertRow,
        source_metadata: sourceMetadataForInsert(insertRow),
      });
      stats.bySubtype[spec.rw_subtype]++;
      stats.byDifficulty[difficulty]++;
    }
  }

  return { rows, stats };
}

function buildMegaFromChunks(chunkDir, outDir, size) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.endsWith(".sql"))
    .sort();
  mkdirSync(outDir, { recursive: true });
  const allStmts = [];
  for (const file of files) {
    const body = readFileSync(join(chunkDir, file), "utf8");
    const inner = body.replace(/^BEGIN;\n?/i, "").replace(/\n?COMMIT;?\s*$/i, "");
    allStmts.push(...inner.split(/\n(?=INSERT)/i).filter((s) => /^INSERT/i.test(s.trim())));
  }
  let megaIdx = 0;
  for (let i = 0; i < allStmts.length; i += size) {
    const chunk = allStmts.slice(i, i + size);
    const sql = "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;";
    writeFileSync(join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`), sql + "\n");
    megaIdx++;
  }
  return { megas: megaIdx, statements: allStmts.length };
}

function buildPayloads(megaDir, payloadDir) {
  mkdirSync(payloadDir, { recursive: true });
  const files = readdirSync(megaDir)
    .filter((f) => /^mega-\d+\.sql$/.test(f))
    .sort();
  let idx = 0;
  for (const file of files) {
    const query = readFileSync(join(megaDir, file), "utf8");
    writeFileSync(
      join(payloadDir, `payload-${String(idx).padStart(2, "0")}.json`),
      JSON.stringify({ project_id: PROJECT_ID, query }, null, 0),
    );
    idx++;
  }
  return idx;
}

async function main() {
  const flags = parseArgs();

  if (flags.buildMega) {
    const result = buildMegaFromChunks(resolve(flags.buildMega), resolve(flags.megaOut), flags.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  const plan = buildPlan(flags.targetPerSubtype);
  const totalTarget = plan.length * flags.targetPerSubtype;

  if (flags.dryRun) {
    console.log(JSON.stringify({ subtypes: plan.length, totalTarget, plan }, null, 2));
    return;
  }

  if (flags.buildPayloads) {
    const megaDir = resolve("scripts/data/dsat-rw-mega");
    if (!existsSync(megaDir)) {
      console.error("Run chunk + build-mega first");
      process.exit(1);
    }
    const n = buildPayloads(megaDir, resolve(flags.buildPayloads));
    console.log(JSON.stringify({ payloads: n, dir: flags.buildPayloads }, null, 2));
    return;
  }

  const { rows, stats } = generateBank(flags.targetPerSubtype);
  const inserts = rows.map(insertSql).join("\n");

  if (flags.deleteSql) {
    writeFileSync(resolve(flags.deleteSql), deleteSql() + "\n");
    console.error(`Wrote delete SQL → ${flags.deleteSql}`);
  }

  if (flags.outputSql) {
    const out = resolve(flags.outputSql);
    mkdirSync(dirname(out), { recursive: true });
    writeFileSync(out, inserts + "\n");
    console.error(`Wrote ${rows.length} INSERTs → ${out}`);
  }


  const sample = rows.find((r) => r.rw_subtype === "vocabulary_in_context");
  console.log(
    JSON.stringify(
      {
        total: rows.length,
        subtypes: plan.length,
        targetPerSubtype: flags.targetPerSubtype,
        stats,
        sampleExplanation: sample?.explanation?.slice(0, 500),
        sampleSubtype: sample?.source_metadata?.rw_subtype,
      },
      null,
      2,
    ),
  );
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
