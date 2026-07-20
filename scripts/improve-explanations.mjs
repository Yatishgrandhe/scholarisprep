#!/usr/bin/env node
/**
 * Regenerate high-quality explanations for SAT questions using Gemini.
 *
 * Replaces the generic/templated explanations in the bank with worked solutions
 * that (1) name the correct choice, (2) cite passage/equation evidence, and
 * (3) explain why EACH distractor is wrong (stored per-option so the
 * ExplanationSidePanel can show a choice-by-choice verdict).
 *
 * Provenance: source_metadata.explanation_v2 = true (so re-runs skip upgraded
 * rows), plus explanation_model + explanation_at.
 *
 * Usage:
 *   node scripts/improve-explanations.mjs --limit 5 --dry-run
 *   node scripts/improve-explanations.mjs --section reading_writing --apply
 *   node scripts/improve-explanations.mjs --apply           # all remaining
 *
 * Env (.env.local): NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY,
 *   GOOGLE_GEMINI_API_KEY[_1..5]
 *
 * Flags:
 *   --limit N          Max rows this run (default: all remaining)
 *   --section S        reading_writing | math (default: all)
 *   --concurrency N    Parallel workers (default: number of keys, max 6)
 *   --apply            Write to Supabase (default if no --dry-run)
 *   --dry-run          Print before/after only
 *   --ids a,b,c        Only these question UUIDs
 *   --include-upgraded Re-do rows already marked explanation_v2
 */

import { readFileSync } from "node:fs";
import { resolve } from "node:path";
import { createClient } from "@supabase/supabase-js";
import { GoogleGenAI } from "@google/genai";

const GEMINI_MODEL = "gemma-4-26b-a4b-it";
const EXPLANATION_VERSION = "2.0.0";

function loadEnv() {
  try {
    const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
    const env = {};
    for (const line of raw.split("\n")) {
      const m = line.match(/^([^#=]+)=(.*)$/);
      if (m) env[m[1].trim()] = m[2].trim().replace(/^["']|["']$/g, "");
    }
    return env;
  } catch {
    return {};
  }
}

function parseArgs(argv) {
  const f = {
    limit: Infinity,
    section: null,
    concurrency: null,
    apply: false,
    dryRun: false,
    ids: null,
    skipUpgraded: true,
    delayMs: 400,
  };
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--apply") f.apply = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--include-upgraded") f.skipUpgraded = false;
    else if (a === "--limit") f.limit = Number(argv[++i]);
    else if (a === "--section") f.section = argv[++i];
    else if (a === "--concurrency") f.concurrency = Number(argv[++i]);
    else if (a === "--delay-ms") f.delayMs = Number(argv[++i]);
    else if (a === "--ids") f.ids = (argv[++i] ?? "").split(",").filter(Boolean);
  }
  if (!f.apply) f.dryRun = true;
  return f;
}

function getKeys(env) {
  const names = [
    "GOOGLE_GEMINI_API_KEY",
    "GOOGLE_GEMINI_API_KEY_1",
    "GOOGLE_GEMINI_API_KEY_2",
    "GOOGLE_GEMINI_API_KEY_3",
    "GOOGLE_GEMINI_API_KEY_4",
    "GOOGLE_GEMINI_API_KEY_5",
  ];
  const seen = new Set();
  const keys = [];
  for (const n of names) {
    const v = (env[n] ?? "").trim();
    if (v && !seen.has(v)) {
      seen.add(v);
      keys.push(v);
    }
  }
  return keys;
}

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

function normalizeOptions(raw) {
  if (!Array.isArray(raw)) return [];
  return raw.map((o, i) => ({
    id: String(o.id ?? ["A", "B", "C", "D"][i] ?? "A"),
    text: String(o.text ?? ""),
    is_correct: Boolean(o.is_correct),
    explanation: typeof o.explanation === "string" ? o.explanation : "",
  }));
}

function buildPrompt(q) {
  const opts = normalizeOptions(q.options);
  const correct = opts.find((o) => o.is_correct)?.id ?? q.correct_answer ?? "A";
  const isMath = (q.section ?? "").includes("math");
  const choiceLines = opts
    .map((o) => `${o.id}) ${o.text}${o.is_correct ? "   <-- correct" : ""}`)
    .join("\n");

  return `You are an expert Digital SAT tutor writing the answer explanation a student sees AFTER they answer. Write clear, specific, encouraging explanations — NOT generic filler.

SECTION: ${isMath ? "Math" : "Reading & Writing"}
SKILL: ${q.subtopic ?? q.skill_id ?? ""}
DIFFICULTY: ${q.difficulty ?? "medium"}
${q.stimulus_text ? `PASSAGE/STIMULUS:\n${q.stimulus_text}\n` : ""}
QUESTION: ${q.question_text}
CHOICES:
${choiceLines}
CORRECT CHOICE: ${correct}

Write:
1. "explanation" — a worked solution for choice ${correct}. ${
    isMath
      ? "Show the actual steps/calculation with the real numbers and $...$ LaTeX. State the rule used."
      : "Quote or paraphrase the specific evidence from the passage that makes it correct. Reference the line of reasoning, not vague 'the author uses techniques'."
  } 2-5 sentences (or numbered Step 1/Step 2 for multi-step math). Be concrete and specific to THIS question.
2. For EACH choice A-D, a one-sentence "why": for the correct one, why it works; for each wrong one, the specific misread/error that makes it wrong (never "it contains errors" — say what error).

Return ONLY valid JSON:
{
  "explanation": "string",
  "options": [
    { "id": "A", "why": "string" },
    { "id": "B", "why": "string" },
    { "id": "C", "why": "string" },
    { "id": "D", "why": "string" }
  ]
}`;
}

function validate(q, gen) {
  const errs = [];
  if (!gen || typeof gen !== "object") return ["no json"];
  if (!gen.explanation || String(gen.explanation).trim().length < 60)
    errs.push("explanation too short");
  if (/contains? errors? in punctuation|the other choices contain/i.test(gen.explanation ?? ""))
    errs.push("still generic");
  const whys = Array.isArray(gen.options) ? gen.options : [];
  const opts = normalizeOptions(q.options);
  for (const o of opts) {
    const w = whys.find((x) => String(x.id) === o.id);
    if (!w || String(w.why ?? "").trim().length < 8)
      errs.push(`missing why for ${o.id}`);
  }
  return errs;
}

function mergeOptions(q, gen) {
  const opts = normalizeOptions(q.options);
  const whys = Array.isArray(gen.options) ? gen.options : [];
  return opts.map((o) => {
    const w = whys.find((x) => String(x.id) === o.id);
    return { ...o, explanation: String(w?.why ?? o.explanation ?? "").trim() };
  });
}

async function generate(ai, q) {
  const res = await ai.models.generateContent({
    model: GEMINI_MODEL,
    contents: [{ role: "user", parts: [{ text: buildPrompt(q) }] }],
    config: { maxOutputTokens: 1600, temperature: 0.55 },
  });
  const text = (res.text ?? "").replace(/```json|```/g, "").trim();
  const match = text.match(/\{[\s\S]*\}/);
  return match ? JSON.parse(match[0]) : null;
}

async function fetchRows(supabase, f) {
  let query = supabase
    .from("questions")
    .select(
      "id, question_text, stimulus_text, options, correct_answer, explanation, section, skill_id, subtopic, difficulty, source_metadata",
    )
    .eq("exam_type", "SAT")
    .eq("is_platform_question", true);
  if (f.section === "math") query = query.like("section", "%math%");
  else if (f.section === "reading_writing")
    query = query.eq("section", "reading_writing");
  if (f.ids?.length) query = query.in("id", f.ids);
  if (f.skipUpgraded)
    query = query.not("source_metadata->>explanation_v2", "eq", "true");
  query = query.order("created_at", { ascending: true });
  if (Number.isFinite(f.limit)) query = query.limit(f.limit);
  else query = query.limit(5000);
  const { data, error } = await query;
  if (error) throw new Error(error.message);
  return data ?? [];
}

async function applyRow(supabase, q, gen) {
  const meta = {
    ...(q.source_metadata ?? {}),
    explanation_v2: true,
    explanation_model: GEMINI_MODEL,
    explanation_version: EXPLANATION_VERSION,
    explanation_at: new Date().toISOString(),
  };
  const { error } = await supabase
    .from("questions")
    .update({
      explanation: String(gen.explanation).trim(),
      options: mergeOptions(q, gen),
      source_metadata: meta,
    })
    .eq("id", q.id);
  if (error) throw new Error(error.message);
}

async function main() {
  const f = parseArgs(process.argv);
  const env = { ...process.env, ...loadEnv() };
  const keys = getKeys(env);
  if (keys.length === 0) {
    console.error("No GOOGLE_GEMINI_API_KEY[_1..5] configured.");
    process.exit(1);
  }
  const url = env.NEXT_PUBLIC_SUPABASE_URL;
  const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !serviceKey) {
    console.error("Need NEXT_PUBLIC_SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY.");
    process.exit(1);
  }
  const supabase = createClient(url, serviceKey);
  const clients = keys.map((k) => new GoogleGenAI({ apiKey: k }));
  const concurrency = Math.min(f.concurrency ?? keys.length, keys.length, 6);

  const rows = await fetchRows(supabase, f);
  console.error(
    `[improve-explanations] ${rows.length} row(s) | concurrency=${concurrency} | apply=${f.apply}`,
  );
  if (rows.length === 0) {
    console.log(JSON.stringify({ ok: true, processed: 0, message: "nothing to do" }));
    return;
  }

  let idx = 0;
  let ok = 0;
  let failed = 0;
  const samples = [];

  async function worker(workerId) {
    const ai = clients[workerId % clients.length];
    while (true) {
      const i = idx++;
      if (i >= rows.length) break;
      const q = rows[i];
      try {
        let gen = await generate(ai, q);
        let errs = validate(q, gen);
        if (errs.length) {
          // one retry with a fresh nudge
          gen = await generate(ai, q);
          errs = validate(q, gen);
        }
        if (errs.length) {
          failed++;
          if (samples.length < 40)
            samples.push({ id: q.id, ok: false, errors: errs });
        } else {
          if (f.apply) await applyRow(supabase, q, gen);
          ok++;
          if (samples.length < 6 && f.dryRun)
            samples.push({
              id: q.id,
              section: q.section,
              skill: q.skill_id,
              before: String(q.explanation ?? "").slice(0, 140),
              after_explanation: gen.explanation,
              after_options: gen.options,
            });
        }
      } catch (e) {
        failed++;
        if (samples.length < 40)
          samples.push({ id: q.id, ok: false, error: String(e.message ?? e) });
      }
      if ((ok + failed) % 25 === 0)
        console.error(`  progress ${ok + failed}/${rows.length} (ok=${ok} fail=${failed})`);
      await sleep(f.delayMs);
    }
  }

  await Promise.all(
    Array.from({ length: concurrency }, (_, w) => worker(w)),
  );

  console.log(
    JSON.stringify(
      { ok: failed === 0, processed: ok + failed, succeeded: ok, failed, samples },
      null,
      2,
    ),
  );
  process.exit(0);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
