#!/usr/bin/env node
/**
 * Split the full R&W export into per-(skill, difficulty, challenge) chunk input
 * files of <= 20 items each, in the SAME order the export used (skill, difficulty,
 * challenge_only, id) so difficulty/tier is preserved batch by batch.
 *
 *   node scripts/rewrite/make-chunks.mjs
 *
 * Emits:
 *   scripts/rewrite/chunks/<SKILL>-<diff>[-ch]-NNN.input.json   (work-list per agent)
 *   scripts/rewrite/manifest.json                               (list of all chunks)
 *
 * BOU/easy-001 is skipped from the manifest's "todo" (already applied).
 */
import { readFileSync, writeFileSync, mkdirSync, existsSync } from "node:fs";
import { resolve } from "node:path";

const SRC = resolve("english-questions.json");
const OUT_DIR = resolve("scripts/rewrite/chunks");
const SIZE = 20;
const ALREADY_DONE = new Set(["BOU-easy-001"]);

mkdirSync(OUT_DIR, { recursive: true });

const data = JSON.parse(readFileSync(SRC, "utf8"));
const groups = new Map(); // key -> items[]
for (const q of data.questions) {
  const tier = q.challenge_only ? "ch" : "std";
  const key = `${q.skill_id}|${q.difficulty}|${tier}`;
  if (!groups.has(key)) groups.set(key, []);
  groups.get(key).push(q);
}

const manifest = [];
for (const [key, items] of groups) {
  const [skill, diff, tier] = key.split("|");
  const tag = tier === "ch" ? `${diff}-ch` : diff;
  for (let i = 0; i < items.length; i += SIZE) {
    const slice = items.slice(i, i + SIZE);
    const n = String(Math.floor(i / SIZE) + 1).padStart(3, "0");
    const chunkId = `${skill}-${tag}-${n}`;
    const inputPath = `scripts/rewrite/chunks/${chunkId}.input.json`;
    const payload = slice.map((q) => ({
      id: q.id,
      skill_id: q.skill_id,
      difficulty: q.difficulty,
      challenge_only: q.challenge_only,
      question_text: q.question_text,
      stimulus_text: q.stimulus_text,
      options: (q.options || []).map((o) => ({
        id: o.id,
        text: o.text,
        is_correct: !!o.is_correct,
      })),
      correct_answer: q.correct_answer,
    }));
    writeFileSync(resolve(inputPath), JSON.stringify(payload, null, 2));
    manifest.push({
      chunkId,
      skill,
      difficulty: diff,
      challenge_only: tier === "ch",
      count: slice.length,
      inputPath,
      batchPath: `scripts/rewrite/batches/${chunkId}.json`,
      done: ALREADY_DONE.has(chunkId),
    });
  }
}

writeFileSync(resolve("scripts/rewrite/manifest.json"), JSON.stringify(manifest, null, 2));

const bySkill = {};
for (const m of manifest) bySkill[m.skill] = (bySkill[m.skill] || 0) + (m.done ? 0 : 1);
const todo = manifest.filter((m) => !m.done).length;
console.log(`Wrote ${manifest.length} chunks (${todo} todo).`);
console.log("Chunks per skill (todo):", JSON.stringify(bySkill));
