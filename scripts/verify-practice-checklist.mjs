/**
 * Verifies practice checklist items that can be tested without a browser session.
 * Run: node scripts/verify-practice-checklist.mjs
 */
import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { resolve } from "path";

function loadEnv() {
  const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
  const env = {};
  for (const line of raw.split("\n")) {
    const m = line.match(/^([^#=]+)=(.*)$/);
    if (m) env[m[1].trim()] = m[2].trim();
  }
  return env;
}

function parseMathSegments(input) {
  const segments = [];
  let i = 0;
  while (i < input.length) {
    const blockStart = input.indexOf("$$", i);
    const inlineStart = input.indexOf("$", i);
    if (blockStart === -1 && inlineStart === -1) {
      segments.push({ type: "text", value: input.slice(i) });
      break;
    }
    const nextIsBlock =
      blockStart !== -1 && (inlineStart === -1 || blockStart <= inlineStart);
    if (nextIsBlock) {
      if (blockStart > i) segments.push({ type: "text", value: input.slice(i, blockStart) });
      const blockEnd = input.indexOf("$$", blockStart + 2);
      if (blockEnd === -1) {
        segments.push({ type: "text", value: input.slice(blockStart) });
        break;
      }
      segments.push({ type: "block", value: input.slice(blockStart + 2, blockEnd) });
      i = blockEnd + 2;
      continue;
    }
    if (inlineStart > i) segments.push({ type: "text", value: input.slice(i, inlineStart) });
    const inlineEnd = input.indexOf("$", inlineStart + 1);
    if (inlineEnd === -1) {
      segments.push({ type: "text", value: input.slice(inlineStart) });
      break;
    }
    segments.push({ type: "inline", value: input.slice(inlineStart + 1, inlineEnd) });
    i = inlineEnd + 1;
  }
  return segments;
}

const env = loadEnv();
const supabase = createClient(
  env.NEXT_PUBLIC_SUPABASE_URL,
  env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
);

const MATH_SECTIONS = [
  "math",
  "math_calc",
  "math_no_calc",
  "SAT Math",
  "JAMB Math",
  "ACT Math",
];

const RW_SECTIONS = [
  "reading_writing",
  "SAT Reading",
  "General Reading",
  "ACT English",
];

async function main() {
  const results = {};

  const { data: allQ } = await supabase
    .from("questions")
    .select("id, section, topic, options, stimulus_text, question_text")
    .eq("is_platform_question", true);

  results.questionCount = allQ?.length ?? 0;

  const exactMath = (allQ ?? []).filter((q) => q.section === "math").length;
  const broadMath = (allQ ?? []).filter((q) =>
    MATH_SECTIONS.some(
      (s) => q.section === s || (q.section ?? "").toLowerCase().includes("math"),
    ),
  ).length;
  results.mathFilterExact = exactMath;
  results.mathFilterBroad = broadMath;

  const withStimulus = (allQ ?? []).filter((q) => q.stimulus_text).length;
  results.questionsWithStimulus = withStimulus;

  const optionSample = (allQ ?? [])[0]?.options;
  const ids = Array.isArray(optionSample)
    ? optionSample.map((o) => o?.id).filter(Boolean)
    : [];
  results.optionIdsLookLikeLetters = ["A", "B", "C", "D"].every((l) =>
    ids.includes(l),
  );

  const mathText = "If $3x + 7 = 22$, what is $x$?";
  const segments = parseMathSegments(mathText);
  results.mathRendererParsesInline =
    segments.some((s) => s.type === "inline") && segments.some((s) => s.type === "text");

  const topics = new Set((allQ ?? []).map((q) => q.topic).filter(Boolean));
  results.distinctTopics = topics.size;

  console.log(JSON.stringify(results, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
