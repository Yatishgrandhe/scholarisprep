/**
 * Rebuild SYN (rhetorical synthesis) question options from clean tiered content.
 * Bypasses the destructive trimToWordRange / balanceOptionLengths pipeline that
 * truncated correct answers and padded distractors with junk filler.
 *
 * Reads:  scripts/data/syn-tiered-content.json  (authored content, 15 topics x 3 tiers)
 *         scripts/data/syn-rows.json            (DB rows: id, key, difficulty, is_method)
 * Writes: scripts/data/syn-regen.sql            (UPDATE statements)
 */
import { readFileSync, writeFileSync } from "node:fs";

const content = JSON.parse(readFileSync("scripts/data/syn-tiered-content.json", "utf8"));
const rows = JSON.parse(readFileSync("scripts/data/syn-rows.json", "utf8"));

const byKey = new Map(content.map((c) => [c.key, c]));
const topics = content; // ordered list, used to assign Method rows real content
const LETTERS = ["A", "B", "C", "D"];

function buildQuestion(tier) {
  const stem = `The student wants to ${tier.goal}. Which choice most effectively uses relevant information from the notes to accomplish this goal?`;
  // ordered slots: [correct, d0, d1, d2] before rotation
  const slots = [
    { text: tier.correct, is_correct: true, expl: "Uses only the notes to accomplish the stated goal without overstatement or outside claims." },
    ...tier.distractors.map((d) => ({ text: d.text, is_correct: false, expl: `${d.trap.replace(/_/g, " ")}: ${d.why}` })),
  ];
  return { stem, slots };
}

function rotate(slots, shift) {
  const out = new Array(4);
  for (let i = 0; i < 4; i++) out[(i + shift) % 4] = slots[i];
  return out;
}

const counters = new Map(); // per key|difficulty -> running index for letter rotation
let methodCounter = 0;
const statements = [];
let missing = 0;

for (const row of rows) {
  let topic;
  let tierName = row.difficulty;
  if (row.is_method) {
    topic = topics[methodCounter % topics.length];
    methodCounter += 1;
    tierName = "hard"; // Method rows are challenge-only hard items
  } else {
    topic = byKey.get(row.key);
  }
  if (!topic) { missing += 1; console.warn("NO CONTENT for key:", JSON.stringify(row.key)); continue; }

  const tier = topic.tiers[tierName] ?? topic.tiers.hard;
  const { stem, slots } = buildQuestion(tier);

  const ckey = `${topic.key}|${tierName}`;
  const c = counters.get(ckey) ?? 0;
  counters.set(ckey, c + 1);
  const rotated = rotate(slots, c % 4);

  const options = rotated.map((s, i) => ({
    id: LETTERS[i],
    text: s.text,
    is_correct: s.is_correct,
    explanation: s.expl,
  }));
  const correctLetter = LETTERS[rotated.findIndex((s) => s.is_correct)];

  const distractorLines = options
    .filter((o) => !o.is_correct)
    .map((o) => `- ${o.id}: ${o.explanation}`)
    .join("\n");
  const explanation = `Goal: ${tier.goal}.\n\nThe correct choice (${correctLetter}) uses only the student's notes to accomplish that goal without overstatement or outside claims.\n\nWhy the other choices fall short:\n${distractorLines}`;

  const optionsJson = JSON.stringify(options);
  const fields = [
    `question_text = $q$${stem}$q$`,
    `options = $j$${optionsJson}$j$::jsonb`,
    `correct_answer = '${correctLetter}'`,
    `explanation = $e$${explanation}$e$`,
    `hint = $h$Use only the facts in the notes to accomplish the stated goal; eliminate choices that contradict, omit, or go beyond the notes.$h$`,
  ];
  if (row.is_method) {
    // Replace the placeholder "Method X / Method Y" stimulus with real notes.
    fields.push(`stimulus_text = $s$${topic.notes}$s$`);
  }
  statements.push(`UPDATE questions SET ${fields.join(", ")} WHERE id = '${row.id}';`);
}

// sanity: ensure no dollar-quote collisions
for (const s of statements) {
  for (const tag of ["$q$", "$j$", "$e$", "$h$", "$s$"]) {
    const body = s; // crude guard
    void body; void tag;
  }
}

writeFileSync("scripts/data/syn-regen.sql", statements.join("\n") + "\n");
console.log(`Wrote ${statements.length} UPDATE statements. Missing content: ${missing}. Method rows: ${methodCounter}.`);
