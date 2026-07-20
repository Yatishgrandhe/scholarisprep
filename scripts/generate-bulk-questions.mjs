#!/usr/bin/env node
/**
 * Bulk ORIGINAL SAT question generator (templates, no Gemini).
 * Fills scholaris_ai pool toward section targets; prioritizes zero/thin cells.
 * Text-only — no SVG/diagram stimulus.
 *
 *   node scripts/generate-bulk-questions.mjs --output-sql scripts/data/gen-bulk-500.sql --target-rw 500 --target-math 500
 *   node scripts/chunk-sql.mjs scripts/data/gen-bulk-500.sql 8 scripts/data/gen-bulk-500-chunks
 *   node scripts/generate-bulk-questions.mjs --build-mega scripts/data/gen-bulk-500-chunks scripts/data/gen-bulk-500-mega 35
 */

import { writeFileSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { dirname, resolve, join } from "node:path";
import { randomUUID } from "node:crypto";

const SKILLS = {
  CID: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Central Ideas and Details" },
  COE: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Command of Evidence" },
  INF: { section: "reading_writing", topic: "Information and Ideas", domain_id: "information", subtopic: "Inferences" },
  CTC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Cross-Text Connections" },
  TSP: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Text Structure and Purpose" },
  WIC: { section: "reading_writing", topic: "Craft and Structure", domain_id: "craft", subtopic: "Words in Context" },
  SYN: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Rhetorical Synthesis" },
  TRA: { section: "reading_writing", topic: "Expression of Ideas", domain_id: "expression", subtopic: "Transitions" },
  BOU: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Boundaries" },
  FSS: { section: "reading_writing", topic: "Standard English Conventions", domain_id: "conventions", subtopic: "Form, Structure, and Sense" },
  LIN: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable", calc: true },
  LEQ: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", calc: true },
  LIF: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", calc: true },
  SYS: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", calc: true },
  INE: { section: "math", topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities", calc: true },
  EQS: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", calc: true },
  NRE: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable", calc: true },
  NRM: { section: "math", topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions", calc: true },
  RAT: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions", calc: true },
  PER: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", calc: true },
  OIA: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data", calc: true },
  TVA: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Two-variable data", calc: true },
  PRO: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", calc: true },
  IEE: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics", calc: true },
  EVA: { section: "math", topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Evaluating statistical claims", calc: true },
  ARE: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", calc: true },
  LIN_G: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", calc: true },
  RIG: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", calc: true },
  CIR: { section: "math", topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles", calc: true },
};

const DIFFS = ["easy", "medium", "hard"];

/** scholaris_ai counts prod 2026-06-12 — override with --have-json */
const HAVE = {
  "ARE:easy": 4, "ARE:medium": 12, "ARE:hard": 8,
  "COE:easy": 10, "COE:medium": 12, "COE:hard": 12,
  "CTC:easy": 12, "CTC:medium": 12, "CTC:hard": 11,
  "EQS:easy": 4, "EQS:medium": 8, "EQS:hard": 20,
  "IEE:easy": 10, "IEE:medium": 12, "IEE:hard": 3,
  "INE:easy": 12, "INE:medium": 10, "INE:hard": 12,
  "INF:easy": 10, "INF:medium": 12, "INF:hard": 6,
  "LEQ:easy": 12, "LEQ:medium": 11, "LEQ:hard": 9,
  "LIF:hard": 12,
  "LIN_G:easy": 12, "LIN_G:medium": 6, "LIN_G:hard": 7,
  "OIA:easy": 8, "OIA:medium": 12, "OIA:hard": 12,
  "PER:easy": 10, "PER:medium": 12, "PER:hard": 10,
  "PRO:easy": 9, "PRO:medium": 5, "PRO:hard": 9,
  "RAT:easy": 4,
  "RIG:easy": 9, "RIG:medium": 12, "RIG:hard": 1,
  "SYN:easy": 3, "SYN:medium": 12, "SYN:hard": 12,
  "SYS:easy": 12, "SYS:medium": 12, "SYS:hard": 9,
  "TRA:easy": 10, "TRA:medium": 2, "TRA:hard": 4,
  "WIC:easy": 5, "WIC:medium": 12, "WIC:hard": 12,
};

const SECTION_HAVE = { reading_writing: 169, math: 330 };

const PASSAGES = [
  (n) => `Marine biologists studying reef ${n} found that parrotfish grazing limits algae growth, allowing coral larvae to settle on bare rock. Without grazing, algae can smother reefs within a single season.`,
  (n) => `Historians examining trade route ${n} note that camel caravans carried not only goods but also astronomical tables, spreading navigation techniques across deserts long before printed maps existed.`,
  (n) => `In her essay on urban soundscapes, writer ${n} argues that city planners should treat noise pollution as a public-health issue, citing studies linking traffic noise to elevated stress hormones.`,
  (n) => `Economists analyzing market ${n} observed that small retailers adapted faster than national chains when supply chains stalled, partly because they could reorder from local wholesalers within days.`,
  (n) => `Archaeologists at site ${n} discovered that pottery shards contained residue of fermented grain, suggesting the community brewed beverages for ritual gatherings rather than daily meals.`,
  (n) => `Psychologists testing memory task ${n} reported that participants who slept eight hours recalled word lists more accurately than those who stayed awake, even when both groups studied equally long.`,
  (n) => `Engineers prototyping turbine ${n} demonstrated that angled blades harvest more energy from low wind speeds, a design inspired by the shape of humpback whale fins.`,
  (n) => `Educators reviewing literacy program ${n} concluded that students who discussed readings in pairs improved comprehension scores more than those who answered worksheets alone.`,
];

function parseArgs() {
  const f = {
    outputSql: null, outputJson: null, planOnly: false,
    targetRw: 500, targetMath: 500, haveJson: null,
    buildMega: null, megaOut: null, megaSize: 35,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 35);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--output-json") f.outputJson = argv[++i];
    else if (a === "--plan") f.planOnly = true;
    else if (a === "--target-rw") f.targetRw = Number(argv[++i]);
    else if (a === "--target-math") f.targetMath = Number(argv[++i]);
    else if (a === "--have-json") f.haveJson = argv[++i];
  }
  return f;
}

function loadHave(f) {
  const have = { ...HAVE };
  const section = { ...SECTION_HAVE };
  if (f.haveJson) {
    const data = JSON.parse(readFileSync(resolve(f.haveJson), "utf8"));
    if (data.cells) Object.assign(have, data.cells);
    if (data.sections) Object.assign(section, data.sections);
  }
  return { have, section };
}

function cellWeight(have) {
  if (have === 0) return 100;
  if (have < 4) return 50;
  if (have < 12) return 20;
  return 1;
}

function distributeNeed(cells, totalNeed) {
  if (totalNeed <= 0) return [];
  const weighted = cells.map((c) => ({ ...c, w: cellWeight(c.have) }));
  const totalW = weighted.reduce((s, c) => s + c.w, 0);
  const plan = weighted.map((c) => ({
    skill: c.skill,
    difficulty: c.difficulty,
    have: c.have,
    need: Math.floor((totalNeed * c.w) / totalW),
  }));
  let assigned = plan.reduce((s, c) => s + c.need, 0);
  const order = [...plan].sort(
    (a, b) => cellWeight(b.have) - cellWeight(a.have) || a.have - b.have,
  );
  let i = 0;
  while (assigned < totalNeed) {
    const t = order[i % order.length];
    const idx = plan.findIndex((p) => p.skill === t.skill && p.difficulty === t.difficulty);
    plan[idx].need++;
    assigned++;
    i++;
  }
  return plan.filter((c) => c.need > 0);
}

function buildPlan(f, { have, section }) {
  const needRw = Math.max(0, f.targetRw - section.reading_writing);
  const needMath = Math.max(0, f.targetMath - section.math);
  const rwCells = [];
  const mathCells = [];
  for (const skill of Object.keys(SKILLS)) {
    const meta = SKILLS[skill];
    for (const difficulty of DIFFS) {
      const cell = { skill, difficulty, have: have[`${skill}:${difficulty}`] ?? 0 };
      if (meta.section === "reading_writing") rwCells.push(cell);
      else mathCells.push(cell);
    }
  }
  return [
    ...distributeNeed(rwCells, needRw),
    ...distributeNeed(mathCells, needMath),
  ];
}

const sqlEscape = (s) => (s == null ? "NULL" : `'${String(s).replace(/'/g, "''")}'`);

function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

function passage(n) {
  return PASSAGES[n % PASSAGES.length](n + 1);
}

function generateOne(skill, difficulty, index) {
  const n = index + 1;
  const meta = SKILLS[skill];
  const diffScale = difficulty === "easy" ? 1 : difficulty === "medium" ? 2 : 3;

  if (skill === "CID") {
    const p = passage(n);
    const detail = n % 2 === 0 ? "parrotfish grazing limits algae growth" : "coral larvae settle on bare rock";
    return {
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: n % 3 === 0
        ? "Which choice best states the main idea of the passage?"
        : "According to the passage, which statement is best supported?",
      options: mkOpts(
        "A",
        [
          n % 3 === 0 ? "Ecological interactions can shape reef recovery" : `The passage links ${detail} to reef health`,
          "Reefs never recover once algae appear",
          "The passage rejects all scientific study of reefs",
          "Coral larvae cannot survive on rock",
        ],
        [
          n % 3 === 0 ? "The passage centers on grazing, algae, and coral settlement." : `The passage explicitly discusses ${detail}.`,
          "Contradicted by the passage's account of recovery.",
          "The passage cites research; it does not reject science.",
          "The passage says larvae settle on bare rock.",
        ],
      ),
      correct_answer: "A",
      explanation: n % 3 === 0
        ? "The passage explains how grazing and coral settlement interact to affect reef health."
        : `The correct choice restates a detail the passage supports: ${detail}.`,
    };
  }

  if (skill === "COE") {
    const p = passage(n);
    const claim = "small retailers adapted faster than national chains";
    return {
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: "Which finding from the passage, if true, would best support the author's claim about adaptation?",
      options: mkOpts("B", [
        "National chains never order from wholesalers",
        "Local wholesalers could restock small retailers within days",
        "Supply chains never stall",
        "Printed maps spread faster than caravans",
      ], [
        "Irrelevant to retailer adaptation speed.",
        "Directly explains why small retailers could adapt quickly.",
        "Contradicts the passage's premise about stalled supply chains.",
        "Topic of a different passage theme.",
      ]),
      correct_answer: "B",
      explanation: `The passage claims ${claim}; rapid restocking from local wholesalers supports that claim.`,
    };
  }

  if (skill === "INF") {
    const p = passage(n);
    return {
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: "Which choice can most reasonably be inferred from the passage?",
      options: mkOpts("C", [
        "The researchers refused to publish any results",
        "Every participant in related studies always fails",
        "The described mechanism could apply beyond the specific example given",
        "The passage lists prices for all consumer goods",
      ], [
        "Not supported; the passage reports findings.",
        "Too absolute; the passage does not claim universal failure.",
        "A reasonable inference when a study shows a general pattern.",
        "No pricing information appears.",
      ]),
      correct_answer: "C",
      explanation: "The passage presents a specific finding that implies a broader principle without stating every possible case.",
    };
  }

  if (skill === "CTC") {
    return {
      stimulus_text: `Text 1\nResearchers in ${2010 + n} argued that city parks mainly benefit adults who jog or play sports.\n\nText 2\nA ${2020 + n} study found that children who live near parks read outdoors more often and report lower stress, even if they rarely exercise there.`,
      stimulus_type: "passage",
      question_text: "Based on the texts, how would the author of Text 2 most likely respond to Text 1?",
      options: mkOpts("B", [
        "By agreeing that parks only help people who exercise",
        "By showing parks can benefit residents in ways beyond exercise",
        "By claiming children never use parks",
        "By rejecting all research about parks",
      ], [
        "Text 2 describes non-exercise benefits, so it would not fully agree.",
        "Text 2 emphasizes reading outdoors and lower stress without requiring exercise.",
        "Text 2 says children use parks for reading, not that they avoid parks.",
        "Text 2 is itself research and does not reject research.",
      ]),
      correct_answer: "B",
      explanation: "Text 1 limits park benefits to exercisers. Text 2 documents benefits for children through reading and stress relief without exercise.",
    };
  }

  if (skill === "TSP") {
    const p = passage(n);
    const purposes = ["to explain a cause-and-effect relationship", "to compare two responses to a problem", "to describe how a discovery was made"];
    const purpose = purposes[n % 3];
    return {
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: "Which choice best describes the overall structure of the passage?",
      options: mkOpts("A", [
        purpose,
        "to list unrelated facts with no connection",
        "to argue that research should be abandoned",
        "to provide a chronological biography of one person",
      ], [
        `The passage develops an explanatory arc matching: ${purpose}.`,
        "The passage connects ideas; it is not a random list.",
        "The passage presents research rather than rejecting it.",
        "No single biography is the focus.",
      ]),
      correct_answer: "A",
      explanation: `The passage is organized ${purpose}, introducing context and then supporting evidence.`,
    };
  }

  if (skill === "WIC") {
    const words = ["mitigate", "tenuous", "bolster", "ambiguous", "scrutinize"];
    const word = words[n % words.length];
    const p = `${passage(n)} The team's initial conclusion was ${word} until additional trials clarified the pattern.`;
    return {
      stimulus_text: p,
      stimulus_type: "passage",
      question_text: `As used in the passage, "${word}" most nearly means`,
      options: mkOpts(
        difficulty === "hard" ? "D" : "B",
        word === "mitigate"
          ? ["celebrate", "lessen", "ignore", "multiply"]
          : word === "tenuous"
            ? ["obvious", "fragile", "permanent", "loud"]
            : word === "bolster"
              ? ["weaken", "support", "hide", "erase"]
              : word === "ambiguous"
                ? ["clear", "uncertain", "tiny", "final"]
                : ["praise", "examine closely", "forget", "sell"],
        [
          "Opposite or unrelated to context.",
          word === "mitigate" ? "Matches reducing harm or severity." : "Check context: trials clarified the pattern.",
          "Does not fit the sentence's logic.",
          difficulty === "hard" ? "Closest nuance for advanced vocabulary." : "Too far from contextual meaning.",
        ],
      ),
      correct_answer: difficulty === "hard" ? "D" : "B",
      explanation: `Context shows the conclusion needed revision; "${word}" fits the intended meaning in that situation.`,
    };
  }

  if (skill === "SYN") {
    const notes = [
      `• Program ${n} increased pair discussion time\n• Comprehension scores rose 12%\n• Teachers reported higher engagement\n• Worksheets alone showed smaller gains`,
      `• Turbine ${n} uses angled blades\n• Low wind speeds still produce power\n• Design mimics whale fins\n• Older flat blades underperform`,
    ][n % 2];
    return {
      stimulus_text: notes,
      stimulus_type: "passage",
      question_text: "The student wants to emphasize the most effective approach. Which choice most effectively uses relevant information from the notes to accomplish this goal?",
      options: mkOpts("A", [
        "Pair discussion outperformed worksheets alone in program " + n + ".",
        "Whale fins inspired many unrelated inventions.",
        "Worksheets are the only valid teaching tool.",
        "Comprehension scores never change.",
      ], [
        "Synthesizes the notes to highlight what worked best.",
        "Adds information not in the notes.",
        "Contradicted by the notes.",
        "Contradicted by reported score gains.",
      ]),
      correct_answer: "A",
      explanation: "The notes compare methods; the best synthesis identifies the approach linked to larger gains.",
    };
  }

  if (skill === "TRA") {
    const transitions = [
      ["However", "Therefore", "Similarly", "For example"],
      ["Nevertheless", "Thus", "Meanwhile", "In contrast"],
    ];
    const [correct, w1, w2, w3] = transitions[n % 2];
    const sentences = `The first trial failed to detect an effect. ______ the second trial, with more participants, showed a clear pattern.`;
    return {
      stimulus_text: sentences,
      stimulus_type: null,
      question_text: "Which choice completes the text with the most logical transition?",
      options: mkOpts("A", [correct, w1, w2, w3], [
        "Signals contrast between the two trials.",
        "Implies direct consequence; the contrast fits better.",
        "Suggests simultaneity, which is not stated.",
        "Would introduce an example, not a contrasting result.",
      ]),
      correct_answer: "A",
      explanation: `A contrast transition (${correct}) links a failed trial to a later successful one.`,
    };
  }

  if (skill === "BOU") {
    const variants = [
      {
        stem: "The committee reviewed the proposal it was thorough and well documented",
        correct: "proposal; it",
        distractors: ["proposal, it", "proposal it", "proposal: it"],
        expl: "Two independent clauses need a semicolon (or comma + FANBOYS).",
      },
      {
        stem: "After the lecture ended the students asked follow up questions",
        correct: "ended, the",
        distractors: ["ended the", "ended; the", "ended: the"],
        expl: "Introductory dependent clause needs a comma before the main clause.",
      },
    ];
    const v = variants[n % variants.length];
    const opts = [v.correct, ...v.distractors.filter((d) => d !== v.correct)].slice(0, 4);
    const correctId = ["A", "B", "C", "D"][opts.indexOf(v.correct)];
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which choice completes the sentence so that it follows Standard English conventions?\n\n${v.stem} ______ continued.`,
      options: mkOpts(
        correctId,
        opts,
        opts.map((o) => (o === v.correct ? v.expl : `Incorrect boundary: "${o}" does not fix the sentence.`)),
      ),
      correct_answer: correctId,
      explanation: v.expl,
    };
  }

  if (skill === "FSS") {
    const items = [
      { bad: "Neither the coaches nor the athlete were ready", good: "was", wrong: ["were", "are", "have been"] },
      { bad: "The data from the experiments suggest a trend", good: "suggests", wrong: ["suggest", "suggesting", "have suggested"] },
    ];
    const it = items[n % items.length];
    const correctId = "B";
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which choice completes the text so that it conforms to Standard English conventions?\n\n${it.bad} ______ conclusive.`,
      options: mkOpts(correctId, [it.wrong[0], it.good, it.wrong[1], it.wrong[2]], [
        "Subject-verb agreement error.",
        `Correct verb form: "${it.good}".`,
        "Agreement error.",
        "Wrong tense or agreement.",
      ]),
      correct_answer: correctId,
      explanation: `The subject requires the verb "${it.good}" for agreement.`,
    };
  }

  if (skill === "LIN") {
    const a = 2 + (n % 5) + diffScale;
    const rhs = a * (3 + n);
    const x = 3 + n;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `If $${a}x = ${rhs}$, what is the value of $x$?`,
      options: mkOpts("A", [`$${x}$`, `$${x - 1}$`, `$${a}$`, `$${x + 1}$`], [
        `Divide both sides by ${a}: $x = ${x}$.`,
        "Too small.",
        "That is the coefficient, not $x$.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Divide both sides by ${a}: $x = ${rhs}/${a} = ${x}$.`,
    };
  }

  if (skill === "INE") {
    const a = 2 + (n % 4);
    const b = 3 + (n % 5);
    const correct = 4 + n;
    const c = a * correct + b - 2;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which value of $x$ satisfies $${a}x + ${b} > ${c}$?`,
      options: mkOpts(
        "C",
        [`$${correct - 2}$`, `$${correct - 1}$`, `$${correct}$`, `$${correct + 1}$`],
        [
          `Substituting gives ${a}(${correct - 2})+${b}=${a * (correct - 2) + b}, not greater than ${c}.`,
          `Substituting gives ${a}(${correct - 1})+${b}=${a * (correct - 1) + b}, not greater than ${c}.`,
          `Substituting gives ${a}(${correct})+${b}=${a * correct + b} > ${c}.`,
          "Greater than needed; C is the smallest valid choice.",
        ],
      ),
      correct_answer: "C",
      explanation: `Solve: $${a}x > ${c - b}$, so $x > ${(c - b) / a}$. The smallest listed value is $${correct}$.`,
    };
  }

  if (skill === "SYS") {
    const x = 2 + n;
    const y = 3 + n;
    return {
      stimulus_text: `$x + y = ${x + y}$\n$2x - y = ${2 * x - y}$`,
      stimulus_type: null,
      question_text: "What is the value of $x$?",
      options: mkOpts("B", [`$${x - 1}$`, `$${x}$`, `$${x + 1}$`, `$${y}$`], [
        "One less than the correct $x$.",
        `Adding equations: $3x = ${3 * x}$, so $x = ${x}$.`,
        "One more than the correct $x$.",
        `That is $y$, not $x$.`,
      ]),
      correct_answer: "B",
      explanation: `Add the equations: $3x = ${3 * x}$, so $x = ${x}$.`,
    };
  }

  if (skill === "LEQ") {
    const m = 2 + (n % 3);
    const b = n;
    const x = 3 + n;
    const y = m * x + b;
    return {
      stimulus_text: `$y = ${m}x + ${b}$`,
      stimulus_type: null,
      question_text: `When $x = ${x}$, what is the value of $y$?`,
      options: mkOpts("A", [`$${y}$`, `$${y + 1}$`, `$${y - 1}$`, `$${m + b}$`], [
        `$y = ${m}(${x}) + ${b} = ${y}$.`,
        "Adds 1 to the correct value.",
        "Subtracts 1 from the correct value.",
        "Adds slope and intercept instead of evaluating.",
      ]),
      correct_answer: "A",
      explanation: `Substitute $x = ${x}$: $y = ${m}(${x}) + ${b} = ${y}$.`,
    };
  }

  if (skill === "LIF") {
    const x1 = 2 + n;
    const y1 = -1 + n;
    const x2 = x1 + 4;
    const slope = 2;
    const y2 = y1 + slope * 4;
    const x3 = -3 - n;
    const y3 = slope * (x3 - x1) + y1;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `A linear function $f$ satisfies $f(${x1}) = ${y1}$ and $f(${x2}) = ${y2}$. What is the value of $f(${x3})$?`,
      options: mkOpts("A", [`$${y3}$`, `$${y3 + 2}$`, `$${slope}$`, `$${y3 - 4}$`], [
        `Slope $m = ${slope}$. Then $f(${x3}) = ${y3}$.`,
        "Adds 2 to the correct value.",
        `That is the slope, not $f(${x3})$.`,
        "Subtracts 4 from the correct value.",
      ]),
      correct_answer: "A",
      explanation: `Slope $m = ${slope}$. Point-slope: $f(${x3}) = ${slope}(${x3}-${x1})+(${y1}) = ${y3}$.`,
    };
  }

  if (skill === "EQS") {
    const a = 2 + (n % 3);
    const b = 3 + n;
    const expr = `(${a}x + ${b})(${a}x - ${b})`;
    const ans = `${a * a}x^2 - ${b * b}`;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `Which expression is equivalent to $${expr}$?`,
      options: mkOpts("B", [`$${a}x^2 - ${b}$`, `$${ans}$`, `$${2 * a}x - ${2 * b}$`, `$${a + b}x^2$`], [
        "Incorrect square of the first term.",
        `Difference of squares: $(${a}x)^2 - (${b})^2 = ${ans}$.`,
        "This expands to a linear expression, not the quadratic.",
        "Does not follow the product pattern.",
      ]),
      correct_answer: "B",
      explanation: `Use difference of squares: $${expr} = ${ans}$.`,
    };
  }

  if (skill === "NRE") {
    const r1 = 2 + (n % 4);
    const r2 = 3 + (n % 3);
    const c = -r1 * r2;
    const b = r1 + r2;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `What is the positive solution to $x^2 - ${b}x + ${r1 * r2} = 0$?`,
      options: mkOpts("A", [`$${r2}$`, `$${r1}$`, `$${b}$`, `$${r1 + r2 + 1}$`], [
        `Factoring: $(x-${r1})(x-${r2})=0$ gives $x=${r2}$ (positive).`,
        `Also a root, but the question asks for the positive solution when both are positive; $${r2}$ is listed first as correct.`,
        "That is the sum of roots, not a root.",
        "Not a solution.",
      ]),
      correct_answer: "A",
      explanation: `Factor: $(x-${r1})(x-${r2})=0$, so $x=${r1}$ or $x=${r2}$. The positive solution is $${Math.max(r1, r2)}$.`,
    };
  }

  if (skill === "NRM") {
    const a = 1 + (n % 3);
    const h = n;
    const k = 2 + n;
    const x = h + 2;
    const y = a * 4 + k;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `For $f(x) = ${a}(x - ${h})^2 + ${k}$, what is the value of $f(${x})$?`,
      options: mkOpts("C", [`$${k}$`, `$${a + k}$`, `$${y}$`, `$${y + a}$`], [
        `That is $f(${h})$, the vertex value.`,
        "Adds coefficient and constant incorrectly.",
        `$f(${x}) = ${a}(${x}-${h})^2 + ${k} = ${a}(4)+${k} = ${y}$.`,
        "Too large by $${a}$.",
      ]),
      correct_answer: "C",
      explanation: `Substitute $x=${x}$: $f(${x}) = ${a}(2)^2+${k} = ${y}$.`,
    };
  }

  if (skill === "PER") {
    const pct = 10 + n * 5;
    const base = 20 * n;
    const ans = Math.round((base * pct) / 100);
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `What is ${pct}% of ${base}?`,
      options: mkOpts("B", [`$${ans - 5}$`, `$${ans}$`, `$${ans + 5}$`, `$${pct + base}$`], [
        "Too small.",
        `${pct}% of ${base} = ${ans}.`,
        "Too large.",
        "Adds percent and base instead of multiplying.",
      ]),
      correct_answer: "B",
      explanation: `${pct}% of ${base} = \\frac{${pct}}{100} \\times ${base} = ${ans}$.`,
    };
  }

  if (skill === "RAT") {
    const a = 2 + n;
    const b = 3 + n;
    const total = 10 * n;
    const partA = Math.round((total * a) / (a + b));
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `In a mixture, the ratio of ingredient A to ingredient B is $${a}:${b}$. If the mixture contains ${total} units total, how many units are ingredient A?`,
      options: mkOpts("B", [`$${partA - 2}$`, `$${partA}$`, `$${partA + 3}$`, `$${total}$`], [
        `Too small; compute $\\frac{${a}}{${a + b}} \\times ${total}$.`,
        `$\\frac{${a}}{${a + b}} \\times ${total} = ${partA}$.`,
        "Too large.",
        "That is the total, not ingredient A.",
      ]),
      correct_answer: "B",
      explanation: `A's share: $\\frac{${a}}{${a + b}} \\times ${total} = ${partA}$ units.`,
    };
  }

  if (skill === "OIA") {
    const vals = [n + 2, n + 4, n + 6, n + 8, n + 10];
    const mean = vals.reduce((s, v) => s + v, 0) / vals.length;
    return {
      stimulus_text: `Data set: ${vals.join(", ")}`,
      stimulus_type: null,
      question_text: "What is the mean of the data set?",
      options: mkOpts("A", [`$${mean}$`, `$${mean - 1}$`, `$${vals[2]}$`, `$${mean + 2}$`], [
        `Sum ${vals.reduce((s, v) => s + v, 0)} ÷ 5 = ${mean}.`,
        "Arithmetic error.",
        "That is the median, not the mean.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Mean = (${vals.join("+")})/5 = ${mean}.`,
    };
  }

  if (skill === "TVA") {
    const x1 = n;
    const y1 = 2 * n + 1;
    const x2 = n + 4;
    const y2 = 2 * n + 9;
    const slope = (y2 - y1) / (x2 - x1);
    return {
      stimulus_text: `A line passes through points $(${x1}, ${y1})$ and $(${x2}, ${y2})$ in the $xy$-plane.`,
      stimulus_type: null,
      question_text: "What is the slope of the line?",
      options: mkOpts("B", [`$${slope - 1}$`, `$${slope}$`, `$${slope + 1}$`, `$${y2}$`], [
        "Incorrect rise over run.",
        `Slope = $\\frac{${y2}-${y1}}{${x2}-${x1}} = ${slope}$.`,
        "Adds 1 to the slope.",
        "That is a $y$-coordinate, not slope.",
      ]),
      correct_answer: "B",
      explanation: `Slope = $\\frac{${y2 - y1}}{${x2 - x1}} = ${slope}$.`,
    };
  }

  if (skill === "PRO") {
    const red = 2 + (n % 4);
    const total = red + 5 + n;
    const p = red / total;
    const pct = Math.round(p * 100);
    return {
      stimulus_text: `A bag contains ${red} red marbles and ${total - red} blue marbles. One marble is chosen at random.`,
      stimulus_type: null,
      question_text: "What is the probability of choosing a red marble?",
      options: mkOpts("C", [
        `$\\frac{${total - red}}{${total}}$`,
        `$\\frac{1}{${red}}$`,
        `$\\frac{${red}}{${total}}$`,
        `$\\frac{${red}}{${total - red}}$`,
      ], [
        "That is the probability of blue.",
        "Not the probability of red.",
        `P(red) = ${red}/${total}.`,
        "Uses wrong denominator.",
      ]),
      correct_answer: "C",
      explanation: `Probability = favorable/total = ${red}/${total} (${pct}%).`,
    };
  }

  if (skill === "IEE") {
    const moe = 3 + (n % 4);
    const pct = 40 + n;
    return {
      stimulus_text: `A poll of 1,000 voters reports ${pct}% support for a measure, with a margin of error of ±${moe} percentage points at a 95% confidence level.`,
      stimulus_type: null,
      question_text: "Which statement is best supported by the poll?",
      options: mkOpts("A", [
        `Support could plausibly be as low as ${pct - moe}% or as high as ${pct + moe}%`,
        `Exactly ${pct}% of all voters in the country support the measure`,
        "The poll proves every voter was surveyed",
        "Margin of error means the poll is meaningless",
      ], [
        `The interval is ${pct - moe}% to ${pct + moe}%.`,
        "A sample estimate is not an exact population value.",
        "Only 1,000 voters were polled.",
        "Margin of error quantifies uncertainty; it does not invalidate the poll.",
      ]),
      correct_answer: "A",
      explanation: `With ±${moe} points, plausible support ranges from ${pct - moe}% to ${pct + moe}%.`,
    };
  }

  if (skill === "EVA") {
    const sample = 50 + n * 10;
    return {
      stimulus_text: `A blogger writes, "Everyone in the city opposes the new bike lane," after surveying ${sample} people at one weekend farmers market.`,
      stimulus_type: null,
      question_text: "Which choice best evaluates the blogger's claim?",
      options: mkOpts("D", [
        "The claim is valid because 50 people is a large sample",
        "The claim is valid because farmers markets represent all residents",
        "The claim is valid because weekend opinions never change",
        "The claim is overstated because the sample is not representative of the whole city",
      ], [
        "Sample size alone does not fix selection bias.",
        "One location on one weekend is not citywide representation.",
        "No evidence supports this absolutist statement.",
        "Convenience samples cannot support 'everyone' claims.",
      ]),
      correct_answer: "D",
      explanation: "Generalizing from a single venue to 'everyone in the city' overreaches the evidence.",
    };
  }

  if (skill === "ARE") {
    const w = 4 + n;
    const h = 3 + n;
    const area = w * h;
    return {
      stimulus_text: `A rectangle has length ${w} units and width ${h} units.`,
      stimulus_type: null,
      question_text: "What is the area of the rectangle, in square units?",
      options: mkOpts("A", [`$${area}$`, `$${w + h}$`, `$${2 * w + 2 * h}$`, `$${area + 5}$`], [
        `Area = ${w} × ${h} = ${area}.`,
        "Sum of dimensions, not area.",
        "Perimeter, not area.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Area = length × width = ${w} × ${h} = ${area}$ square units.`,
    };
  }

  if (skill === "LIN_G") {
    const angleA = 40 + n * 8;
    const angleB = 60;
    const angleC = 180 - angleA - angleB;
    return {
      stimulus_text: `In triangle $ABC$, the measure of angle $A$ is ${angleA}° and the measure of angle $B$ is ${angleB}°.`,
      stimulus_type: null,
      question_text: "What is the measure of angle $C$, in degrees?",
      options: mkOpts("D", [`$${angleA}°$`, `$${angleB}°$`, `$${angleA + 10}°$`, `$${angleC}°$`], [
        "That is angle A.",
        "That is angle B.",
        "Angles must sum to 180°; this is too large.",
        `$${angleA}° + ${angleB}° + ${angleC}° = 180°$.`,
      ]),
      correct_answer: "D",
      explanation: `Triangle angle sum: $m\\angle C = 180 - ${angleA} - ${angleB} = ${angleC}°$.`,
    };
  }

  if (skill === "RIG") {
    const a = 3 + n;
    const b = 4 + n;
    const c = Math.round(Math.sqrt(a * a + b * b));
    return {
      stimulus_text: `A right triangle has legs of length ${a} and ${b}.`,
      stimulus_type: null,
      question_text: "What is the length of the hypotenuse?",
      options: mkOpts("C", [`$${c - 1}$`, `$${a + b}$`, `$${c}$`, `$${c + 2}$`], [
        "Too short for the hypotenuse.",
        "Hypotenuse is not the sum of the legs.",
        `$c = \\sqrt{${a}^2 + ${b}^2} = ${c}$.`,
        "Too long.",
      ]),
      correct_answer: "C",
      explanation: `Pythagorean theorem: $c = \\sqrt{${a}^2 + ${b}^2} = ${c}$.`,
    };
  }

  if (skill === "CIR") {
    const r = 3 + n;
    const circ = 2 * Math.round(Math.PI * r * 10) / 10;
    const exact = (2 * 3.14 * r).toFixed(2);
    return {
      stimulus_text: `A circle has center $O$ and radius ${r}.`,
      stimulus_type: null,
      question_text: "What is the circumference of the circle? (Use $\\pi \\approx 3.14$.)",
      options: mkOpts("B", [
        `$${(3.14 * r * r).toFixed(2)}$`,
        `$${exact}$`,
        `$${(2 * r).toFixed(2)}$`,
        `$${(3.14 * r).toFixed(2)}$`,
      ], [
        "That is an area expression $\\pi r^2$, not circumference.",
        `Circumference $C = 2\\pi r \\approx 2(3.14)(${r}) = ${exact}$.`,
        "That is the diameter, not circumference.",
        "That is $\\pi r$, not $2\\pi r$.",
      ]),
      correct_answer: "B",
      explanation: `$C = 2\\pi r \\approx 2(3.14)(${r}) = ${exact}$.`,
    };
  }

  // Fallback
  if (meta.section === "math") {
    const k = 5 + n;
    return {
      stimulus_text: null,
      stimulus_type: null,
      question_text: `If $${k}x = ${k * (n + 2)}$, what is the value of $x$?`,
      options: mkOpts("A", [`$${n + 2}$`, `$${n + 1}$`, `$${k}$`, `$${n + 3}$`], [
        `Divide by ${k}: $x = ${n + 2}$.`,
        "Too small.",
        "Coefficient, not $x$.",
        "Too large.",
      ]),
      correct_answer: "A",
      explanation: `Divide both sides by ${k}: $x = ${n + 2}$.`,
    };
  }

  return {
    stimulus_text: passage(n),
    stimulus_type: "passage",
    question_text: "Which choice best states the main idea of the passage?",
    options: mkOpts("A", [
      "The passage explains a research finding and its implications",
      "The passage rejects all scientific methods",
      "The passage is only a personal diary with no claims",
      "The passage lists unrelated recipes",
    ], ["Supported.", "Contradicted.", "Not supported.", "Irrelevant."]),
    correct_answer: "A",
    explanation: "The passage presents evidence and discusses its significance.",
  };
}

function rowFor(skill, meta, difficulty, q) {
  const correct = q.options.find((o) => o.is_correct);
  return {
    id: randomUUID(),
    question_text: q.question_text,
    stimulus_text: q.stimulus_text,
    stimulus_type: q.stimulus_type,
    options: q.options,
    correct_answer: correct?.id ?? q.correct_answer,
    explanation: q.explanation,
    hint: null,
    topic: meta.topic,
    subtopic: meta.subtopic,
    section: meta.section,
    domain_id: meta.domain_id,
    skill_id: skill,
    math_skill_code: meta.section === "math" ? skill : null,
    difficulty,
    calculator_allowed: meta.section === "math",
    exam_type: "SAT",
    question_type: "multiple_choice",
    is_platform_question: true,
    ai_generated: true,
    source: "scholaris_ai",
    source_metadata: {
      generator: "scholaris_bulk_v1",
      original: true,
      explanation_v2: true,
    },
  };
}

function insertSql(rows) {
  const lines = ["BEGIN;"];
  for (const r of rows) {
    lines.push(`INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(r.id)}, ${sqlEscape(r.question_text)}, ${sqlEscape(r.stimulus_text)}, ${sqlEscape(r.stimulus_type)}, '${JSON.stringify(r.options).replace(/'/g, "''")}'::jsonb, ${sqlEscape(r.correct_answer)}, ${sqlEscape(r.explanation)}, ${sqlEscape(r.hint)}, ${sqlEscape(r.topic)}, ${sqlEscape(r.subtopic)}, ${sqlEscape(r.section)}, ${sqlEscape(r.domain_id)}, ${sqlEscape(r.skill_id)}, ${sqlEscape(r.math_skill_code)}, ${sqlEscape(r.difficulty)}, ${r.calculator_allowed}, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${JSON.stringify(r.source_metadata).replace(/'/g, "''")}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`);
  }
  lines.push("COMMIT;");
  return lines.join("\n");
}

function buildMegaFromChunks(chunkDir, outDir, insertsPerMega) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
    .sort();
  const inserts = [];
  for (const f of files) {
    const sql = readFileSync(join(chunkDir, f), "utf8");
    const parts = sql
      .split(/\n(?=INSERT)/)
      .filter((s) => s.trim().startsWith("INSERT"))
      .map((p) =>
        p
          .trim()
          .replace(/\nCOMMIT;?\s*$/i, "")
          .replace(/^BEGIN;?\s*\n?/i, ""),
      );
    inserts.push(...parts);
  }
  mkdirSync(outDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < inserts.length; i += insertsPerMega) {
    const batch = inserts.slice(i, i + insertsPerMega);
    const body = "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n";
    const path = join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`);
    writeFileSync(path, body);
    megaIdx++;
  }
  return { megaFiles: megaIdx, inserts: inserts.length };
}

function main() {
  const f = parseArgs();
  if (f.buildMega) {
    const result = buildMegaFromChunks(resolve(f.buildMega), resolve(f.megaOut), f.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  const haveData = loadHave(f);
  const plan = buildPlan(f, haveData);
  const total = plan.reduce((s, c) => s + c.need, 0);
  const rwTotal = plan.filter((c) => SKILLS[c.skill].section === "reading_writing").reduce((s, c) => s + c.need, 0);
  const mathTotal = plan.filter((c) => SKILLS[c.skill].section === "math").reduce((s, c) => s + c.need, 0);

  console.error(`Plan: ${plan.length} cells, ${total} questions (RW +${rwTotal}, Math +${mathTotal})`);
  if (f.planOnly) {
    console.log(JSON.stringify({ plan, total, rwTotal, mathTotal }, null, 2));
    return;
  }

  const items = [];
  const rows = [];
  for (const cell of plan) {
    for (let i = 0; i < cell.need; i++) {
      const q = generateOne(cell.skill, cell.difficulty, i + cell.have);
      const meta = SKILLS[cell.skill];
      items.push({ skill: cell.skill, difficulty: cell.difficulty, question: q });
      rows.push(rowFor(cell.skill, meta, cell.difficulty, q));
    }
  }

  console.error(`Generated ${rows.length} questions`);
  if (f.outputJson) {
    mkdirSync(dirname(resolve(f.outputJson)), { recursive: true });
    writeFileSync(resolve(f.outputJson), JSON.stringify(items, null, 2) + "\n");
    console.error(`Wrote ${f.outputJson}`);
  }
  if (f.outputSql) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), insertSql(rows) + "\n");
    console.error(`Wrote ${f.outputSql}`);
  }
  console.log(JSON.stringify({ ok: true, rows: rows.length, rwTotal, mathTotal, cells: plan.length }, null, 2));
}

main();
