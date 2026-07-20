import { mkOpts, charLen, optionWordCount } from "./lib/english-rw-templates.mjs";
import { validateDsatRwQuestion, buildOnePrepExplanation } from "./lib/dsat-rw-blueprint.mjs";

const entry = {
  correct: "to lessen or reduce harm",
  traps: [
    { text: "to worsen or increase harm", trap: "opposite" },
    { text: "to ignore or dismiss harm", trap: "common_definition" },
    { text: "to multiply or spread harm", trap: "related_wrong_sense" },
  ],
};

function padDistractorToLen(text, targetLen) {
  let t = String(text).trim();
  const suffixes = [" here", " now", " too", " still", " also"];
  let si = 0;
  while (charLen(t) < targetLen && si < 12) {
    t += suffixes[si % suffixes.length];
    si++;
  }
  return t;
}

function spreadPct(lens) {
  const max = Math.max(...lens);
  const min = Math.min(...lens);
  return min > 0 ? Math.round(1000 * (max - min) / min) / 10 : 0;
}

const raw = [entry.correct, ...entry.traps.map((t) => t.text)];
const targetWords = Math.max(...raw.map((t) => optionWordCount(t)));
const normalized = raw.map((t) => {
  const words = t.trim().split(/\s+/);
  while (words.length < targetWords) words.push("here");
  return words.slice(0, targetWords).join(" ");
});
const correct = normalized[0];
let distractors = normalized.slice(1).map((d) => padDistractorToLen(d, charLen(correct)));
let opts = [correct, ...distractors];
const maxLen = Math.max(...opts.map(charLen));
distractors = normalized.slice(1).map((d) => padDistractorToLen(d, maxLen));
opts = [correct, ...distractors];
console.log("opts lens", opts.map(charLen), "spread", spreadPct(opts.map(charLen)));

const expls = opts.map((text, i) => (i === 0 ? "correct expl" : "wrong expl"));
const options = mkOpts("B", opts, expls);
const q = {
  question_text: 'As used in the passage, "mitigate" most nearly means',
  stimulus_text:
    "Some passage text here with mitigate in context for testing purposes only and more words to meet minimum.",
  stimulus_type: "passage",
  options,
  correct_answer: "B",
  explanation: "placeholder",
  difficulty: "easy",
  skill_id: "WIC",
  rw_subtype: "vocabulary_in_context",
  rw_format: "passage_mc",
  source_metadata: {
    dsat_blueprint_v1: true,
    rw_subtype: "vocabulary_in_context",
    rw_format: "passage_mc",
  },
  dsat_blueprint_v1: true,
};
const built = buildOnePrepExplanation(q, {
  skill: "WIC",
  rw_subtype: "vocabulary_in_context",
  difficulty: "easy",
});
console.log(
  "after build lens",
  built.options.map((o) => charLen(o.text)),
  "spread",
  spreadPct(built.options.map((o) => charLen(o.text))),
);
const v = validateDsatRwQuestion({ ...q, explanation: built.explanation, options: built.options });
console.log("validation", v);
