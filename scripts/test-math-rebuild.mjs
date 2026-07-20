/**
 * Self-test for dsat-math-rebuild.mjs.
 *   node scripts/test-math-rebuild.mjs           -> bulk validation summary
 *   node scripts/test-math-rebuild.mjs samples   -> printed samples to eyeball
 */
import { MATH_SKILLS, SPR_ELIGIBLE, generateValidItem } from "./lib/dsat-math-rebuild.mjs";

const TIERS = ["easy", "medium", "hard", "challenged"];
const mode = process.argv[2];

if (mode === "samples") {
  const skills = process.argv[3] ? process.argv[3].split(",") : MATH_SKILLS;
  for (const skill of skills) {
    for (const tier of ["easy", "hard", "challenged"]) {
      const { item } = generateValidItem({ skill, tier, seed: 7, format: "mcq" });
      console.log("\n========================================================");
      console.log(`${skill} / ${tier} / mcq   [${item.subtopic}]`);
      console.log("--------------------------------------------------------");
      if (item.stimulus_text) console.log("STIMULUS:\n" + item.stimulus_text.replace(/<svg[\s\S]*?<\/svg>/g, "[SVG figure]"));
      console.log("Q: " + item.question_text);
      for (const o of item.options) console.log(`  ${o.id}) ${o.text}${o.is_correct ? "   <-- correct" : ""}`);
      console.log("EXPLANATION:\n" + item.explanation);
    }
    // one SPR sample if eligible
    if (SPR_ELIGIBLE.has(skill)) {
      const { item } = generateValidItem({ skill, tier: "medium", seed: 3, format: "spr" });
      console.log(`\n--- ${skill} / medium / SPR --- ans=${item.correct_answer}`);
      console.log("Q: " + item.question_text);
    }
  }
  process.exit(0);
}

// bulk validation
const PER_CELL = 200;
let total = 0, failures = 0, maxTries = 0, retried = 0;
const figMismatch = [];
const reasonCounts = {};

for (const skill of MATH_SKILLS) {
  for (const tier of TIERS) {
    for (const format of ["mcq", "spr"]) {
      if (format === "spr" && !SPR_ELIGIBLE.has(skill)) continue;
      for (let seed = 0; seed < PER_CELL; seed++) {
        total++;
        try {
          const { item, tries } = generateValidItem({ skill, tier, seed, format });
          if (tries > 1) retried++;
          if (tries > maxTries) maxTries = tries;
          // extra cross-check: figure labels present in stimulus for geometry
          if (item.has_figure && item.stimulus_text.includes("<svg")) {
            if (item.skill_id === "LIN_G") {
              const nums = [...item.stimulus_text.matchAll(/>(\d+)°</g)].map((x) => Number(x[1]));
              const stemNums = (item.stimulus_text.match(/=\s*(\d+)°/g) || []).map((x) => Number(x.match(/\d+/)[0]));
              for (const sn of stemNums) if (!nums.includes(sn)) figMismatch.push(`${skill}/${tier}/${seed}: stem ${sn} not in fig ${nums}`);
            }
          }
        } catch (e) {
          failures++;
          const r = String(e.message).split(":").pop().trim();
          reasonCounts[r] = (reasonCounts[r] || 0) + 1;
        }
      }
    }
  }
}

console.log(`Generated/validated: ${total}`);
console.log(`Hard failures (no valid item in 60 tries): ${failures}`);
console.log(`Items that needed a retry: ${retried} (${((retried / total) * 100).toFixed(2)}%), max tries seen: ${maxTries}`);
console.log(`Figure/stem mismatches: ${figMismatch.length}`);
if (figMismatch.length) console.log(figMismatch.slice(0, 10).join("\n"));
if (failures) console.log("Failure reasons:", reasonCounts);
console.log(failures === 0 && figMismatch.length === 0 ? "\n✅ ALL STRUCTURAL CHECKS PASS" : "\n❌ ISSUES FOUND");
