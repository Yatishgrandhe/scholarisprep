#!/usr/bin/env node
/**
 * Regenerate the entire Digital SAT Math bank IN PLACE (preserving every row's
 * UUID) using the verified generator in lib/dsat-math-rebuild.mjs.
 *
 *  - Each row keeps its id, section, difficulty, challenge_only, and skill.
 *  - Content columns (question/stimulus/options/answer/explanation/figure) are
 *    rewritten from a freshly generated, self-verified item.
 *  - The challenge bank (challenge_only = true) is regenerated from the SAME
 *    templates at the "challenged" tier, so it shares question context/format
 *    with the regular bank.
 *  - Grid-in rows whose skill has no clean single-number answer (EQS/RIG/CIR)
 *    are converted to multiple_choice.
 *
 * Connection comes from ~/.cursor/mcp.json (project aioyzumxxsepbnfivvdd), the
 * same source apply-pg.mjs uses.
 *
 * Usage:
 *   node scripts/regenerate-math-bank.mjs            # dry run: generate+verify, no DB writes
 *   node scripts/regenerate-math-bank.mjs --apply    # write updates in one transaction
 */
import { readFileSync, existsSync, writeFileSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";
import pg from "pg";
import {
  MATH_SKILLS,
  SPR_ELIGIBLE,
  generateValidItem,
  validateItem,
} from "./lib/dsat-math-rebuild.mjs";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const APPLY = process.argv.includes("--apply");
const SKILL_SET = new Set(MATH_SKILLS);
// Optional: regenerate only one skill, e.g. `--skill LIN` or `--skill=LIN`.
const skillArg = process.argv.find((a) => a === "--skill" || a.startsWith("--skill="));
const ONLY_SKILL = skillArg
  ? (skillArg.includes("=") ? skillArg.split("=")[1] : process.argv[process.argv.indexOf(skillArg) + 1])
  : null;

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
  const skill = row.math_skill_code;
  const tier = row.challenge_only ? "challenged" : row.difficulty;
  const wantSpr = row.question_type === "grid_in" && SPR_ELIGIBLE.has(skill);
  const format = wantSpr ? "spr" : "mcq";
  const { item } = generateValidItem({ skill, tier, seed: index, format });

  const meta = {
    original: true,
    generator: "dsat-math-rebuild.mjs",
    rebuild_version: "dsat_math_rebuild_v2",
    math_format: item.math_format,
    math_skill: skill,
    tier,
    question_variant: item.questionVariant ?? "direct",
    regenerated_on: "2026-06-14",
  };
  if (row.challenge_only) {
    meta.challenged_problem = true;
    meta.difficulty_tier = "challenged";
  }
  const desmos = ["NRM", "NRE", "LEQ", "LIF", "TVA", "EQS"].includes(skill) || item.has_figure;

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
    desmos_recommended: desmos,
    source_metadata: JSON.stringify(meta),
    converted: row.question_type === "grid_in" && item.question_type !== "grid_in",
  };
}

async function main() {
  const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    const { rows } = await client.query(
      `SELECT id, math_skill_code, difficulty, question_type, challenge_only
         FROM questions
        WHERE section = 'math'
        ORDER BY challenge_only, math_skill_code, difficulty, question_type, id`
    );
    console.log(`Loaded ${rows.length} math rows.`);

    // assign a per-group index for deterministic, varied seeds
    const counters = new Map();
    const updates = [];
    let skipped = 0, converted = 0;
    const perSkill = {};

    for (const row of rows) {
      const skill = row.math_skill_code;
      if (!SKILL_SET.has(skill)) { skipped++; continue; }
      if (ONLY_SKILL && skill !== ONLY_SKILL) { skipped++; continue; }
      const tier = row.challenge_only ? "challenged" : row.difficulty;
      const fmt = row.question_type === "grid_in" && SPR_ELIGIBLE.has(skill) ? "spr" : "mcq";
      const key = `${row.challenge_only}|${skill}|${tier}|${fmt}`;
      const idx = counters.get(key) ?? 0;
      counters.set(key, idx + 1);

      const u = buildContent(row, idx);
      // belt-and-suspenders: re-validate the assembled item shape
      const check = validateItem({
        question_text: u.question_text, stimulus_text: u.stimulus_text, explanation: u.explanation,
        options: JSON.parse(u.options), question_type: u.question_type, correct_answer: u.correct_answer,
        skill_id: skill,
      });
      if (!check.ok) throw new Error(`row ${row.id} (${skill}/${tier}) invalid: ${check.reasons.join(",")}`);
      if (u.converted) converted++;
      perSkill[skill] = (perSkill[skill] || 0) + 1;
      updates.push(u);
    }

    console.log(`Generated ${updates.length} items, skipped ${skipped} (unknown skill), grid_in->mcq conversions: ${converted}.`);
    // sample dump for review
    writeFileSync(
      join(process.cwd(), "scripts/data/.math-rebuild-sample.json"),
      JSON.stringify(updates.slice(0, 6).map((u) => ({ ...u, options: JSON.parse(u.options) })), null, 2)
    );

    if (!APPLY) {
      console.log("DRY RUN — no DB writes. Re-run with --apply to commit.");
      return;
    }

    const sql = `UPDATE questions SET
        question_text = $2, stimulus_text = $3, stimulus_type = $4, question_type = $5,
        options = $6::jsonb, correct_answer = $7, explanation = $8, has_figure = $9,
        calculator_allowed = $10, desmos_recommended = $11,
        source_metadata = $12::jsonb, ai_generated = true, source = 'scholaris_ai',
        updated_at = now()
      WHERE id = $1`;

    await client.query("BEGIN");
    let n = 0;
    for (const u of updates) {
      await client.query(sql, [
        u.id, u.question_text, u.stimulus_text, u.stimulus_type, u.question_type,
        u.options, u.correct_answer, u.explanation, u.has_figure,
        u.calculator_allowed, u.desmos_recommended, u.source_metadata,
      ]);
      if (++n % 1000 === 0) process.stdout.write(`  updated ${n}/${updates.length}\n`);
    }
    await client.query("COMMIT");
    console.log(`COMMITTED ${n} updates. Per-skill:`, perSkill);
  } catch (e) {
    try { await client.query("ROLLBACK"); } catch {}
    throw e;
  } finally {
    await client.end();
  }
}
main().catch((e) => { console.error(String(e.stack ?? e)); process.exit(1); });
