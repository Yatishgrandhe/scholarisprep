import assert from "node:assert/strict";
import { predictSatScoreFromAttempts } from "../src/lib/exam/predictExamScore.ts";

// Timer CSS class logic (mirrors exam session page)
function timerClasses(timeLeft) {
  const classes = ["timer"];
  if (timeLeft > 0 && timeLeft <= 300) classes.push("timerWarn");
  if (timeLeft > 0 && timeLeft <= 120) classes.push("timerDanger");
  if (timeLeft > 0 && timeLeft <= 60) classes.push("timerPulse");
  return classes.join(" ");
}

assert.ok(timerClasses(400).includes("timer"));
assert.ok(!timerClasses(400).includes("timerDanger"));

assert.ok(timerClasses(299).includes("timerWarn"));
assert.ok(timerClasses(119).includes("timerDanger"));
assert.ok(timerClasses(59).includes("timerPulse"));

// Auto-submit guard
let timerArmed = false;
let timeLeft = 0;
let loading = true;
let shouldSubmit = false;

function evalSubmit() {
  shouldSubmit =
    timerArmed && timeLeft <= 0 && !loading;
}

timeLeft = 0;
loading = true;
evalSubmit();
assert.equal(shouldSubmit, false);

loading = false;
timeLeft = 3840;
timerArmed = true;
evalSubmit();
assert.equal(shouldSubmit, false);

timeLeft = 0;
evalSubmit();
assert.equal(shouldSubmit, true);

// Score prediction endpoints
assert.equal(
  predictSatScoreFromAttempts(
    Array.from({ length: 10 }, () => ({
      isCorrect: false,
      difficulty: "easy",
    })),
  ),
  800,
);

const high = predictSatScoreFromAttempts(
  Array.from({ length: 10 }, () => ({
    isCorrect: true,
    difficulty: "hard",
  })),
);
assert.ok(high >= 1500);

console.log("verify-logic: all assertions passed");
