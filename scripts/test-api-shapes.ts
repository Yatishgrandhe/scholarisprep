import {
  buildPlanFromAi,
  fallbackPlannerPlan,
  parseStudyPlanData,
  planProgress,
  toggleTaskInPlan,
} from "../src/lib/dashboard/studyPlan";

const aiPlanJson = {
  total_weeks: 4,
  weekly_focus_areas: ["Algebra", "Reading"],
  weeks: [
    {
      week: 1,
      theme: "Algebra foundations",
      tasks: [
        {
          day: "Monday",
          type: "practice" as const,
          topic: "Linear equations",
          duration_minutes: 30,
          description: "Practice linear equations",
          question_count: 15,
        },
      ],
    },
  ],
};

const parsed = buildPlanFromAi(aiPlanJson);
if (!parsed.weeks.length || !parsed.weeks[0].tasks.length) {
  throw new Error("buildPlanFromAi failed");
}

const toggled = toggleTaskInPlan(parsed, parsed.weeks[0].tasks[0].id, true);
if (planProgress(toggled).completed !== 1) {
  throw new Error("toggle failed");
}

const fallback = fallbackPlannerPlan(["Algebra"], 10);
const roundTrip = JSON.parse(JSON.stringify(fallback)) as unknown;
const reparsed = parseStudyPlanData(roundTrip);
if (!reparsed.weeks.length || reparsed.weeks[0].tasks.length < 1) {
  throw new Error("fallback plan not parseable");
}

const stubQuestion = {
  question_text: "Test?",
  options: [
    { id: "A", text: "a", is_correct: false },
    { id: "B", text: "b", is_correct: true },
    { id: "C", text: "c", is_correct: false },
    { id: "D", text: "d", is_correct: false },
  ],
  explanation: "B",
  hint: "hint",
};

function validateQuestion(q: typeof stubQuestion) {
  return (
    Boolean(q.question_text) &&
    q.options.length === 4 &&
    q.options.some((o) => o.is_correct) &&
    Boolean(q.explanation) &&
    Boolean(q.hint)
  );
}

if (!validateQuestion(stubQuestion)) {
  throw new Error("invalid question stub");
}

console.log("All API shape tests passed");
