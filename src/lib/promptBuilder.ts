import { PLACEHOLDERS, PROMPTS } from "@/lib/aiPrompts";
import { sanitizeUserInput } from "@/lib/sanitize";
import type { SubjectConfig } from "@/lib/subjectContext";
import type { ExamType, Profile } from "@/types/supabase";

export type TutorPerformanceData = {
  currentScore?: number | null;
  targetScore?: number | null;
  predictedScore?: number | null;
  examDate?: string | null;
  recentAccuracyPercent?: number;
  weakTopics?: string[];
  strongTopics?: string[];
  streakDays?: number;
  sessionsCompleted?: number;
};

export type TutorQuestionContext = {
  question_text?: string;
  topic?: string;
  stimulus_text?: string;
  section?: string;
  selected_option?: string;
  is_correct?: boolean;
  correct_answer?: string;
  explanation?: string;
  options?: Array<{ id: string; text: string; is_correct?: boolean }>;
};

export type TutorPromptOptions = {
  examType?: string;
  topics?: string[];
  questionContext?: TutorQuestionContext;
  performanceData?: TutorPerformanceData;
  subjectConfig?: SubjectConfig | null;
  /** Per-course Scho preload (AP/IB JSON or generated catalog block). */
  coursePreload?: string | null;
  conversationContext?: {
    context_type?: string | null;
    context_id?: string | null;
  };
  requestContext?: {
    exam_type?: string;
    topic?: string;
    question_text?: string;
  };
};

export type StudyPlanDiagnosticAnswer = {
  question_id: string;
  topic: string;
  section: string;
  is_correct: boolean;
  selected_option: string;
};

export type StudyPlanPlannerInput = {
  mode: "planner";
  exam_type: ExamType;
  exam_date?: string;
  target_score: number;
  baseline_score?: number;
  weak_topics: string[];
  weekly_hours: number;
};

export type StudyPlanDiagnosticInput = {
  mode: "diagnostic";
  exam_type: ExamType;
  topic_scores: Record<string, { correct: number; total: number }>;
  answers: StudyPlanDiagnosticAnswer[];
  target_score?: number;
  weekly_hours?: number;
  baseline_score?: number;
};

export type StudyPlanPromptInput = StudyPlanPlannerInput | StudyPlanDiagnosticInput;

export type ExplainerQuestionInput = {
  question_text: string;
  topic?: string;
  exam_type?: string;
  section?: string;
  stimulus_text?: string | null;
  options?: Array<{ id: string; text: string; is_correct?: boolean }>;
  explanation?: string | null;
};

export type RecommendationSessionRow = {
  correct_count?: number | null;
  total_questions?: number | null;
  metadata?: unknown;
};

export type TopicScoreMap = Record<
  string,
  { correct: number; total: number }
>;

function formatSubjectContextBlock(config: SubjectConfig | null | undefined): string {
  if (!config) {
    return "No subject registry entry loaded. Use general best practices for the student's exam type.";
  }
  const topics =
    config.topics.length > 0
      ? config.topics.slice(0, 24).join(", ")
      : "see official exam outline";
  return [
    `Exam: ${config.display_name} (${config.exam_type})`,
    `Sections: ${config.sections.join(", ") || "standard sections"}`,
    `Key topics: ${topics}`,
    `Score range: ${config.score_range.min}–${config.score_range.max}`,
    config.passing_score != null
      ? `Typical passing/target reference: ${config.passing_score}`
      : null,
    config.calculator_policy !== "none"
      ? `Calculator policy: ${config.calculator_policy}`
      : null,
  ]
    .filter(Boolean)
    .join("\n");
}

/** Optional course preload (AP/IB units, command terms, etc.) appended to subject block. */
export function appendCoursePreload(
  subjectBlock: string,
  coursePreload: string | null | undefined,
): string {
  const preload = coursePreload?.trim();
  if (!preload) return subjectBlock;
  return `${subjectBlock}\n\n${preload}`;
}

function formatPerformanceBlock(data: TutorPerformanceData | undefined): string {
  if (!data) return "";
  const lines: string[] = [];
  if (data.currentScore != null) {
    lines.push(`Current/most-recent score: ${data.currentScore}`);
  }
  if (data.targetScore != null) {
    lines.push(`Target score: ${data.targetScore}`);
  }
  if (data.predictedScore != null) {
    lines.push(`Predicted score: ${data.predictedScore}`);
  }
  if (data.examDate) {
    lines.push(`Exam date: ${data.examDate}`);
  }
  if (data.recentAccuracyPercent != null) {
    lines.push(`Recent practice accuracy: ${data.recentAccuracyPercent}%`);
  }
  if (data.weakTopics?.length) {
    lines.push(`Weakest topics (focus here): ${data.weakTopics.join(", ")}`);
  }
  if (data.strongTopics?.length) {
    lines.push(`Strongest topics: ${data.strongTopics.join(", ")}`);
  }
  if (data.streakDays != null) {
    lines.push(`Current study streak: ${data.streakDays} day(s)`);
  }
  if (data.sessionsCompleted != null) {
    lines.push(`Sessions completed recently: ${data.sessionsCompleted}`);
  }
  return lines.length
    ? `\nSTUDENT PROFILE (you ALREADY know this — never ask the student for it):\n${lines.join("\n")}`
    : "";
}

function formatQuestionContextBlock(ctx: TutorQuestionContext | undefined): string {
  if (!ctx?.question_text && !ctx?.topic) return "";
  const optionsBlock =
    ctx.options?.length ?
      `Choices:\n${ctx.options
        .map(
          (o) =>
            `${o.id}) ${sanitizeUserInput(o.text)}${o.is_correct ? " [correct]" : ""}`,
        )
        .join("\n")}`
    : null;
  const parts = [
    ctx.topic ? `Topic: ${sanitizeUserInput(ctx.topic)}` : null,
    ctx.section ? `Section: ${sanitizeUserInput(ctx.section)}` : null,
    ctx.question_text
      ? `Question: ${sanitizeUserInput(ctx.question_text)}`
      : null,
    ctx.stimulus_text
      ? `Passage/stimulus: ${sanitizeUserInput(ctx.stimulus_text).slice(0, 1200)}`
      : null,
    optionsBlock,
    ctx.correct_answer ? `Correct answer: ${ctx.correct_answer}` : null,
    ctx.selected_option ? `Student selected: ${ctx.selected_option}` : null,
    ctx.is_correct != null ? `Was correct: ${ctx.is_correct}` : null,
    ctx.explanation?.trim()
      ? `Stored explanation: ${sanitizeUserInput(ctx.explanation).slice(0, 2000)}`
      : null,
  ].filter(Boolean);
  return parts.length ? `\nActive question:\n${parts.join("\n")}` : "";
}

export function buildTutorPrompt(
  basePrompt: string = PROMPTS.SCHO_TUTOR_BASE,
  options: TutorPromptOptions = {},
): string {
  const examType =
    options.examType ??
    options.requestContext?.exam_type ??
    options.subjectConfig?.exam_type ??
    "SAT";

  const subjectBlock = appendCoursePreload(
    formatSubjectContextBlock(options.subjectConfig),
    options.coursePreload,
  );
  const topicsLine =
    options.topics?.length || options.requestContext?.topic
      ? `Focus topics: ${(options.topics ?? [options.requestContext?.topic]).filter(Boolean).join(", ")}`
      : "";

  const contextParts = [
    `Exam type: ${examType}`,
    topicsLine,
    formatQuestionContextBlock({
      ...options.questionContext,
      question_text:
        options.questionContext?.question_text ??
        options.requestContext?.question_text,
      topic: options.questionContext?.topic ?? options.requestContext?.topic,
    }),
    formatPerformanceBlock(options.performanceData),
    options.conversationContext?.context_type
      ? `Conversation anchor: ${options.conversationContext.context_type}${options.conversationContext.context_id ? ` (${options.conversationContext.context_id})` : ""}`
      : "",
  ].filter(Boolean);

  const contextBlock = contextParts.join("\n");

  const formattingBlock = [
    "",
    "COURSE ISOLATION (critical — Scholaris is multi-exam):",
    `- You are tutoring ONLY ${examType} in this session. Do not give advice for a different exam or course unless the student explicitly compares.`,
    "- Match official terminology, units, scoring, and calculator policy from SUBJECT CONTEXT / preload for this exam — never default to Digital SAT habits on AP/IB (or vice versa).",
    "- If the student asks about another course, briefly clarify you are in this course's tutor, then help or suggest switching the sidebar course.",
    "",
    "Using what you already know:",
    "- The SESSION CONTEXT above may include a STUDENT PROFILE (current score, target score, exam date, weak/strong topics, recent accuracy). When it does, treat it as known fact.",
    "- NEVER open with a diagnostic questionnaire and never ask the student for their current score, target score, which section is hardest, or whether they have a recent practice test when that information is already in the profile. Use it and get straight to helping.",
    "- Personalize: reference their weak topics and the gap between their current and target score instead of asking about them.",
    "",
    "Formatting rules (the UI renders GitHub-flavored Markdown + KaTeX):",
    "- Write clean Markdown: short paragraphs, **bold** for key terms, `-` bullet lists, numbered steps, and Markdown tables where a comparison helps.",
    "- ALWAYS write math with KaTeX: inline math in single dollar signs like $a^2+b^2=c^2$, and display math on its own line in double dollar signs like $$c=\\sqrt{a^2+b^2}$$.",
    "- NEVER use \\( \\), \\[ \\], or bare parentheses/brackets around formulas, and never show raw LaTeX commands as plain text.",
    "- Keep replies focused and skimmable — lead with the answer, then the explanation.",
  ].join("\n");

  return (
    basePrompt
      .replace(PLACEHOLDERS.SUBJECT_CONTEXT, subjectBlock)
      .replace(
        PLACEHOLDERS.CONTEXT,
        contextBlock || "General tutoring session.",
      ) + formattingBlock
  );
}

export function buildExplainerPrompt(
  question: ExplainerQuestionInput,
  selectedOption: string,
  isCorrect: boolean,
): string {
  const correctnessLine = isCorrect
    ? `The student chose option ${selectedOption}, which was correct.`
    : `The student chose option ${selectedOption}, which was incorrect.`;

  const optionsBlock =
    question.options?.length ?
      `\nAnswer choices:\n${question.options
        .map(
          (o) =>
            `${o.id}) ${sanitizeUserInput(o.text)}${o.is_correct ? " [correct]" : ""}`,
        )
        .join("\n")}`
    : "";

  const knownExplanation = question.explanation?.trim()
    ? `\nAuthor explanation (use as ground truth; do not contradict):\n${sanitizeUserInput(question.explanation)}`
    : "";

  return `${PROMPTS.QUESTION_EXPLAINER}

Question: ${sanitizeUserInput(question.question_text)}
Exam: ${sanitizeUserInput(question.exam_type ?? "SAT")}
Topic: ${sanitizeUserInput(question.topic ?? "General")}
${question.section ? `Section: ${sanitizeUserInput(question.section)}` : ""}
${question.stimulus_text ? `Stimulus:\n${sanitizeUserInput(question.stimulus_text).slice(0, 2000)}` : ""}
${optionsBlock}
Selected option: ${selectedOption}
${correctnessLine}${knownExplanation}`;
}

export function buildStudyPlanPrompt(
  profile: Profile | null,
  planInput: StudyPlanPromptInput,
  activeSubject: SubjectConfig | null,
): string {
  const subjectBlock = formatSubjectContextBlock(activeSubject);
  const profileLines = [
    profile?.full_name ? `Student: ${profile.full_name}` : null,
    profile?.exam_goal ? `Primary exam goal: ${profile.exam_goal}` : null,
    profile?.exam_date ? `Profile exam date: ${profile.exam_date}` : null,
  ]
    .filter(Boolean)
    .join("\n");

  if (planInput.mode === "planner") {
    const baseline = planInput.baseline_score ?? 1000;
    const weeksHint = Math.min(
      12,
      Math.max(4, Math.ceil((planInput.weekly_hours * 8) / 10)),
    );

    return `${PROMPTS.STUDY_PLAN_GENERATOR}

${subjectBlock}
${profileLines ? `\n${profileLines}` : ""}

Create a personalized multi-week ${planInput.exam_type} study plan.

Exam date: ${planInput.exam_date ?? "not set"}
Target score: ${planInput.target_score}
Baseline score: ${baseline}
Weekly study hours: ${planInput.weekly_hours}
Weak topics: ${planInput.weak_topics.join(", ") || "general review"}

Plan about ${weeksHint} weeks unless the exam date is sooner.
Include 1–3 tasks per day. Spread ${planInput.weekly_hours} hours realistically across each week.
Prioritize weak topics in early weeks.`;
  }

  const weakAreas = Object.entries(planInput.topic_scores)
    .filter(([, s]) => s.total > 0 && s.correct / s.total < 0.6)
    .map(([topic]) => topic);

  return `${PROMPTS.STUDY_PLAN_GENERATOR}

${subjectBlock}
${profileLines ? `\n${profileLines}` : ""}

A student completed a ${planInput.exam_type} diagnostic.

Topic scores: ${JSON.stringify(planInput.topic_scores)}
Wrong count: ${planInput.answers.filter((a) => !a.is_correct).length}
Target score: ${planInput.target_score ?? "not set"}
Weekly hours: ${planInput.weekly_hours ?? 10}
Baseline score: ${planInput.baseline_score ?? "unknown"}

Build a focused plan starting with week 1 (Monday–Sunday, 1–2 tasks per day).
Prioritize: ${weakAreas.join(", ") || "general review"}.`;
}

export function buildRecommendationPrompt(
  sessionData: {
    exam_type: ExamType;
    wrong_question_ids: string[];
    recent_sessions?: RecommendationSessionRow[];
  },
  topicScores: TopicScoreMap,
): string {
  return `${PROMPTS.RECOMMENDATION_GENERATOR}

Exam: ${sessionData.exam_type}
Session topic scores: ${JSON.stringify(topicScores)}
Wrong questions in this session: ${sessionData.wrong_question_ids.length}
Recent sessions (newest first): ${JSON.stringify(sessionData.recent_sessions?.slice(0, 5) ?? [])}`;
}

export function buildCourseDescriptionPrompt(
  title: string,
  examType: string,
  subject?: string,
): string {
  return `${PROMPTS.COURSE_DESCRIPTION_GENERATOR}

Course title: ${sanitizeUserInput(title)}
Exam: ${sanitizeUserInput(examType)}
Subject: ${sanitizeUserInput(subject ?? "General")}`;
}
