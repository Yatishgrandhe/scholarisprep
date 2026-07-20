#!/usr/bin/env node
/**
 * Spellcheck entire English RW bank (~4225 questions).
 *
 *   node scripts/spellcheck-english-rw.mjs --dry-run
 *   node scripts/spellcheck-english-rw.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync, appendFileSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const OUT_DIR = resolve("scripts/data/.spellcheck-rw");
const STATS_PATH = join(OUT_DIR, "stats.json");
const FIXES_PATH = join(OUT_DIR, "fixes.json");
const LOG_PATH = join(OUT_DIR, "apply-log.txt");

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply || argv.includes("--dry-run");

/** Common misspellings → corrections (word-boundary safe). */
const TYPO_MAP = {
  teh: "the",
  recieve: "receive",
  occured: "occurred",
  seperate: "separate",
  definately: "definitely",
  accomodate: "accommodate",
  occurence: "occurrence",
  arguement: "argument",
  goverment: "government",
  environement: "environment",
  thier: "their",
  wich: "which",
  untill: "until",
  neccessary: "necessary",
  existance: "existence",
  phenomenom: "phenomenon",
  comparision: "comparison",
  consistant: "consistent",
  dependant: "dependent",
  immediatly: "immediately",
  publically: "publicly",
  priviledge: "privilege",
  acheive: "achieve",
  beleive: "believe",
  relevent: "relevant",
  independant: "independent",
  independance: "independence",
  occuring: "occurring",
  succesful: "successful",
  sucessful: "successful",
  begining: "beginning",
  commited: "committed",
  committment: "commitment",
  embarass: "embarrass",
  maintainance: "maintenance",
  percieve: "perceive",
  persue: "pursue",
  refered: "referred",
  refering: "referring",
  similiar: "similar",
  writting: "writing",
  analysys: "analysis",
  anaylsis: "analysis",
  reseach: "research",
  reserach: "research",
  scientifc: "scientific",
  significent: "significant",
  signifcant: "significant",
  developement: "development",
  enviroment: "environment",
  govermental: "governmental",
  intial: "initial",
  initally: "initially",
  occassion: "occasion",
  recomend: "recommend",
  recomended: "recommended",
  temperture: "temperature",
  temprature: "temperature",
};

const DOUBLED_WORDS = /\b(the|and|of|to|in|a|an|is|was|that|this|with|for|as|it|by)\s+\1\b/gi;

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const blob = JSON.stringify(cfg?.env ?? {});
    if (blob.includes(PROJECT_ID)) {
      return cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() || cfg?.env?.POSTGRES_URL?.trim() || null;
    }
  }
  return null;
}

function fixText(text, fixes, ctx) {
  if (!text || typeof text !== "string") return text;
  let out = text;
  for (const [bad, good] of Object.entries(TYPO_MAP)) {
    const re = new RegExp(`\\b${bad}\\b`, "gi");
    if (re.test(out)) {
      const before = out;
      out = out.replace(re, (m) => (m[0] === m[0].toUpperCase() ? good[0].toUpperCase() + good.slice(1) : good));
      fixes.push({ ...ctx, field: ctx.field, bad, good, snippet: before.match(re)?.[0] });
    }
  }
  if (DOUBLED_WORDS.test(out)) {
    const before = out;
    out = out.replace(DOUBLED_WORDS, (_, w) => w);
    fixes.push({ ...ctx, field: ctx.field, bad: "doubled word", good: "single", snippet: before.match(DOUBLED_WORDS)?.[0] });
  }
  return out;
}

function fixRow(row) {
  const fixes = [];
  const ctx = { id: row.id, skill_id: row.skill_id };

  const question_text = fixText(row.question_text, fixes, { ...ctx, field: "question_text" });
  const stimulus_text = fixText(row.stimulus_text, fixes, { ...ctx, field: "stimulus_text" });
  const explanation = fixText(row.explanation, fixes, { ...ctx, field: "explanation" });

  let options = row.options;
  if (Array.isArray(row.options)) {
    options = row.options.map((o) => ({
      ...o,
      text: fixText(o.text, fixes, { ...ctx, field: `option:${o.id}` }),
      explanation: fixText(o.explanation, fixes, { ...ctx, field: `opt_expl:${o.id}` }),
    }));
  }

  const changed =
    question_text !== row.question_text ||
    stimulus_text !== row.stimulus_text ||
    explanation !== row.explanation ||
    JSON.stringify(options) !== JSON.stringify(row.options);

  return {
    changed,
    fixes,
    update: changed
      ? { id: row.id, question_text, stimulus_text, explanation, options }
      : null,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  const url = getDatabaseUrl();
  if (!url) {
    console.error("No DATABASE_URL");
    process.exit(1);
  }

  const { default: pg } = await import("pg");
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";
  const client = new pg.Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
  await client.connect();

  const { rows } = await client.query(
    `SELECT id, skill_id, question_text, stimulus_text, explanation, options
     FROM questions
     WHERE exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true
     ORDER BY id`,
  );
  console.error(`Scanned ${rows.length} English RW questions`);

  const allFixes = [];
  const updates = [];

  for (const row of rows) {
    const { changed, fixes, update } = fixRow(row);
    if (changed) {
      allFixes.push(...fixes);
      updates.push(update);
    }
  }

  const stats = {
    generated_at: new Date().toISOString(),
    mode: apply && !dryRun ? "apply" : "dry-run",
    scanned: rows.length,
    rows_with_fixes: updates.length,
    total_fix_instances: allFixes.length,
    by_skill: Object.fromEntries(
      [...new Set(allFixes.map((f) => f.skill_id))].map((s) => [
        s,
        allFixes.filter((f) => f.skill_id === s).length,
      ]),
    ),
    sample_fixes: allFixes.slice(0, 20),
  };

  writeFileSync(FIXES_PATH, JSON.stringify(allFixes, null, 2));
  writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
  console.log(JSON.stringify(stats, null, 2));

  if (apply && !dryRun && updates.length) {
    appendFileSync(LOG_PATH, `\n# ${new Date().toISOString()} applying ${updates.length} spelling fixes\n`);
    await client.query("BEGIN");
    try {
      let applied = 0;
      for (const u of updates) {
        await client.query(
          `UPDATE public.questions SET
            question_text = $1,
            stimulus_text = $2,
            explanation = $3,
            options = $4::jsonb,
            updated_at = now()
          WHERE id = $5`,
          [u.question_text, u.stimulus_text, u.explanation, JSON.stringify(u.options), u.id],
        );
        applied++;
        if (applied % 25 === 0) console.error(`Applied ${applied}/${updates.length}`);
      }
      await client.query("COMMIT");
      stats.applied = true;
      stats.applied_count = updates.length;
      writeFileSync(STATS_PATH, JSON.stringify(stats, null, 2));
      appendFileSync(LOG_PATH, `OK ${updates.length} updates\n`);
      console.error(`Done. Applied ${updates.length} spelling fixes.`);
    } catch (e) {
      await client.query("ROLLBACK");
      throw e;
    }
  }

  await client.end();
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
