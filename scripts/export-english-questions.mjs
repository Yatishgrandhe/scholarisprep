#!/usr/bin/env node
/**
 * Export every English (reading_writing) SAT platform question — with all
 * options and explanations — to a single JSON file.
 *
 *   NODE_TLS_REJECT_UNAUTHORIZED=0 node scripts/export-english-questions.mjs
 *
 * Output: english-questions.json at the repo root (well under 20 MB).
 */
import { readFileSync, existsSync, writeFileSync, statSync } from "node:fs";
import { homedir } from "node:os";
import { join, resolve } from "node:path";
import pg from "pg";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT = resolve("english-questions.json");

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

const QUERY = `
  SELECT
    id, external_id, exam_type, section, topic, subtopic, domain_id, skill_id,
    difficulty, challenge_only, question_type, stimulus_type,
    question_text, stimulus_text, options, correct_answer, explanation,
    has_figure, figure_description, source, source_metadata, created_at
  FROM public.questions
  WHERE exam_type = 'SAT'
    AND section = 'reading_writing'
    AND is_platform_question = true
  ORDER BY skill_id, difficulty, challenge_only, id
`;

async function main() {
  const client = new pg.Client({
    connectionString: getConnString(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    const { rows } = await client.query(QUERY);
    const byTier = {};
    for (const r of rows) {
      const k = `${r.skill_id}/${r.difficulty}${r.challenge_only ? "+challenge" : ""}`;
      byTier[k] = (byTier[k] ?? 0) + 1;
    }
    const payload = {
      meta: {
        exam_type: "SAT",
        section: "reading_writing",
        exported_at: new Date().toISOString(),
        count: rows.length,
        counts_by_skill_difficulty: byTier,
      },
      questions: rows,
    };
    // Compact (no indentation) to stay comfortably under the 20 MB cap —
    // pretty-printing pushes this dataset to ~19.5 MB.
    writeFileSync(OUT, JSON.stringify(payload));
    const mb = statSync(OUT).size / (1024 * 1024);
    console.log(`Wrote ${rows.length} questions → ${OUT} (${mb.toFixed(2)} MB)`);
    if (mb > 20) console.warn("WARNING: file exceeds 20 MB");
  } finally {
    await client.end();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
