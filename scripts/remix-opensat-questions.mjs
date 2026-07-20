#!/usr/bin/env node
/**
 * Remix OpenSAT-sourced SAT questions for copyright-safe educational use.
 *
 * Reads platform questions from Supabase, rewrites stem/stimulus/choices/numbers
 * while preserving skill_id, difficulty, domain, and tested concept. Stores
 * provenance in source_metadata (is_remixed, remixed_from, remix_version).
 *
 * Usage:
 *   node scripts/remix-opensat-questions.mjs --limit 15 --dry-run
 *   node scripts/remix-opensat-questions.mjs --limit 20 --apply
 *   node scripts/remix-opensat-questions.mjs --limit 100 --output-sql scripts/data/remix-batch.sql
 *
 * Env (.env.local): NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY,
 *   optional GOOGLE_GEMINI_API_KEY (auto mode prefers Gemini when set).
 *
 * Flags:
 *   --limit N          Max questions (default 15)
 *   --apply            Write updates to Supabase (service role required)
 *   --dry-run          Print before/after JSON only (default if no --apply/--output-sql)
 *   --output-sql PATH  Write UPDATE statements instead of applying
 *   --mode auto|gemini|rules   Remix engine (default auto)
 *   --skip-remixed     Skip rows where source_metadata.is_remixed is true
 *   --section reading_writing|math
 *   --ids id1,id2      Remix specific question UUIDs
 *   --use-mcp            Fetch/apply via Supabase MCP (SUPABASE_ACCESS_TOKEN)
 */

import { createHash } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { createClient } from "@supabase/supabase-js";
import { GoogleGenAI } from "@google/genai";

const __dirname = dirname(fileURLToPath(import.meta.url));
const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const REMIX_VERSION = "1.0.0";
const GEMINI_MODEL = "gemma-4-26b-a4b-it";

const STEM_VARIANTS = [
  [
    "Which choice completes the text so that it conforms to the conventions of Standard English?",
    "Which option makes the sentence grammatically correct according to Standard English conventions?",
    "Select the choice that best completes the sentence following Standard English grammar rules.",
  ],
  [
    "What is the main idea of the passage?",
    "Which statement best captures the central idea of the text?",
    "The passage primarily suggests which of the following?",
  ],
  [
    "What is the main idea of this passage?",
    "Which choice best states the main idea of the text?",
    "The text as a whole mainly serves to",
  ],
  [
    "In this passage, the word \"you\" is used to",
    "The author’s use of \"you\" in the passage primarily serves to",
    "As used in the passage, \"you\" most nearly functions to",
  ],
  [
    "Which choice best describes the author’s purpose in this passage?",
    "The author’s primary purpose in the passage is to",
    "Which option best identifies what the author is trying to accomplish?",
  ],
];

const WORD_SWAPS = [
  ["author", "writer"],
  ["passage", "text"],
  ["reader", "audience"],
  ["important", "significant"],
  ["however", "nevertheless"],
  ["because", "since"],
  ["study", "research"],
  ["scientist", "researcher"],
  ["student", "learner"],
  ["technology", "innovation"],
  ["device", "tool"],
  ["world", "environment"],
  ["little", "small"],
  ["new", "recent"],
  ["work", "effort"],
];

const NAME_POOL = [
  "Jordan",
  "Morgan",
  "Riley",
  "Casey",
  "Avery",
  "Quinn",
  "Taylor",
  "Jamie",
  "Reese",
  "Skyler",
];

function loadEnv() {
  const path = resolve(process.cwd(), ".env.local");
  try {
    const raw = readFileSync(path, "utf8");
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
  const flags = {
    limit: 15,
    apply: false,
    dryRun: false,
    outputSql: null,
    mode: "auto",
    skipRemixed: true,
    section: null,
    ids: null,
    delayMs: 1200,
    useMcp: false,
  };
  for (let i = 2; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--apply") flags.apply = true;
    else if (a === "--dry-run") flags.dryRun = true;
    else if (a === "--use-mcp") flags.useMcp = true;
    else if (a === "--skip-remixed") flags.skipRemixed = true;
    else if (a === "--include-remixed") flags.skipRemixed = false;
    else if (a === "--limit") flags.limit = Number(argv[++i] ?? 15);
    else if (a === "--mode") flags.mode = argv[++i] ?? "auto";
    else if (a === "--section") flags.section = argv[++i] ?? null;
    else if (a === "--ids") flags.ids = (argv[++i] ?? "").split(",").filter(Boolean);
    else if (a === "--output-sql") flags.outputSql = argv[++i] ?? null;
    else if (a === "--delay-ms") flags.delayMs = Number(argv[++i] ?? 1200);
  }
  if (!flags.apply && !flags.outputSql) flags.dryRun = true;
  return flags;
}

function sqlEscape(str) {
  if (str == null) return "NULL";
  return `'${String(str).replace(/'/g, "''")}'`;
}

function hashSeed(input) {
  return createHash("sha256").update(input).digest("hex").slice(0, 8);
}

function pickVariant(text, seed) {
  for (const group of STEM_VARIANTS) {
    if (group.includes(text)) {
      const idx = parseInt(hashSeed(seed + text), 16) % group.length;
      return group[idx];
    }
  }
  return null;
}

function swapWords(text, seed) {
  if (!text) return text;
  let out = text;
  const start = parseInt(hashSeed(seed), 16) % WORD_SWAPS.length;
  for (let i = 0; i < WORD_SWAPS.length; i++) {
    const [from, to] = WORD_SWAPS[(start + i) % WORD_SWAPS.length];
    const re = new RegExp(`\\b${from}\\b`, "gi");
    out = out.replace(re, (m) => (m[0] === m[0].toUpperCase() ? to[0].toUpperCase() + to.slice(1) : to));
  }
  return out;
}

function replaceNames(text, seed) {
  if (!text) return text;
  const names = ["Alex", "Maria", "David", "Sarah", "James", "Emily", "Michael", "Lisa"];
  let out = text;
  for (const name of names) {
    const re = new RegExp(`\\b${name}\\b`, "g");
    if (re.test(out)) {
      const idx = parseInt(hashSeed(seed + name), 16) % NAME_POOL.length;
      out = out.replace(re, NAME_POOL[idx]);
    }
  }
  return out;
}

function tweakNumbers(text, seed) {
  if (!text) return text;
  const factor = (parseInt(hashSeed(seed + "num"), 16) % 3) + 2; // 2, 3, or 4
  return text.replace(/\b(\d{1,4})\b/g, (match, n) => {
    const val = Number(n);
    if (val <= 1 || val > 500) return match;
    const scaled = val * factor;
    if (scaled > 9999) return match;
    return String(scaled);
  });
}

function shuffleOptions(options, seed) {
  const arr = [...options];
  const rot = parseInt(hashSeed(seed + "shuffle"), 16) % 24;
  for (let i = 0; i < rot; i++) arr.push(arr.shift());
  const letters = ["A", "B", "C", "D"];
  return arr.map((opt, i) => ({
    ...opt,
    id: letters[i],
    is_correct: Boolean(opt.is_correct),
  }));
}

function normalizeOptions(raw) {
  if (!Array.isArray(raw)) return [];
  return raw
    .map((o, i) => ({
      id: String(o.id ?? ["A", "B", "C", "D"][i]),
      text: String(o.text ?? ""),
      is_correct: Boolean(o.is_correct),
      explanation: String(o.explanation ?? ""),
    }))
    .filter((o) => o.text.length > 0)
    .slice(0, 4);
}

function validateRemix(original, remixed) {
  const errors = [];
  if (!remixed.question_text?.trim()) errors.push("empty question_text");
  if (normalizeOptions(remixed.options).length !== 4) errors.push("need 4 options");
  const correctCount = remixed.options.filter((o) => o.is_correct).length;
  if (correctCount !== 1) errors.push("need exactly one correct option");
  if (
    remixed.question_text === original.question_text &&
    remixed.stimulus_text === original.stimulus_text
  ) {
    errors.push("remix identical to original stem+stimulus");
  }
  return errors;
}

function remixWithRules(question) {
  const seed = question.id;
  const options = normalizeOptions(question.options);
  const shuffled = shuffleOptions(options, seed);

  let question_text = pickVariant(question.question_text, seed) ?? question.question_text;
  question_text = swapWords(question_text, seed + "q");
  question_text = replaceNames(question_text, seed + "qn");
  question_text = tweakNumbers(question_text, seed + "qt");

  let stimulus_text = question.stimulus_text;
  if (stimulus_text) {
    stimulus_text = swapWords(stimulus_text, seed + "s");
    stimulus_text = replaceNames(stimulus_text, seed + "sn");
    stimulus_text = tweakNumbers(stimulus_text, seed + "st");
  }

  const remixedOptions = shuffled.map((o) => ({
    ...o,
    text: tweakNumbers(replaceNames(swapWords(o.text, seed + o.id), seed + o.id + "n"), seed + o.id + "t"),
  }));

  let explanation = swapWords(question.explanation ?? "", seed + "e");
  explanation = replaceNames(explanation, seed + "en");

  const correct = remixedOptions.find((o) => o.is_correct);

  return {
    question_text,
    stimulus_text,
    options: remixedOptions,
    correct_answer: correct?.id ?? question.correct_answer,
    explanation,
    hint: question.hint,
    remix_method: "rules",
  };
}

function buildGeminiPrompt(question) {
  const options = normalizeOptions(question.options);
  return `You are rewriting a Digital SAT practice item for Scholaris. This is a COPYRIGHT-SAFE REMIX task.

ORIGINAL (do NOT copy verbatim — paraphrase stem, passage, all four choices, and explanation):
Section: ${question.section}
Skill: ${question.skill_id ?? "unknown"}
Difficulty: ${question.difficulty}
Domain: ${question.topic ?? ""}

Stem: ${question.question_text}
${question.stimulus_text ? `Passage/stimulus:\n${question.stimulus_text}\n` : ""}
Choices:
A) ${options.find((o) => o.id === "A")?.text ?? ""}
B) ${options.find((o) => o.id === "B")?.text ?? ""}
C) ${options.find((o) => o.id === "C")?.text ?? ""}
D) ${options.find((o) => o.id === "D")?.text ?? ""}
Correct letter (preserve logic): ${question.correct_answer}
Explanation: ${question.explanation ?? ""}

Requirements:
- Rewrite EVERY field with new wording; change names, settings, and numeric values where applicable while preserving the same skill, difficulty, and correct reasoning.
- For math: use $...$ LaTeX; keep the same mathematical concept but change coefficients/constants.
- For RW grammar: keep the same grammar rule tested; change the sentence context.
- For passages: paraphrase fully; do not reuse distinctive phrases.
- Exactly 4 options A–D with exactly one is_correct true (same letter as original unless shuffling improves distinctness).
- Scholaris is NOT affiliated with College Board; do not claim official status.

Return ONLY valid JSON:
{
  "question_text": "string",
  "stimulus_text": "string or null",
  "options": [
    { "id": "A", "text": "string", "is_correct": false },
    { "id": "B", "text": "string", "is_correct": true },
    { "id": "C", "text": "string", "is_correct": false },
    { "id": "D", "text": "string", "is_correct": false }
  ],
  "explanation": "string",
  "hint": "string"
}`;
}

async function remixWithGemini(ai, question) {
  const response = await ai.models.generateContent({
    model: GEMINI_MODEL,
    contents: [{ role: "user", parts: [{ text: buildGeminiPrompt(question) }] }],
    config: { maxOutputTokens: 4096, temperature: 0.75 },
  });
  const text = (response.text ?? "").replace(/```json|```/g, "").trim();
  const raw = JSON.parse(text);
  const options = normalizeOptions(raw.options);
  const correct = options.find((o) => o.is_correct);
  return {
    question_text: String(raw.question_text ?? "").trim(),
    stimulus_text:
      raw.stimulus_text == null || raw.stimulus_text === "null"
        ? null
        : String(raw.stimulus_text).trim() || null,
    options,
    correct_answer: correct?.id ?? question.correct_answer,
    explanation: String(raw.explanation ?? question.explanation ?? "").trim(),
    hint: String(raw.hint ?? question.hint ?? "").trim(),
    remix_method: "gemini",
  };
}

function sleep(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

function buildUpdateSql(question, remixed) {
  const meta = {
    ...(question.source_metadata ?? {}),
    is_remixed: true,
    remixed_from: question.id,
    remix_version: REMIX_VERSION,
    remix_method: remixed.remix_method,
    remix_at: new Date().toISOString(),
    original_external_id: question.external_id ?? null,
  };
  const optionsJson = JSON.stringify(remixed.options).replace(/'/g, "''");
  const metaJson = JSON.stringify(meta).replace(/'/g, "''");
  return `UPDATE public.questions SET
  question_text = ${sqlEscape(remixed.question_text)},
  stimulus_text = ${sqlEscape(remixed.stimulus_text)},
  options = '${optionsJson}'::jsonb,
  correct_answer = ${sqlEscape(remixed.correct_answer)},
  explanation = ${sqlEscape(remixed.explanation)},
  hint = ${sqlEscape(remixed.hint ?? question.hint)},
  source_metadata = '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = '${question.id}';`;
}

function buildFetchSql(flags) {
  const sectionFilter = flags.section ? `AND section = '${flags.section}'` : "";
  const idFilter =
    flags.ids?.length > 0
      ? `AND id IN (${flags.ids.map((id) => `'${id}'`).join(",")})`
      : "";
  const remixedFilter = flags.skipRemixed
    ? "AND coalesce(source_metadata->>'is_remixed', 'false') <> 'true'"
    : "";
  return `
    SELECT id, external_id, question_text, stimulus_text, options, correct_answer,
           explanation, hint, section, skill_id, difficulty, topic, source_metadata
    FROM public.questions
    WHERE source = 'college_board_opensat'
      AND exam_type = 'SAT'
      AND is_platform_question = true
      ${sectionFilter}
      ${idFilter}
      ${remixedFilter}
    ORDER BY created_at ASC
    LIMIT ${flags.limit};
  `;
}

function getMcpToken(env) {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

function parseMcpRows(result) {
  const text = result?.content?.[0]?.text;
  if (!text) return null;
  const match = text.match(/\[[\s\S]*\]/);
  if (!match) return null;
  return JSON.parse(match[0]);
}

async function mcpQuery(query, env) {
  const token = getMcpToken(env);
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN for --use-mcp");

  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      {
        env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
        stdio: ["pipe", "pipe", "pipe"],
      },
    );

    let msgId = 1;
    let buf = "";
    const pending = new Map();

    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };

    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch {
          /* ignore */
        }
      }
    });

    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-remix", version: "1.0.0" },
    });
    send("notifications/initialized", {});

    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { project_id: PROJECT_ID, query },
        });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function fetchQuestionsMcp(flags, env) {
  const rows = parseMcpRows(await mcpQuery(buildFetchSql(flags), env));
  return rows ?? [];
}

async function applyUpdateMcp(question, remixed, env) {
  const sql = buildUpdateSql(question, remixed);
  await mcpQuery(sql, env);
}
async function fetchQuestionsSupabase(supabase, flags) {
  let query = supabase
    .from("questions")
    .select(
      "id, external_id, question_text, stimulus_text, options, correct_answer, explanation, hint, section, skill_id, difficulty, topic, source_metadata",
    )
    .eq("source", "college_board_opensat")
    .eq("exam_type", "SAT")
    .eq("is_platform_question", true);

  if (flags.section) query = query.eq("section", flags.section);
  if (flags.ids?.length) query = query.in("id", flags.ids);
  if (flags.skipRemixed) {
    query = query.not("source_metadata->>is_remixed", "eq", "true");
  }

  query = query.order("created_at", { ascending: true }).limit(flags.limit);

  const { data, error } = await query;
  if (error) throw new Error(error.message);
  return data ?? [];
}

async function applyUpdate(supabase, question, remixed) {
  const meta = {
    ...(question.source_metadata ?? {}),
    is_remixed: true,
    remixed_from: question.id,
    remix_version: REMIX_VERSION,
    remix_method: remixed.remix_method,
    remix_at: new Date().toISOString(),
    original_external_id: question.external_id ?? null,
  };
  const { error } = await supabase
    .from("questions")
    .update({
      question_text: remixed.question_text,
      stimulus_text: remixed.stimulus_text,
      options: remixed.options,
      correct_answer: remixed.correct_answer,
      explanation: remixed.explanation,
      hint: remixed.hint ?? question.hint,
      source_metadata: meta,
    })
    .eq("id", question.id);
  if (error) throw new Error(error.message);
}

async function main() {
  const flags = parseArgs(process.argv);
  const env = { ...process.env, ...loadEnv() };

  const useGemini =
    flags.mode === "gemini" ||
    (flags.mode === "auto" && Boolean(env.GOOGLE_GEMINI_API_KEY));
  const ai = useGemini ? new GoogleGenAI({ apiKey: env.GOOGLE_GEMINI_API_KEY }) : null;

  if (flags.mode === "gemini" && !ai) {
    console.error("GOOGLE_GEMINI_API_KEY required for --mode gemini");
    process.exit(1);
  }

  let questions;
  let supabase = null;

  if (flags.useMcp) {
    questions = await fetchQuestionsMcp(flags, env);
  } else {
    const url = env.NEXT_PUBLIC_SUPABASE_URL;
    const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY;
    if (!url || !serviceKey) {
      console.error(
        "Need NEXT_PUBLIC_SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY, or pass --use-mcp",
      );
      process.exit(1);
    }
    supabase = createClient(url, serviceKey);
    questions = await fetchQuestionsSupabase(supabase, flags);
  }

  if (questions.length === 0) {
    console.log(JSON.stringify({ ok: true, message: "No questions matched filters.", count: 0 }, null, 2));
    return;
  }

  console.error(
    `Remixing ${questions.length} question(s) mode=${useGemini ? "gemini" : "rules"} apply=${flags.apply} dryRun=${flags.dryRun}`,
  );

  const results = [];
  const sqlLines = ["BEGIN;"];

  for (const q of questions) {
    let remixed;
    try {
      if (useGemini && ai) {
        remixed = await remixWithGemini(ai, q);
        await sleep(flags.delayMs);
      } else {
        remixed = remixWithRules(q);
      }
    } catch (err) {
      results.push({ id: q.id, ok: false, error: String(err.message ?? err) });
      continue;
    }

    const errors = validateRemix(q, remixed);
    if (errors.length) {
      remixed = remixWithRules(q);
      remixed.remix_method = useGemini ? "gemini+fallback_rules" : "rules";
      const fallbackErrors = validateRemix(q, remixed);
      if (fallbackErrors.length) {
        results.push({ id: q.id, ok: false, error: fallbackErrors.join("; ") });
        continue;
      }
    }

    const entry = {
      id: q.id,
      ok: true,
      remix_method: remixed.remix_method,
      before: {
        question_text: q.question_text,
        stimulus_preview: q.stimulus_text?.slice(0, 120) ?? null,
        correct_answer: q.correct_answer,
      },
      after: {
        question_text: remixed.question_text,
        stimulus_preview: remixed.stimulus_text?.slice(0, 120) ?? null,
        correct_answer: remixed.correct_answer,
      },
    };
    results.push(entry);

    if (flags.outputSql) sqlLines.push(buildUpdateSql(q, remixed));
    if (flags.apply) {
      if (flags.useMcp) await applyUpdateMcp(q, remixed, env);
      else await applyUpdate(supabase, q, remixed);
    }
  }

  sqlLines.push("COMMIT;");

  if (flags.outputSql) {
    mkdirSync(dirname(resolve(flags.outputSql)), { recursive: true });
    writeFileSync(flags.outputSql, sqlLines.join("\n\n") + "\n");
    console.error(`Wrote SQL: ${flags.outputSql}`);
  }

  const report = {
    ok: results.every((r) => r.ok),
    remix_version: REMIX_VERSION,
    mode: useGemini ? "gemini" : "rules",
    total: results.length,
    succeeded: results.filter((r) => r.ok).length,
    failed: results.filter((r) => !r.ok).length,
    applied: flags.apply,
    results,
  };

  console.log(JSON.stringify(report, null, 2));
  process.exit(report.ok ? 0 : 1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
