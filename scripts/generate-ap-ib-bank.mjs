#!/usr/bin/env node
/**
 * Generate AP/IB question banks from course-research blueprints and write SQL
 * for apply-pg.mjs.
 *
 * Usage:
 *   node scripts/generate-ap-ib-bank.mjs --batch 3 --mode tranche
 *   node scripts/generate-ap-ib-bank.mjs --batch 3 --mode full
 *   node scripts/generate-ap-ib-bank.mjs --batch 3 --mode full --courses IB_MATH_AA_HL,IB_TOK
 *   node scripts/generate-ap-ib-bank.mjs --batch 3 --courses IB_MATH_AA_HL --pools bank,unit_test,forms
 *   node scripts/generate-ap-ib-bank.mjs --batch 1 --mode tranche --dry-run
 */
import { mkdirSync, writeFileSync, readFileSync } from "node:fs";
import { join } from "node:path";
import {
  BATCH1_COURSES,
  BATCH1_PRIORITY,
  BATCH3_PRIORITY,
  loadBlueprint,
  generateCourseRows,
  generateUnitTestRows,
  generateFormPoolRows,
  rowsToSqlFile,
  validateRow,
  IB_SOURCE,
  AP_SOURCE,
} from "./lib/ap-ib-bank-gen.mjs";

const REPO = "/Users/yatishgrandhe/Downloads/scholaris-main";

function parseArgs(argv) {
  const args = {
    batch: null,
    mode: "tranche",
    perCourse: null,
    priorityCount: null,
    courses: null,
    dryRun: false,
    outDir: null,
    pools: ["bank"],
    formLetters: null,
  };
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--batch") args.batch = Number(argv[++i]);
    else if (a === "--mode") args.mode = argv[++i];
    else if (a === "--per-course") args.perCourse = Number(argv[++i]);
    else if (a === "--priority-count") args.priorityCount = Number(argv[++i]);
    else if (a === "--courses")
      args.courses = argv[++i].split(",").map((s) => s.trim()).filter(Boolean);
    else if (a === "--out-dir") args.outDir = argv[++i];
    else if (a === "--dry-run") args.dryRun = true;
    else if (a === "--pools")
      args.pools = argv[++i].split(",").map((s) => s.trim()).filter(Boolean);
    else if (a === "--form-letters")
      args.formLetters = argv[++i]
        .split(",")
        .map((s) => s.trim().toUpperCase())
        .filter(Boolean);
  }

  // Defaults by batch (do not clobber explicit CLI overrides)
  if (!args.outDir) {
    if (args.batch === 1) {
      args.outDir = join(REPO, "scripts/data/.ap-ib-regen/batch1-bank");
    } else if (args.batch === 3) {
      args.outDir = join(REPO, "scripts/data/.ap-ib-regen/ib-batch3-bank");
    } else {
      args.outDir = join(REPO, "scripts/data/.ap-ib-regen/ap-ib-bank");
    }
  }
  if (args.batch === 1) {
    if (args.perCourse == null) args.perCourse = 28;
    if (args.priorityCount == null) args.priorityCount = 60;
  } else if (args.batch === 3) {
    if (args.perCourse == null) args.perCourse = 50;
    if (args.priorityCount == null) args.priorityCount = 100;
  } else {
    if (args.perCourse == null) args.perCourse = 28;
    if (args.priorityCount == null) args.priorityCount = 60;
  }
  return args;
}

function loadBatchCourses(batch) {
  if (batch === 1) return [...BATCH1_COURSES];
  if (batch === 3) {
    const man = JSON.parse(
      readFileSync(join(REPO, "scripts/data/.ap-ib-regen/batch3_manifest.json"), "utf8"),
    );
    return man.completed;
  }
  return null;
}

function prioritySet(batch) {
  if (batch === 1) return new Set(BATCH1_PRIORITY);
  if (batch === 3) return new Set(BATCH3_PRIORITY);
  return new Set([...BATCH1_PRIORITY, ...BATCH3_PRIORITY]);
}

function targetFor(examType, args, pri) {
  if (args.mode === "full") return 500;
  // Batch-1 priority overrides (≥50 full-quality)
  if (args.batch === 1) {
    const overrides = {
      AP_CALCULUS_AB: 100,
      AP_CALCULUS_BC: 100,
      AP_STATISTICS: 80,
      AP_BIOLOGY: 80,
      AP_CHEMISTRY: 80,
      AP_ENGLISH_LANG: 60,
      AP_ENGLISH_LIT: 60,
      AP_US_HISTORY: 60,
      AP_PSYCHOLOGY: 60,
      AP_MACROECONOMICS: 60,
      AP_MICROECONOMICS: 60,
    };
    if (overrides[examType]) return overrides[examType];
  }
  if (pri.has(examType)) return args.priorityCount;
  return args.perCourse;
}

function writeValidated(examType, rows, outDir, label, dryRun) {
  let bad = 0;
  for (const r of rows) {
    const v = validateRow(r);
    if (!v.ok) {
      bad++;
      if (bad <= 3) console.warn(`validate ${examType} ${label}:`, v.reasons, r.external_id);
    }
  }
  if (!dryRun) {
    const sql = rowsToSqlFile(rows, { chunkComment: `${examType} ${label} n=${rows.length}` });
    const suffix = label === "bank" ? "" : `.${label}`;
    const out = join(outDir, `${examType}${suffix}.sql`);
    writeFileSync(out, sql);
    writeFileSync(
      join(outDir, `${examType}${suffix}.meta.json`),
      JSON.stringify(
        {
          generated: rows.length,
          invalid: bad,
          label,
          source: rows[0]?.source,
          mcq: rows.filter((r) => r.question_type === "multiple_choice").length,
          frq: rows.filter((r) => r.question_type === "free_response").length,
        },
        null,
        2,
      ),
    );
    console.log(`wrote ${out} (${rows.length} rows, invalid=${bad})`);
  } else {
    console.log(`dry-run ${examType} ${label}: ${rows.length} rows, invalid=${bad}`);
  }
  return { generated: rows.length, invalid: bad, source: rows[0]?.source };
}

function main() {
  const args = parseArgs(process.argv.slice(2));
  let courses = args.courses;
  if (!courses?.length && args.batch) {
    courses = loadBatchCourses(args.batch);
  }
  if (!courses?.length) {
    console.error("Provide --batch 1|3 or --courses EXAM1,EXAM2");
    process.exit(1);
  }

  const pri = prioritySet(args.batch);
  mkdirSync(args.outDir, { recursive: true });
  const sourceGuess = String(courses[0] || "").startsWith("IB_") ? IB_SOURCE : AP_SOURCE;
  const summary = {
    courses: {},
    total: 0,
    invalid: 0,
    mode: args.mode,
    batch: args.batch,
    pools: args.pools,
    source: sourceGuess,
  };

  for (const examType of courses) {
    const bp = loadBlueprint(REPO, examType);
    const courseSummary = { priority: pri.has(examType), pools: {} };

    if (args.pools.includes("bank")) {
      const count = targetFor(examType, args, pri);
      const rows = generateCourseRows(bp, { count });
      const meta = writeValidated(examType, rows, args.outDir, "bank", args.dryRun);
      courseSummary.pools.bank = { ...meta, target: count, remaining_to_500: Math.max(0, 500 - meta.generated) };
      summary.total += meta.generated;
      summary.invalid += meta.invalid;
    }

    if (args.pools.includes("unit_test")) {
      const rows = generateUnitTestRows(bp);
      const meta = writeValidated(examType, rows, args.outDir, "unit_test", args.dryRun);
      courseSummary.pools.unit_test = meta;
      summary.total += meta.generated;
      summary.invalid += meta.invalid;
    }

    if (args.pools.includes("forms")) {
      const rows = generateFormPoolRows(bp, {
        formLetters: args.formLetters ?? undefined,
      });
      const meta = writeValidated(examType, rows, args.outDir, "forms", args.dryRun);
      courseSummary.pools.forms = meta;
      summary.total += meta.generated;
      summary.invalid += meta.invalid;
    }

    summary.courses[examType] = courseSummary;
  }

  const statsPath = join(args.outDir, "stats.json");
  if (!args.dryRun) writeFileSync(statsPath, JSON.stringify(summary, null, 2));
  console.log(
    JSON.stringify(
      {
        total: summary.total,
        invalid: summary.invalid,
        courses: Object.keys(summary.courses).length,
        pools: args.pools,
        outDir: args.outDir,
      },
      null,
      2,
    ),
  );
}

main();
