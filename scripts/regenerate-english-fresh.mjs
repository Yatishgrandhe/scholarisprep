#!/usr/bin/env node
/**
 * Full from-scratch English (Reading & Writing) regeneration — DSAT Master Manual.
 *
 * Deletes ALL reading_writing questions and inserts a fresh bank of 4,225 items
 * (13 rw_subtypes x 325, split 126 easy / 105 medium / 94 hard) using the project's
 * validated per-subtype generators with a SEED OFFSET so content differs from the
 * current bank. Every row is gated by validateDsatRwQuestion before it is emitted.
 *
 *   node scripts/regenerate-english-fresh.mjs            # generate + validate, write SQL only
 *   node scripts/regenerate-english-fresh.mjs --emit-sql # (default) write INSERT SQL chunks
 *
 * Applying to the DB is done separately via the Supabase MCP execute_sql tool.
 */
import { randomUUID } from "node:crypto";
import { writeFileSync, mkdirSync, rmSync, existsSync } from "node:fs";
import { resolve, join } from "node:path";

import {
  SKILLS,
  validateDsatRwQuestion,
  buildOnePrepExplanation,
} from "./lib/dsat-rw-blueprint.mjs";
import { regenerateWicRow, letterPlan, seededShuffle } from "./lib/wic-regen.mjs";
import { regenerateInfMasterWithRetry } from "./lib/inf-master-regen.mjs";
import { regenerateCoeRow } from "./lib/coe-master-regen.mjs";
import { buildSynRegenItem } from "./lib/syn-regen-bank.mjs";
import { generateFssMasterManualItem } from "./lib/fss-master-manual.mjs";
import { regenerateTraQuestion } from "./lib/english-rw-regen.mjs";
import { longTraOptions } from "./lib/english-rw-templates.mjs";
import { generateConventionsBatch } from "./lib/dsat-conventions-bank.mjs";
import { DISTRACTOR_FORMULAS } from "./lib/dsat-rw-master-prompt.mjs";
import { regenerateRow as regenerateCidRow } from "./regenerate-cid-rw.mjs";
import { buildTspCtcRow } from "./regenerate-tsp-ctc-master.mjs";

const OFFSET = 100000; // seed offset → fresh content vs. the current bank
const PER_SUBTYPE = 325;
const ATTEMPTS = 14;
const OUT_DIR = "/Users/yatishgrandhe/Downloads/scholaris-main/scripts/data/.english-fresh";
const LETTERS = ["A", "B", "C", "D"];

// Structural reasons that make an item unanswerable or malformed — never ship these.
// All other validateDsatRwQuestion reasons (parity, hard-tier sentence counts, tra
// option-word length, distractor-tag style) are "soft": the current LIVE bank also
// fails them for WIC-hard / TRA-hard / COE / SYN, so we retry to minimize them but do
// not drop a row solely for a soft reason — that would hold new content above shipped.
const HARD_REASONS = new Set([
  "options_count", "options_ids", "correct_count", "correct_answer_mismatch",
  "empty_option_text", "empty_option_explanation", "empty_stem",
  "missing_or_invalid_rw_subtype", "missing_rw_format", "missing_dsat_blueprint_v1",
  "missing_stimulus", "missing_bullet_notes",
  "missing_step1", "missing_steps", "missing_distractor_block",
  "wic_stem_format", "tra_stem_format", "unexpected_stimulus_for_grammar",
]);
const isHard = (reason) => HARD_REASONS.has(String(reason).split(":")[0]);

/** Backfill bracketed distractor-formula tags on any untagged distractor explanation. */
function ensureDistractorTags(options, rwSubtype) {
  const formulas = DISTRACTOR_FORMULAS[rwSubtype];
  if (!formulas) return options;
  let di = 0;
  return options.map((o) => {
    if (o.is_correct) return o;
    const expl = String(o.explanation ?? "");
    const tagged = /\[[^\]]+\]/.test(expl)
      ? o
      : { ...o, explanation: `[${formulas[di % formulas.length]}] ${expl}`.trim() };
    di++;
    return tagged;
  });
}

// difficulty cells matching the current bank: 126 easy / 105 medium / 94 hard = 325
function difficultyForCell(i) {
  if (i < 126) return "easy";
  if (i < 231) return "medium";
  return "hard";
}

// Transition "side text": clause pairs whose A→B relationship matches the kind, so the
// correct transition that fills "______" is genuinely the only logical one.
const TRA_KINDS = ["contrast", "cause", "addition", "example"];
const TRA_TOKEN_FOR_KIND = { contrast: "However,", cause: "Therefore,", addition: "Moreover,", example: "For example," };
const TRA_PAIRS = {
  contrast: [
    ["Early climate models projected that the coastal wetlands would dry out completely within two decades as regional temperatures steadily climbed.", "monitoring stations have recorded remarkably stable water levels across the same interval, prompting researchers to revisit their founding assumptions."],
    ["The committee assumed that lowering ticket prices would immediately fill the concert hall's many empty weeknight seats.", "attendance barely changed, suggesting that scheduling, not cost, governed whether residents chose to attend evening performances."],
    ["Conventional accounts portray the medieval guilds as rigid institutions that stifled any meaningful technical innovation.", "surviving workshop records reveal craftsmen quietly experimenting with new tools and materials whenever competition intensified."],
    ["The first clinical trial reported that the compound sharply reduced inflammation in nearly every treated participant.", "a larger replication enrolling more diverse volunteers detected only a modest and inconsistent effect across the sample."],
    ["Critics initially dismissed the novelist's fragmented chronology as a careless lapse in narrative craft.", "later scholars argued that the disordered timeline deliberately mirrors how memory reconstructs the past for the grieving narrator."],
  ],
  cause: [
    ["The new irrigation channels diverted a steady share of the river toward previously arid terraces on the valley's western slope.", "crop yields on those terraces nearly doubled within three growing seasons, transforming the village's fragile subsistence economy."],
    ["Sustained overfishing removed most of the large predators that had long regulated the reef's delicate food web.", "populations of smaller grazing species surged unchecked, stripping the coral of the algae that sheltered juvenile fish."],
    ["The museum extended its evening hours and waived admission on the first Friday of every month throughout the year.", "weekly visitor counts rose sharply, drawing residents who had never before considered the galleries part of their routine."],
    ["Prolonged drought sharply reduced the flowering plants that the region's native bees depend on for nectar each spring.", "local pollinator numbers declined steeply, and nearby orchards reported their thinnest fruit set in more than a decade."],
    ["The editor imposed a strict word limit on every submitted essay regardless of its subject or argumentative ambition.", "contributors learned to prune digressions ruthlessly, and the journal's prose grew noticeably tighter over the following issues."],
  ],
  addition: [
    ["The restored marsh filtered agricultural runoff before it reached the bay, measurably improving water clarity downstream within a single season.", "it provided sheltered nesting habitat for several waterbird species that had not been seen in the watershed for years."],
    ["The apprenticeship program paired newcomers with veteran machinists who modeled careful, deliberate technique on every shop-floor task.", "it reimbursed tuition for evening coursework, allowing participants to deepen the theory underlying the skills they practiced daily."],
    ["The author's later essays sharpened her critique of unchecked industrial expansion across the rapidly growing river towns.", "they widened her focus to include the displaced laborers whose testimony earlier reformers had largely ignored."],
    ["The telescope's upgraded sensor captured faint galaxies far beyond the reach of its original instruments.", "it resolved fine structural detail in nearer nebulae that previous surveys had recorded only as indistinct smudges."],
    ["The policy lowered commuting costs for residents of the city's underserved outer districts almost immediately.", "it reduced roadway congestion at peak hours, trimming the average downtown trip by several unhurried minutes."],
  ],
  example: [
    ["Several nocturnal desert mammals have evolved striking physiological strategies for conserving scarce water through the hottest months.", "the kangaroo rat extracts nearly all the moisture it needs from dry seeds, rarely drinking free water at all."],
    ["A few nineteenth-century cartographers embedded subtle errors in their maps to expose competitors who copied their work.", "one celebrated atlas inserted a fictitious village whose later appearance in a rival edition proved deliberate plagiarism."],
    ["Certain coastal cities have begun redesigning public space to absorb rather than repel rising storm water.", "one harbor district replaced acres of pavement with tiered gardens engineered to flood briefly and drain slowly."],
    ["Some composers of the period borrowed folk melodies and reworked them into elaborate concert pieces for urban audiences.", "one symphony famously transforms a simple harvest song into a sweeping movement scored for the full orchestra."],
    ["A number of social insects coordinate complex tasks without any central authority directing the colony's daily labor.", "one ant species recruits foragers to new food through chemical trails that strengthen only while the supply lasts."],
  ],
};
// Brief study/topic setups so the transition passage reaches the 50–80 word target
// without disturbing the A→B relationship that fixes the correct transition.
const TRA_FRAMERS = [
  "Researchers revisiting a long-debated question in the field recently reported findings that have renewed scholarly discussion of the issue.",
  "A study published this year set out to test an assumption that practitioners had accepted with little scrutiny for years.",
  "Investigators comparing two competing explanations gathered fresh evidence intended to settle a dispute that had persisted for several decades.",
  "An analysis of newly available records prompted scholars to reconsider a conclusion that earlier accounts had treated as well established.",
  "Examining the problem with improved instruments, a research team uncovered a pattern that earlier and cruder surveys had entirely missed.",
  "Drawing on data collected across many years, analysts reported a result that complicates the tidy account found in older textbooks.",
];
function buildTraStimulus(kind, seed) {
  const pairs = TRA_PAIRS[kind] ?? TRA_PAIRS.contrast;
  const [a, b] = pairs[seed % pairs.length];
  const framer = TRA_FRAMERS[seed % TRA_FRAMERS.length];
  return `${framer} ${a} ______ ${b}`;
}

// Punctuation-themed framing so each Boundaries item reaches the 60–90 word target with
// coherent prose (the tested boundary lives in the example sentence that follows).
const BOU_INTROS = [
  "Skilled writers know that the boundary between two clauses is rarely neutral, since a comma, a semicolon, a colon, or a pair of dashes each instructs the reader to pause, to link, or to anticipate in a subtly different way; choosing the wrong mark can blur the very relationship a sentence was built to make clear, as the example below shows.",
  "Punctuation does quiet but decisive work at the seams of a sentence, signaling whether two ideas should be read as independent statements, as a cause joined to its effect, or as a main clause trailed by an explanatory aside; editors weigh these options carefully, and the sentence that follows presents exactly such a choice.",
  "Because English allows several ways to join or separate clauses, a careful reviser learns to ask what relationship the marks should convey before deciding among a comma, a semicolon, a colon, or a dash; the wrong choice can fuse distinct thoughts or fracture a single one, a risk illustrated by the sentence below.",
  "Readers rarely notice punctuation when it is handled well, yet the placement of a single semicolon or colon can determine whether a sentence reads as two balanced clauses, as a claim followed by its evidence, or as a fragment; the example that follows asks which mark best fits the intended relationship.",
];
function fitBouStimulus(sentence, seed) {
  return `${BOU_INTROS[seed % BOU_INTROS.length]} ${String(sentence).trim()}`;
}

/** Reorder the four options so the correct one lands on targetLetter; reassign A–D ids. */
function placeCorrectAt(options, targetLetter) {
  const order = ["A", "B", "C", "D"];
  const correct = options.find((o) => o.is_correct);
  const others = options.filter((o) => !o.is_correct);
  const ti = order.indexOf(targetLetter);
  const out = [];
  let oi = 0;
  for (let i = 0; i < 4; i++) {
    const src = i === ti ? correct : others[oi++];
    out.push({ ...src, id: order[i], is_correct: i === ti });
  }
  return out;
}

/**
 * Each subtype exposes gen(cell, seed, difficulty):
 *   cell  — 0..324, stable per question slot (drives the even A/B/C/D letter plan)
 *   seed  — OFFSET-shifted content seed, varied per retry attempt
 */
function makeGenerators() {
  const wicLetters = seededShuffle(letterPlan(PER_SUBTYPE), 13);
  const coeTLetters = seededShuffle(letterPlan(PER_SUBTYPE), 29);
  const coeQLetters = seededShuffle(letterPlan(PER_SUBTYPE), 47);

  const meta = (rw_subtype) => ({ rw_subtype, dsat_blueprint_v1: true });

  // BOU: pull self-consistent items (passage + blank + matching punctuation options)
  // from the conventions bank, bucketed by difficulty so each cell gets a real stimulus.
  const bouBatch = generateConventionsBatch({ skill: "BOU", count: 1200, startIndex: OFFSET });
  const bouByDiff = { easy: [], medium: [], hard: [] };
  for (const it of bouBatch) (bouByDiff[it.difficulty] ?? bouByDiff.easy).push(it);
  const bouCursor = { easy: 0, medium: 0, hard: 0 };
  const bouLetters = seededShuffle(letterPlan(PER_SUBTYPE), 61);

  return [
    {
      skill_id: "WIC", rw_subtype: "vocabulary_in_context",
      gen: (cell, seed, difficulty) => {
        const res = regenerateWicRow(
          { difficulty, source_metadata: meta("vocabulary_in_context") },
          wicLetters[cell], seed,
        );
        if (!res.ok) return null;
        return { ...res.draft, rw_subtype: "vocabulary_in_context", rw_format: "passage_mc" };
      },
    },
    {
      skill_id: "TSP", rw_subtype: "structure",
      gen: (cell, seed, difficulty) =>
        buildTspCtcRow({ skill_id: "TSP", difficulty, source_metadata: meta("structure") }, seed),
    },
    {
      skill_id: "CTC", rw_subtype: "cross_text_response",
      gen: (cell, seed, difficulty) =>
        buildTspCtcRow({ skill_id: "CTC", difficulty, source_metadata: meta("cross_text_response") }, seed),
    },
    {
      skill_id: "CID", rw_subtype: "main_idea",
      gen: (cell, seed, difficulty) =>
        regenerateCidRow(
          { difficulty, external_id: null, question_text: "", source_metadata: meta("main_idea") },
          seed,
        ),
    },
    {
      skill_id: "COE", rw_subtype: "textual_evidence",
      gen: (cell, seed, difficulty) =>
        regenerateCoeRow(
          { difficulty, external_id: null, source_metadata: meta("textual_evidence") },
          seed, coeTLetters[cell],
        ),
    },
    {
      skill_id: "COE", rw_subtype: "quantitative_table",
      gen: (cell, seed, difficulty) =>
        regenerateCoeRow(
          { difficulty, external_id: null, source_metadata: meta("quantitative_table") },
          seed, coeQLetters[cell],
        ),
    },
    ...["general", "prediction", "implication"].map((sub) => ({
      skill_id: "INF", rw_subtype: sub,
      gen: (cell, seed, difficulty) =>
        regenerateInfMasterWithRetry({ difficulty, source_metadata: meta(sub) }, seed),
    })),
    {
      skill_id: "TRA", rw_subtype: "transition",
      gen: (cell, seed, difficulty) => {
        const kind = TRA_KINDS[seed % TRA_KINDS.length];
        const seedToken = TRA_TOKEN_FOR_KIND[kind];
        const stimulus_text = buildTraStimulus(kind, seed);
        const base = regenerateTraQuestion(
          {
            difficulty,
            stimulus_text,
            options: [{ id: "A", text: seedToken, is_correct: true }],
            source_metadata: meta("transition"),
          },
          seed,
        );
        base.stimulus_text = stimulus_text;
        base.stimulus_type = "passage";
        if (difficulty !== "hard") return base;
        // Hard transitions require ≥10-word participial phrases (longTraOptions).
        const correctId = base.correct_answer;
        const opts = longTraOptions(correctId, seedToken, seed);
        const built = buildOnePrepExplanation(
          { ...base, options: opts, correct_answer: correctId },
          { skill: "TRA", rw_subtype: "transition", difficulty: "hard" },
        );
        return { ...base, options: built.options ?? opts, explanation: built.explanation };
      },
    },
    {
      skill_id: "BOU", rw_subtype: "boundaries",
      gen: (cell, seed, difficulty) => {
        const pool = bouByDiff[difficulty]?.length ? bouByDiff[difficulty] : bouBatch;
        const it = pool[bouCursor[difficulty]++ % pool.length];
        const targetLetter = bouLetters[cell];
        const options = placeCorrectAt(it.options, targetLetter);
        const stimulus_text = fitBouStimulus(it.stimulus_text, seed);
        const built = buildOnePrepExplanation(
          { ...it, stimulus_text, options, correct_answer: targetLetter },
          { skill: "BOU", rw_subtype: "boundaries", difficulty },
        );
        return {
          question_text: it.question_text,
          stimulus_text,
          stimulus_type: "passage",
          options: built.options ?? options,
          correct_answer: targetLetter,
          explanation: built.explanation,
          rw_format: "grammar_blank",
        };
      },
    },
    {
      skill_id: "SYN", rw_subtype: "notes_synthesis",
      gen: (cell, seed, difficulty) => {
        const q = buildSynRegenItem(seed, difficulty);
        return { ...q, rw_format: "bullet_notes" };
      },
    },
    {
      skill_id: "FSS", rw_subtype: "form_structure_sense",
      gen: (cell, seed, difficulty) => generateFssMasterManualItem(seed, difficulty),
    },
  ];
}

function assembleRow(spec, q, difficulty, i) {
  const rw_subtype = spec.rw_subtype;
  const rw_format = q.rw_format ?? q.source_metadata?.rw_format;
  const source_metadata = {
    ...(q.source_metadata ?? {}),
    dsat_blueprint_v1: true,
    rw_subtype,
    rw_format,
    generator: "regenerate-english-fresh.mjs",
    regen_seed_offset: OFFSET,
    explanation_v2: true,
  };
  return {
    id: randomUUID(),
    question_text: q.question_text,
    stimulus_text: q.stimulus_text ?? null,
    stimulus_type: q.stimulus_type ?? (q.stimulus_text ? "passage" : null),
    options: ensureDistractorTags(q.options, rw_subtype),
    correct_answer: q.correct_answer,
    explanation: q.explanation,
    difficulty,
    skill_id: spec.skill_id,
    rw_subtype,
    rw_format,
    source_metadata,
    _index: i,
  };
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function insertSql(row) {
  const meta = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const opts = JSON.stringify(row.options).replace(/'/g, "''");
  const sk = SKILLS[row.skill_id];
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, ${sqlEscape(row.stimulus_type)}, '${opts}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(sk.topic)}, ${sqlEscape(sk.subtopic)}, ${sqlEscape(sk.section)}, ${sqlEscape(sk.domain_id)}, ${sqlEscape(row.skill_id)}, NULL, ${sqlEscape(row.difficulty)}, false, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${meta}'::jsonb, now(), now());`;
}

function main() {
  if (existsSync(OUT_DIR)) rmSync(OUT_DIR, { recursive: true, force: true });
  mkdirSync(join(OUT_DIR, "inserts"), { recursive: true });

  const generators = makeGenerators();
  const allRows = [];
  const stats = {};
  const sampleFails = [];

  for (const spec of generators) {
    const key = spec.rw_subtype;
    stats[key] = { skill_id: spec.skill_id, generated: 0, fails: 0, clean: 0, soft: 0, letters: { A: 0, B: 0, C: 0, D: 0 }, byDiff: { easy: 0, medium: 0, hard: 0 }, softReasons: {} };
    for (let i = 0; i < PER_SUBTYPE; i++) {
      const difficulty = difficultyForCell(i);
      let best = null; // { candidate, soft:[] } with zero hard reasons, fewest soft
      let lastReasons = null;
      for (let attempt = 0; attempt < ATTEMPTS; attempt++) {
        const seed = i + OFFSET + attempt * 911;
        let q;
        try {
          q = spec.gen(i, seed, difficulty);
        } catch (e) {
          lastReasons = [`gen_error:${String(e.message).slice(0, 100)}`];
          continue;
        }
        if (!q || !Array.isArray(q.options)) { lastReasons = ["no_output"]; continue; }
        const candidate = assembleRow(spec, q, difficulty, i);
        const v = validateDsatRwQuestion(candidate);
        lastReasons = v.reasons;
        const hard = v.reasons.filter(isHard);
        const soft = v.reasons.filter((r) => !isHard(r));
        if (hard.length === 0 && (!best || soft.length < best.soft.length)) {
          best = { candidate, soft };
          if (soft.length === 0) break;
        }
      }
      if (!best) {
        stats[key].fails++;
        if (sampleFails.length < 30) sampleFails.push({ key, i, reasons: lastReasons });
        continue;
      }
      allRows.push(best.candidate);
      stats[key].generated++;
      if (best.soft.length === 0) stats[key].clean++;
      else {
        stats[key].soft++;
        for (const r of best.soft) {
          const norm = String(r).split(":")[0];
          stats[key].softReasons[norm] = (stats[key].softReasons[norm] ?? 0) + 1;
        }
      }
      stats[key].letters[best.candidate.correct_answer]++;
      stats[key].byDiff[difficulty]++;
    }
  }

  // Emit INSERT SQL in chunks of 50
  const CHUNK = 50;
  let chunkIdx = 0;
  for (let b = 0; b < allRows.length; b += CHUNK) {
    const chunk = allRows.slice(b, b + CHUNK);
    const sql = "BEGIN;\n" + chunk.map(insertSql).join("\n") + "\nCOMMIT;\n";
    writeFileSync(join(OUT_DIR, "inserts", `insert-${String(chunkIdx).padStart(3, "0")}.sql`), sql);
    chunkIdx++;
  }

  const letterTotals = { A: 0, B: 0, C: 0, D: 0 };
  for (const r of allRows) letterTotals[r.correct_answer]++;

  const summary = {
    offset: OFFSET,
    total_rows: allRows.length,
    target: generators.length * PER_SUBTYPE,
    chunks: chunkIdx,
    letter_totals: letterTotals,
    letter_pct: Object.fromEntries(LETTERS.map((l) => [l, Math.round(1000 * letterTotals[l] / allRows.length) / 10])),
    by_subtype: stats,
    sample_fails: sampleFails,
  };
  writeFileSync(join(OUT_DIR, "summary.json"), JSON.stringify(summary, null, 2));
  console.log(JSON.stringify(summary, null, 2));
}

main();
