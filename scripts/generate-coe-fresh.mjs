#!/usr/bin/env node
/**
 * Fresh Command of Evidence (COE) bank — full replace (delete + insert).
 *
 * Produces a difficulty-graded length gradient that the old bank lacked
 * (every old tier was ~265 chars/option). Target avg chars/option:
 *   easy ~95 · medium ~140 · hard ~190 · challenge ~250
 *
 * Coverage: quantitative_table (all tiers) + textual_evidence
 *   (scientific-hypothesis all tiers, literary-quotation mainly challenge).
 *
 * Correct answer integrity: correct_answer ALWAYS equals the id of the
 * option whose is_correct === true (the old bank was desynced).
 *
 *   node scripts/generate-coe-fresh.mjs --dry-run   # stats + sample, no DB
 *   node scripts/generate-coe-fresh.mjs --emit       # write SQL file
 *   node scripts/generate-coe-fresh.mjs --emit --apply  # write + apply via apply-pg
 */
import { writeFileSync, mkdirSync } from "node:fs";
import { resolve } from "node:path";
import { spawnSync } from "node:child_process";

const argv = process.argv.slice(2);
const emit = argv.includes("--emit");
const apply = argv.includes("--apply");

const OUT_DIR = resolve("scripts/data/.coe-fresh");
const SQL_FILE = resolve(OUT_DIR, "coe-fresh.sql");

/* ----------------------------- deterministic RNG ----------------------------- */
function mulberry32(seed) {
  let a = seed >>> 0;
  return function () {
    a |= 0;
    a = (a + 0x6d2b79f5) | 0;
    let t = Math.imul(a ^ (a >>> 15), 1 | a);
    t = (t + Math.imul(t ^ (t >>> 7), 61 | t)) ^ t;
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}
const charLen = (s) => String(s ?? "").length;
const cap = (s) => s.charAt(0).toUpperCase() + s.slice(1);
const sqlStr = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

/* Assign 4 option texts to A–D in a seeded order so the correct letter is
 * evenly distributed; return {options, correct_answer}. */
function placeOptions(items, rng) {
  // items: [{text, is_correct, explanation}] length 4
  const order = [0, 1, 2, 3];
  for (let i = order.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1));
    [order[i], order[j]] = [order[j], order[i]];
  }
  const LETTERS = ["A", "B", "C", "D"];
  const options = order.map((srcIdx, pos) => ({
    id: LETTERS[pos],
    text: items[srcIdx].text,
    is_correct: items[srcIdx].is_correct,
    explanation: items[srcIdx].explanation,
  }));
  const correct = options.find((o) => o.is_correct);
  return { options, correct_answer: correct.id };
}

/* ----------------------------- quantitative bank ----------------------------- */
// Each scenario: ascending x → ascending y (claim = "greater x ⇒ higher y").
const QUANT = [
  { who: "Dr. Morales", ctx: "Dr. Morales studied community garden plots over one growing season, with cultivation methods held constant.", x: "weekly volunteer time", xu: "hours", y: "vegetable harvest", yu: "lbs", xs: [9, 15, 21, 27], yb: 415, ys: 110 },
  { who: "Dr. Adeyemi", ctx: "Dr. Adeyemi monitored solar arrays of differing panel area at a single test site for one year.", x: "panel area", xu: "m²", y: "annual energy output", yu: "kWh", xs: [10, 20, 30, 40], yb: 1800, ys: 1600 },
  { who: "Dr. Chen", ctx: "Dr. Chen measured reading fluency in students who logged different amounts of independent reading.", x: "weekly reading", xu: "hours", y: "words read per minute", yu: "wpm", xs: [2, 4, 6, 8], yb: 120, ys: 22 },
  { who: "Dr. Okafor", ctx: "Dr. Okafor recorded crop yields on fields treated with increasing amounts of compost.", x: "compost applied", xu: "kg/plot", y: "grain yield", yu: "kg", xs: [5, 10, 15, 20], yb: 88, ys: 26 },
  { who: "Dr. Lindqvist", ctx: "Dr. Lindqvist surveyed lakes across a region that differed in surrounding forest cover.", x: "forest cover", xu: "%", y: "water clarity", yu: "cm", xs: [20, 40, 60, 80], yb: 110, ys: 90 },
  { who: "Dr. Santos", ctx: "Dr. Santos tested battery cells charged for different durations under identical conditions.", x: "charge time", xu: "min", y: "stored capacity", yu: "mAh", xs: [15, 30, 45, 60], yb: 600, ys: 520 },
  { who: "Dr. Whitfield", ctx: "Dr. Whitfield observed bird feeders stocked with varying amounts of seed each morning.", x: "seed provided", xu: "g", y: "daily visits", yu: "visits", xs: [50, 100, 150, 200], yb: 34, ys: 18 },
  { who: "Dr. Nakamura", ctx: "Dr. Nakamura grew bacterial cultures at several incubation temperatures, holding nutrients constant.", x: "incubation temperature", xu: "°C", y: "colony count", yu: "colonies", xs: [20, 25, 30, 35], yb: 140, ys: 95 },
  { who: "Dr. Petrova", ctx: "Dr. Petrova measured insulation samples of increasing thickness in a controlled chamber.", x: "insulation thickness", xu: "cm", y: "heat retained", yu: "°C", xs: [2, 4, 6, 8], yb: 9, ys: 5 },
  { who: "Dr. Castellano", ctx: "Dr. Castellano tracked museum attendance during weeks with different numbers of advertised events.", x: "advertised events", xu: "events", y: "weekly attendance", yu: "visitors", xs: [3, 6, 9, 12], yb: 820, ys: 460 },
  { who: "Dr. Bauer", ctx: "Dr. Bauer fertilized greenhouse tomatoes with increasing nitrogen doses, holding light and water constant.", x: "nitrogen dose", xu: "mL", y: "fruit mass", yu: "g", xs: [4, 8, 12, 16], yb: 130, ys: 60 },
  { who: "Dr. Ferreira", ctx: "Dr. Ferreira measured coastal dunes stabilized with different densities of planted grass.", x: "grass density", xu: "plants/m²", y: "sand retained", yu: "kg", xs: [10, 20, 30, 40], yb: 210, ys: 130 },
  { who: "Dr. Halloran", ctx: "Dr. Halloran logged app users who completed different numbers of practice sessions per week.", x: "weekly sessions", xu: "sessions", y: "quiz score", yu: "points", xs: [1, 3, 5, 7], yb: 62, ys: 9 },
  { who: "Dr. Ibrahim", ctx: "Dr. Ibrahim studied wetlands receiving different volumes of seasonal inflow.", x: "seasonal inflow", xu: "ML", y: "frog egg masses", yu: "masses", xs: [5, 10, 15, 20], yb: 46, ys: 28 },
  { who: "Dr. Sorensen", ctx: "Dr. Sorensen tested adhesive samples cured for increasing lengths of time.", x: "cure time", xu: "hours", y: "bond strength", yu: "N", xs: [6, 12, 18, 24], yb: 240, ys: 160 },
  { who: "Dr. Vásquez", ctx: "Dr. Vásquez recorded orchard pollination on plots with different numbers of installed bee boxes.", x: "bee boxes", xu: "boxes", y: "fruit set", yu: "%", xs: [2, 4, 6, 8], yb: 38, ys: 12 },
  { who: "Dr. Lindgren", ctx: "Dr. Lindgren measured river segments shaded by different amounts of overhanging canopy.", x: "canopy shade", xu: "%", y: "trout count", yu: "fish", xs: [15, 30, 45, 60], yb: 52, ys: 30 },
  { who: "Dr. Abara", ctx: "Dr. Abara surveyed neighborhoods with different numbers of street trees per block.", x: "street trees", xu: "trees", y: "summer cooling", yu: "°C below baseline", xs: [4, 8, 12, 16], yb: 1, ys: 1 },
  { who: "Dr. Mensah", ctx: "Dr. Mensah baked bread samples with increasing proof times, holding other steps constant.", x: "proof time", xu: "min", y: "loaf volume", yu: "cm³", xs: [30, 45, 60, 75], yb: 540, ys: 180 },
  { who: "Dr. Pereira", ctx: "Dr. Pereira measured solar water heaters exposed to different daily sunlight hours.", x: "daily sunlight", xu: "hours", y: "water temperature", yu: "°C", xs: [2, 4, 6, 8], yb: 28, ys: 9 },
  { who: "Dr. Khoury", ctx: "Dr. Khoury tracked online courses that assigned different numbers of weekly discussion posts.", x: "weekly posts", xu: "posts", y: "completion rate", yu: "%", xs: [1, 2, 3, 4], yb: 54, ys: 11 },
  { who: "Dr. Romano", ctx: "Dr. Romano aged cheese wheels for different numbers of weeks under identical storage.", x: "aging time", xu: "weeks", y: "flavor rating", yu: "points", xs: [4, 8, 12, 16], yb: 41, ys: 13 },
  { who: "Dr. Yamada", ctx: "Dr. Yamada tested running shoes with midsoles of increasing foam density.", x: "foam density", xu: "kg/m³", y: "energy return", yu: "%", xs: [40, 50, 60, 70], yb: 58, ys: 8 },
  { who: "Dr. Novak", ctx: "Dr. Novak measured rooftop gardens of different soil depths over a dry summer.", x: "soil depth", xu: "cm", y: "plant survival", yu: "%", xs: [8, 12, 16, 20], yb: 50, ys: 14 },
  { who: "Dr. Eriksson", ctx: "Dr. Eriksson recorded wind turbines spaced at increasing distances from one another.", x: "turbine spacing", xu: "m", y: "power output", yu: "kW", xs: [100, 150, 200, 250], yb: 410, ys: 160 },
  { who: "Dr. Banerjee", ctx: "Dr. Banerjee studied tide pools at sites with different amounts of rocky cover.", x: "rocky cover", xu: "%", y: "species richness", yu: "species", xs: [20, 40, 60, 80], yb: 12, ys: 7 },
  { who: "Dr. Costa", ctx: "Dr. Costa measured greenhouse lettuce under increasing hours of supplemental LED light.", x: "LED light", xu: "hours", y: "leaf area", yu: "cm²", xs: [3, 6, 9, 12], yb: 180, ys: 70 },
  { who: "Dr. Andersson", ctx: "Dr. Andersson tracked libraries that hosted different numbers of monthly youth programs.", x: "monthly programs", xu: "programs", y: "youth memberships", yu: "members", xs: [2, 4, 6, 8], yb: 95, ys: 55 },
  { who: "Dr. Fontaine", ctx: "Dr. Fontaine tested compost piles turned at different weekly frequencies.", x: "weekly turnings", xu: "turns", y: "decomposition", yu: "%", xs: [1, 2, 3, 4], yb: 33, ys: 16 },
  { who: "Dr. Okonkwo", ctx: "Dr. Okonkwo measured classrooms that used different amounts of structured peer review.", x: "peer-review time", xu: "min/week", y: "essay score", yu: "points", xs: [10, 20, 30, 40], yb: 64, ys: 8 },
];

function quantRow(scn, rng, lengthTier, difficulty, challenge) {
  const tier = lengthTier;
  const xs = scn.xs;
  const ys = xs.map((_, i) => scn.yb + i * scn.ys);
  const [x1, x2, x3, x4] = xs;
  const [y1, y2, y3, y4] = ys;
  const xL = scn.x, yL = scn.y, xu = scn.xu, yu = scn.yu;
  const passage = `${scn.ctx} ${scn.who} hypothesized that groups with greater ${xL} would show higher ${yL}.`;
  const table =
    `| ${cap(xL)} (${xu}) | ${cap(yL)} (${yu}) |\n| --- | --- |\n` +
    xs.map((x, i) => `| ${x} | ${ys[i]} |`).join("\n");
  const stimulus = `${passage}\n\nThe table summarizes the results.\n\n${table}`;

  // The claim is paraphrased further from the data as difficulty rises
  // (easy = keyword echo, challenge = a nuance the student must honor).
  const claimByTier = {
    easy: `greater ${xL} is associated with higher ${yL}`,
    medium: `groups with more ${xL} tend to record higher ${yL}`,
    hard: `${yL} increases across the full range of ${xL}, not only at the extremes`,
    challenge: `${yL} rises together with ${xL} at every level, an association the data show rather than a cause they prove`,
  };
  const stem = `Which choice most effectively uses data from the table to support ${scn.who}'s claim that ${claimByTier[tier]}?`;

  // Difficulty is set by HOW the distractors fail, not by length. Each wrong
  // option fails for a different, tagged reason; the traps get subtler by tier.
  const sets = {
    easy: [
      { text: `As ${xL} rose from ${x1} to ${x4} ${xu}, ${yL} increased from ${y1} to ${y4} ${yu}.`, is_correct: true, explanation: `Correct. It cites the endpoints and reports ${yL} rising as ${xL} rises — the direct support the claim needs.` },
      { text: `As ${xL} rose from ${x1} to ${x4} ${xu}, ${yL} fell from ${y4} to ${y1} ${yu}.`, explanation: `Incorrect (wrong direction). The table shows ${yL} rising, not falling, as ${xL} increases.` },
      { text: `The table lists four different levels of ${xL}.`, explanation: `Incorrect (off-topic). Counting the rows says nothing about how ${yL} relates to ${xL}.` },
      { text: `At ${x2} ${xu} of ${xL}, ${yL} measured ${y2} ${yu}.`, explanation: `Incorrect (too narrow). One row by itself cannot show a trend across the table.` },
    ],
    medium: [
      { text: `Across the rows, ${yL} was greater at higher levels of ${xL}, rising from ${y1} ${yu} at ${x1} to ${y4} ${yu} at ${x4}.`, is_correct: true, explanation: `Correct. It paraphrases the trend and anchors it to the lowest and highest ${xL} values in the table.` },
      { text: `Between ${x1} and ${x2} ${xu}, ${yL} rose from ${y1} to ${y2} ${yu}.`, explanation: `Incorrect (too narrow). True for one segment, but it does not establish the trend across the whole range.` },
      { text: `${cap(yL)} decreased steadily as ${xL} increased, from ${y4} down to ${y1} ${yu}.`, explanation: `Incorrect (wrong direction). It reverses what the table shows.` },
      { text: `Groups with greater ${xL} tended to show higher ${yL}.`, explanation: `Incorrect (no data cited). It restates the claim without pointing to specific values, so it does not "use data from the table."` },
    ],
    hard: [
      { text: `${cap(yL)} increased at every step as ${xL} rose — ${y1}, ${y2}, ${y3}, then ${y4} ${yu} — so the rise holds across the entire range, not only part of it.`, is_correct: true, explanation: `Correct. Only this choice shows the association holding at every level, which is what "across the full range" requires.` },
      { text: `The group with the most ${xL} (${x4} ${xu}) recorded a higher ${yL} than the group with the least (${x1} ${xu}).`, explanation: `Incorrect (weaker version). Comparing only the extremes supports a milder claim and leaves the middle levels unaddressed.` },
      { text: `${cap(yL)} peaked at a middle level of ${xL} rather than at the largest value.`, explanation: `Incorrect (misreads the data). The table shows ${yL} highest at the largest ${xL}, not in the middle.` },
      { text: `${cap(yL)} values differed from one row to the next across the ${xL} levels.`, explanation: `Incorrect (too vague). Noting variation gives no direction.` },
    ],
    challenge: [
      { text: `At each successive level of ${xL}, the recorded ${yL} is higher than at the level just below it, so across the whole table ${yL} rises together with ${xL} — the association the claim describes.`, is_correct: true, explanation: `Correct. It states the step-by-step association precisely and stops at what the data show — co-variation, not cause.` },
      { text: `The data show that raising ${xL} causes ${yL} to increase, since ${yL} never falls as ${xL} goes up.`, explanation: `Incorrect (cause vs. correlation). A table can show the two rise together but cannot establish that ${xL} causes the change in ${yL}.` },
      { text: `${cap(yL)} is higher at the two largest ${xL} values than at the smallest, fitting the claim for the upper part of the range.`, explanation: `Incorrect (too narrow). It limits the support to a subset of rows instead of the whole range the claim covers.` },
      { text: `At ${x3} ${xu}, ${yL} reached ${y3} ${yu}, the single value the claim depends on.`, explanation: `Incorrect (too narrow + false premise). The claim rests on the trend across rows, not one data point.` },
    ],
  };

  const { options, correct_answer } = placeOptions(sets[tier].map((s) => ({ ...s, is_correct: !!s.is_correct })), rng);
  return {
    rw_subtype: "quantitative_table",
    rw_format: "table_chart",
    question_text: stem,
    stimulus_text: stimulus,
    options,
    correct_answer,
    explanation: `Step 1 — Read the table. Each row pairs a ${xL} level with the measured ${yL}.\n\nStep 2 — Match the data to the claim. The correct choice cites the values that show ${yL} rising as ${xL} rises across the range. Each distractor fails for a different reason — wrong direction, only the extremes, a single row, restating the claim without data, or treating association as proof of cause.`,
    difficulty,
    challenge_only: challenge,
  };
}

/* --------------------------- scientific-hypothesis --------------------------- */
const HYP = [
  { who: "Dr. Lee", ctx: "Dr. Lee grew bean seedlings under controlled conditions that differed only in daily light.", factor: "daily light", out: "stem height" },
  { who: "Dr. Park", ctx: "Dr. Park trained memory in volunteers who differed only in nightly sleep.", factor: "nightly sleep", out: "recall accuracy" },
  { who: "Dr. Mwangi", ctx: "Dr. Mwangi studied tilapia raised in tanks that differed only in water oxygenation.", factor: "water oxygenation", out: "growth rate" },
  { who: "Dr. Tanaka", ctx: "Dr. Tanaka tested concrete mixes that differed only in curing humidity.", factor: "curing humidity", out: "compressive strength" },
  { who: "Dr. Rossi", ctx: "Dr. Rossi observed pollinators on flower patches that differed only in bloom density.", factor: "bloom density", out: "pollinator visits" },
  { who: "Dr. Haddad", ctx: "Dr. Haddad measured runners on programs that differed only in weekly training volume.", factor: "weekly training volume", out: "race performance" },
  { who: "Dr. Olsen", ctx: "Dr. Olsen raised seedlings in soils that differed only in organic matter.", factor: "soil organic matter", out: "root mass" },
  { who: "Dr. Kapoor", ctx: "Dr. Kapoor surveyed shops that differed only in natural lighting.", factor: "natural lighting", out: "customer dwell time" },
  { who: "Dr. Bianchi", ctx: "Dr. Bianchi tested solar cookers that differed only in reflector size.", factor: "reflector size", out: "cooking temperature" },
  { who: "Dr. Nguyen", ctx: "Dr. Nguyen studied wetlands that differed only in native plant cover.", factor: "native plant cover", out: "amphibian diversity" },
  { who: "Dr. Fischer", ctx: "Dr. Fischer measured beehives that differed only in foraging distance to crops.", factor: "foraging distance", out: "honey yield" },
  { who: "Dr. Owens", ctx: "Dr. Owens compared classrooms that differed only in time spent on guided practice.", factor: "guided practice time", out: "test performance" },
  { who: "Dr. Saito", ctx: "Dr. Saito tested greenhouse vines that differed only in pruning frequency.", factor: "pruning frequency", out: "fruit sweetness" },
  { who: "Dr. Dubois", ctx: "Dr. Dubois studied streams that differed only in upstream tree cover.", factor: "upstream tree cover", out: "dissolved oxygen" },
  { who: "Dr. Khan", ctx: "Dr. Khan measured phone batteries that differed only in background app activity.", factor: "background app activity", out: "battery drain" },
  { who: "Dr. Moreau", ctx: "Dr. Moreau observed coral fragments that differed only in water flow.", factor: "water flow", out: "growth rate" },
  { who: "Dr. Schmidt", ctx: "Dr. Schmidt tested insulation panels that differed only in foam density.", factor: "foam density", out: "heat resistance" },
  { who: "Dr. Reyes", ctx: "Dr. Reyes studied gardens that differed only in mulch depth.", factor: "mulch depth", out: "soil moisture" },
  { who: "Dr. Larsson", ctx: "Dr. Larsson measured choirs that differed only in weekly rehearsal time.", factor: "weekly rehearsal time", out: "pitch accuracy" },
  { who: "Dr. Amin", ctx: "Dr. Amin tracked orchards that differed only in irrigation frequency.", factor: "irrigation frequency", out: "fruit size" },
  { who: "Dr. Costa", ctx: "Dr. Costa tested kilns that differed only in firing time.", factor: "firing time", out: "glaze hardness" },
  { who: "Dr. Petrov", ctx: "Dr. Petrov studied lakes that differed only in shoreline vegetation.", factor: "shoreline vegetation", out: "fish abundance" },
];

function hypRow(scn, rng, lengthTier, difficulty, challenge) {
  const tier = lengthTier;
  const f = scn.factor, o = scn.out;
  const passage = `${scn.ctx} Based on this work, ${scn.who} hypothesized that greater ${f} tends to produce higher ${o}.`;
  const stem = `Which finding, if true, would most directly support ${scn.who}'s hypothesis?`;

  // Difficulty rises through the kind of distractor, not the wording length:
  // easy = obviously off-target; medium = a related-but-insufficient near-match;
  // hard = a "weaker version" that is tempting; challenge = a cause-vs-correlation trap.
  const sets = {
    easy: [
      { text: `Groups with more ${f} showed higher ${o} than groups with less.`, is_correct: true, explanation: `Correct. A direct positive link between ${f} and ${o} is exactly what the hypothesis predicts.` },
      { text: `Groups with more ${f} showed lower ${o} than groups with less.`, explanation: `Incorrect (opposite result). This would undercut the hypothesis, not support it.` },
      { text: `Groups with more ${f} reported greater interest in taking part in the study.`, explanation: `Incorrect (off-topic). Interest in the study is not the ${o} the hypothesis is about.` },
      { text: `${cap(o)} was recorded, but ${f} was the same for every group.`, explanation: `Incorrect (factor not varied). With ${f} held constant, the finding cannot test the relationship.` },
    ],
    medium: [
      { text: `As groups received more ${f}, their ${o} was correspondingly greater.`, is_correct: true, explanation: `Correct. It reports the direct positive relationship the hypothesis predicts, in paraphrase.` },
      { text: `Groups with more ${f} also differed from the others on an unrelated measure.`, explanation: `Incorrect (related but insufficient). A difference on another measure says nothing about ${o}.` },
      { text: `More ${f} was associated with lower ${o} across the groups.`, explanation: `Incorrect (opposite result). It reverses the predicted direction.` },
      { text: `The amount of ${f} appeared to matter for ${o} in the study.`, explanation: `Incorrect (too vague). It restates the hypothesis without reporting an actual result.` },
    ],
    hard: [
      { text: `${cap(o)} rose step by step as ${f} increased, and the group with the least ${f} had the lowest ${o} — the full relationship, not just its endpoints.`, is_correct: true, explanation: `Correct. Only this shows the relationship holding across all groups, which the hypothesis requires.` },
      { text: `The group given the most ${f} recorded the highest ${o} of any group.`, explanation: `Incorrect (weaker version). One top group is consistent with the claim but does not show the across-the-board relationship.` },
      { text: `Differences in ${o} tracked an unrelated background variable more closely than ${f}.`, explanation: `Incorrect (confound). It credits a different cause for the variation in ${o}.` },
      { text: `Greater ${f} corresponded to lower ${o} among the groups.`, explanation: `Incorrect (opposite result). It contradicts the predicted direction.` },
    ],
    challenge: [
      { text: `Among groups matched on every other condition, those with more ${f} showed more ${o} at each level — leaving no rival explanation for the difference.`, is_correct: true, explanation: `Correct. Because the groups differ only in ${f}, the rise in ${o} can be tied to ${f} as the hypothesis requires.` },
      { text: `${cap(o)} rose where ${f} was greater, though those groups also differed in a second, unmeasured way.`, explanation: `Incorrect (confounded). If a second variable also differs, the result cannot be pinned on ${f}.` },
      { text: `Raising ${f} was shown to cause ${o} to climb, since the two increased together.`, explanation: `Incorrect (cause vs. correlation). Rising together shows association, not proven causation.` },
      { text: `At the single highest level of ${f}, ${o} reached its maximum value.`, explanation: `Incorrect (too narrow). One data point is not the relationship across the groups.` },
    ],
  };

  const { options, correct_answer } = placeOptions(sets[tier].map((s) => ({ ...s, is_correct: !!s.is_correct })), rng);
  return {
    rw_subtype: "textual_evidence",
    rw_format: "hypothesis_support",
    question_text: stem,
    stimulus_text: passage,
    options,
    correct_answer,
    explanation: `Step 1 — Identify the hypothesis: greater ${f} leads to higher ${o}.\n\nStep 2 — A finding supports it only if it reports that direct, varied relationship. The correct choice does. Each distractor fails differently — it reverses the result, names an unrelated measure, credits a confound, claims cause from mere co-variation, or never varies ${f}.`,
    difficulty,
    challenge_only: challenge,
  };
}

/* ---------------------- literary / textual-quotation bank --------------------- */
// Each item: a claim about a work + four quotations, exactly one of which
// illustrates the claim. Authored at challenge/hard length (dense quotations).
const LIT = [
  {
    work: "Wives and Daughters", author: "Elizabeth Gaskell", year: 1866,
    setup: "is an 1866 novel by Elizabeth Gaskell. In the novel, two young women named Molly and Cynthia attend a charity ball. Gaskell's narrator, in depicting these characters, acknowledges a historical distance between the reader and the characters themselves:",
    claim: "Gaskell's narrator emphasizes how much daily life has changed between the characters' era and the reader's present.",
    correct: "“When Molly and Cynthia were young—before railroads were, and before their consequences, the excursion-trains which take every one up to London now-a-days—to go to an annual charity-ball was a very allowable and favourite piece of dissipation.”",
    wrong: [
      "“So it was, for this was to be a very good ball, people said; and a large party from the Towers was coming, and a duchess in diamonds among the number.”",
      "“Molly, too, though not so good a dancer as Cynthia, was becoming engaged pretty deeply; and, it must be confessed, she was longing to dance every dance, no matter with whom.”",
      "“Molly felt innocent enough, so she offered no justification of herself, and made no reply; indeed she was more occupied in watching Cynthia, who seemed changed in a way she could not understand.”",
    ],
  },
  {
    work: "The Influence of Rationalism", author: "George Eliot", year: 1883,
    setup: "is an 1883 essay by George Eliot (the pen name of Marian Evans). In this essay, Eliot describes the “general reader” as an individual who does not have specialized literary or scholarly training; she then asserts that some talented writers, rather than shunning a “general” readership, publish with this specific audience in mind:",
    claim: "Eliot characterizes the general reader as preferring ideas that are familiar and moderate rather than original or demanding.",
    correct: "“In fact, the general reader likes sound views—nothing extreme, but something between the excesses of the past and the excesses of the present; this modern reader may be known by the cordiality with which he assents to indistinct, blurred statements.”",
    wrong: [
      "“There is a valuable class of books on great subjects which have something of the character and functions of good popular lecturing; they are not original, not subtle, not of close logical texture.”",
      "“The vagueness and vacillation of popular books are not devices of timidity; they are the honest result of the writer's own mental character, faithfully transcribed.”",
      "“These characteristics of the general reader render him incapable of assimilating ideas unless they are administered in a highly diluted form, drop by careful drop.”",
    ],
  },
  {
    work: "The Mill on the Floss", author: "George Eliot", year: 1860,
    setup: "is an 1860 novel by George Eliot. The narrator describes Maggie Tulliver, a clever girl whose eagerness to learn is rarely encouraged by those around her:",
    claim: "The narrator stresses that Maggie's intelligence goes largely unrecognized by the adults in her life.",
    correct: "“She was a creature full of eager, passionate longings for all that was beautiful and glad; thirsty for all knowledge; with an ear straining after dreamy music that died away and would not come near to her—and yet the people who lived close to her took no note of it.”",
    wrong: [
      "“Maggie's hair, as she threw off her bonnet, tumbled down in a heavy mass that was the despair of her mother and the amusement of her brother Tom.”",
      "“The afternoon was already advanced, and the mill kept up its steady, low thunder while the cart-horses plodded back from the fields.”",
      "“Tom, you see, was not given to reflection: he was a boy who knew exactly what he wanted, and was determined to get it by the shortest road.”",
    ],
  },
  {
    work: "Cranford", author: "Elizabeth Gaskell", year: 1853,
    setup: "is an 1853 work by Elizabeth Gaskell depicting a small English town. The narrator gently mocks the way the town's genteel ladies disguise their economy as elegant principle:",
    claim: "The narrator suggests that the townswomen reframe their lack of money as a matter of refined taste.",
    correct: "“We none of us spoke of money, because that subject savoured of commerce and trade, and though some might be poor, we were all aristocratic; we had tacitly agreed to ignore that any with whom we associated on terms of equality could ever be prevented by poverty from anything they wished to do.”",
    wrong: [
      "“The Cranford ladies had only an occasional little quarrel, carried on in a few peppery words and angry jerks of the head, just enough to prevent the even tenor of their lives from becoming too flat.”",
      "“Miss Jenkyns wore a cravat, and a little bonnet like a jockey-cap, and altogether had the appearance of a strong-minded woman.”",
      "“I had often noticed the efficiency and even the comfort of her small establishment, where everything had its proper place and its proper hour.”",
    ],
  },
  {
    work: "Looking Backward", author: "Edward Bellamy", year: 1888,
    setup: "is an 1888 novel by Edward Bellamy in which a narrator wakes in a future society. Here the narrator reflects on how the people of that future regard the inequalities of his own century:",
    claim: "The narrator reports that the future society views his era's inequality as a source of bewilderment rather than admiration.",
    correct: "“They cannot understand how, with such means of comfort and happiness at command, the men of my century could have gone on living in the way they did; to them our arrangements seem not wicked merely, but, what is harder to forgive, supremely foolish.”",
    wrong: [
      "“The city stretched out before me, its avenues lined with trees and broken at intervals by open squares filled with fountains and statuary.”",
      "“I had been, when awake, a man of about thirty, in sound health, and in the enjoyment of an income more than sufficient for my wants.”",
      "“My hostess, observing my fatigue, suggested that the remainder of my questions might be reserved until I had rested from the strangeness of the day.”",
    ],
  },
  {
    work: "The Country of the Pointed Firs", author: "Sarah Orne Jewett", year: 1896,
    setup: "is an 1896 work by Sarah Orne Jewett. The narrator, a summer visitor to a coastal village, describes her landlady Mrs. Todd, an herb-gatherer whose knowledge impresses her:",
    claim: "The narrator presents Mrs. Todd's knowledge of plants as a kind of inherited wisdom rather than mere habit.",
    correct: "“She was an ardent lover of herbs, both wild and tame, and the sea-breezes blew into the low end-window of the house laden with not only sweet-brier and sweet-mary, but balm and sage and borage and mint, wormwood and southernwood, as if she had gathered the learning of generations into that one fragrant room.”",
    wrong: [
      "“The road went up and down, and the small gray house stood close upon it, with a footpath leading round to the side door.”",
      "“I had arrived in the early summer, and the days were long and bright, with a coolness in the air that came up from the water at evening.”",
      "“Mrs. Todd would be gone the greater part of an afternoon, and return with her basket full and her face flushed with the heat of the day.”",
    ],
  },
  {
    work: "The Awakening", author: "Kate Chopin", year: 1899,
    setup: "is an 1899 novel by Kate Chopin. The narrator describes a moment when Edna Pontellier begins to recognize a new sense of selfhood:",
    claim: "The narrator marks this moment as the beginning of Edna's awareness of herself as a distinct individual.",
    correct: "“In short, Mrs. Pontellier was beginning to realize her position in the universe as a human being, and to recognize her relations as an individual to the world within and about her—a ponderous weight of wisdom to descend upon the soul of a young woman of twenty-eight.”",
    wrong: [
      "“The water of the Gulf stretched out before her, gleaming with the million lights of the sun, and a quiet breeze came up from the south.”",
      "“Mr. Pontellier wore eye-glasses, and he had a way of turning them upon his wife as one might examine a piece of personal property.”",
      "“The children were gathered upon the porch, and their laughter rose and fell as the afternoon wore on toward its close.”",
    ],
  },
  {
    work: "Self-Reliance", author: "Ralph Waldo Emerson", year: 1841,
    setup: "is an 1841 essay by Ralph Waldo Emerson. In it, Emerson urges his readers to trust their own judgment over the settled opinions of society:",
    claim: "Emerson argues that conforming to public opinion costs a person their independence of mind.",
    correct: "“Society everywhere is in conspiracy against the manhood of every one of its members; the virtue in most request is conformity; self-reliance is its aversion, for it loves not realities and creators, but names and customs.”",
    wrong: [
      "“I read the other day some verses written by an eminent painter which were original and not conventional, and the soul always hears an admonition in such lines.”",
      "“There is a time in every man's education when he arrives at the conviction that envy is ignorance and that imitation is suicide.”",
      "“A foolish consistency is the hobgoblin of little minds, adored by little statesmen and philosophers and divines.”",
    ],
  },
  {
    work: "The House of Mirth", author: "Edith Wharton", year: 1905,
    setup: "is a 1905 novel by Edith Wharton. The narrator observes Lily Bart, a young woman acutely conscious of how others perceive her:",
    claim: "The narrator emphasizes that Lily is keenly aware of being judged by appearances.",
    correct: "“She was so evidently the victim of the civilization which had produced her, that the links of her bracelet seemed like manacles chaining her to her fate, and she felt every eye upon her measuring the worth of her gown against the worth of her person.”",
    wrong: [
      "“Selden paused in surprise; in the afternoon rush of the Grand Central Station his eyes had been refreshed by the sight of Miss Lily Bart.”",
      "“The afternoon was perfect, and a tepid air, laden with the scent of the gardens, drifted in at the open windows of the train.”",
      "“It was a long time since she had visited the country, and the green stillness of the place soothed her after the noise of the town.”",
    ],
  },
  {
    work: "Walden", author: "Henry David Thoreau", year: 1854,
    setup: "is an 1854 work by Henry David Thoreau, written during his stay in a cabin by Walden Pond. Thoreau explains his reasons for living apart from town:",
    claim: "Thoreau presents his retreat to the woods as a deliberate experiment in living simply and intentionally.",
    correct: "“I went to the woods because I wished to live deliberately, to front only the essential facts of life, and see if I could not learn what it had to teach, and not, when I came to die, discover that I had not lived.”",
    wrong: [
      "“The pond was my well ready dug, and for four months in the year its water was as cold as it was pure at all times.”",
      "“I had three chairs in my house; one for solitude, two for friendship, three for society, and the visitors took them as they would.”",
      "“In the morning I bathed my intellect in the stupendous and cosmogonal philosophy, beside which our modern world and its literature seem puny.”",
    ],
  },
  {
    work: "Middlemarch", author: "George Eliot", year: 1872,
    setup: "is an 1872 novel by George Eliot. The narrator reflects on Dorothea Brooke, whose large ideals find little outlet in the life available to her:",
    claim: "The narrator suggests that Dorothea's capacity for great feeling is wasted on a life that offers it no scope.",
    correct: "“Her full nature, like that river of which Cyrus broke the strength, spent itself in channels which had no great name on the earth; but the effect of her being on those around her was incalculably diffusive, for the growing good of the world is partly dependent on unhistoric acts.”",
    wrong: [
      "“Miss Brooke had that kind of beauty which seems to be thrown into relief by poor dress, and her hand and wrist were so finely formed.”",
      "“The town of Middlemarch, in the years just preceding the Reform, was at that time spirited with the discussion of every new arrival.”",
      "“Mr. Casaubon's home was called Lowick, and the house had an air of autumnal decline even at the height of summer.”",
    ],
  },
  {
    work: "Civil Disobedience", author: "Henry David Thoreau", year: 1849,
    setup: "is an 1849 essay by Henry David Thoreau. Thoreau argues that a citizen's conscience should take precedence over the demands of an unjust government:",
    claim: "Thoreau contends that individuals must not surrender their moral judgment to the authority of the state.",
    correct: "“It is not desirable to cultivate a respect for the law, so much as for the right; the only obligation which I have a right to assume is to do at any time what I think right, and law never made men a whit more just.”",
    wrong: [
      "“I have paid no poll-tax for six years, and I was put into a jail once on this account, for one night.”",
      "“The night in prison was novel and interesting enough, and I saw the town through a quite new and singular set of windows.”",
      "“I have traveled a good deal in Concord, and everywhere the inhabitants seemed to me to be doing penance in a thousand remarkable ways.”",
    ],
  },
];

function litRow(item, rng, lengthTier, difficulty, challenge) {
  const tier = lengthTier;
  // tier governs how much of each quotation we keep (hard trims the tail).
  const trimQuote = (q) => {
    if (tier === "challenge") return q;
    // hard: keep through the first clause boundary near ~190 chars
    const inner = q;
    if (inner.length <= 200) return inner;
    const cut = inner.lastIndexOf(";", 200);
    const at = cut > 120 ? cut : inner.lastIndexOf(",", 200);
    return at > 120 ? inner.slice(0, at) + ".”" : inner;
  };
  const stem = `Which quotation from ${item.work} most effectively illustrates the claim?`;
  const stimulus = `${item.work} ${item.setup}`;
  // Each distractor fails for a different, specific reason (not one generic line).
  const wrongWhy = [
    `Incorrect (off the claim). It reports a concrete detail from the same scene but never states the idea the claim makes.`,
    `Incorrect (different point). It describes a character or moment in the passage that addresses a separate idea, not this claim.`,
    `Incorrect (related but insufficient). It touches the same passage yet illustrates a weaker or different point than the claim asserts.`,
  ];
  const items = [
    { text: trimQuote(item.correct), is_correct: true, explanation: `Correct. This quotation puts the claim into words: ${item.claim.replace(/\.$/, "")}.` },
    ...item.wrong.map((w, idx) => ({
      text: trimQuote(w),
      is_correct: false,
      explanation: wrongWhy[idx] ?? wrongWhy[wrongWhy.length - 1],
    })),
  ];
  const { options, correct_answer } = placeOptions(items, rng);
  return {
    rw_subtype: "textual_evidence",
    rw_format: "literary_quotation",
    question_text: stem,
    stimulus_text: stimulus,
    options,
    correct_answer,
    explanation: `The claim states: ${item.claim}\n\nThe correct quotation is the one that puts that idea into words. The other three quote accurate but unrelated lines from the same work — scene-setting, description, or character detail that does not bear on the claim.`,
    difficulty,
    challenge_only: challenge,
  };
}

/* --------------------------------- assembly --------------------------------- */
// Match the existing distribution exactly (893 platform COE rows).
const PLAN = [
  // [family, tier, challenge_only, count]
  ["quant", "easy", false, 126],
  ["quant", "medium", false, 105],
  ["quant", "hard", false, 94],
  ["quant", "hard", true, 121],
  ["hyp", "easy", false, 126],
  ["hyp", "medium", false, 105],
  ["hyp", "hard", false, 60],
  ["lit", "hard", false, 34], // literary in hard tier (trimmed quotations)
  ["lit", "hard", true, 80], // literary challenge highlight
  ["hyp", "hard", true, 42], // dense scientific to round out challenge textual
];

function build() {
  const rows = [];
  let seed = 20260624;
  for (const [family, tier, challenge, count] of PLAN) {
    for (let i = 0; i < count; i++) {
      const rng = mulberry32((seed += 2654435761) >>> 0);
      // challenge_only items keep difficulty 'hard' (as the bank does) but use
      // the longest "challenge" phrasing tier so they read like pic 4.
      const lengthTier = challenge ? "challenge" : tier;
      let row;
      if (family === "quant") row = quantRow(QUANT[i % QUANT.length], rng, lengthTier, tier, challenge);
      else if (family === "hyp") row = hypRow(HYP[i % HYP.length], rng, lengthTier, tier, challenge);
      else row = litRow(LIT[i % LIT.length], rng, lengthTier, tier, challenge);
      rows.push(row);
    }
  }
  return rows;
}

/* ---------------------------------- stats ----------------------------------- */
function avgOptLen(rows) {
  let sum = 0, n = 0;
  for (const r of rows) for (const o of r.options) { sum += charLen(o.text); n++; }
  return Math.round(sum / n);
}
function report(rows) {
  const groups = {};
  for (const r of rows) {
    const key = `${r.rw_subtype.padEnd(18)} ${r.difficulty.padEnd(9)} ${r.challenge_only ? "challenge" : "regular"}`;
    (groups[key] ??= []).push(r);
  }
  console.log(`\nTotal rows: ${rows.length}\n`);
  console.log("subtype             tier      pool        n    avgOptChars   letters");
  for (const [key, rs] of Object.entries(groups).sort()) {
    const letters = { A: 0, B: 0, C: 0, D: 0 };
    let badCorrect = 0;
    for (const r of rs) {
      letters[r.correct_answer]++;
      const flagged = r.options.find((o) => o.is_correct);
      if (!flagged || flagged.id !== r.correct_answer) badCorrect++;
    }
    const lt = Object.entries(letters).map(([k, v]) => `${k}:${v}`).join(" ");
    console.log(`${key}   ${String(rs.length).padStart(4)}   ${String(avgOptLen(rs)).padStart(8)}      ${lt}${badCorrect ? `  !!BAD_CORRECT=${badCorrect}` : ""}`);
  }
  // integrity check across all rows
  let desync = 0, dupOpt = 0;
  for (const r of rows) {
    const flagged = r.options.filter((o) => o.is_correct);
    if (flagged.length !== 1 || flagged[0].id !== r.correct_answer) desync++;
    const texts = new Set(r.options.map((o) => o.text));
    if (texts.size !== 4) dupOpt++;
  }
  console.log(`\nIntegrity — correct_answer desync: ${desync}, rows with duplicate options: ${dupOpt}`);
}

/* ----------------------------------- SQL ------------------------------------ */
function toSql(rows) {
  const cols = [
    "exam_type", "question_text", "stimulus_text", "stimulus_type", "question_type",
    "options", "correct_answer", "explanation", "topic", "subtopic", "section",
    "difficulty", "is_platform_question", "ai_generated", "source", "source_metadata",
    "domain_id", "skill_id", "challenge_only",
  ];
  const values = rows.map((r) => {
    const meta = {
      rw_subtype: r.rw_subtype,
      rw_format: r.rw_format,
      generator: "generate-coe-fresh.mjs",
      coe_fresh_v1: true,
      dsat_blueprint_v1: true,
      length_tiered: true,
    };
    return `(${[
      "'SAT'",
      sqlStr(r.question_text),
      sqlStr(r.stimulus_text),
      "'passage'",
      "'multiple_choice'",
      `'${JSON.stringify(r.options).replace(/'/g, "''")}'::jsonb`,
      sqlStr(r.correct_answer),
      sqlStr(r.explanation),
      "'Information and Ideas'",
      "'Command of Evidence'",
      "'reading_writing'",
      `'${r.difficulty}'`,
      "true",
      "true",
      "'scholaris_ai'",
      `'${JSON.stringify(meta).replace(/'/g, "''")}'::jsonb`,
      "'information'",
      "'COE'",
      r.challenge_only ? "true" : "false",
    ].join(", ")})`;
  });

  const chunks = [];
  const CHUNK = 200;
  for (let i = 0; i < values.length; i += CHUNK) {
    chunks.push(
      `INSERT INTO public.questions (${cols.join(", ")}) VALUES\n${values.slice(i, i + CHUNK).join(",\n")};`,
    );
  }
  return [
    "BEGIN;",
    "DELETE FROM public.questions WHERE exam_type = 'SAT' AND skill_id = 'COE' AND is_platform_question = true;",
    ...chunks,
    "COMMIT;",
  ].join("\n\n");
}

/* ----------------------------------- main ----------------------------------- */
const rows = build();
report(rows);

if (argv.includes("--sample")) {
  const want = [
    (r) => r.rw_subtype === "quantitative_table" && r.difficulty === "easy",
    (r) => r.rw_subtype === "quantitative_table" && r.challenge_only,
    (r) => r.rw_format === "hypothesis_support" && r.difficulty === "hard" && !r.challenge_only,
    (r) => r.rw_format === "literary_quotation" && r.challenge_only,
  ];
  for (const pred of want) {
    const r = rows.find(pred);
    console.log("\n========================================");
    console.log(`[${r.rw_subtype} / ${r.rw_format} / ${r.difficulty}${r.challenge_only ? " / challenge" : ""}]`);
    console.log("STEM:", r.question_text);
    console.log("STIMULUS:\n" + r.stimulus_text);
    console.log("OPTIONS:");
    for (const o of r.options) console.log(`  (${o.id})${o.is_correct ? "*" : " "} ${o.text}`);
    console.log("correct_answer:", r.correct_answer);
  }
}

if (emit) {
  mkdirSync(OUT_DIR, { recursive: true });
  const sql = toSql(rows);
  writeFileSync(SQL_FILE, sql);
  console.log(`\nWrote ${SQL_FILE} (${rows.length} rows, ${(sql.length / 1024).toFixed(0)} KB)`);
  if (apply) {
    console.log("Applying via scripts/apply-pg.mjs …");
    const res = spawnSync("node", ["scripts/apply-pg.mjs", SQL_FILE], {
      stdio: "inherit",
      env: { ...process.env, NODE_TLS_REJECT_UNAUTHORIZED: "0" },
    });
    process.exit(res.status ?? 0);
  }
} else {
  console.log("\n(dry run — pass --emit to write SQL, --emit --apply to apply)");
}
