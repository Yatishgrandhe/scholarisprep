#!/usr/bin/env node
/**
 * Master Manual §7 — Regenerate ALL INF (general + implication + prediction).
 *
 *   node scripts/regenerate-inf-master.mjs --dry-run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regenerate-inf-master.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import {
  validateCorrectLetterDistribution,
  PROJECT_ID,
} from "./lib/dsat-rw-blueprint.mjs";
import {
  regenerateInfMasterWithRetry,
  validateInfMasterRow,
  measureInfSpread,
} from "./lib/inf-master-regen.mjs";

const OUT_DIR = resolve("scripts/data/.inf-master-regen");
const SQL_FILTER =
  "skill_id = 'INF' AND source_metadata->>'rw_subtype' IN ('general', 'implication', 'prediction')";

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply;

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

function computeBeforeStats(rows) {
  let longest = 0;
  let over15 = 0;
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  const bySubtype = { general: 0, implication: 0, prediction: 0 };
  for (const row of rows) {
    const m = measureInfSpread(row.options ?? []);
    if (m.correct_is_longest) longest++;
    if (m.char_spread_pct > 15 || m.word_spread_pct > 15) over15++;
    letters[row.correct_answer] = (letters[row.correct_answer] ?? 0) + 1;
    const st = row.source_metadata?.rw_subtype;
    if (st && bySubtype[st] != null) bySubtype[st]++;
  }
  const n = rows.length || 1;
  return {
    count: rows.length,
    by_subtype: bySubtype,
    pct_correct_longest: Math.round(1000 * longest / n) / 10,
    pct_over_15_spread: Math.round(1000 * over15 / n) / 10,
    letter_distribution: Object.fromEntries(
      ["A", "B", "C", "D"].map((l) => [l, Math.round(1000 * (letters[l] ?? 0) / n) / 10]),
    ),
    letters,
  };
}

function sqlEscape(s) {
  if (s == null) return "NULL";
  return `'${String(s).replace(/'/g, "''")}'`;
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });

  const dbUrl = getDatabaseUrl();
  if (!dbUrl) {
    console.error("No DATABASE_URL — configure Supabase in ~/.cursor/mcp.json");
    process.exit(1);
  }

  const { rows } = await pgQuery(
    `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
            explanation, hint, difficulty, skill_id, source_metadata
     FROM questions
     WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true
       AND ${SQL_FILTER}
     ORDER BY source_metadata->>'rw_subtype', id`,
  );

  console.error(`Fetched ${rows.length} INF rows (expected 975)`);

  const beforeStats = computeBeforeStats(rows);
  const updates = [];
  const failures = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const generated = regenerateInfMasterWithRetry(row, i);
    const v = validateInfMasterRow(generated);
    if (!v.ok) {
      failures.push({
        id: row.id,
        rw_subtype: row.source_metadata?.rw_subtype,
        reasons: v.reasons,
      });
      continue;
    }
    const parity = v.parity ?? generated.parity;
    updates.push({
      id: row.id,
      external_id: row.external_id,
      rw_subtype: generated.rw_subtype ?? generated.source_metadata?.rw_subtype,
      question_text: generated.question_text,
      stimulus_text: generated.stimulus_text,
      options: generated.options,
      correct_answer: generated.correct_answer,
      explanation: generated.explanation,
      source_metadata: generated.source_metadata,
      parity,
      correct_is_longest: parity?.correct_is_longest ?? measureInfSpread(generated.options).correct_is_longest,
      attempts: generated.attempts,
    });
  }

  const letterDist = validateCorrectLetterDistribution(updates.map((u) => u.correct_answer));
  const longestAfter = updates.filter((u) => u.correct_is_longest).length;
  const over15After = updates.filter((u) => !u.parity?.ok && (u.parity?.char_spread_pct > 15)).length;

  const bySubtypeAfter = { general: 0, implication: 0, prediction: 0 };
  for (const u of updates) {
    if (u.rw_subtype && bySubtypeAfter[u.rw_subtype] != null) bySubtypeAfter[u.rw_subtype]++;
  }

  const afterStats = {
    count: updates.length,
    by_subtype: bySubtypeAfter,
    pct_correct_longest: updates.length ? Math.round(1000 * longestAfter / updates.length) / 10 : 0,
    pct_over_15_spread: updates.length ? Math.round(1000 * over15After / updates.length) / 10 : 0,
    letter_distribution: Object.fromEntries(
      ["A", "B", "C", "D"].map((l) => [
        l,
        updates.length
          ? Math.round(1000 * (letterDist.counts[l] ?? 0) / updates.length) / 10
          : 0,
      ]),
    ),
    letters: letterDist.counts,
    letter_distribution_ok: letterDist.ok,
    avg_char_spread:
      updates.length
        ? Math.round(
            10 *
              updates.reduce((s, u) => s + (u.parity?.char_spread_pct ?? 0), 0) /
              updates.length,
          ) / 10
        : 0,
    validation_failures: failures.length,
    avg_attempts:
      updates.length
        ? Math.round(10 * updates.reduce((s, u) => s + (u.attempts ?? 1), 0) / updates.length) / 10
        : 0,
  };

  const report = {
    generated_at: new Date().toISOString(),
    label: "INF Master Manual §7 (general + implication + prediction)",
    sql_filter: `${SQL_FILTER} AND is_platform_question = true`,
    mode: apply ? "apply" : "dry-run",
    master_manual_section: 7,
    before: beforeStats,
    after: afterStats,
    prepared_count: updates.length,
    updated_count: apply ? updates.length : 0,
    failure_count: failures.length,
    sample_ids: updates.slice(0, 5).map((u) => u.id),
    failures: failures.slice(0, 15),
  };

  writeFileSync(resolve(OUT_DIR, "stats.json"), JSON.stringify(report, null, 2));

  if (apply && updates.length) {
    const logPath = resolve(OUT_DIR, "apply-log.txt");
    appendFileSync(logPath, `\n# apply ${new Date().toISOString()} count=${updates.length}\n`);

    const BATCH = 25;
    for (let b = 0; b < updates.length; b += BATCH) {
      const chunk = updates.slice(b, b + BATCH);
      const sql = chunk
        .map((u) => {
          const opts = JSON.stringify(u.options).replace(/'/g, "''");
          const meta = JSON.stringify(u.source_metadata).replace(/'/g, "''");
          return `UPDATE public.questions SET
            question_text = ${sqlEscape(u.question_text)},
            stimulus_text = ${sqlEscape(u.stimulus_text)},
            options = '${opts}'::jsonb,
            correct_answer = ${sqlEscape(u.correct_answer)},
            explanation = ${sqlEscape(u.explanation)},
            source_metadata = '${meta}'::jsonb,
            updated_at = now()
          WHERE id = ${sqlEscape(u.id)};`;
        })
        .join("\n");

      await pgQuery(sql);
      appendFileSync(logPath, `OK batch ${Math.floor(b / BATCH)} (${chunk.length} rows)\n`);
      console.error(`Applied batch ${Math.floor(b / BATCH) + 1}/${Math.ceil(updates.length / BATCH)}`);
    }
    report.applied = true;
    report.applied_at = new Date().toISOString();
    writeFileSync(resolve(OUT_DIR, "stats.json"), JSON.stringify(report, null, 2));
  } else if (!apply) {
    console.error("Dry run — pass --apply to write to prod");
  }

  console.log(JSON.stringify(report, null, 2));

  if (failures.length && failures.length === rows.length) process.exit(1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
