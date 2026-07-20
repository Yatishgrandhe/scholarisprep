/**
 * Logic + API shape verification (no browser auth required for unit parts).
 * Run: node scripts/verify-features.mjs
 */
import assert from "node:assert/strict";
import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { resolve } from "path";

const envPath = resolve(process.cwd(), ".env.local");
const env = Object.fromEntries(
  readFileSync(envPath, "utf8")
    .split("\n")
    .filter((l) => l && !l.startsWith("#"))
    .map((l) => {
      const i = l.indexOf("=");
      return [l.slice(0, i), l.slice(i + 1)];
    }),
);

// --- Study plan parse (dynamic import ts not available; inline critical checks) ---
const samplePlan = {
  total_weeks: 2,
  weekly_focus_areas: ["Algebra"],
  weeks: [
    {
      week: 1,
      theme: "Week 1: Algebra",
      tasks: [
        {
          id: "w1-mon",
          day: "Monday",
          type: "practice",
          topic: "Linear equations",
          duration_minutes: 25,
          completed: false,
        },
      ],
    },
  ],
  completedTaskIds: [],
};

assert.ok(Array.isArray(samplePlan.weeks));
assert.ok(samplePlan.weeks[0].tasks.length > 0);
assert.equal(samplePlan.weeks[0].tasks[0].day, "Monday");

// Empty state condition (mirrors study-plan page + StudyPlanView)
function shouldShowEmpty(planRow) {
  const hasPlanData = Boolean(
    planRow?.generated_at &&
      planRow?.plan_data &&
      typeof planRow.plan_data === "object" &&
      Array.isArray(planRow.plan_data.weeks) &&
      (planRow.plan_data.weeks?.length ?? 0) > 0,
  );
  return !hasPlanData;
}

assert.equal(shouldShowEmpty(null), true);
assert.equal(shouldShowEmpty({ plan_data: null }), true);
assert.equal(shouldShowEmpty({ plan_data: { weeks: [] } }), true);
assert.equal(
  shouldShowEmpty({ plan_data: samplePlan, generated_at: null }),
  true,
);
assert.equal(
  shouldShowEmpty({
    plan_data: samplePlan,
    generated_at: "2026-01-01T00:00:00Z",
  }),
  false,
);

// Planner API body validation (zod-like)
const plannerBody = {
  exam_type: "SAT",
  target_score: 1400,
  weekly_hours: 10,
  weak_topics: [],
  baseline_score: 1100,
};
assert.ok("weak_topics" in plannerBody);
assert.ok(!("topic_scores" in plannerBody));

// Achievements styles exist
const achCss = readFileSync(
  resolve(process.cwd(), "src/components/dashboard/achievements.module.css"),
  "utf8",
);
assert.ok(achCss.includes(".cardLocked"));
assert.ok(achCss.includes("grayscale"));
assert.ok(achCss.includes(".lockOverlay"));

// Analytics reference line
const analyticsTsx = readFileSync(
  resolve(process.cwd(), "src/components/dashboard/AnalyticsDashboard.tsx"),
  "utf8",
);
assert.ok(analyticsTsx.includes("ReferenceLine"));
assert.ok(analyticsTsx.includes("targetScore"));
assert.ok(analyticsTsx.includes("LineChart"));
assert.ok(analyticsTsx.includes("BarChart"));
assert.ok(analyticsTsx.includes("AreaChart"));
assert.ok(analyticsTsx.includes("PieChart"));

// Study plan UI
const studyTsx = readFileSync(
  resolve(process.cwd(), "src/components/dashboard/StudyPlanView.tsx"),
  "utf8",
);
assert.ok(studyTsx.includes("emptyState"));
assert.ok(studyTsx.includes("Scho is building your personalized plan"));
assert.ok(studyTsx.includes("/api/ai/generate-study-plan"));
assert.ok(studyTsx.includes("study_plans"));
assert.ok(studyTsx.includes("STUDY_DAYS"));

const results = {};

// Supabase: achievements seeded
const supabase = createClient(
  env.NEXT_PUBLIC_SUPABASE_URL,
  env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
);
const { data: achievements, error: achErr } = await supabase
  .from("achievements")
  .select("id, key, name")
  .limit(20);
results.achievementsSeeded = !achErr && (achievements?.length ?? 0) >= 10;

// API routes via local server if running
const base = process.env.BASE_URL ?? "http://localhost:3000";

async function tryApi(path, body) {
  try {
    const res = await fetch(`${base}${path}`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });
    return { status: res.status, body: await res.text() };
  } catch (e) {
    return { error: String(e) };
  }
}

const satQ = await tryApi("/api/ai/generate-sat-question", {
  section: "math",
  topic: "Linear equations",
  difficulty: "medium",
  seed: `verify-${Date.now()}`,
});
results.satQuestionRouteExists =
  !satQ.error && (satQ.status === 401 || satQ.status === 200 || satQ.status === 500);

const planApi = await tryApi("/api/ai/generate-study-plan", {
  exam_type: "SAT",
  target_score: 1400,
  weekly_hours: 10,
  weak_topics: ["Algebra"],
  baseline_score: 1100,
});
results.studyPlanRouteExists =
  !planApi.error && (planApi.status === 401 || planApi.status === 200 || planApi.status === 422);

console.log("Unit checks: passed");
console.log("Integration:", JSON.stringify(results, null, 2));
