/**
 * Master Manual §5 (COE-T) + §6 (COE-Q) full item regeneration.
 * COE-T: 80–120 word conditional-hypothesis passages; experimental-result options.
 * COE-Q: 70–110 word context + markdown/LaTeX table; Data Misread / Under-Specified / TBI distractors.
 */

import { getCoeQuantBank } from "./dsat-coe-quant-bank.mjs";
import {
  letterPlan,
  seededShuffle,
  regenerateCoeQuantRow,
  parseMarkdownTable,
  balanceOptions,
} from "./coe-quant-regen.mjs";
import { mkOpts, charLen, ensureTwoSentenceOption } from "./english-rw-templates.mjs";
import {
  buildOnePrepExplanation,
  trimToWordRange,
  wordCount,
} from "./dsat-rw-blueprint.mjs";
import {
  formatDistractorExplanation,
  DISTRACTOR_FORMULAS,
} from "./dsat-rw-master-prompt.mjs";

export { letterPlan, seededShuffle };

const LETTERS = ["A", "B", "C", "D"];
const BANK_BY_EXT = new Map(getCoeQuantBank().map((item) => [item.external_id, item]));

const COE_T_TARGETS = { min: 80, max: 120 };
const COE_Q_TARGETS = { min: 70, max: 110 };
const T_TAGS = DISTRACTOR_FORMULAS.textual_evidence;
const Q_TAGS = DISTRACTOR_FORMULAS.quantitative_table;

/** Master Manual §5 — conditional-hypothesis scenarios (experimental-result options). */
const COE_T_SCENARIOS = [
  {
    researcher: "Dr. Kenji Sato",
    field: "marine biology",
    passage: (i) =>
      `Marine biologist Dr. Kenji Sato hypothesized that invasive lionfish predation significantly reduces native teleost fish populations on coral reefs, but only in reefs characterized by low structural complexity. In reefs with high structural complexity—defined by dense, branching coral architectures—Sato predicted that lionfish predation would have no statistically significant impact on native fish populations, because complex physical structures provide ample refugia for prey species. His team monitored paired reef plots for ${18 + (i % 6)} months, standardizing water temperature and excluding unrelated fishing pressure so habitat structure remained the primary variable under study.`,
    stem: "Which finding, if true, would most directly support Dr. Sato's hypothesis?",
    correct: (i) =>
      `In reefs with low structural complexity, native teleost populations decreased by $${40 + (i % 8)}\\%$ following lionfish introduction, whereas in reefs with high structural complexity, native teleost populations remained statistically stable after lionfish introduction.`,
    unconditional: (i) =>
      `In both highly complex and simple reefs, native teleost populations decreased by approximately $${25 + (i % 6)}\\%$ within six months of the introduction of invasive lionfish species.`,
    irrelevant: (i) =>
      `Reefs with high structural complexity saw an increase in macroalgae cover of $${12 + (i % 5)}\\%$ after lionfish were introduced, while reefs with low structural complexity experienced a decline in water clarity.`,
    inverse: (i) =>
      `In reefs with low structural complexity, native teleost populations remained stable after lionfish introduction, while lionfish populations themselves declined due to increased predation by larger reef sharks.`,
    expl: {
      correct: "Matches both parts of the conditional hypothesis: significant decline in low-complexity reefs and stability in high-complexity reefs.",
      unconditional: formatDistractorExplanation(T_TAGS[0], "Shows decline in both reef types, ignoring the required buffering effect of structural complexity."),
      irrelevant: formatDistractorExplanation(T_TAGS[1], "Addresses macroalgae and water clarity rather than native teleost populations."),
      inverse: formatDistractorExplanation(T_TAGS[2], "Stability in low-complexity reefs contradicts the predicted impact of lionfish predation."),
    },
  },
  {
    researcher: "Dr. Amara Okonkwo",
    field: "education",
    passage: (i) =>
      `Educational psychologist Dr. Amara Okonkwo hypothesized that structured peer discussion improves reading comprehension scores, but only when students are required to cite textual evidence during the exchange. In classrooms where discussion was unstructured small talk, Okonkwo predicted that comprehension gains would not significantly exceed those produced by silent independent worksheet practice. She randomly assigned ${120 + (i % 40)} students across four classes, matching baseline reading levels and controlling for instructional time across conditions.`,
    stem: "Which finding, if true, would most directly support Dr. Okonkwo's hypothesis?",
    correct: (i) =>
      `Students in evidence-citing discussion groups improved comprehension scores by $${14 + (i % 5)}$ points, whereas students in unstructured discussion groups improved by only $${3 + (i % 3)}$ points, a gain statistically indistinguishable from the worksheet-only cohort.`,
    unconditional: (i) =>
      `Both structured and unstructured discussion groups improved comprehension scores by approximately $${12 + (i % 4)}$ points compared with worksheet-only students.`,
    irrelevant: (i) =>
      `Students in evidence-citing discussion groups reported higher attendance rates than worksheet-only students, while unstructured discussion groups showed no attendance difference.`,
    inverse: (i) =>
      `Unstructured discussion groups outperformed evidence-citing discussion groups by $${8 + (i % 4)}$ points, suggesting that removing citation requirements accelerates comprehension growth.`,
    expl: {
      correct: "Shows evidence-citing discussion outperforms unstructured talk, which matches worksheet gains — satisfying the conditional hypothesis.",
      unconditional: formatDistractorExplanation(T_TAGS[0], "Treats all discussion formats as equally effective, ignoring the citation requirement."),
      irrelevant: formatDistractorExplanation(T_TAGS[1], "Attendance is not the comprehension outcome the hypothesis targets."),
      inverse: formatDistractorExplanation(T_TAGS[2], "Unstructured discussion outperforming cited discussion contradicts the predicted mechanism."),
    },
  },
  {
    researcher: "Dr. Lin Wei",
    field: "environmental chemistry",
    passage: (i) =>
      `Environmental chemist Dr. Lin Wei hypothesized that a synthetic pesticide degrades rapidly due to microbial activity stimulated by warm temperatures, but only in shallow surface sediments where dissolved oxygen is abundant. In deep sediments, where anaerobic conditions prevail, Dr. Wei claimed that seasonal temperature changes have no statistically significant effect on pesticide concentration. Her sediment cores were collected from ${6 + (i % 4)} wetland sites and analyzed across four seasons under controlled laboratory extraction protocols.`,
    stem: "Which finding, if true, would most directly support Dr. Wei's hypothesis?",
    correct: (i) =>
      `Pesticide concentrations in surface sediments fell from $${11 + (i % 3)}.4\\text{ }\\mu\\text{g/L}$ in spring to $${4 + (i % 2)}.2\\text{ }\\mu\\text{g/L}$ in summer, whereas concentrations in deep sediments remained virtually unchanged between spring ($${24 + (i % 2)}.8\\text{ }\\mu\\text{g/L}$) and summer ($${24 + (i % 2)}.5\\text{ }\\mu\\text{g/L}$).`,
    unconditional: (i) =>
      `Across all three sediment depths, pesticide concentrations reached their lowest levels during summer, with deep sediments recording $${24 + (i % 2)}.5\\text{ }\\mu\\text{g/L}$ and surface sediments recording $${4 + (i % 2)}.2\\text{ }\\mu\\text{g/L}$.`,
    irrelevant: (i) =>
      `Dissolved oxygen levels in surface sediments averaged $${6 + (i % 3)}.1\\text{ mg/L}$ across seasons, while deep sediments averaged $${1 + (i % 2)}.4\\text{ mg/L}$, confirming the anaerobic profile described in the passage.`,
    inverse: (i) =>
      `Deep sediment pesticide concentrations dropped by $${18 + (i % 5)}\\%$ between spring and summer, while surface concentrations remained stable across the same interval.`,
    expl: {
      correct: "Supports both conditional parts: sharp summer decline in surface sediments and stability in deep sediments.",
      unconditional: formatDistractorExplanation(T_TAGS[0], "Claims summer minima at every depth, overstating temperature sensitivity in deep anaerobic layers."),
      irrelevant: formatDistractorExplanation(T_TAGS[1], "Oxygen measurements do not test seasonal pesticide concentration change."),
      inverse: formatDistractorExplanation(T_TAGS[2], "Deep-sediment decline with surface stability contradicts the predicted depth-specific pattern."),
    },
  },
  {
    researcher: "Dr. Morales",
    field: "urban sociology",
    passage: (i) =>
      `Urban sociologist Dr. Morales hypothesized that community gardens logging at least $15$ weekly volunteer hours produce larger harvests than gardens with lighter volunteer turnout, but only when cultivation methods are held constant across sites. In gardens where managers changed fertilizer regimes mid-season, Morales predicted volunteer hours alone would not reliably predict harvest size. She tracked ${3 + (i % 3)} gardens through one growing season, recording weekly labor and total vegetable yield in pounds.`,
    stem: "Which finding, if true, would most directly support Dr. Morales's hypothesis?",
    correct: (i) =>
      `Among gardens with fixed cultivation methods, sites averaging at least $15$ volunteer hours per week harvested $${780 + (i % 40)}$ pounds, whereas sites averaging fewer than $10$ hours harvested $${390 + (i % 30)}$ pounds.`,
    unconditional: (i) =>
      `Every garden in the study harvested more than $${350 + (i % 20)}$ pounds regardless of volunteer hours or fertilizer changes.`,
    irrelevant: (i) =>
      `Gardens that switched fertilizer regimes mid-season showed higher soil nitrogen readings than gardens with fixed regimes, independent of volunteer hours.`,
    inverse: (i) =>
      `Among gardens with fixed cultivation methods, low-hour sites outproduced high-hour sites by $${120 + (i % 30)}$ pounds on average.`,
    expl: {
      correct: "Compares high- and low-hour gardens under fixed cultivation, directly testing the labor threshold claim.",
      unconditional: formatDistractorExplanation(T_TAGS[0], "Harvest floors without hour comparisons do not test the hypothesis."),
      irrelevant: formatDistractorExplanation(T_TAGS[1], "Soil nitrogen under fertilizer changes is outside the volunteer-hour prediction."),
      inverse: formatDistractorExplanation(T_TAGS[2], "Low-hour gardens outproducing high-hour sites contradicts the predicted labor effect."),
    },
  },
];

/** Master Manual §6 — quantitative scenarios with markdown tables. */
const COE_Q_SCENARIOS = [
  {
    researcher: "Dr. Lee",
    passage: (i) =>
      `Agronomist Dr. Lee grew genetically identical bean seedlings for $14$ days under controlled temperatures, varying only daily light exposure. She measured mean stem height at the end of the trial and argued that seedlings receiving at least $10$ hours of light per day would be taller than seedlings receiving substantially shorter days, provided soil moisture remained constant across all light treatments.`,
    table: (i) => {
      const h6 = (11 + (i % 3) * 0.2).toFixed(1);
      const h10 = (18 + (i % 4) * 0.3).toFixed(1);
      const h14 = (19 + (i % 3) * 0.2).toFixed(1);
      return `| Daily light (hours) | Mean stem height (cm) |
| --- | --- |
| $6$ | $${h6}$ |
| $10$ | $${h10}$ |
| $14$ | $${h14}$ |`;
    },
    stem: "Which choice most effectively uses data from the table to support Dr. Lee's claim?",
    buildOpts: (i, vals) => {
      const [h6, h10, h14] = vals;
      return {
        correct: `Seedlings under $10$-hour days averaged $${h10}$ cm in height, whereas seedlings under $6$-hour days averaged only $${h6}$ cm, supporting the claim that longer light exposure produces taller plants.`,
        misread: `Seedlings under $14$-hour days were shorter than seedlings under $6$-hour days, with means of $${h6}$ cm and $${h14}$ cm respectively.`,
        underspecified: `Seedlings under $14$-hour days averaged $${h14}$ cm, only $${(parseFloat(h14) - parseFloat(h10)).toFixed(1)}$ cm taller than seedlings under $10$-hour days.`,
        tbi: `Every light treatment in the study produced mean stem heights above $${(parseFloat(h6) - 1).toFixed(1)}$ cm.`,
        expl: {
          correct: "Correct: compares a ≥$10$-hour treatment with a <10-hour treatment using accurate table values.",
          misread: formatDistractorExplanation(Q_TAGS[0], "Reverses the height relationship between the $6$- and $14$-hour rows."),
          underspecified: formatDistractorExplanation(Q_TAGS[1], "Cites two long-day rows without contrasting against a short-day treatment."),
          tbi: formatDistractorExplanation(Q_TAGS[2], "Accurate height floor that does not test the light-duration claim."),
        },
      };
    },
    parseVals: (table) => table.rows.map((r) => r[1].replace(/\$/g, "")),
  },
  {
    researcher: "Dr. Morales",
    passage: (i) =>
      `Urban sociologist Dr. Morales tracked three community gardens through one growing season, recording weekly volunteer hours and total vegetable harvest in pounds. Plot managers kept cultivation methods constant so labor availability was the main difference across sites. Morales hypothesized that gardens maintaining at least $15$ volunteer hours per week would outproduce gardens with lighter volunteer turnout.`,
    table: (i) => {
      const lo = 8 + (i % 3);
      const hi1 = 18 + (i % 4);
      const hi2 = 22 + (i % 3);
      const yLo = 400 + (i % 20);
      const yHi1 = 780 + (i % 30);
      const yHi2 = 830 + (i % 25);
      return `| Garden | Weekly volunteer hours | Harvest (lbs) |
| --- | --- | --- |
| Cedar Plot | $${hi2}$ | $${yHi2}$ |
| Maple Lot | $${hi1}$ | $${yHi1}$ |
| Birch Yard | $${lo}$ | $${yLo}$ |`;
    },
    stem: "Which choice most effectively uses data from the table to support the researchers' claim that gardens logging at least $15$ weekly volunteer hours produced larger harvests than gardens with fewer hours?",
    buildOpts: (i, vals, rows) => {
      const hi = rows.find((r) => Number(r[1].replace(/\$/g, "")) >= 15) ?? rows[0];
      const lo = rows.find((r) => Number(r[1].replace(/\$/g, "")) < 15) ?? rows[2];
      const hHi = hi[1].replace(/\$/g, "");
      const hLo = lo[1].replace(/\$/g, "");
      const yHi = hi[2].replace(/\$/g, "");
      const yLo = lo[2].replace(/\$/g, "");
      return {
        correct: `${hi[0].replace(/\$/g, "")} logged $${hHi}$ volunteer hours and harvested $${yHi}$ pounds, whereas ${lo[0].replace(/\$/g, "")} logged $${hLo}$ hours and harvested only $${yLo}$ pounds.`,
        misread: `${lo[0].replace(/\$/g, "")} harvested more pounds than ${hi[0].replace(/\$/g, "")} despite logging fewer volunteer hours across the season.`,
        underspecified: `Maple Lot harvested $${rows[1][2].replace(/\$/g, "")}$ pounds even though Cedar Plot logged more volunteer hours.`,
        tbi: `Every garden in the study harvested more than $${Number(yLo) - 5}$ pounds of vegetables.`,
        expl: {
          correct: "Correct: pairs an above-threshold garden with a below-threshold garden on both metrics.",
          misread: formatDistractorExplanation(Q_TAGS[0], "Reverses the harvest ranking between high- and low-hour gardens."),
          underspecified: formatDistractorExplanation(Q_TAGS[1], "Compares two above-threshold gardens without testing the cutoff."),
          tbi: formatDistractorExplanation(Q_TAGS[2], "Harvest minimums do not link volunteer hours to productivity."),
        },
      };
    },
    parseVals: (table) => table.rows,
  },
  {
    researcher: "Dr. Lin Wei",
    passage: (i) =>
      `Environmental chemist Dr. Lin Wei hypothesized that pesticide concentrations in shallow surface sediments decline sharply during warm summer months when microbial degradation accelerates, but that deep anaerobic sediments remain stable across seasons. Wetland cores from site ${240 + (i % 60)} were analyzed each season using identical extraction protocols.`,
    table: (i) => {
      const sSpr = (12 + (i % 3) * 0.3).toFixed(1);
      const sSum = (4 + (i % 2) * 0.2).toFixed(1);
      const dSpr = (24 + (i % 2) * 0.4).toFixed(1);
      const dSum = (24 + (i % 2) * 0.3).toFixed(1);
      return `| Sediment depth | Spring ($\\mu\\text{g/L}$) | Summer ($\\mu\\text{g/L}$) |
| --- | --- | --- |
| Surface ($0\\text{--}5\\text{ cm}$) | $${sSpr}$ | $${sSum}$ |
| Deep ($30\\text{--}35\\text{ cm}$) | $${dSpr}$ | $${dSum}$ |`;
    },
    stem: "Which choice best uses data from the table to support Dr. Wei's hypothesis?",
    buildOpts: (i, vals) => {
      const [sSpr, sSum, dSpr, dSum] = vals;
      return {
        correct: `Surface sediment concentrations fell from $${sSpr}\\text{ }\\mu\\text{g/L}$ in spring to $${sSum}\\text{ }\\mu\\text{g/L}$ in summer, whereas deep sediment concentrations remained virtually unchanged between spring ($${dSpr}\\text{ }\\mu\\text{g/L}$) and summer ($${dSum}\\text{ }\\mu\\text{g/L}$).`,
        misread: `Surface sediment concentrations rose from $${sSum}\\text{ }\\mu\\text{g/L}$ in spring to $${sSpr}\\text{ }\\mu\\text{g/L}$ in summer, while deep sediments showed the same reversal.`,
        underspecified: `Deep sediment concentrations remained between $${dSum}\\text{ }\\mu\\text{g/L}$ and $${dSpr}\\text{ }\\mu\\text{g/L}$ across seasons without citing surface sediment trends.`,
        tbi: `Summer surface concentrations ($${sSum}\\text{ }\\mu\\text{g/L}$) were lower than deep-sediment summer concentrations ($${dSum}\\text{ }\\mu\\text{g/L}$).`,
        expl: {
          correct: "Correct: links surface summer decline with deep seasonal stability using accurate table values.",
          misread: formatDistractorExplanation(Q_TAGS[0], "Swaps spring and summer values for surface sediments."),
          underspecified: formatDistractorExplanation(Q_TAGS[1], "Describes deep stability only, omitting required surface comparison."),
          tbi: formatDistractorExplanation(Q_TAGS[2], "Cross-depth ranking without testing the seasonal-change hypothesis."),
        },
      };
    },
    parseVals: (table) => table.rows.flatMap((r) => r.slice(1).map((c) => c.replace(/\$/g, ""))),
  },
];

function rotateOpts(raw, correctIdx, targetLetter) {
  const targetIdx = LETTERS.indexOf(targetLetter);
  const shift = (targetIdx - correctIdx + 4) % 4;
  const rotated = LETTERS.map((_, i) => raw[(i - shift + 4) % 4]);
  return { rotated, correctLetter: targetLetter };
}

function mkBalancedOpts(rawFour, correctIdx, targetLetter, index) {
  const { rotated, correctLetter } = rotateOpts(rawFour, correctIdx, targetLetter);
  const balanced = balanceOptions(
    rotated.map((r) => ({ trap: r.trap, text: r.text, explanation: r.explanation })),
    rotated.findIndex((r) => r.trap === "correct"),
    index,
  );
  const texts = balanced.map((r) => r.text);
  const expls = balanced.map((r) => r.explanation);
  return { options: mkOpts(correctLetter, texts, expls), correctLetter };
}

function buildCoeTextualRow(row, index, targetLetter) {
  const scenario = COE_T_SCENARIOS[index % COE_T_SCENARIOS.length];
  const passage = trimToWordRange(scenario.passage(index), COE_T_TARGETS.min, COE_T_TARGETS.max);
  const raw = [
    { trap: "correct", text: scenario.correct(index), explanation: scenario.expl.correct },
    { trap: "unconditional", text: scenario.unconditional(index), explanation: scenario.expl.unconditional },
    { trap: "irrelevant", text: scenario.irrelevant(index), explanation: scenario.expl.irrelevant },
    { trap: "inverse", text: scenario.inverse(index), explanation: scenario.expl.inverse },
  ];
  const challenged = row.source_metadata?.challenged_problem === true;
  const prepared = challenged
    ? raw.map((r, i) => ({ ...r, text: ensureTwoSentenceOption(r.text, index + i) }))
    : raw;
  const { options, correctLetter } = mkBalancedOpts(prepared, 0, targetLetter, index);
  const question_text = scenario.stem;
  const explanation = buildOnePrepExplanation(
    { ...row, question_text, stimulus_text: passage, options, correct_answer: correctLetter },
    { skill: "COE", rw_subtype: "textual_evidence", difficulty: row.difficulty },
  ).explanation;

  return {
    question_text,
    stimulus_text: passage,
    stimulus_type: "passage",
    options,
    correct_answer: correctLetter,
    explanation,
    source_metadata: {
      ...(row.source_metadata ?? {}),
      rw_subtype: "textual_evidence",
      rw_format: "hypothesis_support",
      generator: "regenerate-coe-master.mjs",
      master_manual_section: "5",
      dsat_blueprint_v1: true,
      english_rw_regen_v2: true,
      regen_agent: "coe-master",
    },
  };
}

function tagQuantOptions(options) {
  const tags = Q_TAGS;
  let di = 0;
  return options.map((o) => {
    if (o.is_correct) return o;
    const tagged = { ...o, explanation: formatDistractorExplanation(tags[di % tags.length], o.explanation.replace(/^\[[^\]]+\]\s*/, "")) };
    di++;
    return tagged;
  });
}

function trimQuantPassage(stimulus) {
  const text = String(stimulus ?? "");
  const tableIdx = text.search(/\n\nThe table summarizes|\n\n\| /);
  const prose = tableIdx >= 0 ? text.slice(0, tableIdx).trim() : text.trim();
  const tail = tableIdx >= 0 ? text.slice(tableIdx) : "";
  const trimmed = trimToWordRange(prose, COE_Q_TARGETS.min, COE_Q_TARGETS.max);
  return tableIdx >= 0 ? `${trimmed}${tail}` : trimmed;
}

function buildCoeQuantRow(row, index, targetLetter) {
  const ext = row.external_id;
  if (ext && BANK_BY_EXT.has(ext)) {
    const bank = BANK_BY_EXT.get(ext);
    const stimulus_text = trimQuantPassage(bank.stimulus_text);
    const regen = regenerateCoeQuantRow({ ...row, stimulus_text }, index, targetLetter);
    const options = tagQuantOptions(regen.options);
    return {
      question_text: bank.question_text,
      stimulus_text,
      stimulus_type: "passage",
      options,
      correct_answer: regen.correct_answer,
      explanation: bank.explanation ?? regen.explanation,
      source_metadata: {
        ...(row.source_metadata ?? {}),
        rw_subtype: "quantitative_table",
        rw_format: "table_chart",
        generator: "regenerate-coe-master.mjs",
        master_manual_section: "6",
        dsat_blueprint_v1: true,
        coe_quant_regen_v2: true,
      },
    };
  }

  const scenario = COE_Q_SCENARIOS[index % COE_Q_SCENARIOS.length];
  const passage = trimToWordRange(scenario.passage(index), COE_Q_TARGETS.min, COE_Q_TARGETS.max);
  const tableMd = scenario.table(index);
  const stimulus_text = `${passage}\n\nThe table summarizes results from the study described above.\n\n${tableMd}`;
  const regen = regenerateCoeQuantRow(
    { ...row, stimulus_text, question_text: scenario.stem },
    index,
    targetLetter,
  );
  const options = tagQuantOptions(regen.options);

  return {
    question_text: scenario.stem,
    stimulus_text,
    stimulus_type: "passage",
    options,
    correct_answer: regen.correct_answer,
    explanation: regen.explanation,
    source_metadata: {
      ...(row.source_metadata ?? {}),
      rw_subtype: "quantitative_table",
      rw_format: "table_chart",
      generator: "regenerate-coe-master.mjs",
      master_manual_section: "6",
      dsat_blueprint_v1: true,
      coe_quant_regen_v2: true,
    },
  };
}

export function regenerateCoeRow(row, index, targetLetter) {
  const subtype = row.source_metadata?.rw_subtype ?? row.rw_subtype;
  if (subtype === "textual_evidence") return buildCoeTextualRow(row, index, targetLetter);
  if (subtype === "quantitative_table") return buildCoeQuantRow(row, index, targetLetter);
  throw new Error(`Unknown COE subtype: ${subtype}`);
}

export function measureCoeRow(row) {
  const texts = row.options.map((o) => o.text);
  const lens = texts.map(charLen);
  const correctLen = charLen(row.options.find((o) => o.id === row.correct_answer)?.text ?? "");
  const maxLen = Math.max(...lens);
  const minLen = Math.min(...lens);
  const passageWords = wordCount(String(row.stimulus_text ?? "").split("\n\n")[0]);
  return {
    correct_answer: row.correct_answer,
    char_spread_pct: minLen > 0 ? Math.round(1000 * (maxLen - minLen) / minLen) / 10 : 0,
    correct_is_longest: correctLen >= maxLen,
    passage_words: passageWords,
  };
}

export function measureCoeBatch(rows) {
  const letters = { A: 0, B: 0, C: 0, D: 0 };
  let overSpread = 0;
  let correctLongest = 0;
  for (const row of rows) {
    letters[row.correct_answer] = (letters[row.correct_answer] ?? 0) + 1;
    const m = measureCoeRow(row);
    if (m.char_spread_pct > 15) overSpread++;
    if (m.correct_is_longest) correctLongest++;
  }
  const n = rows.length || 1;
  return {
    count: n,
    pct_over_15_spread: Math.round(1000 * overSpread / n) / 10,
    pct_correct_longest: Math.round(1000 * correctLongest / n) / 10,
    letter_distribution: Object.fromEntries(
      LETTERS.map((l) => [l, { count: letters[l] ?? 0, pct: Math.round(1000 * (letters[l] ?? 0) / n) / 10 }]),
    ),
    avg_passage_words: Math.round(rows.reduce((s, r) => s + measureCoeRow(r).passage_words, 0) / n * 10) / 10,
  };
}
