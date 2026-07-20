#!/usr/bin/env node
/**
 * Upgrade ALL SAT math platform questions to Digital SAT hard design:
 * - scholaris_ai: regenerate stem/options/explanation (boosted templates); keep difficulty tier
 * - college_board_opensat: keep difficulty tier; multi-step explanations + distractor analysis
 *
 *   node scripts/upgrade-math-difficulty.mjs --output-sql scripts/data/upgrade-math.sql
 *   node scripts/chunk-sql.mjs scripts/data/upgrade-math.sql 8 scripts/data/upgrade-math-chunks --update
 *   node scripts/upgrade-math-difficulty.mjs --build-mega scripts/data/upgrade-math-chunks scripts/data/upgrade-math-mega 35
 *   node scripts/apply-bulk-mega.mjs scripts/data/upgrade-math-mega upgrade_math_mega
 *
 * Flags:
 *   --output-sql PATH     Write UPDATE statements
 *   --input-json PATH     Skip fetch; use cached question export
 *   --fetch-json PATH     Write fetched rows to JSON
 *   --use-mcp             Fetch via Supabase MCP execute_sql
 *   --dry-run             Print stats only
 *   --limit N             Cap rows (testing)
 *   --build-mega DIR OUT [SIZE]
 */

import { createHash } from "node:crypto";
import { readFileSync, writeFileSync, mkdirSync, readdirSync, existsSync } from "node:fs";
import { dirname, resolve, join, basename } from "node:path";
import { homedir } from "node:os";
import { spawn } from "node:child_process";
import { createClient } from "@supabase/supabase-js";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const UPGRADE_VERSION = "math_difficulty_v1";

const SKILLS = {
  LIN: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in one variable" },
  LEQ: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear equations in two variables" },
  LIF: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear functions" },
  SYS: { topic: "Algebra", domain_id: "algebra", subtopic: "Systems of two linear equations" },
  INE: { topic: "Algebra", domain_id: "algebra", subtopic: "Linear inequalities" },
  EQS: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Equivalent expressions" },
  NRE: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear equations in one variable" },
  NRM: { topic: "Advanced Math", domain_id: "advanced", subtopic: "Nonlinear functions" },
  RAT: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Ratios, rates, and proportions" },
  PER: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Percentages" },
  OIA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "One-variable data" },
  TVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Two-variable data" },
  PRO: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Probability and conditional probability" },
  IEE: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Inference from sample statistics" },
  EVA: { topic: "Problem-Solving and Data Analysis", domain_id: "psda", subtopic: "Evaluating statistical claims" },
  ARE: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Area and volume" },
  LIN_G: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Lines, angles, and triangles" },
  RIG: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Right triangles and trigonometry" },
  CIR: { topic: "Geometry and Trigonometry", domain_id: "geometry", subtopic: "Circles" },
};

function parseArgs() {
  const f = {
    outputSql: null,
    inputJson: null,
    fetchJson: null,
    useMcp: false,
    dryRun: false,
    limit: Infinity,
    buildMega: null,
    megaOut: null,
    megaSize: 35,
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
    else if (a === "--input-json") f.inputJson = argv[++i];
    else if (a === "--fetch-json") f.fetchJson = argv[++i];
    else if (a === "--use-mcp") f.useMcp = true;
    else if (a === "--dry-run") f.dryRun = true;
    else if (a === "--limit") f.limit = Number(argv[++i]);
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

function bumpDifficulty(d) {
  // Preserve DB difficulty tier; content hardness is in templates, not labels.
  const x = String(d ?? "medium").toLowerCase();
  if (x === "easy" || x === "medium" || x === "hard") return x;
  return "medium";
}

function seedFromId(id) {
  return parseInt(createHash("sha256").update(id).digest("hex").slice(0, 8), 16);
}

function mkOpts(correctId, texts, expls) {
  return ["A", "B", "C", "D"].map((id, i) => ({
    id,
    text: texts[i],
    is_correct: id === correctId,
    explanation: expls[i],
  }));
}

/** Boosted diffScale: always one tier harder than nominal difficulty */
function boostScale(difficulty) {
  if (difficulty === "easy") return 3;
  if (difficulty === "medium") return 4;
  return 5;
}

function bounded(n, max = 50) {
  return n % max;
}

/**
 * Regenerate scholaris_ai math with harder Digital SAT templates (3–5 steps, layered concepts).
 */
function generateHarderMath(skill, difficulty, rawN) {
  const diffScale = boostScale(difficulty);
  const n = bounded(rawN, 50);
  const meta = SKILLS[skill] ?? SKILLS.LIN;

  if (skill === "LIN") {
    if (difficulty === "hard") {
      const k = 2 + (n % 5);
      const a = 3 + (n % 4);
      const target = 4 + n;
      const rhs = a * (target - k) + 2 * k;
      return {
        stimulus_text: null,
        question_text: `For what value of $k$ does the equation $${a}(x-${k})+2k = ${rhs}$ have solution $x=${target}$?`,
        options: mkOpts(
          "B",
          [`$${k - 1}$`, `$${k}$`, `$${k + 1}$`, `$${target}$`],
          [
            "Substituting this $k$ does not yield $x=" + target + "$.",
            `Expand: $${a}x-${a * k}+2k=${rhs}$ → $${a}x=${a * target}$ → $x=${target}$ when $k=${k}$.`,
            "Too large; check substitution.",
            "That is $x$, not $k$.",
          ],
        ),
        correct_answer: "B",
        explanation: `**Step 1:** Substitute $x=${target}$: $${a}(${target}-k)+2k=${rhs}$.\n**Step 2:** Simplify: $${a * target}-${a}k+2k=${rhs}$ → $${a * target}+${2 - a}k=${rhs}$.\n**Step 3:** Solve for $k$: $${2 - a}k=${rhs - a * target}$ → $k=${k}$.`,
      };
    }
    const a = 2 + (n % 5) + diffScale;
    const b = 3 + (n % 4);
    const inner = 2 + n;
    const x = inner + b;
    const rhs = a * inner + b;
    return {
      stimulus_text: `A technician adjusts a sensor reading. First the raw value $r$ is scaled by ${a}, then ${b} is added.`,
      question_text: `If the final reading is ${rhs} when $r=${inner}$, and the process is modeled by $${a}r+${b}$, what value of $x$ satisfies $${a}x+${b}=${rhs}$?`,
      options: mkOpts(
        "C",
        [`$${x - 2}$`, `$${x - 1}$`, `$${x}$`, `$${a}$`],
        [
          "After subtracting " + b + ", divide by " + a + "; this is too small.",
          "One less than the correct value.",
          `**Step 1:** $${a}x = ${rhs - b}$. **Step 2:** $x = ${x}$.`,
          "That is the scale factor, not $x$.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Subtract ${b}: $${a}x=${rhs - b}$.\n**Step 2:** Divide by ${a}: $x=${x}$.\n**Step 3:** Verify: $${a}(${x})+${b}=${rhs}$.`,
    };
  }

  if (skill === "INE") {
    const a = 2 + (n % 4) + Math.floor(diffScale / 2);
    const b = 4 + (n % 5);
    const correct = 5 + n + diffScale;
    const c = a * correct + b - 3;
    return {
      stimulus_text: `A package must weigh more than ${c} grams but at most ${a * correct + b + 10} grams to ship.`,
      question_text: `Which value of $x$ satisfies $${a}x + ${b} > ${c}$ and represents a feasible weight?`,
      options: mkOpts(
        "D",
        [`$${correct - 3}$`, `$${correct - 2}$`, `$${correct - 1}$`, `$${correct}$`],
        [
          `Too small: $${a}(${correct - 3})+${b}=${a * (correct - 3) + b}$.`,
          `Still below threshold ${c}.`,
          `Borderline; check strict inequality.`,
          `**Step 1:** $${a}x > ${c - b}$. **Step 2:** $x > ${(c - b) / a}$. Smallest integer choice: ${correct}.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** Isolate: $${a}x > ${c - b}$.\n**Step 2:** $x > ${((c - b) / a).toFixed(2)}$.\n**Step 3:** Among choices, $${correct}$ is the smallest valid value.`,
    };
  }

  if (skill === "SYS") {
    const x = 3 + n + diffScale;
    const y = 2 + n;
    const sum = x + y;
    const diff = 2 * x - y;
    return {
      stimulus_text: `At a fundraiser, ${sum} tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from ${x} VIP and ${y} standard tickets follows the system below.`,
      question_text: `Given $x+y=${sum}$ and $2x-y=${diff}$, what is $x$?`,
      options: mkOpts(
        "A",
        [`$${x}$`, `$${x - 1}$`, `$${y}$`, `$${x + 1}$`],
        [
          `**Step 1:** Add equations: $3x=${3 * x}$. **Step 2:** $x=${x}$.`,
          "One less than the solution.",
          "That is $y$, not $x$.",
          "One more than the solution.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Add: $(x+y)+(2x-y)=${sum}+${diff}$ → $3x=${3 * x}$.\n**Step 2:** $x=${x}$.\n**Step 3:** Back-substitute: $y=${y}$.`,
    };
  }

  if (skill === "LEQ") {
    const m = 2 + (n % 3) + Math.floor(diffScale / 3);
    const b = 1 + n;
    const x = 4 + n;
    const y = m * x + b;
    return {
      stimulus_text: `A car's distance $d$ (miles) after $t$ hours is modeled by $d=${m}t+${b}$.`,
      question_text: `After $t=${x}$ hours, how many miles has the car traveled?`,
      options: mkOpts(
        "B",
        [`$${y - m}$`, `$${y}$`, `$${y + 1}$`, `$${m + b}$`],
        [
          "Uses $t-1$ instead of $t=" + x + "$.",
          `**Step 1:** Substitute $t=${x}$. **Step 2:** $d=${m}(${x})+${b}=${y}$.`,
          "Adds 1 to the correct distance.",
          "Adds slope and intercept instead of evaluating.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Plug in $t=${x}$: $d=${m}(${x})+${b}$.\n**Step 2:** Compute: $d=${y}$ miles.`,
    };
  }

  if (skill === "LIF") {
    const x1 = 2 + n;
    const y1 = -2 + n;
    const x2 = x1 + 5;
    const slope = 2 + Math.floor(diffScale / 2);
    const y2 = y1 + slope * 5;
    const x3 = -4 - n;
    const y3 = slope * (x3 - x1) + y1;
    return {
      stimulus_text: null,
      question_text: `A linear function $f$ models temperature change. Given $f(${x1})=${y1}$ and $f(${x2})=${y2}$, what is $f(${x3})$?`,
      options: mkOpts(
        "D",
        [`$${y3 + slope}$`, `$${slope}$`, `$${y3 - 3}$`, `$${y3}$`],
        [
          "Adds slope once too many.",
          "That is the rate of change, not $f(" + x3 + "$).",
          "Arithmetic error in point-slope form.",
          `**Step 1:** Slope $m=${slope}$. **Step 2:** $f(${x3})=${slope}(${x3}-${x1})+(${y1})=${y3}$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** $m=\\frac{${y2}-${y1}}{${x2}-${x1}}=${slope}$.\n**Step 2:** Point-slope: $f(${x3})=${slope}(${x3}-${x1})+(${y1})$.\n**Step 3:** $f(${x3})=${y3}$.`,
    };
  }

  if (skill === "EQS") {
    const a = 2 + (n % 3);
    const b = 4 + n;
    const expr = `(${a}x+${b})^2 - (${a}x-${b})^2`;
    const ans = `${4 * a * b}x`;
    return {
      stimulus_text: null,
      question_text: `Which expression is equivalent to $${expr}$?`,
      options: mkOpts(
        "A",
        [`$${ans}$`, `$${2 * a}x^2$`, `$${4 * b}x$`, `$${a * a}x^2+${b * b}$`],
        [
          `**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=${a}x+${b}$, $v=${a}x-${b}$ → $${4 * a * b}x$.`,
          "Squares each binomial separately — wrong approach.",
          "Uses $4b$ instead of $4ab$.",
          "Adds squares; not equivalent.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Let $u=${a}x+${b}$, $v=${a}x-${b}$.\n**Step 2:** $u^2-v^2=(u+v)(u-v)=(${2 * a}x)(${2 * b})=${ans}$.`,
    };
  }

  if (skill === "NRE") {
    const r1 = 3 + (n % 4);
    const r2 = 5 + (n % 3);
    const b = r1 + r2;
    return {
      stimulus_text: null,
      question_text: `What is the positive solution to $x^2 - ${b}x + ${r1 * r2} = 0$?`,
      options: mkOpts(
        "C",
        [`$${r1 - 1}$`, `$${b}$`, `$${Math.max(r1, r2)}$`, `$${r1 + r2 + 1}$`],
        [
          "Not a root of the quadratic.",
          "Sum of roots, not a root.",
          `**Step 1:** Factor $(x-${r1})(x-${r2})=0$. **Step 2:** Positive root is $${Math.max(r1, r2)}$.`,
          "Not a solution.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Factor: $(x-${r1})(x-${r2})=0$.\n**Step 2:** Roots $x=${r1}$ and $x=${r2}$.\n**Step 3:** Positive solution: $${Math.max(r1, r2)}$.`,
    };
  }

  if (skill === "NRM") {
    const a = 2 + (n % 2);
    const h = 1 + n;
    const k = 3 + n;
    const x = h + 3;
    const y = a * 9 + k;
    return {
      stimulus_text: null,
      question_text: `The height of a projectile is $h(t)=${a}(t-${h})^2+${k}$, where $t$ is seconds. What is $h(${x})$?`,
      options: mkOpts(
        "B",
        [`$${k}$`, `$${y}$`, `$${y - a}$`, `$${a + k}$`],
        [
          "That is the minimum height at the vertex.",
          `**Step 1:** $h(${x})=${a}(${x}-${h})^2+${k}=${a}(9)+${k}=${y}$.`,
          "Subtracts $a$ incorrectly.",
          "Adds coefficient and constant.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Substitute $t=${x}$: $h(${x})=${a}(${x}-${h})^2+${k}$.\n**Step 2:** $(${x}-${h})^2=9$ → $h(${x})=${y}$.`,
    };
  }

  if (skill === "PER") {
    const base = 80 + 10 * n;
    const pct1 = 20 + (n % 3) * 5;
    const pct2 = 10 + (n % 4) * 5;
    const after1 = Math.round(base * (1 + pct1 / 100));
    const final = Math.round(after1 * (1 - pct2 / 100));
    return {
      stimulus_text: `A retail price is increased by ${pct1}% and then discounted by ${pct2}%.`,
      question_text: `If the original price is $${base}$, what is the final price after both changes?`,
      options: mkOpts(
        "A",
        [`$${final}$`, `$${base}$`, `$${after1}$`, `$${final + 10}$`],
        [
          `**Step 1:** $${base}×${1 + pct1 / 100}=${after1}$. **Step 2:** $${after1}×${1 - pct2 / 100}=${final}$.`,
          "Ignores both percent changes.",
          "Only applies the markup.",
          "Adds 10 without reason.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Markup: $${base}×(1+${pct1}/100)=${after1}$.\n**Step 2:** Discount: $${after1}×(1-${pct2}/100)=${final}$.`,
    };
  }

  if (skill === "RAT") {
    const a = 3 + (n % 3);
    const b = 5 + (n % 4);
    const total = 24 + 6 * n;
    const partA = Math.round((total * a) / (a + b));
    return {
      stimulus_text: `A chemist mixes substances A and B in ratio $${a}:${b}$ to make ${total} milliliters of solution.`,
      question_text: `How many milliliters of substance A are in the mixture?`,
      options: mkOpts(
        "C",
        [`$${partA - 3}$`, `$${partA - 1}$`, `$${partA}$`, `$${total}$`],
        [
          "Underestimates A's share.",
          "Close but ratio arithmetic is off.",
          `**Step 1:** A's fraction $\\frac{${a}}{${a + b}}$. **Step 2:** $\\frac{${a}}{${a + b}}×${total}=${partA}$.`,
          "That is the total volume.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** A's share: $\\frac{${a}}{${a + b}}$ of ${total}.\n**Step 2:** $\\frac{${a}}{${a + b}}×${total}=${partA}$ mL.`,
    };
  }

  if (skill === "OIA") {
    const missing = 3 + n;
    const vals = [missing + 2, missing + 6, missing + 10, missing + 14];
    const mean = (vals.reduce((s, v) => s + v, 0) + missing) / 5;
    return {
      stimulus_text: `Scores: ${vals.join(", ")}, and one score $x$ is missing. The mean is ${mean}.`,
      question_text: `What is the value of the missing score $x$?`,
      options: mkOpts(
        "B",
        [`$${missing - 2}$`, `$${missing}$`, `$${missing + 2}$`, `$${Math.round(mean)}$`],
        [
          "Pulls the mean down too far.",
          `**Step 1:** Sum needed $=${mean}×5=${mean * 5}$. **Step 2:** $x=${mean * 5}-${vals.reduce((s, v) => s + v, 0)}=${missing}$.`,
          "Too high for the given mean.",
          "Confuses mean with missing value.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Total sum $=${mean}×5=${mean * 5}$.\n**Step 2:** $x=${mean * 5}-${vals.reduce((s, v) => s + v, 0)}=${missing}$.\n**Step 3:** Verify mean.`,
    };
  }

  if (skill === "TVA") {
    const x1 = n + 2;
    const y1 = 3 * x1 - 1;
    const x2 = x1 + 6;
    const y2 = 3 * x2 - 1;
    const slope = 3;
    return {
      stimulus_text: `A line models cost vs. units produced, passing through $(${x1},${y1})$ and $(${x2},${y2})$.`,
      question_text: `What is the slope, and what does it represent?`,
      options: mkOpts(
        "A",
        [`$${slope}$; cost increases $${slope}$ per unit`, `$${slope - 1}$; cost decreases per unit`, `$${y2}$; total cost`, `$${x2 - x1}$; time elapsed`],
        [
          `**Step 1:** Slope $=\\frac{${y2}-${y1}}{${x2}-${x1}}=${slope}$. Interpretation: $${slope}$ dollars per unit.`,
          "Wrong sign and magnitude.",
          "That is a coordinate, not slope.",
          "Horizontal change only.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Slope $=\\frac{${y2 - y1}}{${x2 - x1}}=${slope}$.\n**Step 2:** In context, each additional unit adds $${slope}$ to cost.`,
    };
  }

  if (skill === "PRO") {
    const red = 4 + (n % 3);
    const blue = 6 + n;
    const total = red + blue;
    const drawn = red - 1;
    const p = drawn / (total - 1);
    return {
      stimulus_text: `A bag has ${red} red and ${blue} blue chips. Two chips are drawn without replacement.`,
      question_text: `If the first chip is red, what is the probability the second is also red?`,
      options: mkOpts(
        "D",
        [`$\\frac{${red}}{${total}}$`, `$\\frac{${red}}{${total - 1}}$`, `$\\frac{${drawn + 1}}{${total}}$`, `$\\frac{${drawn}}{${total - 1}}$`],
        [
          "Ignores that one red chip was removed.",
          "Uses original count in numerator.",
          "Wrong numerator after first draw.",
          `**Step 1:** After red first: ${drawn} red left, ${total - 1} total. **Step 2:** P $=\\frac{${drawn}}{${total - 1}}$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** First chip red → ${drawn} red remain out of ${total - 1}.\n**Step 2:** Conditional probability $=\\frac{${drawn}}{${total - 1}}$.`,
    };
  }

  if (skill === "IEE") {
    const pct = 52 + (n % 18);
    const moe = 4;
    return {
      stimulus_text: `Poll: ${pct}% favor a policy, margin of error ±${moe} percentage points (95% confidence), $n=1200$.`,
      question_text: `Which conclusion is best supported?`,
      options: mkOpts(
        "B",
        [`Exactly ${pct}% of all citizens favor the policy`, `Plausible support is between ${pct - moe}% and ${pct + moe}%`, "The sample proves every citizen was asked", "Margin of error makes the poll useless"],
        [
          "Sample statistics are not exact population values.",
          `**Step 1:** Interval ${pct - moe}% to ${pct + moe}%. **Step 2:** This range is supported.`,
          "Only 1200 people were surveyed.",
          "MOE quantifies uncertainty; it does not invalidate the poll.",
        ],
      ),
      correct_answer: "B",
      explanation: `**Step 1:** Compute interval: ${pct - moe}% to ${pct + moe}%.\n**Step 2:** At 95% confidence, true support likely falls in this range.`,
    };
  }

  if (skill === "EVA") {
    const sample = 40 + n * 5;
    return {
      stimulus_text: `A influencer claims "nobody likes the new app" after asking ${sample} followers who commented on one critical post.`,
      question_text: `Which choice best evaluates the claim?`,
      options: mkOpts(
        "A",
        [
          "The claim overgeneralizes from a biased, non-random sample",
          "The claim is valid because 40 responses is large",
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
      explanation: `**Step 1:** Identify bias: engaged critics only.\n**Step 2:** Absolute claim "nobody" exceeds the evidence.\n**Step 3:** Representative sampling would be needed.`,
    };
  }

  if (skill === "ARE") {
    const w = 5 + n;
    const h = 4 + n;
    const cut = 2;
    const area = w * h - cut * cut;
    return {
      stimulus_text: `A rectangular poster is ${w} by ${h} inches. A square corner of side ${cut} inches is removed.`,
      question_text: `What is the remaining area, in square inches?`,
      options: mkOpts(
        "C",
        [`$${w * h}$`, `$${w + h}$`, `$${area}$`, `$${area + cut}$`],
        [
          "Forgot to subtract the removed corner.",
          "Perimeter-like sum, not area.",
          `**Step 1:** Full area $${w * h}$. **Step 2:** Subtract $${cut}^2$ → $${area}$.`,
          "Adds instead of subtracts corner.",
        ],
      ),
      correct_answer: "C",
      explanation: `**Step 1:** Rectangle: $${w}×${h}=${w * h}$.\n**Step 2:** Remove corner: $${cut}^2=${cut * cut}$.\n**Step 3:** $${w * h}-${cut * cut}=${area}$ sq in.`,
    };
  }

  if (skill === "LIN_G") {
    const angleA = 48 + (n % 8) * 8;
    const angleB = 52 + (n % 6) * 4;
    const angleC = 180 - angleA - angleB;
    return {
      stimulus_text: `In triangle $ABC$, $m\\angle A = ${angleA}°$ and $m\\angle B = ${angleB}°$.`,
      question_text: `A line through $C$ forms an exterior angle of ${angleA + angleB}° with side $AB$. What is $m\\angle C$?`,
      options: mkOpts(
        "D",
        [`$${angleA}°$`, `$${angleB}°$`, `$${angleC + 8}°$`, `$${angleC}°$`],
        [
          "That is angle A.",
          "That is angle B.",
          "Too large for the triangle angle sum.",
          `**Step 1:** Triangle sum $180°$. **Step 2:** $m\\angle C = 180-${angleA}-${angleB} = ${angleC}°$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** Use triangle angle sum: $m\\angle A + m\\angle B + m\\angle C = 180°$.\n**Step 2:** $m\\angle C = 180 - ${angleA} - ${angleB} = ${angleC}°$.\n**Step 3:** Exterior angle equals sum of remote interior angles (${angleA}° + ${angleB}°).`,
    };
  }

  if (skill === "RIG") {
    const a = 5 + n;
    const b = 12 + n;
    const c = Math.round(Math.sqrt(a * a + b * b));
    return {
      stimulus_text: `A ladder leans against a wall. The foot is ${a} ft from the wall and the top is ${b} ft high.`,
      question_text: `What is the ladder's length?`,
      options: mkOpts(
        "D",
        [`$${c - 2}$`, `$${a + b}$`, `$${c - 1}$`, `$${c}$`],
        [
          "Too short for the given legs.",
          "Length is not the sum of legs.",
          "Close — check $\\sqrt{${a}^2+${b}^2}$.",
          `**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{${a}^2+${b}^2}=${c}$.`,
        ],
      ),
      correct_answer: "D",
      explanation: `**Step 1:** Right triangle: legs ${a} and ${b}.\n**Step 2:** $c=\\sqrt{${a}^2+${b}^2}=${c}$ ft.`,
    };
  }

  if (skill === "CIR") {
    const r = 4 + (n % 12);
    const exact = (2 * 3.14 * r).toFixed(2);
    return {
      stimulus_text: `A circular track has radius ${r} meters.`,
      question_text: `What is the circumference? (Use $\\pi \\approx 3.14$.)`,
      options: mkOpts(
        "A",
        [`$${exact}$`, `$${(3.14 * r * r).toFixed(2)}$`, `$${(2 * r).toFixed(2)}$`, `$${(3.14 * r).toFixed(2)}$`],
        [
          `**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(${r})=${exact}$.`,
          "Area formula $\\pi r^2$, not circumference.",
          "Diameter only.",
          "Half of circumference.",
        ],
      ),
      correct_answer: "A",
      explanation: `**Step 1:** Formula $C=2\\pi r$.\n**Step 2:** $C≈2(3.14)(${r})=${exact}$ m.`,
    };
  }

  // Fallback boosted linear
  const k = 4 + n + diffScale;
  const x = n + 5;
  return {
    stimulus_text: null,
    question_text: `If $${k}(x-2)+4=2x+${2 * x + k - 4}$, what is $x$?`,
    options: mkOpts(
      "A",
      [`$${x}$`, `$${x - 1}$`, `$${k}$`, `$${x + 2}$`],
      [`Solve after expanding; $x=${x}$.`, "Too small.", "Parameter, not solution.", "Too large."],
    ),
    correct_answer: "A",
    explanation: `**Step 1:** Expand and collect $x$ terms.\n**Step 2:** Isolate $x=${x}$.`,
    meta,
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

function analyzeDistractor(opt, q) {
  const text = String(opt.text ?? "").slice(0, 60);
  const patterns = [
    [/\\frac\{1\}/, "Inverts the ratio — a common probability error."],
    [/\^2/, "May result from squaring when you should multiply or add."],
    [/\+/, "Adds quantities that should be multiplied or compares unrelated terms."],
  ];
  for (const [re, msg] of patterns) {
    if (re.test(text)) return msg;
  }
  if (opt.explanation?.length > 20) return opt.explanation;
  return `Choice ${opt.id} (${text}…) reflects a common misread or arithmetic slip — re-check each operation against the question.`;
}

function expandOpenSatExplanation(q, newDifficulty) {
  const opts = normalizeOptions(q.options);
  const correct = opts.find((o) => o.is_correct);
  const correctId = correct?.id ?? q.correct_answer ?? "A";
  const base = String(q.explanation ?? "").trim();

  let expl = base.length > 40 ? base : "Work through the problem systematically.";
  if (!/step\s*1/i.test(expl)) {
    expl = `**Step 1 — Understand the problem.** ${q.question_text}\n\n**Step 2 — Solve.** ${expl}\n\n**Step 3 — Select ${correctId}.** ${correct?.text ?? ""}`;
  }
  expl += `\n\n**Distractor analysis:**`;
  for (const o of opts) {
    if (!o.is_correct) {
      expl += `\n- **${o.id}** (${o.text}): ${analyzeDistractor(o, q)}`;
    }
  }

  const newOpts = opts.map((o) => ({
    ...o,
    explanation: o.is_correct
      ? `Correct (${correctId}). ${String(o.explanation || "Matches the worked solution above.").slice(0, 200)}`
      : analyzeDistractor(o, q),
  }));

  return { explanation: expl, options: newOpts, correct_answer: correctId };
}

function upgradeScholarisAi(q, newDifficulty) {
  const skill = q.skill_id && SKILLS[q.skill_id] ? q.skill_id : "LIN";
  const n = seedFromId(q.id) % 500;
  const generated = generateHarderMath(skill, newDifficulty, n);
  const correct = generated.options.find((o) => o.is_correct);
  return {
    question_text: generated.question_text,
    stimulus_text: generated.stimulus_text ?? null,
    options: generated.options,
    correct_answer: correct?.id ?? generated.correct_answer,
    explanation: generated.explanation,
    difficulty: newDifficulty,
    skill_id: skill,
  };
}

function upgradeOpenSat(q, newDifficulty) {
  const expanded = expandOpenSatExplanation(q, newDifficulty);
  return {
    question_text: q.question_text,
    stimulus_text: q.stimulus_text ?? null,
    options: expanded.options,
    correct_answer: expanded.correct_answer,
    explanation: expanded.explanation,
    difficulty: newDifficulty,
    skill_id: q.skill_id,
  };
}

function buildUpdateSql(q, upgraded) {
  const meta = {
    ...(q.source_metadata ?? {}),
    math_difficulty_upgrade: UPGRADE_VERSION,
    math_difficulty_upgrade_at: new Date().toISOString(),
    prior_difficulty: q.difficulty,
  };
  const optionsJson = JSON.stringify(upgraded.options).replace(/'/g, "''");
  const metaJson = JSON.stringify(meta).replace(/'/g, "''");
  return `UPDATE public.questions SET
  question_text = ${sqlEscape(upgraded.question_text)},
  stimulus_text = ${sqlEscape(upgraded.stimulus_text)},
  options = '${optionsJson}'::jsonb,
  correct_answer = ${sqlEscape(upgraded.correct_answer)},
  explanation = ${sqlEscape(upgraded.explanation)},
  difficulty = ${sqlEscape(upgraded.difficulty)}::public.difficulty,
  source_metadata = '${metaJson}'::jsonb,
  updated_at = now()
WHERE id = '${q.id}';`;
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
      clientInfo: { name: "scholaris-upgrade-math", version: "1.0.0" },
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

async function fetchQuestionsMcp(env, limit) {
  const query = `
    SELECT id, source, question_text, stimulus_text, options, correct_answer,
           explanation, section, skill_id, difficulty, source_metadata
    FROM public.questions
    WHERE exam_type = 'SAT'
      AND is_platform_question = true
      AND section = 'math'
      AND source IN ('scholaris_ai', 'college_board_opensat')
    ORDER BY source, id
    ${Number.isFinite(limit) ? `LIMIT ${limit}` : ""};
  `;
  return parseMcpRows(await mcpQuery(query, env)) ?? [];
}

async function fetchQuestionsSupabase(env, limit) {
  const url = env.NEXT_PUBLIC_SUPABASE_URL;
  const key = env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !key || key.includes("placeholder")) return null;
  const supabase = createClient(url, key);
  const rows = [];
  const pageSize = 500;
  let offset = 0;
  while (rows.length < limit) {
    const { data, error } = await supabase
      .from("questions")
      .select(
        "id, source, question_text, stimulus_text, options, correct_answer, explanation, section, skill_id, difficulty, source_metadata",
      )
      .eq("exam_type", "SAT")
      .eq("is_platform_question", true)
      .eq("section", "math")
      .in("source", ["scholaris_ai", "college_board_opensat"])
      .order("id")
      .range(offset, offset + pageSize - 1);
    if (error) throw error;
    if (!data?.length) break;
    rows.push(...data);
    if (data.length < pageSize) break;
    offset += pageSize;
  }
  return rows.slice(0, limit);
}

function buildMegaFromChunks(chunkDir, outDir, statementsPerMega) {
  const files = readdirSync(chunkDir)
    .filter((f) => f.startsWith("chunk-") && f.endsWith(".sql"))
    .sort();
  const statements = [];
  for (const f of files) {
    const sql = readFileSync(join(chunkDir, f), "utf8");
    const parts = sql
      .split(/\n(?=UPDATE)/)
      .filter((s) => s.trim().startsWith("UPDATE"))
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
  let rows;
  if (f.inputJson) {
    rows = JSON.parse(readFileSync(resolve(f.inputJson), "utf8"));
  } else if (f.useMcp) {
    rows = await fetchQuestionsMcp(env, f.limit);
  } else {
    rows = (await fetchQuestionsSupabase(env, f.limit)) ?? [];
    if (!rows.length) {
      rows = await fetchQuestionsMcp(env, f.limit);
    }
  }

  if (!rows?.length) {
    console.error("No questions fetched. Use --use-mcp or --input-json.");
    process.exit(1);
  }

  if (f.fetchJson) {
    mkdirSync(dirname(resolve(f.fetchJson)), { recursive: true });
    writeFileSync(resolve(f.fetchJson), JSON.stringify(rows, null, 2) + "\n");
    console.error(`Wrote ${f.fetchJson} (${rows.length} rows)`);
  }

  const stats = { scholaris_ai: 0, college_board_opensat: 0, byFrom: {}, byTo: {} };
  const updates = [];

  for (const q of rows) {
    const newDiff = bumpDifficulty(q.difficulty);
    stats.byFrom[q.difficulty] = (stats.byFrom[q.difficulty] ?? 0) + 1;
    stats.byTo[newDiff] = (stats.byTo[newDiff] ?? 0) + 1;

    const upgraded =
      q.source === "scholaris_ai"
        ? (stats.scholaris_ai++, upgradeScholarisAi(q, newDiff))
        : (stats.college_board_opensat++, upgradeOpenSat(q, newDiff));

    updates.push(buildUpdateSql(q, upgraded));
  }

  console.error(
    `Upgraded ${updates.length} math questions (scholaris_ai=${stats.scholaris_ai}, opensat=${stats.college_board_opensat})`,
  );
  console.error(`Difficulty shifts: ${JSON.stringify(stats.byFrom)} → ${JSON.stringify(stats.byTo)}`);

  if (f.dryRun) {
    console.log(JSON.stringify({ ok: true, dryRun: true, ...stats, total: updates.length }, null, 2));
    return;
  }

  if (f.outputSql) {
    mkdirSync(dirname(resolve(f.outputSql)), { recursive: true });
    writeFileSync(resolve(f.outputSql), updates.join("\n\n") + "\n");
    console.error(`Wrote ${f.outputSql} (${updates.length} UPDATEs)`);
  }

  console.log(JSON.stringify({ ok: true, total: updates.length, ...stats }, null, 2));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
