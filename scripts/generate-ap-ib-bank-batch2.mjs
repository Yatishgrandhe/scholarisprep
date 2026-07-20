#!/usr/bin/env node
/**
 * Wave R research batch 2 — AP/IB bank generator + SQL push helper.
 *
 * Sibling to scripts/generate-ap-ib-bank.mjs (batch 1 AP courses).
 * This CLI covers the 28 batch-2 blueprints and writes per-course shards.
 *
 *   node scripts/generate-ap-ib-bank-batch2.mjs --tranche --write-sql
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/generate-ap-ib-bank-batch2.mjs --tranche --write-sql --apply
 *   node scripts/generate-ap-ib-bank-batch2.mjs --target 500 --courses AP_PHYSICS_1 --write-sql
 */
import { mkdirSync, writeFileSync, readFileSync, existsSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { spawnSync } from "node:child_process";
import {
  BATCH2_COURSES,
  FORM_LETTERS,
  generateCourseBank,
  validateQuestion,
  summarizeRows,
} from "./lib/ap-ib-bank-core.mjs";

const ROOT = resolve(process.cwd());
const RESEARCH = join(ROOT, "scripts/data/course-research");
const OUT_ROOT = join(ROOT, "scripts/data/.ap-ib-regen");
const SHARD_SIZE = 40;

const PRIORITY_COURSES = [
  "AP_PHYSICS_1",
  "AP_PHYSICS_2",
  "AP_PHYSICS_C_MECHANICS",
  "AP_PHYSICS_C_EM",
  "AP_PHYSICS",
  "AP_ECONOMICS",
  "AP_COMPUTER_SCIENCE",
  "IB_ENG_A_LIT_HL",
  "IB_ENG_A_LAL_HL",
];

function parseFormLetters(raw) {
  if (!raw || raw === "A") return ["A"];
  if (/^A-J$/i.test(raw) || /^all$/i.test(raw)) return [...FORM_LETTERS];
  return raw.split(",").map((s) => s.trim().toUpperCase()).filter(Boolean);
}

function parseArgs(argv) {
  const f = {
    courses: [...BATCH2_COURSES],
    unitBank: 48,
    unitTestPerUnit: 1,
    formAMcq: 6,
    formAFrq: 1,
    formLetters: ["A"],
    formFromBlueprint: false,
    formMcqCap: 60,
    formFrqCap: 8,
    writeSql: false,
    apply: false,
    dryRun: false,
    tranche: false,
    target: null,
    startIndex: 1,
    priority: false,
  };
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--tranche") {
      f.tranche = true;
      f.unitBank = 48;
      f.unitTestPerUnit = 1;
      f.formAMcq = 6;
      f.formAFrq = 1;
      f.formLetters = ["A"];
      f.formFromBlueprint = false;
      f.writeSql = true;
    } else if (a === "--priority") {
      f.priority = true;
      f.courses = [...PRIORITY_COURSES];
    } else if (a === "--courses")
      f.courses = argv[++i].split(",").map((s) => s.trim()).filter(Boolean);
    else if (a === "--unit-bank") f.unitBank = Number(argv[++i]);
    else if (a === "--unit-test-per-unit") f.unitTestPerUnit = Number(argv[++i]);
    else if (a === "--form-a-mcq") f.formAMcq = Number(argv[++i]);
    else if (a === "--form-a-frq") f.formAFrq = Number(argv[++i]);
    else if (a === "--forms") f.formLetters = parseFormLetters(argv[++i]);
    else if (a === "--form-from-blueprint") f.formFromBlueprint = true;
    else if (a === "--no-form-from-blueprint") f.formFromBlueprint = false;
    else if (a === "--form-mcq-cap") f.formMcqCap = Number(argv[++i]);
    else if (a === "--form-frq-cap") f.formFrqCap = Number(argv[++i]);
    else if (a === "--target") {
      f.target = Number(argv[++i]);
      f.unitBank = f.target;
      // Toward 500: use official section lengths for Form A+ unless overridden
      f.formFromBlueprint = true;
    } else if (a === "--start-index") f.startIndex = Number(argv[++i]);
    else if (a === "--write-sql") f.writeSql = true;
    else if (a === "--apply") {
      f.apply = true;
      f.writeSql = true;
    } else if (a === "--dry-run") f.dryRun = true;
  }
  return f;
}

function sqlEscape(s) {
  if (s == null) return "NULL";
  return `'${String(s).replace(/'/g, "''")}'`;
}

function insertSql(row) {
  const opts = JSON.stringify(row.options ?? []).replace(/'/g, "''");
  const meta = JSON.stringify(row.source_metadata ?? {}).replace(/'/g, "''");
  const rubric =
    row.rubric == null
      ? "NULL"
      : `'${JSON.stringify(row.rubric).replace(/'/g, "''")}'::jsonb`;
  const maxPts = row.max_points == null ? "NULL" : String(row.max_points);
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, desmos_recommended, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, external_id, unit_code, rubric, max_points, created_at, updated_at)
VALUES (
  ${sqlEscape(row.id)},
  ${sqlEscape(row.question_text)},
  ${sqlEscape(row.stimulus_text)},
  ${sqlEscape(row.stimulus_type)},
  '${opts}'::jsonb,
  ${sqlEscape(row.correct_answer)},
  ${sqlEscape(row.explanation)},
  ${sqlEscape(row.hint)},
  ${sqlEscape(row.topic)},
  ${sqlEscape(row.subtopic)},
  ${sqlEscape(row.section)},
  ${sqlEscape(row.domain_id)},
  ${sqlEscape(row.skill_id)},
  NULL,
  ${sqlEscape(row.difficulty)}::public.difficulty,
  ${row.calculator_allowed === true},
  ${row.desmos_recommended === true},
  ${sqlEscape(row.exam_type)}::public.exam_type,
  ${sqlEscape(row.question_type)}::public.question_type,
  true,
  true,
  ${sqlEscape(row.source)},
  '${meta}'::jsonb,
  ${sqlEscape(row.external_id)},
  ${sqlEscape(row.unit_code)},
  ${rubric},
  ${maxPts},
  now(),
  now()
)
ON CONFLICT (id) DO NOTHING;`;
}

function writeShards(examType, rows) {
  const dir = join(OUT_ROOT, examType);
  mkdirSync(dir, { recursive: true });
  // clear old payload shards for this course
  for (const f of readdirSync(dir)) {
    if (/^payload-\d+\.json$/.test(f)) {
      try {
        writeFileSync(join(dir, f), ""); // will overwrite below
      } catch {}
    }
  }
  const shards = [];
  for (let i = 0; i < rows.length; i += SHARD_SIZE) {
    const chunk = rows.slice(i, i + SHARD_SIZE);
    const name = `payload-${String(Math.floor(i / SHARD_SIZE)).padStart(3, "0")}.json`;
    writeFileSync(
      join(dir, name),
      JSON.stringify(
        {
          exam_type: examType,
          generated_at: new Date().toISOString(),
          count: chunk.length,
          questions: chunk,
        },
        null,
        2,
      ),
    );
    shards.push({ name, count: chunk.length });
  }
  return { dir, shards };
}

function writeSqlForCourse(examType, rows) {
  const dir = join(OUT_ROOT, examType);
  mkdirSync(dir, { recursive: true });
  const sqlPath = join(dir, "insert.sql");
  const parts = ["BEGIN;"];
  parts.push(
    `DELETE FROM public.questions
     WHERE exam_type = '${examType}'::public.exam_type
       AND source IN ('scholaris_ap_gen','scholaris_ib_gen','unit_test','full_exam_form')
       AND COALESCE(source_metadata->>'generator','') = 'generate-ap-ib-bank.mjs'
       AND COALESCE(source_metadata->>'wave','') = 'R'
       AND COALESCE(source_metadata->>'batch','') = '2';`,
  );
  for (const row of rows) parts.push(insertSql(row));
  parts.push("COMMIT;");
  writeFileSync(sqlPath, parts.join("\n") + "\n");

  const megaDir = join(dir, "mega");
  mkdirSync(megaDir, { recursive: true });
  // wipe old megas
  for (const f of readdirSync(megaDir)) {
    if (/^mega-\d+\.sql$/.test(f)) writeFileSync(join(megaDir, f), "-- superseded\n");
  }
  const stmts = parts.filter((p) => /^INSERT/i.test(p));
  const deleteStmt = parts.find((p) => /^DELETE/i.test(p));
  let megaIdx = 0;
  const megaSize = 50;
  for (let i = 0; i < stmts.length; i += megaSize) {
    const chunk = stmts.slice(i, i + megaSize);
    const body =
      megaIdx === 0 && deleteStmt
        ? ["BEGIN;", deleteStmt, ...chunk, "COMMIT;"]
        : ["BEGIN;", ...chunk, "COMMIT;"];
    writeFileSync(
      join(megaDir, `mega-${String(megaIdx).padStart(3, "0")}.sql`),
      body.join("\n") + "\n",
    );
    megaIdx++;
  }
  return { sqlPath, megaDir, megaCount: megaIdx };
}

function applyMegas(megaDir) {
  const files = readdirSync(megaDir)
    .filter((f) => /^mega-\d+\.sql$/.test(f))
    .sort();
  let ok = 0;
  let fail = 0;
  const failures = [];
  for (const f of files) {
    const full = join(megaDir, f);
    const body = readFileSync(full, "utf8");
    if (body.startsWith("-- superseded")) continue;
    const r = spawnSync("node", ["scripts/apply-pg.mjs", full], {
      cwd: ROOT,
      env: { ...process.env, NODE_TLS_REJECT_UNAUTHORIZED: "0" },
      encoding: "utf8",
    });
    const out = `${r.stdout ?? ""}${r.stderr ?? ""}`;
    // Match apply-pg success line only — do NOT treat "0 failed" as FAIL
    const appliedOk =
      r.status === 0 &&
      /^ok\s/m.test(out) &&
      !/^FAIL\s/m.test(out) &&
      /done:\s+\d+\s+ok,\s+0\s+failed/i.test(out);
    if (appliedOk) {
      ok++;
      process.stdout.write(`  apply ok ${f}\n`);
    } else {
      fail++;
      failures.push({ file: f, out: out.slice(0, 400) });
      process.stdout.write(`  apply FAIL ${f}: ${out.slice(0, 200)}\n`);
    }
  }
  return { ok, fail, failures };
}

function loadBlueprint(examType) {
  const path = join(RESEARCH, `${examType}.blueprint.json`);
  if (!existsSync(path)) throw new Error(`missing blueprint: ${path}`);
  return JSON.parse(readFileSync(path, "utf8"));
}

async function main() {
  const args = parseArgs(process.argv);
  mkdirSync(OUT_ROOT, { recursive: true });
  const report = [];
  let totalGen = 0;
  let totalInvalid = 0;

  for (const examType of args.courses) {
    process.stdout.write(`\n=== ${examType} ===\n`);
    const blueprint = loadBlueprint(examType);
    const rows = generateCourseBank(blueprint, {
      unitBank: args.unitBank,
      unitTestPerUnit: args.unitTestPerUnit,
      formAMcq: args.formAMcq,
      formAFrq: args.formAFrq,
      formLetters: args.formLetters,
      formFromBlueprint: args.formFromBlueprint,
      formMcqCap: args.formMcqCap,
      formFrqCap: args.formFrqCap,
      startIndex: args.startIndex,
    });

    // Hard fix: never allow IB rows to carry AP source / exam_type
    for (const q of rows) {
      if (examType.startsWith("IB_")) {
        q.exam_type = examType;
        if (q.source === "scholaris_ap_gen") q.source = "scholaris_ib_gen";
      }
    }

    const invalid = [];
    for (const q of rows) {
      const v = validateQuestion(q);
      if (!v.ok) invalid.push({ external_id: q.external_id, reasons: v.reasons });
    }
    if (invalid.length) {
      totalInvalid += invalid.length;
      writeFileSync(
        join(OUT_ROOT, `${examType}.invalid.json`),
        JSON.stringify(invalid, null, 2),
      );
      process.stdout.write(`  WARN ${invalid.length} invalid\n`);
    }

    const summary = summarizeRows(rows);
    const { dir, shards } = writeShards(examType, rows);
    process.stdout.write(
      `  generated ${summary.total} → ${shards.length} shards in ${dir}\n`,
    );
    process.stdout.write(`  bySource ${JSON.stringify(summary.bySource)}\n`);

    let applyResult = null;
    if (args.writeSql && !args.dryRun) {
      const { sqlPath, megaDir, megaCount } = writeSqlForCourse(examType, rows);
      process.stdout.write(`  sql ${sqlPath} (${megaCount} megas)\n`);
      if (args.apply) {
        applyResult = await applyMegas(megaDir);
        process.stdout.write(
          `  pushed megas: ${applyResult.ok} ok, ${applyResult.fail} fail\n`,
        );
      }
    }

    totalGen += summary.total;
    report.push({
      exam_type: examType,
      generated: summary.total,
      invalid: invalid.length,
      bySource: summary.bySource,
      shards: shards.length,
      applied: applyResult,
    });
  }

  const reportPath = join(OUT_ROOT, "batch2-gen-report.json");
  writeFileSync(
    reportPath,
    JSON.stringify(
      {
        at: new Date().toISOString(),
        mode: args.tranche ? "tranche" : args.target ? `target_${args.target}` : "custom",
        cli: "generate-ap-ib-bank-batch2.mjs",
        form_letters: args.formLetters,
        form_from_blueprint: args.formFromBlueprint,
        total_generated: totalGen,
        total_invalid: totalInvalid,
        courses: report,
      },
      null,
      2,
    ),
  );
  process.stdout.write(`\nReport → ${reportPath}\n`);
  process.stdout.write(
    `TOTAL generated: ${totalGen} across ${args.courses.length} courses\n`,
  );
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
