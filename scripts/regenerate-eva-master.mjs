#!/usr/bin/env node
/**
 * Regenerate all EVA (Evaluating statistical claims) platform questions in place.
 * Uses OnePrep-style templates from lib/dsat-math-rebuild.mjs (~30% dot-plot figures).
 *
 *   node scripts/regenerate-eva-master.mjs            # dry run
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/regenerate-eva-master.mjs --apply
 */
import { readFileSync, existsSync, writeFileSync, mkdirSync } from "node:fs";
import { homedir } from "node:os";
import { join, resolve } from "node:path";
import pg from "pg";
import { generateValidItem, validateItem } from "./lib/dsat-math-rebuild.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.eva-regen");
const APPLY = process.argv.includes("--apply");
const FIGURES_ONLY = process.argv.includes("--figures-only");

function getConnString() {
  if (process.env.DATABASE_URL) return process.env.DATABASE_URL.trim();
  const p = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(p)) throw new Error("no ~/.cursor/mcp.json");
  const mcp = JSON.parse(readFileSync(p, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const env = cfg?.env ?? {};
    if (!JSON.stringify(env).includes(PROJECT_ID)) continue;
    const url = env.POSTGRES_URL_NON_POOLING || env.POSTGRES_URL || env.DATABASE_URL;
    if (url) return url.trim();
  }
  throw new Error(`no Postgres URL for ${PROJECT_ID}`);
}

function buildContent(row, index) {
  const tier = row.challenge_only ? "challenged" : row.difficulty;
  const fmt = row.question_type === "grid_in" ? "spr" : "mcq";
  let item;
  for (let t = 0; t < 80; t++) {
    ({ item } = generateValidItem({ skill: "EVA", tier, seed: index + t * 1009, format: fmt }));
    if (!FIGURES_ONLY || item.has_figure) break;
  }
  if (FIGURES_ONLY && !item.has_figure) throw new Error(`Could not generate figure item for row ${row.id}`);

  const meta = {
    original: true,
    generator: "regenerate-eva-master.mjs",
    rebuild_version: "eva_master_v1",
    math_format: item.math_format,
    math_skill: "EVA",
    tier,
    question_variant: item.questionVariant ?? "direct",
    regenerated_on: "2026-06-14",
    regen_eva_master: true,
  };
  if (row.challenge_only) {
    meta.challenged_problem = true;
    meta.difficulty_tier = "challenged";
  }

  return {
    id: row.id,
    question_text: item.question_text,
    stimulus_text: item.stimulus_text,
    stimulus_type: item.stimulus_type,
    question_type: item.question_type,
    options: JSON.stringify(item.options),
    correct_answer: String(item.correct_answer),
    explanation: item.explanation,
    has_figure: item.has_figure,
    calculator_allowed: true,
    desmos_recommended: item.has_figure,
    source_metadata: JSON.stringify(meta),
    converted: row.question_type === "grid_in" && item.question_type !== "grid_in",
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    const { rows } = await client.query(
      `SELECT id, difficulty, question_type, challenge_only
         FROM questions
        WHERE section = 'math' AND skill_id = 'EVA' AND is_platform_question = true
        ${FIGURES_ONLY ? "AND has_figure = true" : ""}
        ORDER BY challenge_only, difficulty, question_type, id`,
    );
    console.log(`Loaded ${rows.length} EVA rows.`);

    const counters = new Map();
    const updates = [];
    let figures = 0;
    const letters = { A: 0, B: 0, C: 0, D: 0 };

    for (const row of rows) {
      const tier = row.challenge_only ? "challenged" : row.difficulty;
      const key = `${row.challenge_only}|${tier}|${row.question_type}`;
      const idx = counters.get(key) ?? 0;
      counters.set(key, idx + 1);

      const u = buildContent(row, idx);
      const check = validateItem({
        question_text: u.question_text,
        stimulus_text: u.stimulus_text,
        explanation: u.explanation,
        options: JSON.parse(u.options),
        question_type: u.question_type,
        correct_answer: u.correct_answer,
        skill_id: "EVA",
      });
      if (!check.ok) throw new Error(`row ${row.id} invalid: ${check.reasons.join(",")}`);
      if (u.has_figure) figures++;
      letters[u.correct_answer] = (letters[u.correct_answer] ?? 0) + 1;
      updates.push(u);
    }

    const stats = {
      generated_at: new Date().toISOString(),
      label: "EVA Evaluating statistical claims — OnePrep-style regen",
      mode: APPLY ? "apply" : "dry-run",
      total: updates.length,
      with_figures: figures,
      pct_with_figures: updates.length ? Math.round(1000 * figures / updates.length) / 10 : 0,
      letter_distribution: letters,
      sample: updates.slice(0, 3).map((u) => ({
        id: u.id,
        has_figure: u.has_figure,
        question_text: u.question_text.slice(0, 100),
      })),
    };
    writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(stats, null, 2));
    writeFileSync(
      join(OUT_DIR, "sample.json"),
      JSON.stringify(updates.slice(0, 5).map((u) => ({ ...u, options: JSON.parse(u.options) })), null, 2),
    );

    console.log(`Generated ${updates.length} items; ${figures} with figures (${stats.pct_with_figures}%).`);
    console.log("Letter distribution:", letters);

    if (!APPLY) {
      console.log("DRY RUN — no DB writes. Re-run with --apply to commit.");
      return;
    }

    const sql = FIGURES_ONLY
      ? `UPDATE questions SET
        stimulus_text = $2, stimulus_type = $3, has_figure = $4,
        desmos_recommended = $5, source_metadata = $6::jsonb, updated_at = now()
      WHERE id = $1`
      : `UPDATE questions SET
        question_text = $2, stimulus_text = $3, stimulus_type = $4, question_type = $5,
        options = $6::jsonb, correct_answer = $7, explanation = $8, has_figure = $9,
        calculator_allowed = $10, desmos_recommended = $11,
        source_metadata = $12::jsonb, ai_generated = true, source = 'scholaris_ai',
        subtopic = 'Evaluating statistical claims', updated_at = now()
      WHERE id = $1`;

    await client.query("BEGIN");
    let n = 0;
    for (const u of updates) {
      if (FIGURES_ONLY) {
        await client.query(sql, [
          u.id, u.stimulus_text, u.stimulus_type, u.has_figure,
          u.desmos_recommended, u.source_metadata,
        ]);
      } else {
        await client.query(sql, [
          u.id, u.question_text, u.stimulus_text, u.stimulus_type, u.question_type,
          u.options, u.correct_answer, u.explanation, u.has_figure,
          u.calculator_allowed, u.desmos_recommended, u.source_metadata,
        ]);
      }
      if (++n % 50 === 0) process.stdout.write(`  updated ${n}/${updates.length}\n`);
    }
    await client.query("COMMIT");
    writeFileSync(join(OUT_DIR, "apply-log.txt"), `Applied ${n} EVA updates at ${new Date().toISOString()}\n`);
    console.log(`COMMITTED ${n} EVA updates.`);
  } catch (e) {
    try { await client.query("ROLLBACK"); } catch {}
    throw e;
  } finally {
    await client.end();
  }
}

main().catch((e) => { console.error(String(e.stack ?? e)); process.exit(1); });
