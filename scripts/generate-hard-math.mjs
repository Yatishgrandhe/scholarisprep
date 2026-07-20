#!/usr/bin/env node
/**
 * Generate 500 Digital SAT **hard** math questions (harder than current medium/easy).
 * Mix: new scholaris_ai INSERTs + medium-row UPDATEs with regenerated hard stems.
 * difficulty='hard' directly — no tier bump.
 *
 *   node scripts/generate-hard-math.mjs --output-sql scripts/data/hard-math-500.sql
 *   node scripts/chunk-sql.mjs scripts/data/hard-math-500.sql 8 scripts/data/hard-math-500-chunks
 *   node scripts/generate-hard-math.mjs --build-mega scripts/data/hard-math-500-chunks scripts/data/hard-math-500-mega 25
 *   node scripts/apply-mega-execute-sql.mjs scripts/data/hard-math-500-mega 1500
 *
 * Flags:
 *   --output-sql PATH       Write INSERT + UPDATE statements
 *   --input-json PATH       Cached medium-row export for upgrades
 *   --fetch-json PATH       Write fetched medium rows to JSON
 *   --use-mcp               Fetch upgrade candidates via Supabase MCP
 *   --upgrade-count N       Medium rows to upgrade (default 350)
 *   --insert-count N        New scholaris_ai rows (default 150)
 *   --dry-run               Stats only
 *   --build-mega DIR OUT [SIZE]
 */

import { createHash, randomUUID } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { dirname, resolve, join } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const VERSION = "hard_content_v2";
const DIFF_SCALE = 5;

const MATH_SKILLS = [
  "LIN", "LIF", "LEQ", "SYS", "INE", "NRM", "NRE", "EQS", "RAT", "PER",
  "OIA", "TVA", "PRO", "IEE", "EVA", "ARE", "LIN_G", "RIG", "CIR",
];

const SKILLS = {
  LIN: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable", section: "math" },
  LEQ: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables", section: "math" },
  LIF: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions", section: "math" },
  SYS: { topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations", section: "math" },
  INE: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities", section: "math" },
  EQS: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions", section: "math" },
  NRE: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable", section: "math" },
  NRM: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions", section: "math" },
  RAT: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions", section: "math" },
  PER: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages", section: "math" },
  OIA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data", section: "math" },
  TVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Two-variable data", section: "math" },
  PRO: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability", section: "math" },
  IEE: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics", section: "math" },
  EVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Evaluating statistical claims", section: "math" },
  ARE: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume", section: "math" },
  LIN_G: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles", section: "math" },
  RIG: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry", section: "math" },
  CIR: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles", section: "math" },
};

function parseArgs() {
  const f = {
    outputSql: null,
    inputJson: null,
    fetchJson: null,
    useMcp: false,
    dryRun: false,
    upgradeCount: 350,
    insertCount: 150,
    buildMega: null,
    megaOut: null,
    megaSize: 25,
  };
  const argv = process.argv.slice(2);
  if (argv[0] === "--build-mega") {
    f.buildMega = argv[1];
    f.megaOut = argv[2];
    f.megaSize = Number(argv[3] ?? 25);
    return f;
  }
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--output-sql") f.outputSql = argv[++i];
    else if (a === "--input-json") f.inputJson = argv[++i];
    else if (a === "--fetch-json") f.fetchJson = argv[++i];
    else if (a === "--use-mcp") f.useMcp = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--upgrade-count") f.upgradeCount = Number(argv[++i]);
    else if (a === "--insert-count") f.insertCount = Number(argv[++i]);
  }
  return f;
}

function loadEnv() {
  try {
    const raw = readFileSync(resolve(process.cwd(), ".env.local"), "utf8");
    const env = {};
    for (const line of raw.split("\n")) {
      const m = line.match(/^([^#=]+)=(.*)$/);
      if (m) env[m[1].trim()] = m[2].trim().replace(/^["']|["']$/g, "");
    }
    return env;
  } catch {
    return {};
  }
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

function seedFromId(id) {
  return parseInt(createHash("sha256").update(String(id)).digest("hex").slice(0, 8), 16);
}

function bounded(n, max = 60) {
  return n % max;
}

/** Digital SAT hard templates — 3–5 steps, parameters, layered concepts */
function generateHardMath(skill, rawN) {
  const n = bounded(rawN, 60);
  const s = DIFF_SCALE;

  if (skill === "LIN") {
    const k = 3 + (n % 6);
    const a = 4 + (n % 5);
    const target = 5 + n;
    const rhs = a * (target - k) + 2 * k;
    return {
      stimulus_text: `A calibration device applies scale factor ${a}, then adds a correction term involving parameter $k$.`,
      question_text: `For what value of $k$ does $${a}(x-${k})+2k = ${rhs}$ have solution $x=${target}$?`,
      options: mkOpts(
        "B",
        [`$${k - 2}$`, `$${k}$`, `$${k + 1}$`, `$${target}$`],
        [
          "Substituting this $k$ leaves $x$ one less than ${target}.",
          `**Step 1:** Plug in $x=${target}$. **Step 2:** Solve for $k=${k}$.`,
          "Too large; re-check the linear equation in $k$.",
          "That is the given solution for $x$, not the parameter $k$.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Substitute $x=${target}$: $${a}(${target}-k)+2k=${rhs}$.\n**Step 2:** Expand: $${a * target}-${a}k+2k=${rhs}$ → $${a * target}+${2 - a}k=${rhs}$.\n**Step 3:** Isolate: $${2 - a}k=${rhs - a * target}$ → $k=${k}$.\n**Step 4:** Verify by substituting $k=${k}$ back.`,
    };
  }

  if (skill === "INE") {
    const a = 3 + (n % 4);
    const b = 5 + (n % 6);
    const correct = 6 + n + s;
    const c = a * correct + b - 4;
    const threshold = ((c - b) / a).toFixed(2);
    return {
      stimulus_text: `A sensor reading $R=ax+b$ must exceed ${c} but stay at most ${a * correct + b + 12} to trigger an alert.`,
      question_text: `Which integer value of $x$ satisfies $${a}x + ${b} > ${c}$ and is the smallest feasible reading?`,
      options: mkOpts(
        "D",
        [`$${correct - 3}$`, `$${correct - 2}$`, `$${correct - 1}$`, `$${correct}$`],
        [
          `Too small: $${a}(${correct - 3})+${b}=${a * (correct - 3) + b}$.`,
          `Still below ${c}.`,
          `Borderline; strict inequality requires the next integer up.`,
          `**Step 1:** $x > ${threshold}$. **Step 2:** Smallest integer: ${correct}.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** $${a}x > ${c - b}$.\n**Step 2:** $x > ${threshold}$.\n**Step 3:** Among choices, $${correct}$ is the smallest valid integer.\n**Step 4:** Check upper bound if needed.`,
    };
  }

  if (skill === "SYS") {
    const x = 4 + n + s;
    const y = 3 + n;
    const sum = x + y;
    const diff = 2 * x - y;
    const coeff = 3 + (n % 2);
    return {
      stimulus_text: `At an event, ${sum} combined tickets were sold. VIP revenue follows $${coeff}x$ and standard $y$, with constraint $${coeff}x-y=${diff}$.`,
      question_text: `Given $x+y=${sum}$ and $${coeff}x-y=${diff}$, what is $x$?`,
      options: mkOpts(
        "A",
        [`$${x}$`, `$${x - 1}$`, `$${y}$`, `$${x + 1}$`],
        [
          `**Step 1:** Add equations → $${coeff + 1}x=${(coeff + 1) * x}$. **Step 2:** $x=${x}$.`,
          "One less than the solution.",
          "That is $y$, not $x$.",
          "One more than the solution.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Add: $(x+y)+(${coeff}x-y)=${sum}+${diff}$ → $${coeff + 1}x=${(coeff + 1) * x}$.\n**Step 2:** $x=${x}$.\n**Step 3:** Back-substitute: $y=${y}$.\n**Step 4:** Verify both equations.`,
    };
  }

  if (skill === "LEQ") {
    const m = 3 + (n % 4);
    const b = 2 + n;
    const x1 = 4 + n;
    const y1 = m * x1 + b;
    const x2 = x1 + 8;
    const y2 = m * x2 + b;
    return {
      stimulus_text: `A vehicle's distance $d$ (miles) after $t$ hours is $d=${m}t+${b}$. At $t=${x1}$, $d=${y1}$.`,
      question_text: `If the vehicle continues at the same rate, what is $d$ when $t=${x2}$?`,
      options: mkOpts(
        "C",
        [`$${y2 - m}$`, `$${y1 + m}$`, `$${y2}$`, `$${m * x2}$`],
        [
          "Uses one hour too few.",
          "Adds slope once instead of evaluating at $t=" + x2 + "$.",
          `**Step 1:** $d=${m}(${x2})+${b}$. **Step 2:** $d=${y2}$.`,
          "Forgets the intercept $+${b}$.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Rate is $${m}$ mi/h with intercept $${b}$.\n**Step 2:** $d=${m}(${x2})+${b}=${y2}$.\n**Step 3:** Cross-check via $(${x2}-${x1})×${m}+${y1}=${y2}$.`,
    };
  }

  if (skill === "LIF") {
    const x1 = 3 + n;
    const y1 = -3 + n;
    const x2 = x1 + 6;
    const slope = 3 + (n % 3);
    const y2 = y1 + slope * 6;
    const x3 = -5 - n;
    const y3 = slope * (x3 - x1) + y1;
    return {
      stimulus_text: null,
      question_text: `Linear function $f$ models temperature. $f(${x1})=${y1}$ and $f(${x2})=${y2}$. What is $f(${x3})$?`,
      options: mkOpts(
        "D",
        [`$${y3 + slope}$`, `$${slope}$`, `$${y3 - 4}$`, `$${y3}$`],
        [
          "Adds slope once too many after point-slope setup.",
          "That is the rate of change, not $f(${x3})$.",
          "Arithmetic slip in point-slope form.",
          `**Step 1:** $m=${slope}$. **Step 2:** $f(${x3})=${y3}$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** Slope $m=\\frac{${y2}-${y1}}{${x2}-${x1}}=${slope}$.\n**Step 2:** Point-slope: $f(${x3})=${slope}(${x3}-${x1})+(${y1})$.\n**Step 3:** $f(${x3})=${y3}$.\n**Step 4:** Verify with second point.`,
    };
  }

  if (skill === "EQS") {
    const a = 3 + (n % 3);
    const b = 5 + n;
    const expr = `(${a}x+${b})^2 - (${a}x-${b})^2`;
    const ans = `${4 * a * b}x`;
    return {
      stimulus_text: null,
      question_text: `Which expression is equivalent to $${expr}$?`,
      options: mkOpts(
        "A",
        [`$${ans}$`, `$${2 * a}x^2$`, `$${4 * b}x$`, `$${a * a}x^2+${b * b}$`],
        [
          `Difference of squares: $(u+v)(u-v)$ with $u=${a}x+${b}$, $v=${a}x-${b}$.`,
          "Squares each binomial separately — wrong approach.",
          "Uses $4b$ instead of $4ab$.",
          "Adds squares; not equivalent.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Let $u=${a}x+${b}$, $v=${a}x-${b}$.\n**Step 2:** $u^2-v^2=(u+v)(u-v)$.\n**Step 3:** $(u+v)(u-v)=(${2 * a}x)(${2 * b})=${ans}$.\n**Step 4:** Confirm by expanding both forms.`,
    };
  }

  if (skill === "NRE") {
    const r1 = 4 + (n % 5);
    const r2 = 6 + (n % 4);
    const b = r1 + r2;
    const disc = b * b - 4 * r1 * r2;
    return {
      stimulus_text: null,
      question_text: `For $x^2 - ${b}x + ${r1 * r2} = 0$, what is the positive solution? (Discriminant $=${disc}$.)`,
      options: mkOpts(
        "C",
        [`$${r1 - 1}$`, `$${b}$`, `$${Math.max(r1, r2)}$`, `$${r1 + r2 + 2}$`],
        [
          "Not a root of the quadratic.",
          "Sum of roots, not a root.",
          `**Step 1:** Factor $(x-${r1})(x-${r2})=0$. **Step 2:** Positive root $${Math.max(r1, r2)}$.`,
          "Not a solution.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Factor: $(x-${r1})(x-${r2})=0$.\n**Step 2:** Roots $x=${r1}$ and $x=${r2}$.\n**Step 3:** Positive solution: $${Math.max(r1, r2)}$.\n**Step 4:** Quadratic formula confirms discriminant $${disc}$.`,
    };
  }

  if (skill === "NRM") {
    const a = 2 + (n % 3);
    const h = 2 + n;
    const k = 4 + n;
    const t1 = h + 4;
    const y1 = a * 16 + k;
    const t2 = h - 3;
    const y2 = a * 9 + k;
    return {
      stimulus_text: `Projectile height $h(t)=${a}(t-${h})^2+${k}$ (feet, $t$ in seconds).`,
      question_text: `What is the average rate of change of $h$ from $t=${t2}$ to $t=${t1}$?`,
      options: mkOpts(
        "B",
        [`$${Math.round((y1 - y2) / (t1 - t2)) - 2}$`, `$${Math.round((y1 - y2) / (t1 - t2))}$`, `$${a}$`, `$${y1}$`],
        [
          "Off by 2 ft/s from correct difference quotient.",
          `**Step 1:** $h(${t2})=${y2}$, $h(${t1})=${y1}$. **Step 2:** $\\frac{${y1}-${y2}}{${t1}-${t2}}=${Math.round((y1 - y2) / (t1 - t2))}$.`,
          "That is the leading coefficient, not average rate.",
          "Height at $t=${t1}$, not the rate.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** $h(${t2})=${a}(${t2}-${h})^2+${k}=${y2}$.\n**Step 2:** $h(${t1})=${a}(${t1}-${h})^2+${k}=${y1}$.\n**Step 3:** Avg rate $=\\frac{${y1}-${y2}}{${t1}-${t2}}=${Math.round((y1 - y2) / (t1 - t2))}$ ft/s.`,
    };
  }

  if (skill === "PER") {
    const base = 120 + 15 * n;
    const pct1 = 25 + (n % 4) * 5;
    const pct2 = 15 + (n % 3) * 5;
    const after1 = Math.round(base * (1 + pct1 / 100));
    const final = Math.round(after1 * (1 - pct2 / 100));
    return {
      stimulus_text: `A price is marked up ${pct1}%, then discounted ${pct2}% on the new price.`,
      question_text: `If the original price is $${base}$, what is the final price after both changes?`,
      options: mkOpts(
        "A",
        [`$${final}$`, `$${base}$`, `$${after1}$`, `$${Math.round(base * (1 + (pct1 - pct2) / 100))}$`],
        [
          `**Step 1:** $${base}×${1 + pct1 / 100}=${after1}$. **Step 2:** $${after1}×${1 - pct2 / 100}=${final}$.`,
          "Ignores both percent changes.",
          "Only applies the markup.",
          "Subtracting percentages directly is invalid for sequential changes.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Markup: $${base}×(1+${pct1}/100)=${after1}$.\n**Step 2:** Discount on new price: $${after1}×(1-${pct2}/100)=${final}$.\n**Step 3:** Do not net the percents — order matters.`,
    };
  }

  if (skill === "RAT") {
    const a = 4 + (n % 4);
    const b = 7 + (n % 5);
    const rate = 3 + (n % 3);
    const hours = 4 + n;
    const total = rate * hours * (a + b);
    const partA = Math.round((total * a) / (a + b));
    return {
      stimulus_text: `Two workers split tasks in ratio $${a}:${b}$ over ${hours} hours at ${rate} tasks/hour combined.`,
      question_text: `How many tasks did the first worker complete?`,
      options: mkOpts(
        "C",
        [`$${partA - 5}$`, `$${partA - 2}$`, `$${partA}$`, `$${total}$`],
        [
          "Underestimates A's share of the total.",
          "Close but ratio arithmetic is off.",
          `**Step 1:** Total $=${rate}×${hours}×(${a}+${b})=${total}$. **Step 2:** A's share $\\frac{${a}}{${a + b}}×${total}=${partA}$.`,
          "That is the combined total, not worker A's count.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Combined output $=${rate}×${hours}×(${a}+${b})=${total}$ tasks.\n**Step 2:** A's fraction $\\frac{${a}}{${a + b}}$.\n**Step 3:** $\\frac{${a}}{${a + b}}×${total}=${partA}$ tasks.`,
    };
  }

  if (skill === "OIA") {
    const missing = 4 + n;
    const vals = [missing + 3, missing + 7, missing + 11, missing + 15];
    const mean = (vals.reduce((s, v) => s + v, 0) + missing) / 5;
    return {
      stimulus_text: `Five test scores: ${vals.join(", ")}, and one score $x$ is unknown. The mean is ${mean}.`,
      question_text: `What is the missing score $x$?`,
      options: mkOpts(
        "B",
        [`$${missing - 3}$`, `$${missing}$`, `$${missing + 3}$`, `$${Math.round(mean)}$`],
        [
          "Pulls the mean down too far.",
          `**Step 1:** Sum needed $=${mean}×5=${mean * 5}$. **Step 2:** $x=${missing}$.`,
          "Too high for the given mean.",
          "Confuses mean with the missing value.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Total sum $=${mean}×5=${mean * 5}$.\n**Step 2:** Known sum $=${vals.reduce((s, v) => s + v, 0)}$.\n**Step 3:** $x=${mean * 5}-${vals.reduce((s, v) => s + v, 0)}=${missing}$.\n**Step 4:** Verify mean.`,
    };
  }

  if (skill === "TVA") {
    const x1 = n + 3;
    const y1 = 4 * x1 - 2;
    const x2 = x1 + 8;
    const y2 = 4 * x2 - 2;
    const slope = 4;
    const intercept = -2;
    return {
      stimulus_text: `A line models cost vs. units, passing through $(${x1},${y1})$ and $(${x2},${y2})$.`,
      question_text: `Which equation models the line, and what does the slope represent?`,
      options: mkOpts(
        "A",
        [
          `$y=${slope}x${intercept >= 0 ? "+" + intercept : intercept}$; cost increases $${slope}$ per unit`,
          `$y=${slope - 1}x+${intercept}$; cost decreases per unit`,
          `$y=${y2}$; fixed total cost`,
          `$y=\\frac{${y2}}{${x2}}x$; average cost per unit from origin`,
        ],
        [
          `**Step 1:** Slope $=\\frac{${y2}-${y1}}{${x2}-${x1}}=${slope}$. **Step 2:** $y=${slope}x${intercept >= 0 ? "+" + intercept : intercept}$.`,
          "Wrong sign and magnitude.",
          "That is a single point's $y$-value, not the line.",
          "Slope from origin is not the line's slope.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Slope $=\\frac{${y2 - y1}}{${x2 - x1}}=${slope}$.\n**Step 2:** $y=${slope}x${intercept >= 0 ? "+" + intercept : intercept}$.\n**Step 3:** Slope $${slope}$ = dollars per additional unit.\n**Step 4:** Check both points.`,
    };
  }

  if (skill === "PRO") {
    const red = 5 + (n % 4);
    const blue = 8 + n;
    const total = red + blue;
    const drawn = red - 1;
    const p = drawn / (total - 1);
    return {
      stimulus_text: `A bag has ${red} red and ${blue} blue chips. Two chips drawn without replacement; first is red.`,
      question_text: `Given the first chip is red, what is the probability the second is also red?`,
      options: mkOpts(
        "D",
        [`$\\frac{${red}}{${total}}$`, `$\\frac{${red}}{${total - 1}}$`, `$\\frac{${drawn + 1}}{${total}}$`, `$\\frac{${drawn}}{${total - 1}}$`],
        [
          "Ignores that one red chip was removed.",
          "Uses original count in numerator.",
          "Wrong numerator after first draw.",
          `**Step 1:** ${drawn} red remain of ${total - 1}. **Step 2:** P $=\\frac{${drawn}}{${total - 1}}$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** First chip red → ${drawn} red left, ${total - 1} total.\n**Step 2:** Conditional probability $=\\frac{${drawn}}{${total - 1}}$.\n**Step 3:** Do not use $\\frac{${red}}{${total}}$ — that ignores the first draw.`,
    };
  }

  if (skill === "IEE") {
    const pct = 54 + (n % 16);
    const moe = 4;
    return {
      stimulus_text: `Poll: ${pct}% favor a policy, margin of error ±${moe} pp (95% confidence), $n=1500$.`,
      question_text: `Which conclusion is best supported?`,
      options: mkOpts(
        "B",
        [
          `Exactly ${pct}% of all citizens favor the policy`,
          `Plausible support is between ${pct - moe}% and ${pct + moe}%`,
          "The sample proves every citizen was asked",
          "Margin of error makes the poll useless",
        ],
        [
          "Sample statistics are not exact population values.",
          `**Step 1:** Interval ${pct - moe}% to ${pct + moe}%. **Step 2:** Supported at 95% confidence.`,
          "Only 1500 people were surveyed.",
          "MOE quantifies uncertainty; it does not invalidate the poll.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Compute interval: ${pct - moe}% to ${pct + moe}%.\n**Step 2:** At 95% confidence, true support likely falls in this range.\n**Step 3:** Do not equate sample % with population % exactly.`,
    };
  }

  if (skill === "EVA") {
    const sample = 45 + n * 6;
    return {
      stimulus_text: `A critic claims "nobody likes the new app" after surveying ${sample} followers who commented on one negative post.`,
      question_text: `Which choice best evaluates the claim?`,
      options: mkOpts(
        "A",
        [
          "The claim overgeneralizes from a biased, non-random sample",
          "The claim is valid because ${sample} responses is large",
          "The claim is valid because social media represents everyone",
          "The claim is valid because one post reflects all opinions",
        ],
        [
          "**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support 'nobody'.",
          "Size alone does not fix selection bias.",
          "Platform users are not the entire population.",
          "One thread is not representative.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Identify bias: engaged critics only.\n**Step 2:** Absolute claim "nobody" exceeds the evidence.\n**Step 3:** Representative sampling would be needed.\n**Step 4:** Larger convenience sample still biased.`,
    };
  }

  if (skill === "ARE") {
    const w = 6 + n;
    const h = 5 + n;
    const cut = 3;
    const area = w * h - cut * cut;
    const vol = area * 2;
    return {
      stimulus_text: `A rectangular sheet is ${w} by ${h} inches. A square corner of side ${cut} inches is removed, then the remainder is folded into a box ${2} inches tall.`,
      question_text: `What is the volume of the box, in cubic inches?`,
      options: mkOpts(
        "C",
        [`$${w * h}$`, `$${area}$`, `$${vol}$`, `$${vol + cut}$`],
        [
          "Forgot to subtract the removed corner.",
          "Area of base only, not volume.",
          `**Step 1:** Base area $${w * h}-${cut}^2=${area}$. **Step 2:** Volume $=${area}×2=${vol}$.`,
          "Adds corner length instead of using height.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Rectangle: $${w}×${h}=${w * h}$.\n**Step 2:** Remove corner: $${cut}^2=${cut * cut}$ → base $${area}$.\n**Step 3:** Volume $=${area}×2=${vol}$ cu in.`,
    };
  }

  if (skill === "LIN_G") {
    const angleA = 52 + (n % 7) * 6;
    const angleB = 48 + (n % 5) * 4;
    const angleC = 180 - angleA - angleB;
    return {
      stimulus_text: `In triangle $ABC$, $m\\angle A = ${angleA}°$ and $m\\angle B = ${angleB}°$. Line through $C$ forms exterior angle ${angleA + angleB}° with side $AB$.`,
      question_text: `What is $m\\angle C$?`,
      options: mkOpts(
        "D",
        [`$${angleA}°$`, `$${angleB}°$`, `$${angleC + 10}°$`, `$${angleC}°$`],
        [
          "That is angle A.",
          "That is angle B.",
          "Too large for the triangle angle sum.",
          `**Step 1:** Sum $180°$. **Step 2:** $m\\angle C = ${angleC}°$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** Triangle sum: $m\\angle A + m\\angle B + m\\angle C = 180°$.\n**Step 2:** $m\\angle C = 180 - ${angleA} - ${angleB} = ${angleC}°$.\n**Step 3:** Exterior angle equals sum of remote interior angles.\n**Step 4:** Verify ${angleA}° + ${angleB}° + ${angleC}° = 180°.`,
    };
  }

  if (skill === "RIG") {
    const a = 6 + n;
    const b = 13 + n;
    const c = Math.round(Math.sqrt(a * a + b * b));
    const sinVal = (b / c).toFixed(3);
    return {
      stimulus_text: `A ladder's foot is ${a} ft from a wall; the top is ${b} ft high. The ladder length is ${c} ft.`,
      question_text: `What is $\\sin\\theta$ where $\\theta$ is the angle between the ladder and the ground?`,
      options: mkOpts(
        "B",
        [`$\\frac{${a}}{${c}}$`, `$\\frac{${b}}{${c}}$`, `$\\frac{${c}}{${b}}$`, `$\\frac{${a}}{${b}}$`],
        [
          "That is $\\cos\\theta$ (adjacent/hypotenuse).",
          `**Step 1:** Opposite $=${b}$, hypotenuse $=${c}$. **Step 2:** $\\sin\\theta=\\frac{${b}}{${c}}≈${sinVal}$.`,
          "Inverts the ratio.",
          "Uses a leg ratio, not sine.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Right triangle: opposite $=${b}$, hypotenuse $=${c}$.\n**Step 2:** $\\sin\\theta=\\frac{\\text{opposite}}{\\text{hypotenuse}}=\\frac{${b}}{${c}}$.\n**Step 3:** Pythagorean check: $${a}^2+${b}^2=${c}^2$.\n**Step 4:** $\\cos\\theta=\\frac{${a}}{${c}}$, not the answer.`,
    };
  }

  if (skill === "CIR") {
    const r = 5 + (n % 14);
    const exact = (2 * 3.14 * r).toFixed(2);
    const area = (3.14 * r * r).toFixed(2);
    return {
      stimulus_text: `A circular track has radius ${r} meters. A runner completes half the circumference.`,
      question_text: `How far is half the circumference? (Use $\\pi \\approx 3.14$.)`,
      options: mkOpts(
        "A",
        [`$${(Number(exact) / 2).toFixed(2)}$`, `$${area}$`, `$${exact}$`, `$${(3.14 * r).toFixed(2)}$`],
        [
          `**Step 1:** $C=2\\pi r≈${exact}$. **Step 2:** Half $≈${(Number(exact) / 2).toFixed(2)}$ m.`,
          "Area formula $\\pi r^2$, not arc length.",
          "Full circumference, not half.",
          "Half of $\\pi r$, not half of $2\\pi r$.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** $C=2\\pi r≈2(3.14)(${r})=${exact}$ m.\n**Step 2:** Half circumference $=\\frac{C}{2}≈${(Number(exact) / 2).toFixed(2)}$ m.\n**Step 3:** Do not confuse with area $πr^2≈${area}$.`,
    };
  }

  const k = 5 + n + s;
  const x = n + 6;
  return {
    stimulus_text: null,
    question_text: `If $${k}(x-3)+6=2x+${2 * x + k - 6}$ has no solution, which value of $k$ makes the equation inconsistent? (Test $k=${k}$ for a unique solution $x=${x}$.)`,
    options: mkOpts(
      "A",
      [`$${x}$`, `$${x - 1}$`, `$${k}$`, `$${x + 2}$`],
      [`Solve after expanding; $x=${x}$ when $k=${k}$.`, "Too small.", "Parameter value, not $x$.", "Too large."],
    ),
    correct_answer: "A",
    explanation: `**Step 1:** Expand and collect $x$ terms.\n**Step 2:** Isolate $x=${x}$ when coefficients allow a solution.\n**Step 3:** Inconsistent when parallel lines (same slope, different intercepts).`,
  };
}

function normalizeOptions(raw) {
  if (!Array.isArray(raw)) return [];
  return raw.map((o, i) => ({
    id: String(o.id ?? ["A", "B", "C", "D"][i] ?? "A"),
    text: String(o.text ?? ""),
    is_correct: Boolean(o.is_correct),
    explanation: typeof o.explanation === "string" ? o.explanation : "",
  }));
}

function analyzeDistractor(opt) {
  const text = String(opt.text ?? "").slice(0, 80);
  if (opt.explanation?.length > 25) return opt.explanation;
  const patterns = [
    [/\\frac\{1\}/, "Inverts the ratio — a common probability error."],
    [/\^2/, "May result from squaring when you should multiply or add."],
    [/parameter|k\b/i, "Confuses the parameter with the variable solution."],
  ];
  for (const [re, msg] of patterns) {
    if (re.test(text)) return msg;
  }
  return `Choice ${opt.id} (${text}…) reflects a common misread or arithmetic slip — re-check each operation.`;
}

function buildExplanationV2(q) {
  const opts = normalizeOptions(q.options);
  const correct = opts.find((o) => o.is_correct);
  const correctId = correct?.id ?? q.correct_answer ?? "A";
  let expl = String(q.explanation ?? "").trim();
  if (!/step\s*1/i.test(expl)) {
    expl = `**Step 1 — Understand.** ${q.question_text}\n\n**Step 2 — Solve.** ${expl}\n\n**Step 3 — Answer ${correctId}.** ${correct?.text ?? ""}`;
  }
  expl += `\n\n**Distractor analysis:**`;
  for (const o of opts) {
    if (!o.is_correct) {
      expl += `\n- **${o.id}** (${o.text}): ${analyzeDistractor(o)}`;
    }
  }
  const newOpts = opts.map((o) => ({
    ...o,
    explanation: o.is_correct
      ? `Correct (${correctId}). ${String(o.explanation || "Matches the worked solution.").slice(0, 220)}`
      : analyzeDistractor(o),
  }));
  return { explanation: expl, options: newOpts, correct_answer: correctId };
}

function materialize(skill, seed) {
  const raw = generateHardMath(skill, seed);
  const v2 = buildExplanationV2(raw);
  return {
    question_text: raw.question_text,
    stimulus_text: raw.stimulus_text ?? null,
    stimulus_type: raw.stimulus_text ? null : null,
    options: v2.options,
    correct_answer: v2.correct_answer,
    explanation: v2.explanation,
    difficulty: "hard",
    skill_id: skill,
  };
}

function metaFor(skill) {
  return SKILLS[skill] ?? SKILLS.LIN;
}

function sourceMetadata(extra = {}) {
  return {
    hard_content_v2: true,
    explanation_v2: true,
    generator: "generate-hard-math.mjs",
    hard_content_version: VERSION,
    hard_content_at: new Date().toISOString(),
    ...extra,
  };
}

function buildUpdateSql(q, upgraded) {
  const meta = sourceMetadata({
    ...(q.source_metadata ?? {}),
    prior_difficulty: q.difficulty,
    upgraded_from_id: q.id,
  });
  const optionsJson = JSON.stringify(upgraded.options).replace(/'/g, "''");
  const metaJson = JSON.stringify(meta).replace(/'/g, "''");
  return `UPDATE public.questions SET
  question_text = ${sqlEscape(upgraded.question_text)},
  stimulus_text = ${sqlEscape(upgraded.stimulus_text)},
  options = '${optionsJson}'::jsonb,
  correct_answer = ${sqlEscape(upgraded.correct_answer)},
  explanation = ${sqlEscape(upgraded.explanation)},
  difficulty = 'hard'::public.difficulty,
  source_metadata = '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = '${q.id}';`;
}

function buildInsertSql(row) {
  const metaJson = JSON.stringify(row.source_metadata).replace(/'/g, "''");
  const optionsJson = JSON.stringify(row.options).replace(/'/g, "''");
  return `INSERT INTO public.questions
(id, question_text, stimulus_text, stimulus_type, options, correct_answer, explanation, hint, topic, subtopic, section, domain_id, skill_id, math_skill_code, difficulty, calculator_allowed, exam_type, question_type, is_platform_question, ai_generated, source, source_metadata, created_at, updated_at)
VALUES (${sqlEscape(row.id)}, ${sqlEscape(row.question_text)}, ${sqlEscape(row.stimulus_text)}, NULL, '${optionsJson}'::jsonb, ${sqlEscape(row.correct_answer)}, ${sqlEscape(row.explanation)}, NULL, ${sqlEscape(row.topic)}, ${sqlEscape(row.subtopic)}, 'math', ${sqlEscape(row.domain_id)}, ${sqlEscape(row.skill_id)}, ${sqlEscape(row.skill_id)}, 'hard'::public.difficulty, true, 'SAT', 'multiple_choice', true, true, 'scholaris_ai', '${metaJson}'::jsonb, now(), now())
ON CONFLICT (id) DO NOTHING;`;
}

function distributeInserts(total) {
  const plan = MATH_SKILLS.map((skill) => ({ skill, count: Math.floor(total / MATH_SKILLS.length) }));
  let rem = total - plan.reduce((s, p) => s + p.count, 0);
  for (let i = 0; rem > 0; i++, rem--) {
    plan[i % plan.length].count++;
  }
  return plan.filter((p) => p.count > 0);
}

function getMcpToken(env) {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

function parseMcpRows(result) {
  const text = result?.content?.[0]?.text;
  if (!text) return null;
  const match = text.match(/\[[\s\S]*\]/);
  if (!match) return null;
  return JSON.parse(match[0]);
}

async function mcpQuery(query, env) {
  const token = getMcpToken(env);
  if (!token) throw new Error("No SUPABASE_ACCESS_TOKEN for MCP fetch");

  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      {
        env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
        stdio: ["pipe", "pipe", "pipe"],
      },
    );
    let msgId = 1;
    let buf = "";
    const pending = new Map();
    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };
    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch {
          /* ignore */
        }
      }
    });
    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-hard-math", version: "1.0.0" },
    });
    send("notifications/initialized", {});
    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { project_id: PROJECT_ID, query },
        });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function fetchUpgradeCandidates(env, limit) {
  const query = `
    SELECT id, source, question_text, stimulus_text, options, correct_answer,
           explanation, section, skill_id, difficulty, source_metadata
    FROM public.questions
    WHERE exam_type = 'SAT'
      AND is_platform_question = true
      AND section = 'math'
      AND difficulty = 'medium'
    ORDER BY
      CASE WHEN source_metadata->>'prior_difficulty' = 'hard' THEN 0 ELSE 1 END,
      CASE WHEN source = 'scholaris_ai' THEN 0 ELSE 1 END,
      skill_id,
      id
    LIMIT ${limit};
  `;
  return parseMcpRows(await mcpQuery(query, env)) ?? [];
}

function buildMegaFromChunks(chunkDir, outDir, statementsPerMega) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
    .sort();
  const statements = [];
  for (const f of files) {
    const sql = readFileSync(join(chunkDir, f), "utf8");
    const parts = sql
      .split(/\n(?=(?:INSERT|UPDATE))/i)
      .filter((s) => /^(INSERT|UPDATE)/i.test(s.trim()))
      .map((p) =>
        p
          .trim()
          .replace(/\nCOMMIT;?\s*$/i, "")
          .replace(/^BEGIN;?\s*\n?/i, ""),
      );
    statements.push(...parts);
  }
  mkdirSync(outDir, { recursive: true });
  let megaIdx = 0;
  for (let i = 0; i < statements.length; i += statementsPerMega) {
    const batch = statements.slice(i, i + statementsPerMega);
    const body = "BEGIN;\n" + batch.join("\n") + "\nCOMMIT;\n";
    writeFileSync(join(outDir, `mega-${String(megaIdx).padStart(2, "0")}.sql`), body);
    megaIdx++;
  }
  return { megaFiles: megaIdx, statements: statements.length };
}

async function main() {
  const f = parseArgs();
  if (f.buildMega) {
    const result = buildMegaFromChunks(resolve(f.buildMega), resolve(f.megaOut), f.megaSize);
    console.log(JSON.stringify(result, null, 2));
    return;
  }

  const env = loadEnv();
  const totalTarget = f.upgradeCount + f.insertCount;

  let upgradeRows;
  if (f.inputJson) {
    upgradeRows = JSON.parse(readFileSync(resolve(f.inputJson), "utf8"));
  } else if (f.useMcp) {
    upgradeRows = await fetchUpgradeCandidates(env, f.upgradeCount);
  } else {
    upgradeRows = [];
  }

  if (upgradeRows.length < f.upgradeCount && !f.dryRun) {
    console.error(`Warning: only ${upgradeRows.length} upgrade candidates (wanted ${f.upgradeCount})`);
  }

  const stats = { upgrades: 0, inserts: 0, bySkill: {}, bySource: {} };
  const statements = [];

  for (const q of upgradeRows.slice(0, f.upgradeCount)) {
    const skill = q.skill_id && SKILLS[q.skill_id] ? q.skill_id : MATH_SKILLS[seedFromId(q.id) % MATH_SKILLS.length];
    const seed = seedFromId(q.id) % 600;
    const upgraded = materialize(skill, seed);
    statements.push(buildUpdateSql(q, upgraded));
    stats.upgrades++;
    stats.bySkill[skill] = (stats.bySkill[skill] ?? 0) + 1;
    stats.bySource[q.source] = (stats.bySource[q.source] ?? 0) + 1;
  }

  const insertPlan = distributeInserts(f.insertCount);
  let insertIdx = 0;
  for (const cell of insertPlan) {
    for (let i = 0; i < cell.count; i++) {
      const seed = 1000 + insertIdx;
      const upgraded = materialize(cell.skill, seed);
      const meta = metaFor(cell.skill);
      const row = {
        id: randomUUID(),
        ...upgraded,
        topic: meta.topic,
        subtopic: meta.subtopic,
        domain_id: meta.domain_id,
        source_metadata: sourceMetadata({ skill: cell.skill, insert_index: insertIdx }),
      };
      statements.push(buildInsertSql(row));
      stats.inserts++;
      stats.bySkill[cell.skill] = (stats.bySkill[cell.skill] ?? 0) + 1;
      insertIdx++;
    }
  }

  console.error(
    `Generated ${statements.length} statements (upgrades=${stats.upgrades}, inserts=${stats.inserts}, target=${totalTarget})`,
  );

  if (f.fetchJson && upgradeRows.length) {
    mkdirSync(dirname(resolve(f.fetchJson)), { recursive: true });
    writeFileSync(resolve(f.fetchJson), JSON.stringify(upgradeRows, null, 2) + "\n");
  }

  if (f.dryRun) {
    console.log(JSON.stringify({ ok: true, dryRun: true, ...stats, total: statements.length }, null, 2));
    return;
  }

  if (f.outputSql) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), statements.join("\n\n") + "\n");
    console.error(`Wrote ${f.outputSql} (${statements.length} statements)`);
  }

  console.log(JSON.stringify({ ok: true, ...stats, total: statements.length }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
