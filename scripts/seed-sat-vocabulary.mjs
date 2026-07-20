#!/usr/bin/env node
/**
 * Build INSERT SQL for SAT vocabulary seed.
 * Usage: node scripts/seed-sat-vocabulary.mjs [--batch-size=50]
 * Output: scripts/data/sat-vocabulary-seed.sql
 */
import fs from "node:fs";
import path from "node:path";

const root = path.resolve(import.meta.dirname, "..");
const words = JSON.parse(
  fs.readFileSync(path.join(root, "scripts/data/sat-vocabulary.json"), "utf8"),
);

const batchSize = Number(process.argv.find((a) => a.startsWith("--batch-size="))?.split("=")[1] ?? 50);

function esc(value) {
  return value.replace(/'/g, "''");
}

const chunks = [];
for (let i = 0; i < words.length; i += batchSize) {
  chunks.push(words.slice(i, i + batchSize));
}

const lines = [
  "-- SAT vocabulary seed (idempotent)",
  `-- Total words: ${words.length}`,
  "",
];

for (const chunk of chunks) {
  const values = chunk
    .map(
      (w) =>
        `('${esc(w.word)}', '${esc(w.definition)}', '${esc(w.example_sentence)}', '${esc(w.part_of_speech)}', '${w.difficulty}'::public.difficulty, 'SAT'::public.exam_type)`,
    )
    .join(",\n  ");

  lines.push(`INSERT INTO public.vocabulary_words (word, definition, example_sentence, part_of_speech, difficulty, exam_type)
VALUES
  ${values}
ON CONFLICT (word, exam_type) DO UPDATE SET
  definition = EXCLUDED.definition,
  example_sentence = EXCLUDED.example_sentence,
  part_of_speech = EXCLUDED.part_of_speech,
  difficulty = EXCLUDED.difficulty;
`);
}

const outPath = path.join(root, "scripts/data/sat-vocabulary-seed.sql");
fs.writeFileSync(outPath, lines.join("\n"));
console.log(`Wrote ${outPath} (${chunks.length} batches, ${words.length} words)`);
