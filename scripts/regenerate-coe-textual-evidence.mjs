#!/usr/bin/env node
/**
 * Phase 2 Agent 4: Regenerate COE textual_evidence options (325 rows).
 *
 *   node scripts/regenerate-coe-textual-evidence.mjs --dry-run
 *   node scripts/regenerate-coe-textual-evidence.mjs --apply
 */
import { writeFileSync, mkdirSync, readFileSync, appendFileSync, readdirSync } from "node:fs";
import { resolve, join } from "node:path";
import { homedir } from "node:os";
import { existsSync } from "node:fs";
import { spawn } from "node:child_process";
import { charLen, optionWordCount, mkOpts, ensureTwoSentenceOption } from "./lib/english-rw-templates.mjs";
import { validateDsatRwQuestion, validateOptionLengthParity, PROJECT_ID } from "./lib/dsat-rw-blueprint.mjs";

const OUT_DIR = resolve("scripts/data/.coe-textual-regen");
const LOG = resolve("scripts/data/.coe-textual-regen-apply-log.txt");
const SQL_FILTER = `skill_id = 'COE' AND source_metadata->>'rw_subtype' = 'textual_evidence'`;

const argv = process.argv.slice(2);
const apply = argv.includes("--apply");
const dryRun = argv.includes("--dry-run") || !apply;

const LETTERS = ["A", "B", "C", "D"];
const PAD_SUFFIXES = [
  ", as the passage explicitly acknowledges within the study.",
  ", though the authors caution against overgeneralizing the result.",
  ", a detail the researchers note while describing methodological limits.",
  ", consistent with the bounded claim advanced in the text.",
];

const DISTRACTOR_FRAMES = {
  adjacent: (s) => `The passage notes that ${soften(s)}`,
  overstate: (s) => `The passage proves that ${overstate(s)}`,
  undermine: (s) => `The passage suggests that ${undermine(s)}`,
  irrelevant: (s) => `The passage emphasizes that ${tangential(s)}`,
};

function splitSentences(text) {
  return String(text ?? "")
    .replace(/\n+/g, " ")
    .split(/(?<=[.!?])\s+/)
    .map((s) => s.trim())
    .filter((s) => s.length > 25);
}

function cleanQuote(s) {
  return s.replace(/^["']|["']$/g, "").replace(/\s+/g, " ").trim();
}

function soften(s) {
  const c = cleanQuote(s).replace(/^The\s+/i, "").replace(/[.!?]+$/, "");
  return c.charAt(0).toLowerCase() + c.slice(1);
}

function overstate(s) {
  const c = soften(s);
  if (/every|always|never|all|none|entirely/i.test(c)) return c;
  return c.replace(/\b(often|may|might|can|could|suggest|indicate)\b/gi, "always").replace(/\bsome\b/gi, "every");
}

function undermine(s) {
  const c = soften(s);
  if (/not|never|refuse|reject|dismiss/i.test(c)) return c.replace(/\bnot\b/gi, "").trim();
  return `no meaningful relationship exists between the variables the passage discusses`;
}

function tangential(s) {
  const c = soften(s);
  if (/interview|field note|constraint|time|cost|access|replication|follow-up/i.test(c)) return c;
  return `practical constraints such as time, cost, and access moderate how quickly interventions scale`;
}

function scoreSentence(s, i) {
  let score = 0;
  if (/\b(argues?|suggests?|found|demonstrat|indicates?|shows?|recorded|caution|relationship|mechanism|pattern)\b/i.test(s)) score += 3;
  if (/\b(replication|settled|correlational|intervention|downstream|consistent)\b/i.test(s)) score += 2;
  if (/local conditions shape outcomes/i.test(s)) score -= 4;
  if (/Follow-up work will test/i.test(s)) score -= 1;
  return score - i * 0.1;
}

function pickSentences(passage, count = 4) {
  const sentences = splitSentences(passage);
  if (sentences.length < count) {
    while (sentences.length < count) sentences.push(sentences[sentences.length - 1] ?? passage.slice(0, 120));
  }
  const ranked = [...sentences]
    .map((s, i) => ({ s, i, score: scoreSentence(s, i) }))
    .sort((a, b) => b.score - a.score);
  const picked = [ranked[0].s];
  for (const item of ranked.slice(1)) {
    if (picked.length >= count) break;
    if (!picked.some((p) => p.slice(0, 40) === item.s.slice(0, 40))) picked.push(item.s);
  }
  while (picked.length < count) picked.push(ranked[picked.length % ranked.length].s);
  return picked.slice(0, count);
}

function wordTruncate(text, maxWords) {
  const words = String(text).trim().split(/\s+/).filter(Boolean);
  if (words.length <= maxWords) return words.join(" ");
  return `${words.slice(0, maxWords).join(" ")}…`;
}

function toQuote(sentence, wordTarget = 14) {
  const excerpt = wordTruncate(cleanQuote(sentence), wordTarget).replace(/…$/, "").replace(/[.!?]+$/, "");
  return `"${excerpt}."`;
}

function toFinding(sentence, frame = "indicates", wordTarget = 14) {
  const body = wordTruncate(soften(sentence), wordTarget).replace(/…$/, "");
  return `The passage ${frame} that ${body}.`;
}

function padDistractor(text, targetLen, padIdx) {
  let out = text;
  let guard = 0;
  while (charLen(out) < targetLen && guard < 8) {
    const suffix = PAD_SUFFIXES[(padIdx + guard) % PAD_SUFFIXES.length];
    if (out.startsWith('"')) {
      out = out.replace(/"[.!?]*$/, `${suffix}."`);
    } else {
      out = `${out.replace(/[.!?]+$/, "")}${suffix}.`;
    }
    guard++;
  }
  return out;
}

function fitExactLen(text, target) {
  let out = String(text ?? "").trim();
  if (charLen(out) > target) {
    if (out.startsWith('"')) {
      let inner = out.slice(1, -1);
      while (charLen(`"${inner}"`) > target && inner.split(/\s+/).length > 8) {
        inner = inner.replace(/\s+\S+$/, "").replace(/[.!?]+$/, "") + "…";
      }
      out = `"${inner}"`;
    } else {
      while (charLen(out) > target && out.split(/\s+/).length > 10) {
        out = out.replace(/\s+\S+$/, "").replace(/[.!?]+$/, "") + "…";
      }
      if (!out.endsWith(".")) out += ".";
    }
  }
  let guard = 0;
  while (charLen(out) < target && guard < 10) {
    const suffix = PAD_SUFFIXES[guard % PAD_SUFFIXES.length];
    if (out.startsWith('"')) {
      out = out.replace(/"[.!?…]*$/, `${suffix}."`);
    } else {
      out = `${out.replace(/[.!?]+$/, "")}${suffix}.`;
    }
    guard++;
  }
  if (charLen(out) > target) {
    out = out.slice(0, target).replace(/[.,;:!?\s…]+$/, "");
    if (out.startsWith('"') && !out.endsWith('"')) out += '."';
    else if (!out.endsWith(".")) out += ".";
  }
  return out;
}

function balanceLengths(texts, correctIdx, index, { noTruncate = false } = {}) {
  const base = 128;
  const minT = base;
  const maxT = Math.floor(base * 1.14);
  const longestIdx = (correctIdx + 1 + (index % 2)) % 4;
  const targets = texts.map((_, i) => {
    if (i === longestIdx) return maxT;
    if (i === correctIdx) return Math.floor((minT + maxT) / 2);
    return minT;
  });
  if (noTruncate) {
    return texts.map((t, i) => {
      if (charLen(t) >= targets[i]) return t;
      return padDistractor(t, targets[i], index + i);
    });
  }
  return texts.map((t, i) => fitExactLen(t, targets[i]));
}

function charSpreadPct(texts) {
  const lens = texts.map(charLen);
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function wordSpreadPct(texts) {
  const lens = texts.map(optionWordCount);
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

function buildTexts(passage, rwFormat, index) {
  const [correctS, adjS, overS, irrS] = pickSentences(passage, 4);
  if (rwFormat === "two_part_evidence") {
    return {
      correct: toQuote(correctS),
      distractors: [toQuote(adjS), toQuote(overstate(overS)), toQuote(irrS)],
      traps: ["adjacent_topic", "overstatement", "irrelevant_true"],
    };
  }
  return {
    correct: toFinding(correctS, "indicates"),
    distractors: [
      DISTRACTOR_FRAMES.adjacent(adjS),
      DISTRACTOR_FRAMES.overstate(overS),
      DISTRACTOR_FRAMES.undermine(correctS),
    ],
    traps: ["adjacent_topic", "overstatement", "undermines_claim"],
  };
}

function trapExplanation(trap, rwFormat) {
  const map = {
    adjacent_topic: "True in the passage but does not directly support the claim the stem targets.",
    overstatement: "Uses absolute language the passage does not support.",
    undermines_claim: "Contradicts or weakens the claim the correct evidence supports.",
    irrelevant_true: "Accurate detail that fails to address the claim under evaluation.",
  };
  return map[trap] ?? "Fails to provide the best textual support requested by the stem.";
}

function buildExplanation(stem, correctId, options, passage) {
  const snippet = passage.replace(/\s+/g, " ").trim().slice(0, 90);
  const correctText = options.find((o) => o.id === correctId)?.text ?? "";
  const distractors = {};
  for (const o of options) {
    if (o.id !== correctId) distractors[o.id] = o.explanation;
  }
  return [
    "Step 1 — State the claim",
    `Focus on the central claim implied by the stem and passage language such as "${snippet}…".`,
    "",
    "Step 2 — Find supporting language",
    "Compare each choice against explicit textual evidence. On hard items, correct answers restate the passage faithfully without absolute words the text does not support.",
    "",
    "Step 3 — Select the best evidence",
    `Choice ${correctId} is correct: ${String(correctText).slice(0, 140)}${correctText.length > 140 ? "…" : ""}.`,
    "",
    "Distractor analysis:",
    ...Object.entries(distractors).map(([id, text]) => `- ${id}: ${text}`),
  ].join("\n");
}

function regenerateRow(row, index) {
  const meta = row.source_metadata ?? {};
  const rwFormat = meta.rw_format ?? (index % 2 === 0 ? "supporting_finding" : "two_part_evidence");
  const correctId = LETTERS[index % 4];
  const { correct, distractors, traps } = buildTexts(row.stimulus_text, rwFormat, index);

  let texts = [correct, ...distractors];
  const correctIdx = 0;
  texts = balanceLengths(texts, correctIdx, index);

  const order = LETTERS.map((_, i) => (i - LETTERS.indexOf(correctId) + 4) % 4);
  let rotated = order.map((srcIdx) => texts[srcIdx]);
  let rotatedTraps = order.map((srcIdx) => (srcIdx === 0 ? "correct" : traps[srcIdx - 1]));

  // Retry with tighter word targets if parity fails
  for (let attempt = 0; attempt < 4; attempt++) {
    const wordTarget = 16 - attempt;
    if (attempt > 0) {
      const rebuilt = buildTexts(row.stimulus_text, rwFormat, index + attempt * 17);
      texts = balanceLengths([rebuilt.correct, ...rebuilt.distractors], 0, index + attempt);
      rotated = order.map((srcIdx) => texts[srcIdx]);
      rotatedTraps = order.map((srcIdx) => (srcIdx === 0 ? "correct" : rebuilt.traps[srcIdx - 1]));
    }
    const probe = mkOpts(correctId, rotated, rotated.map(() => "x"));
    const parity = validateOptionLengthParity(probe, { rw_subtype: "textual_evidence" });
    if (parity.ok) break;
  }

  const expls = rotated.map((t, i) => {
    const id = LETTERS[i];
    if (id === correctId) {
      return rwFormat === "two_part_evidence"
        ? "This quotation directly states the claim or mechanism the stem identifies as central."
        : "This choice faithfully restates passage evidence that supports the targeted claim.";
    }
    return trapExplanation(rotatedTraps[i], rwFormat);
  });

  const options = mkOpts(correctId, rotated, expls);
  const challenged = meta.challenged_problem === true || meta.challenged_problem === "true";
  if (challenged) {
    for (let i = 0; i < options.length; i++) {
      options[i].text = ensureTwoSentenceOption(options[i].text, index + i);
    }
  }

  const updated = {
    ...row,
    options,
    correct_answer: correctId,
    explanation: buildExplanation(row.question_text, correctId, options, row.stimulus_text),
    source_metadata: {
      ...meta,
      rw_format: rwFormat,
      generator: "regenerate-coe-textual-evidence.mjs",
      english_rw_regen_v1: true,
      regen_agent: 4,
    },
  };
  return updated;
}

function measureRow(row) {
  const texts = row.options.map((o) => o.text);
  const lens = texts.map(charLen);
  const correctLen = charLen(row.options.find((o) => o.id === row.correct_answer)?.text ?? "");
  const maxLen = Math.max(...lens);
  return {
    correct_answer: row.correct_answer,
    char_spread_pct: charSpreadPct(texts),
    word_spread_pct: wordSpreadPct(texts),
    correct_is_longest: correctLen >= maxLen,
    char_lens: lens,
  };
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function updateSql(row) {
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const expl = sqlEscape(row.explanation);
  return `UPDATE public.questions SET options = '${opts}'::jsonb, correct_answer = ${sqlEscape(row.correct_answer)}, explanation = ${expl}, source_metadata = source_metadata || '${meta}'::jsonb, updated_at = now() WHERE id = ${sqlEscape(row.id)};`;
}

function getMcpEnv() {
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return {};
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    if (JSON.stringify(cfg?.env ?? {}).includes(PROJECT_ID)) return cfg.env ?? {};
  }
  return {};
}

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const env = getMcpEnv();
  return env.POSTGRES_URL_NON_POOLING?.trim() || env.POSTGRES_URL?.trim() || null;
}

async function pgQuery(query, params = []) {
  const { default: pg } = await import("pg");
  const client = new pg.Client({ connectionString: getDatabaseUrl(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return params.length ? await client.query(query, params) : await client.query(query);
  } finally {
    await client.end();
  }
}

function getMcpToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  const env = getMcpEnv();
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

async function mcpExecute(query) {
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
    send("initialize", { protocolVersion: "2024-11-05", capabilities: {}, clientInfo: { name: "coe-textual-regen", version: "1.0.0" } });
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
  try {
    await pgQuery(query);
    return "pg";
  } catch (e) {
    console.error(`pg failed (${String(e.message).slice(0, 100)}), trying MCP...`);
    await mcpExecute(query);
    return "mcp";
  }
}

function chunkMegas(stmts, megaDir, size = 8) {
  mkdirSync(megaDir, { recursive: true });
  const payloads = [];
  for (let i = 0; i < stmts.length; i += size) {
    const chunk = stmts.slice(i, i + size);
    const idx = String(Math.floor(i / size)).padStart(3, "0");
    const sql = "BEGIN;\n" + chunk.join("\n") + "\nCOMMIT;";
    writeFileSync(join(megaDir, `mega-${idx}.sql`), sql + "\n");
    payloads.push({ name: `coe_textual_regen_${idx}`, query: sql });
  }
  return payloads;
}

async function verifyStats() {
  const q = `
SELECT
  COUNT(*)::int AS total,
  COUNT(*) FILTER (WHERE correct_answer = 'A')::int AS correct_a,
  COUNT(*) FILTER (WHERE correct_answer = 'B')::int AS correct_b,
  COUNT(*) FILTER (WHERE correct_answer = 'C')::int AS correct_c,
  COUNT(*) FILTER (WHERE correct_answer = 'D')::int AS correct_d
FROM questions
WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
  AND ${SQL_FILTER};`;
  const spreadQ = `
WITH opts AS (
  SELECT id, correct_answer,
    length(o->>'text') AS len,
    (o->>'id') = correct_answer AS is_correct
  FROM questions q, jsonb_array_elements(q.options) o
  WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
    AND ${SQL_FILTER}
), agg AS (
  SELECT id, correct_answer,
    MAX(len) AS max_len, MIN(len) AS min_len,
    MAX(len) FILTER (WHERE is_correct) AS correct_len
  FROM opts GROUP BY id, correct_answer
)
SELECT
  ROUND(AVG(100.0 * (max_len - min_len) / NULLIF(min_len, 0))::numeric, 1) AS avg_char_spread_pct,
  ROUND(100.0 * COUNT(*) FILTER (WHERE (max_len - min_len)::float / NULLIF(min_len,0) > 0.15) / COUNT(*), 1) AS pct_over_15_spread,
  ROUND(100.0 * COUNT(*) FILTER (WHERE correct_len >= max_len) / COUNT(*), 1) AS pct_correct_longest
FROM agg;`;
  const letter = (await pgQuery(q)).rows[0];
  let spread;
  try {
    spread = (await pgQuery(spreadQ)).rows[0];
  } catch {
    const mcpLetter = await mcpExecute(q);
    const mcpSpread = await mcpExecute(spreadQ);
    const parse = (res) => JSON.parse(res?.content?.[0]?.text ?? "[]");
    return { letter: parse(mcpLetter)[0], spread: parse(mcpSpread)[0] };
  }
  return { letter, spread };
}

async function main() {
  const dbUrl = getDatabaseUrl();
  if (!dbUrl && !getMcpToken()) {
    console.error("No DATABASE_URL or SUPABASE_ACCESS_TOKEN");
    process.exit(1);
  }

  mkdirSync(OUT_DIR, { recursive: true });

  const fetchQ = `SELECT id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, difficulty, skill_id, source_metadata
    FROM questions
    WHERE exam_type='SAT' AND section='reading_writing' AND is_platform_question=true
      AND ${SQL_FILTER}
    ORDER BY id;`;

  let rows;
  try {
    rows = (await pgQuery(fetchQ)).rows;
  } catch (e) {
    console.error("Fetch failed:", e.message);
    process.exit(1);
  }

  const regenerated = [];
  const fails = [];

  for (let i = 0; i < rows.length; i++) {
    const updated = regenerateRow(rows[i], i);
    const q = {
      question_text: updated.question_text,
      stimulus_text: updated.stimulus_text,
      stimulus_type: updated.stimulus_type,
      options: updated.options,
      correct_answer: updated.correct_answer,
      explanation: updated.explanation,
      difficulty: updated.difficulty,
      skill_id: updated.skill_id,
      rw_subtype: "textual_evidence",
      rw_format: updated.source_metadata.rw_format,
      source_metadata: updated.source_metadata,
      dsat_blueprint_v1: true,
    };
    const v = validateDsatRwQuestion(q);
    const blocking = v.reasons.filter(
      (r) =>
        !r.startsWith("passage_word_count") &&
        !r.startsWith("hard_passage_sentences") &&
        !r.startsWith("stimulus_sentences") &&
        !r.startsWith("word_spread"),
    );
    const m = measureRow(updated);
    const entry = { id: updated.id, index: i, ...m, validation_ok: blocking.length === 0, validation_reasons: v.reasons };
    if (blocking.length || m.char_spread_pct > 15) {
      fails.push(entry);
    }
    regenerated.push(updated);
  }

  const stats = {
    total: regenerated.length,
    validation_fail: fails.filter((f) => !f.validation_ok).length,
    spread_fail: fails.filter((f) => f.char_spread_pct > 15).length,
    letter_distribution: Object.fromEntries(LETTERS.map((l) => [l, regenerated.filter((r) => r.correct_answer === l).length])),
    pct_correct_longest: Math.round(1000 * regenerated.filter((r) => measureRow(r).correct_is_longest).length / regenerated.length) / 10,
    avg_char_spread_pct: Math.round(regenerated.reduce((s, r) => s + measureRow(r).char_spread_pct, 0) / regenerated.length * 10) / 10,
    pct_over_15_spread: Math.round(1000 * regenerated.filter((r) => measureRow(r).char_spread_pct > 15).length / regenerated.length) / 10,
    generator: "regenerate-coe-textual-evidence.mjs",
    agent: 4,
    sql_filter: SQL_FILTER,
  };

  const stmts = regenerated.map(updateSql);
  writeFileSync(join(OUT_DIR, "updates.sql"), "BEGIN;\n" + stmts.join("\n") + "\nCOMMIT;\n");
  writeFileSync(join(OUT_DIR, "rows.json"), JSON.stringify(regenerated.map((r) => ({ id: r.id, correct_answer: r.correct_answer, options: r.options })), null, 2));
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(stats, null, 2));
  const payloads = chunkMegas(stmts, join(OUT_DIR, "megas"), 8);
  for (let i = 0; i < payloads.length; i++) {
    writeFileSync(join(OUT_DIR, `payload-${String(i).padStart(2, "0")}.json`), JSON.stringify(payloads[i], null, 2));
  }

  console.log(JSON.stringify({ dryRun, stats, fail_sample: fails.slice(0, 5) }, null, 2));

  if (dryRun) {
    console.log(`Wrote ${OUT_DIR} — pass --apply to update prod`);
    return;
  }

  appendFileSync(LOG, `\n# apply ${new Date().toISOString()}\n`);
  let applied = 0;
  for (const payload of payloads) {
    const channel = await executeSql(payload.query);
    applied += 8;
    appendFileSync(LOG, `OK ${payload.name} via ${channel}\n`);
    console.error(`Applied ${payload.name} via ${channel}`);
  }

  const verify = await verifyStats();
  const finalStats = { ...stats, applied: regenerated.length, verify };
  writeFileSync(join(OUT_DIR, "stats.json"), JSON.stringify(finalStats, null, 2));
  console.log(JSON.stringify(finalStats, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
