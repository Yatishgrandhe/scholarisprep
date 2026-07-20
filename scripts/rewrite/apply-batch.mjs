#!/usr/bin/env node
/**
 * Apply an authored rewrite batch to public.questions.
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/rewrite/apply-batch.mjs <batch.json>
 *
 * Batch file shape:
 *   [{ id, question_text, stimulus_text, options:[{id,text,is_correct,explanation}],
 *      correct_answer, explanation }]
 *
 * Only rewrites content fields; never touches skill_id, difficulty, challenge_only,
 * topic, subtopic, etc. Runs in a single transaction and validates each row before
 * committing (4 options, exactly one is_correct, correct_answer matches it).
 */
import { readFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join, resolve } from "node:path";
import pg from "pg";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";

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
  throw new Error(`no Postgres URL for ${PROJECT_ID} in ~/.cursor/mcp.json`);
}

function validate(item, i) {
  const where = `item ${i} (${item.id})`;
  if (!item.id) throw new Error(`${where}: missing id`);
  if (!item.stimulus_text) throw new Error(`${where}: missing stimulus_text`);
  if (!item.question_text) throw new Error(`${where}: missing question_text`);
  if (!Array.isArray(item.options) || item.options.length !== 4)
    throw new Error(`${where}: options must be length 4`);
  const correct = item.options.filter((o) => o.is_correct);
  if (correct.length !== 1) throw new Error(`${where}: exactly one is_correct required`);
  if (correct[0].id !== item.correct_answer)
    throw new Error(`${where}: correct_answer ${item.correct_answer} != is_correct ${correct[0].id}`);
  for (const o of item.options) {
    if (!o.id || o.text === undefined || !o.explanation)
      throw new Error(`${where}: each option needs id, text, explanation`);
    // Truncation guard: reject the exact mid-word artifacts the old generator left
    // behind. Real words (e.g. "terse", "frugal") are valid answers and pass.
    if (/^(skille|wastef|invigorat| subtl|192)$/.test(o.text))
      throw new Error(`${where}: option "${o.text}" looks truncated`);
  }
  if (!item.explanation) throw new Error(`${where}: missing explanation`);
}

async function main() {
  const file = process.argv[2];
  if (!file) throw new Error("usage: apply-batch.mjs <batch.json>");
  const items = JSON.parse(readFileSync(resolve(file), "utf8"));
  items.forEach(validate);

  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    await client.query("BEGIN");
    let n = 0;
    for (const item of items) {
      const res = await client.query(
        `UPDATE public.questions
           SET question_text = $2,
               stimulus_text = $3,
               options       = $4::jsonb,
               correct_answer= $5,
               explanation   = $6,
               has_figure    = false,
               figure_description = NULL,
               source_metadata = COALESCE(source_metadata,'{}'::jsonb) || '{"rewrite":"v2_authored_20260625"}'::jsonb
         WHERE id = $1`,
        [
          item.id,
          item.question_text,
          item.stimulus_text,
          JSON.stringify(item.options),
          item.correct_answer,
          item.explanation,
        ]
      );
      if (res.rowCount !== 1) throw new Error(`id ${item.id}: updated ${res.rowCount} rows`);
      n++;
    }
    await client.query("COMMIT");
    console.log(`Applied ${n} rewrites from ${file}`);
  } catch (e) {
    await client.query("ROLLBACK");
    throw e;
  } finally {
    await client.end();
  }
}

main().catch((e) => {
  console.error("FAILED:", e.message);
  process.exit(1);
});
