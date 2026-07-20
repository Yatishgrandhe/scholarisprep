/**
 * Phase 2 COE quantitative_table option regeneration — parallel two-metric sentences,
 * ≤15% length spread, balanced A–D, padded distractors (never pad correct).
 */

import { getCoeQuantBank } from "./dsat-coe-quant-bank.mjs";
import { mkOpts, optionWordCount, charLen, ensureTwoSentenceOption } from "./english-rw-templates.mjs";
import { buildOnePrepExplanation } from "./dsat-rw-blueprint.mjs";

const LETTERS = ["A", "B", "C", "D"];

const PAD_SUFFIXES = [
  "yet the comparison omits the pairing required to test the passage claim directly.",
  "a figure accurate in isolation but not linked to the researchers' stated conclusion.",
  "describing one row only rather than the cross-row contrast the claim requires.",
  "which restates table values without connecting them to the hypothesis in the passage.",
  "but the statement fails to contrast the groups named in the passage's central claim.",
  "accurate yet non-diagnostic because it ignores the variable the researchers emphasize.",
  "reporting a ranking without the harvest or outcome comparison the claim requires.",
  "a true floor value that does not compare treatments as the stem requires.",
];

/** 325-item letter plan: 82/81/81/81 A–D */
export function letterPlan(total = 325) {
  const counts = { A: 82, B: 81, C: 81, D: 81 };
  const out = [];
  for (const [letter, n] of Object.entries(counts)) {
    for (let i = 0; i < n; i++) out.push(letter);
  }
  while (out.length < total) out.push(LETTERS[out.length % 4]);
  return out.slice(0, total);
}

/** Seeded shuffle for reproducible letter assignment */
export function seededShuffle(arr, seed = 42) {
  const a = [...arr];
  let s = seed;
  for (let i = a.length - 1; i > 0; i--) {
    s = (s * 1103515245 + 12345) & 0x7fffffff;
    const j = s % (i + 1);
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

const BANK_BY_EXT = new Map(getCoeQuantBank().map((item) => [item.external_id, item]));

function stripLatex(val) {
  return String(val ?? "").replace(/^\$|\$$/g, "").trim();
}

function isNumericCell(val) {
  const s = stripLatex(val).replace(/[%+,]/g, "").replace(/\\text\{[^}]+\}/g, "");
  return s !== "" && !Number.isNaN(Number(s));
}

function numVal(val) {
  const s = stripLatex(val).replace(/[%+,]/g, "").replace(/\\text\{[^}]+\}/g, "");
  const n = Number(s);
  return Number.isNaN(n) ? null : n;
}

function preserveCell(val) {
  const v = String(val ?? "").trim();
  if (/^\$/.test(v)) return v;
  const n = numVal(v);
  if (n != null && !/[a-zA-Z]/.test(v)) return `$${v.replace(/[%+$]/g, "")}$`;
  return v;
}

export function parseMarkdownTable(stimulus) {
  if (!stimulus) return null;
  const lines = String(stimulus)
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.startsWith("|") && l.endsWith("|"));
  if (lines.length < 3) return null;
  const parseRow = (line) =>
    line
      .split("|")
      .slice(1, -1)
      .map((c) => c.trim());
  const headers = parseRow(lines[0]);
  const rows = lines.slice(2).map(parseRow).filter((r) => r.length === headers.length);
  if (!rows.length) return null;
  return { headers, rows };
}

function metricColIndex(headers, prefer) {
  const lower = headers.map((h) => h.toLowerCase());
  for (const key of prefer) {
    const idx = lower.findIndex((h) => h.includes(key));
    if (idx >= 0) return idx;
  }
  for (let i = 1; i < headers.length; i++) {
    if (headers[i] && isNumericCell(headers[i] === headers[i] ? "1" : "x")) {
      /* skip */
    }
  }
  for (let i = 1; i < headers.length; i++) {
    const allNum = true;
    if (allNum) return i;
  }
  for (let i = 1; i < headers.length; i++) {
    const sample = headers[i];
    if (sample) return i;
  }
  return Math.min(2, headers.length - 1);
}

function findNumericCols(headers, rows) {
  const cols = [];
  for (let c = 1; c < headers.length; c++) {
    const nums = rows.map((r) => numVal(r[c])).filter((n) => n != null);
    if (nums.length >= 2) cols.push(c);
  }
  return cols.length ? cols : [Math.min(2, headers.length - 1)];
}

function rowLabel(row, headers) {
  return preserveCell(row[0]) || headers[0];
}

function spreadPct(options) {
  const lens = options.map((o) => charLen(o.text));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

function wordSpreadPct(options) {
  const lens = options.map((o) => optionWordCount(o.text));
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  const avg = lens.reduce((a, b) => a + b, 0) / lens.length;
  return avg > 0 ? Math.round(1000 * (max - min) / avg) / 10 : 0;
}

function padOption(text, targetChars, suffixIdx) {
  let out = text.replace(/[.!?]+$/, "").trim();
  if (charLen(out) >= targetChars) return out.endsWith(".") ? out : `${out}.`;
  let i = suffixIdx;
  while (charLen(out) < targetChars && i < suffixIdx + PAD_SUFFIXES.length * 3) {
    const suffix = PAD_SUFFIXES[i % PAD_SUFFIXES.length];
    const candidate = `${out}, ${suffix}`;
    if (charLen(candidate) > targetChars) break;
    out = candidate;
    i++;
  }
  if (charLen(out) < targetChars) {
    const room = targetChars - charLen(out) - 1;
    if (room > 10) {
      out = `${out}, ${PAD_SUFFIXES[i % PAD_SUFFIXES.length].slice(0, room)}`;
    }
  }
  if (!/[.!?]$/.test(out)) out += ".";
  if (charLen(out) > targetChars) out = trimToLength(out, targetChars);
  return out;
}

function trimToLength(text, maxLen) {
  if (charLen(text) <= maxLen) return text;
  let cut = text.slice(0, maxLen);
  const lastSpace = cut.lastIndexOf(" ");
  if (lastSpace > maxLen * 0.75) cut = cut.slice(0, lastSpace);
  cut = cut.replace(/[,;:\s]+$/, "").trim();
  return cut.endsWith(".") ? cut : `${cut}.`;
}

/** Keep distractors within ±15% of correct length; pad or trim distractors only. */
function normalizeOptionLengths(rawFour, correctIdx, index) {
  const correctLen = charLen(rawFour[correctIdx].text);
  const makeCorrectLongest = index % 4 === 0;
  const lo = makeCorrectLongest ? Math.ceil(correctLen / 1.15) : correctLen;
  const hi = makeCorrectLongest ? correctLen : Math.ceil(correctLen * 1.15);

  let distractorSlot = 0;
  const result = rawFour.map((o, i) => {
    if (i === correctIdx) return { ...o };
    distractorSlot++;
    const target = Math.round(lo + ((hi - lo) * distractorSlot) / 3);
    let text = o.text;
    for (let g = 0; g < 40 && charLen(text) < target; g++) {
      text = padOption(text, target, index + i + g);
    }
    for (let g = 0; g < 10 && charLen(text) > target; g++) {
      text = trimToLength(text, target);
    }
    return { ...o, text };
  });

  for (let pass = 0; pass < 12; pass++) {
    const charLens = result.map((o) => charLen(o.text));
    const wordLens = result.map((o) => optionWordCount(o.text));
    const charMin = Math.min(...charLens);
    const charMax = Math.max(...charLens);
    const charSpread = charMin > 0 ? (100 * (charMax - charMin)) / charMin : 0;
    const wordAvg = wordLens.reduce((a, b) => a + b, 0) / wordLens.length;
    const wordSpread = wordAvg > 0 ? (100 * (Math.max(...wordLens) - Math.min(...wordLens))) / wordAvg : 0;
    if (charSpread <= 15 && wordSpread <= 15) break;

    for (let i = 0; i < result.length; i++) {
      if (i === correctIdx) continue;
      let text = result[i].text;
      if (charLen(text) < charMax && charSpread > 15) {
        text = padOption(text, charMax, index + i + pass + 200);
      }
      if (optionWordCount(text) < Math.max(...wordLens) && wordSpread > 15) {
        text = padOption(text, charLen(text) + 12, index + i + pass + 300);
      }
      if (charLen(text) > charMin * 1.15 + 1) {
        text = trimToLength(text, Math.ceil(charMin * 1.15));
      }
      result[i].text = text;
    }
  }

  return result;
}

/** Pad distractors only until char/word spread ≤15%. */
export function balanceOptions(rawOptions, correctIdx, index) {
  return normalizeOptionLengths(rawOptions, correctIdx, index);
}

function buildGenericOptions(table, index) {
  const { headers, rows } = table;
  const numCols = findNumericCols(headers, rows);
  const primary = numCols[numCols.length - 1] ?? numCols[0] ?? 2;
  const secondary = numCols[0] ?? 1;
  const h1 = headers[primary] ?? "value";
  const h2 = headers[secondary] ?? headers[1] ?? "measure";

  const first = rows[0];
  const mid = rows[Math.floor(rows.length / 2)] ?? rows[1];
  const last = rows[rows.length - 1];

  const l0 = rowLabel(first, headers);
  const lMid = rowLabel(mid, headers);
  const lLast = rowLabel(last, headers);

  const v1a = preserveCell(first[secondary]);
  const v1b = preserveCell(first[primary]);
  const v2a = preserveCell(last[secondary]);
  const v2b = preserveCell(last[primary]);
  const vMidA = preserveCell(mid[secondary]);
  const vMidB = preserveCell(mid[primary]);

  const stdCol = headers.findIndex((h) => /std|dev/i.test(h));
  const stdLo = stdCol >= 0 ? preserveCell(first[stdCol]) : null;
  const stdHi = stdCol >= 0 ? preserveCell(last[stdCol]) : null;

  const correct = {
    trap: "correct",
    text: `From ${l0} to ${lLast}, ${h2.toLowerCase()} rose from ${v1a} to ${v2a} while ${h1.toLowerCase()} shifted from ${v1b} to ${v2b}, aligning with the passage's reported improvement across the full study period described above.`,
    explanation:
      "Correct: cites two metrics across early and late rows, linking table trends to the passage claim.",
  };

  const partial = {
    trap: "partial",
    text: `In ${lMid}, ${h2.toLowerCase()} was ${vMidA} and ${h1.toLowerCase()} was ${vMidB}, citing one mid-study row without contrasting ${l0} and ${lLast} as the researchers' claim requires.`,
    explanation: "Partial support — single-row snapshot omits the multi-period comparison.",
  };

  const irrelevant = {
    trap: "irrelevant",
    text:
      stdCol >= 0
        ? `${headers[stdCol]} ranged from ${stdLo} to ${stdHi} across all table rows, a variability band that does not connect ${h2.toLowerCase()} trends to the passage conclusion about improvement.`
        : `Every row records ${h1.toLowerCase()} values in the table, a directional summary that does not compare ${l0} and ${lLast} as the stem requires.`,
    explanation: "Irrelevant trend — accurate table fact without diagnostic comparison.",
  };

  const misread = {
    trap: "misread",
    text: `The table shows ${h2.toLowerCase()} falling from ${l0} to ${lLast} despite ${h2.toLowerCase()} moving from ${v1a} to ${v2a}, misreading the direction of change the researchers describe in the passage.`,
    explanation: "Data misread — states the wrong directional trend for the secondary metric.",
  };

  return [correct, partial, irrelevant, misread];
}

function rotateToLetter(rawFour, correctIdx, targetLetter) {
  const targetIdx = LETTERS.indexOf(targetLetter);
  const shift = (targetIdx - correctIdx + 4) % 4;
  const rotated = rawFour.map((_, i) => rawFour[(i - shift + 4) % 4]);
  const newCorrectIdx = rotated.findIndex((o) => o.trap === "correct");
  return { options: rotated, correctIdx: newCorrectIdx, correctLetter: targetLetter };
}

function toMkOpts(rotated, correctLetter) {
  const texts = rotated.map((o) => o.text);
  const expls = rotated.map((o) => o.explanation);
  return mkOpts(correctLetter, texts, expls);
}

function applyChallengedOptions(rawFour, index) {
  return rawFour.map((o, i) => ({
    ...o,
    text: ensureTwoSentenceOption(o.text, index + i),
  }));
}

export function regenerateCoeQuantRow(row, index, targetLetter) {
  const externalId = row.external_id;
  if (externalId && BANK_BY_EXT.has(externalId)) {
    const bank = BANK_BY_EXT.get(externalId);
    const opts = bank.options.map((o) => ({
      trap: o.is_correct ? "correct" : "distractor",
      text: o.text,
      explanation: o.explanation,
    }));
    const correctIdx = opts.findIndex((o) => o.trap === "correct");
    const { options: rotated, correctLetter } = rotateToLetter(opts, correctIdx, targetLetter);
    const balanced = balanceOptions(rotated, rotated.findIndex((o) => o.trap === "correct"), index);
    const mk = toMkOpts(balanced, correctLetter);
    const built = buildOnePrepExplanation(
      { ...row, options: mk, correct_answer: correctLetter },
      { skill: "COE", rw_subtype: "quantitative_table", difficulty: row.difficulty },
    );
    return {
      options: built.options ?? mk,
      correct_answer: correctLetter,
      explanation: bank.explanation ?? built.explanation,
      meta: { source: "bank", external_id: externalId },
    };
  }

  const table = parseMarkdownTable(row.stimulus_text);
  if (!table) {
    throw new Error(`No table parsed for ${row.id}`);
  }

  const rawFour = buildGenericOptions(table, index);
  const challenged = row.source_metadata?.challenged_problem === true;
  const prepared = challenged ? applyChallengedOptions(rawFour, index) : rawFour;
  const correctIdx = 0;
  const { options: rotated, correctLetter } = rotateToLetter(prepared, correctIdx, targetLetter);
  const balanced = balanceOptions(rotated, rotated.findIndex((o) => o.trap === "correct"), index);
  const mk = toMkOpts(balanced, correctLetter);
  const built = buildOnePrepExplanation(
    { ...row, options: mk, correct_answer: correctLetter },
    { skill: "COE", rw_subtype: "quantitative_table", difficulty: row.difficulty },
  );

  return {
    options: built.options ?? mk,
    correct_answer: correctLetter,
    explanation: built.explanation,
    meta: { source: "generated" },
  };
}

export function measureBatch(optionsList) {
  let overSpread = 0;
  let correctLongest = 0;
  const letters = { A: 0, B: 0, C: 0, D: 0 };

  for (const { options, correct_answer } of optionsList) {
    letters[correct_answer] = (letters[correct_answer] ?? 0) + 1;
    const cs = spreadPct(options);
    const ws = wordSpreadPct(options);
    if (cs > 15 || ws > 15) overSpread++;
    const correct = options.find((o) => o.id === correct_answer);
    const maxLen = Math.max(...options.map((o) => charLen(o.text)));
    if (correct && charLen(correct.text) === maxLen) correctLongest++;
  }

  const n = optionsList.length || 1;
  return {
    count: n,
    pct_over_15_spread: Math.round(1000 * overSpread / n) / 10,
    pct_correct_longest: Math.round(1000 * correctLongest / n) / 10,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, { count: letters[l] ?? 0, pct: Math.round(1000 * (letters[l] ?? 0) / n) / 10 }]),
    ),
  };
}
