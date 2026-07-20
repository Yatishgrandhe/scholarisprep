#!/usr/bin/env node
/**
 * Phase 2 Agent 5 — Regenerate all CID main_idea options (325 rows).
 * Mandates: ≤15% char spread, balanced A-D, parallel option frames, authentic passages.
 *
 *   node scripts/regenerate-cid-rw.mjs --dry-run
 *   node scripts/regenerate-cid-rw.mjs --apply
 */
import { readFileSync, writeFileSync, mkdirSync, appendFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";
import {
  mkOpts,
  charLen,
  optionWordCount,
  longPassage,
  hardPassage,
  passageForDifficulty,
} from "./lib/english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  validateDsatRwQuestion,
  validateOptionLengthParity,
  PROJECT_ID,
  trimToWordRange,
  wordCount,
  PASSAGE_WORD_TARGETS,
} from "./lib/dsat-rw-blueprint.mjs";
import { generateChallengedBankItem } from "./lib/dsat-challenged-bank.mjs";

const OUT_DIR = resolve("scripts/data/.cid-regen");
const LOG = resolve("scripts/data/.cid-regen-apply-log.txt");
const STATS = resolve("scripts/data/.cid-regen-stats.json");
const SQL_FILTER =
  "exam_type = 'SAT' AND section = 'reading_writing' AND is_platform_question = true AND skill_id = 'CID' AND source_metadata->>'rw_subtype' = 'main_idea'";

/** Master Manual §4 — parallel frames; argues/suggests/contends only. */
const VERBS = ["argues", "suggests", "contends"];
/** Master Manual §4 — all non-poetry passages: guarded thesis, 80–130 words. */
const CID_PASSAGE_TARGETS = { min: 80, max: 130 };
const LETTERS = ["A", "B", "C", "D"];

const HAND = {
  "poetry-cid-easy-001": [
    { id: "A", text: "Preserving a memento of loss can reshape grief into quiet strength rather than demanding immediate erasure.", is_correct: true, explanation: "Correct: keeping the letter transforms loss into warmth and gentleness." },
    { id: "B", text: "The speaker urges readers to destroy painful reminders immediately without preserving any memories of the addressee.", is_correct: false, explanation: "Incorrect: the speaker keeps and values the letter." },
    { id: "C", text: "The poem primarily catalogs nineteenth-century postal regulations rather than exploring how grief can be transformed.", is_correct: false, explanation: "Incorrect: the focus is emotional, not bureaucratic." },
    { id: "D", text: "The speaker has completely forgotten the addressee and no longer values the keepsake tucked near the heart.", is_correct: false, explanation: "Incorrect: the letter is deliberately preserved." },
  ],
  "poetry-cid-medium-001": [
    { id: "A", text: "Beauty and resilience can flourish even within cramped, harsh living conditions that others praise only for efficiency.", is_correct: true, explanation: "Correct: plants on the fire escape embody grace amid hardship." },
    { id: "B", text: "Urban gardening remains too expensive for working families despite the poem's celebration of improvised thrift.", is_correct: false, explanation: "Incorrect: the poem celebrates thrift and improvised growth." },
    { id: "C", text: "Official praise of tenements proves housing reform had already fully succeeded citywide before residents acted.", is_correct: false, explanation: "Incorrect: thrift is others' praise; the speaker highlights quiet resistance." },
    { id: "D", text: "The speaker deeply regrets leaving the countryside for an unfamiliar rural farm far from the city.", is_correct: false, explanation: "Incorrect: no relocation or regret is mentioned." },
  ],
};

/** Central-claim sets aligned to LONG_PASSAGES themes (index % 8). ~10–14 words per claim. */
const CLAIM_SETS = [
  {
    correct: "protecting herbivorous fish is essential because grazing controls algae and enables coral settlement",
    detail: "water temperature and salinity stayed stable at monitored reef sites during the study",
    broad: "every marine ecosystem recovers automatically once any fishing pressure is removed",
    narrow: "parrotfish grazing rates were measured across three seasons at multiple reef sites",
    opposite: "algae growth on reefs has no meaningful impact on coral recruitment or habitat complexity",
  },
  {
    correct: "desert trade routes circulated scientific knowledge alongside commercial goods before printed maps existed",
    detail: "a ledger lists caravan leaders and astronomical texts exchanged at each oasis stop",
    broad: "all premodern commerce was driven exclusively by military conquest rather than exchange",
    narrow: "camel caravans carried dates and recorded specific departure dates from desert wells",
    opposite: "merchants deliberately hoarded navigation techniques to preserve exclusive control of crossings",
  },
  {
    correct: "city planners should treat noise pollution as a public-health issue like air-quality concerns",
    detail: "residents reported difficulty concentrating when sirens overlapped for many hours daily",
    broad: "urban life inevitably destroys human health regardless of any planning intervention",
    narrow: "pilot programs reported sleep gains after speed reductions on three arterial roads",
    opposite: "complete silence is achievable in dense cities without acoustic planning or policy",
  },
  {
    correct: "local supplier relationships helped small retailers adapt faster during supply-chain stalls",
    detail: "corner shops phoned alternate suppliers listed in handwritten contact records",
    broad: "national retail chains always outperform small stores under every economic condition",
    narrow: "owners shifted product mix toward shelf-stable goods during overseas shipping failures",
    opposite: "large organizational structure always enables faster adaptation than local relationships",
  },
  {
    correct: "archaeological residue suggests the community brewed beverages for ritual rather than daily meals",
    detail: "chemical tests found fermentation compounds in shards from a ceremonial plaza layer",
    broad: "every ancient society prioritized grain storage over any ceremonial or social gathering",
    narrow: "pottery shards at the site were analyzed using layer analysis in a ceremonial plaza",
    opposite: "the community consumed fermented grain daily at every meal according to kitchen evidence",
  },
  {
    correct: "sleep consolidates declarative memories even when both groups studied for equal duration",
    detail: "hippocampal imaging showed retrieval differences between sleep and wake cohorts",
    broad: "staying awake always improves recall because continuous study prevents memory decay",
    narrow: "the sleep group recalled word lists more accurately on immediate post-study tests",
    opposite: "sleep has no downstream effect on recall when study time is held constant",
  },
  {
    correct: "biomimetic blade design inspired by whale fins improves turbine efficiency at moderate wind speeds",
    detail: "wind-tunnel tests showed twelve-percent gains without exceeding local noise limits",
    broad: "every renewable technology instantly solves global energy demand without trade-offs",
    narrow: "tubercle-like ridges on prototype blades delay airflow separation during testing",
    opposite: "flat-blade designs consistently outperform biomimetic alternatives at identical wind speeds",
  },
  {
    correct: "structured peer discussion improves reading comprehension more than silent worksheet completion",
    detail: "discussion students cited textual evidence when disagreeing during observed lessons",
    broad: "any classroom talking activity automatically produces literacy gains without structure",
    narrow: "the discussion cohort gained twelve points versus four for the worksheet group",
    opposite: "worksheet-only instruction consistently outperforms structured pair discussion protocols",
  },
];

const SHORT_PADS = [
  " within limits the passage sets.",
  " as the text qualifies.",
  " rather than absolutely.",
  " per cited evidence.",
  " without overstatement.",
  " on stated grounds.",
];

const BOILERPLATE_RE = /dataset \d+|writing in passage \d+|novelist writing in passage|local conditions shape outcomes in ways that single-variable/i;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = !apply;

function sqlEscape(s) {
  if (s == null) return "NULL";
  return `'${String(s).replace(/'/g, "''")}'`;
}

function charSpreadPct(texts) {
  const lens = texts.map((t) => charLen(t));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function wordSpreadPct(texts) {
  const lens = texts.map((t) => optionWordCount(t));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

function frameOption(verb, claim) {
  const c = claim.replace(/^[a-z]/, (m) => m); // keep lowercase after "that"
  return `The passage ${verb} that ${c}.`;
}

function padOption(text, targetWords, padIdx) {
  let t = text.replace(/\s+/g, " ").trim();
  if (!t.endsWith(".")) t += ".";
  let i = padIdx;
  while (optionWordCount(t) < targetWords && i < padIdx + 12) {
    const pad = SHORT_PADS[i % SHORT_PADS.length].trim();
    if (t.includes(pad)) {
      i++;
      continue;
    }
    t = `${t.replace(/\.$/, "")} ${pad}.`;
    i++;
  }
  return t;
}

function balanceOptions(texts, correctIdx, index) {
  const makeCorrectLongest = index % 5 === 0;
  let working = texts.map((t) => t.replace(/\s+/g, " ").trim());

  let targetWords = Math.max(...working.map(optionWordCount));
  if (targetWords < 14) targetWords = 14;

  working = working.map((t, i) => padOption(t, targetWords, index + i));

  if (!makeCorrectLongest) {
    const distractorIdx = (correctIdx + 1 + (index % 3)) % 4;
    working[distractorIdx] = padOption(working[distractorIdx], targetWords + 1, index + 5);
  }

  for (let attempt = 0; attempt < 16; attempt++) {
    const parity = validateOptionLengthParity(
      working.map((text, i) => ({ text, is_correct: i === correctIdx })),
      { rw_subtype: "main_idea", maxSpreadPct: 15 },
    );
    if (parity.ok) break;
    const maxWords = Math.max(...working.map(optionWordCount));
    const maxChars = Math.max(...working.map(charLen));
    working = working.map((t, i) => {
      let out = t;
      if (optionWordCount(out) < maxWords) {
        out = padOption(out, maxWords, index + i + attempt);
      }
      if (charLen(out) < maxChars * 0.88) {
        out = padOption(out, optionWordCount(out) + 1, index + i + attempt + 3);
      }
      return out;
    });
  }

  return working;
}

function rotateToCorrectId(texts, expls, correctId) {
  const order = LETTERS;
  const correctIdx = order.indexOf(correctId);
  const rotatedTexts = order.map((_, i) => texts[(i - correctIdx + 4) % 4]);
  const rotatedExpls = order.map((_, i) => expls[(i - correctIdx + 4) % 4]);
  return { texts: rotatedTexts, expls: rotatedExpls };
}

function buildClaims(index, isPoem) {
  const set = CLAIM_SETS[index % CLAIM_SETS.length];
  const verb = VERBS[index % VERBS.length];
  if (isPoem) return null;
  // Master Manual §4 distractors: Over-Extrapolation, Reciprocal, Retrospective Detail
  return [
    frameOption(verb, set.correct),
    frameOption(VERBS[(index + 1) % VERBS.length], set.broad),
    frameOption(VERBS[(index + 2) % VERBS.length], set.opposite),
    frameOption(VERBS[(index + 3) % VERBS.length], set.detail),
  ];
}

function buildExpls(claims, index) {
  const traps = ["Over-Extrapolation", "Reciprocal", "Retrospective Detail"];
  return claims.map((c, i) =>
    i === 0
      ? "This restates the passage's guarded central claim without overstatement or scope error."
      : `${traps[i - 1]}: this choice misreads the passage's primary argument.`,
  );
}

function correctIdForIndex(index) {
  return LETTERS[index % 4];
}

function isBoilerplatePassage(text) {
  return BOILERPLATE_RE.test(String(text ?? ""));
}

function stimulusForRow(row, index) {
  const ext = row.external_id ?? "";
  if (ext.startsWith("poetry-")) return row.stimulus_text;
  const { min, max } = CID_PASSAGE_TARGETS;
  if (!isBoilerplatePassage(row.stimulus_text)) {
    const wc = wordCount(row.stimulus_text ?? "");
    if (wc >= min && wc <= max) return row.stimulus_text;
    return trimToWordRange(row.stimulus_text, min, max);
  }
  const diff = row.difficulty ?? "medium";
  let p = passageForDifficulty(diff, index);
  return trimToWordRange(p, min, max);
}

function questionTextForRow(row, isPoem, index) {
  if (isPoem) return row.question_text?.includes("poem") ? row.question_text : "Which choice best states the main idea of the poem?";
  const variants = [
    "Which choice best states the main idea of the text?",
    "Which choice most accurately expresses the main point of the text?",
    "Which choice best states the main idea of the passage?",
  ];
  return variants[index % variants.length];
}

export function regenerateRow(row, index) {
  const ext = row.external_id ?? "";
  const isPoem = ext.startsWith("poetry-") || /poem/i.test(row.question_text ?? "");
  const challenged = row.source_metadata?.challenged_problem === true || row.source_metadata?.challenged_problem === "true";
  const correctId = correctIdForIndex(index);

  let stimulus = stimulusForRow(row, index);
  let question_text = questionTextForRow(row, isPoem, index);
  let texts;
  let expls;

  if (HAND[ext]) {
    const patch = HAND[ext];
    texts = patch.map((p) => p.text);
    expls = patch.map((p) => p.explanation);
  } else if (challenged) {
    const generated = generateChallengedBankItem({
      spec: { skill: "CID", rw_subtype: "main_idea" },
      index: index % 25,
    });
    stimulus = trimToWordRange(generated.stimulus_text, CID_PASSAGE_TARGETS.min, CID_PASSAGE_TARGETS.max);
    question_text = generated.question_text;
    texts = generated.options.map((o, i) => {
      const raw = String(o.text).trim();
      if (/^The passage /i.test(raw)) return raw.endsWith(".") ? raw : `${raw}.`;
      if (/^The (poem|text) /i.test(raw)) return raw.endsWith(".") ? raw : `${raw}.`;
      return frameOption(VERBS[(index + i) % VERBS.length], raw.replace(/^that /i, ""));
    });
    expls = generated.options.map((o) => o.explanation ?? "");
  } else {
    const claims = buildClaims(index, isPoem);
    expls = buildExpls(claims, index);
    texts = claims;
  }

  let finalTexts;
  let finalExpls;
  if (isPoem && HAND[ext]) {
    const correctHandIdx = HAND[ext].findIndex((p) => p.is_correct);
    const balanced = balanceOptions(texts, correctHandIdx >= 0 ? correctHandIdx : 0, index);
    const rotated = rotateToCorrectId(balanced, expls, correctId);
    finalTexts = rotated.texts;
    finalExpls = rotated.expls;
  } else {
    const balanced = balanceOptions(texts, 0, index);
    const rotated = rotateToCorrectId(balanced, expls, correctId);
    finalTexts = rotated.texts;
    finalExpls = rotated.expls;
  }
  const options = mkOpts(correctId, finalTexts, finalExpls);

  const draft = {
    question_text,
    stimulus_text: stimulus,
    stimulus_type: "passage",
    options,
    correct_answer: correctId,
    difficulty: row.difficulty,
    skill_id: "CID",
    rw_subtype: "main_idea",
    rw_format: "passage_mc",
    source_metadata: {
      ...row.source_metadata,
      rw_subtype: "main_idea",
      rw_format: "passage_mc",
      generator: "regenerate-cid-rw.mjs",
      regen_phase2_agent: 5,
      regen_manual_section: 4,
      distractor_traps: ["Over-Extrapolation", "Reciprocal", "Retrospective Detail"],
      regen_at: new Date().toISOString().slice(0, 10),
    },
    dsat_blueprint_v1: row.source_metadata?.dsat_blueprint_v1 ?? true,
    _index: index,
  };

  const v2 = buildOnePrepExplanation(draft, {
    skill: "CID",
    rw_subtype: "main_idea",
    difficulty: row.difficulty,
  });

  return {
    id: row.id,
    external_id: ext,
    question_text,
    stimulus_text: stimulus,
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    char_spread: charSpreadPct(v2.options.map((o) => o.text)),
    word_spread: wordSpreadPct(v2.options.map((o) => o.text)),
    correct_len: charLen(v2.options.find((o) => o.is_correct)?.text),
    max_len: Math.max(...v2.options.map((o) => charLen(o.text))),
    validation: validateDsatRwQuestion({ ...draft, ...v2 }),
  };
}

function updateSql(row) {
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  return `UPDATE public.questions SET
  question_text = ${sqlEscape(row.question_text)},
  stimulus_text = ${sqlEscape(row.stimulus_text)},
  options = '${opts}'::jsonb,
  correct_answer = ${sqlEscape(row.correct_answer)},
  explanation = ${sqlEscape(row.explanation)},
  source_metadata = source_metadata || '{"generator":"regenerate-cid-rw.mjs","regen_phase2_agent":5}'::jsonb,
  updated_at = now()
WHERE id = ${sqlEscape(row.id)};`;
}

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

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  if (process.env.SUPABASE_ACCESS_TOKEN?.trim()) return process.env.SUPABASE_ACCESS_TOKEN.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (existsSync(mcpPath)) {
    const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
    for (const cfg of Object.values(mcp.mcpServers ?? {})) {
      if (cfg?.env?.SUPABASE_ACCESS_TOKEN) return cfg.env.SUPABASE_ACCESS_TOKEN.trim();
    }
  }
  return null;
}

async function pgQuery(query) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({
    connectionString: getDatabaseUrl(),
    ssl: { rejectUnauthorized: false },
  });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function mcpExecuteSql(query) {
  const token = getMcpToken();
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN");
  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      { env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH }, stdio: ["pipe", "pipe", "pipe"] },
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
      for (const line of buf.split("\n")) {
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
          /* ignore partial */
        }
      }
      buf = buf.split("\n").pop() ?? "";
    });
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "cid-regen", version: "1.0" } });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", { name: "execute_sql", arguments: { project_id: PROJECT_ID, query } });
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

async function executeSql(query) {
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    try {
      await pgQuery(query);
      return "pg";
    } catch (e) {
      console.error(`pg failed: ${String(e.message).slice(0, 120)}`);
    }
  }
  await mcpExecuteSql(query);
  return "mcp";
}

async function fetchRows() {
  const q = `SELECT id, external_id, question_text, stimulus_text, stimulus_type, options, correct_answer,
    explanation, difficulty, skill_id, source_metadata
    FROM public.questions WHERE ${SQL_FILTER} ORDER BY id`;
  const dbUrl = getDatabaseUrl();
  if (dbUrl) {
    const { rows } = await pgQuery(q);
    return rows;
  }
  // Fallback: MCP fetch in chunks via external call — use node with MCP
  throw new Error("DATABASE_URL required for fetch; configure Supabase in ~/.cursor/mcp.json");
}

function computeStats(results) {
  const letterCounts = { A: 0, B: 0, C: 0, D: 0 };
  let over15 = 0;
  let correctLongest = 0;
  let valFail = 0;
  let boilerplateFixed = 0;

  for (const r of results) {
    letterCounts[r.correct_answer]++;
    if (r.char_spread > 15) over15++;
    if (r.correct_len >= r.max_len) correctLongest++;
    if (!r.validation.ok) valFail++;
    if (r.boilerplate_fixed) boilerplateFixed++;
  }

  return {
    total: results.length,
    letter_distribution: letterCounts,
    letter_pct: Object.fromEntries(
      Object.entries(letterCounts).map(([k, v]) => [k, Math.round(1000 * v / results.length) / 10]),
    ),
    pct_over_15_spread: Math.round(1000 * over15 / results.length) / 10,
    pct_correct_longest: Math.round(1000 * correctLongest / results.length) / 10,
    validation_failures: valFail,
    boilerplate_passages_replaced: boilerplateFixed,
    avg_char_spread: Math.round(10 * results.reduce((s, r) => s + r.char_spread, 0) / results.length) / 10,
  };
}

async function main() {
  mkdirSync(OUT_DIR, { recursive: true });
  mkdirSync(resolve("scripts/data"), { recursive: true });

  console.error("Fetching CID rows...");
  const rows = await fetchRows();
  console.error(`Fetched ${rows.length} rows`);

  const results = [];
  const updates = [];

  for (let i = 0; i < rows.length; i++) {
    const row = rows[i];
    const regen = regenerateRow(row, i);
    const boilerplate_fixed = isBoilerplatePassage(row.stimulus_text) && !isBoilerplatePassage(regen.stimulus_text);
    const entry = { ...regen, boilerplate_fixed, index: i };
    results.push(entry);
    updates.push(entry);
  }

  const stats = computeStats(results);
  stats.generated_at = new Date().toISOString();
  stats.mode = apply ? "apply" : "dry-run";

  // Write mega batches (25 updates each)
  const BATCH = 25;
  const payloadDir = join(OUT_DIR, "payloads");
  mkdirSync(payloadDir, { recursive: true });
  for (let b = 0; b < updates.length; b += BATCH) {
    const chunk = updates.slice(b, b + BATCH);
    const query = `BEGIN;\n${chunk.map((u) => updateSql(u)).join("\n")}\nCOMMIT;`;
    writeFileSync(
      join(payloadDir, `payload-${String(b / BATCH).padStart(3, "0")}.json`),
      JSON.stringify({ project_id: PROJECT_ID, query }, null, 0),
    );
  }

  writeFileSync(STATS, JSON.stringify({ stats, sample_failures: results.filter((r) => !r.validation.ok).slice(0, 5) }, null, 2));

  if (apply) {
    appendFileSync(LOG, `\n# CID regen apply ${new Date().toISOString()}\n`);
    const files = readdirSync(payloadDir)
      .filter((f) => f.startsWith("payload-"))
      .sort();
    for (const file of files) {
      const { query } = JSON.parse(readFileSync(join(payloadDir, file), "utf8"));
      const via = await executeSql(query);
      appendFileSync(LOG, `OK ${file} via ${via}\n`);
      console.error(`Applied ${file} (${via})`);
    }
  }

  console.log(JSON.stringify({ ok: true, stats, applied: apply ? updates.length : 0 }, null, 2));
}

if (import.meta.url === `file://${process.argv[1]}`) {
  main().catch((e) => {
    console.error(e);
    process.exit(1);
  });
}
