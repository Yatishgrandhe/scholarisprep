import { buildCourseDescriptionPrompt } from "@/lib/promptBuilder";
import { completeJson, complete, type AiAuth } from "@/lib/ai/mistral";

export type GeneratedLessonContent = {
  summary: string;
  questions: Array<{
    question_text: string;
    stimulus_text: string | null;
    options: Array<{ id: string; text: string; is_correct: boolean }>;
    explanation: string;
    hint: string;
    topic: string;
    section: string;
    difficulty: "easy" | "medium" | "hard";
  }>;
};

function stubLessonContent(
  videoTitle: string,
  courseSubject: string,
): GeneratedLessonContent {
  const topic = courseSubject || "General";
  return {
    summary: `This lesson covers **${videoTitle}**. Watch the video, then practice with the questions below to reinforce key ideas for ${topic}.`,
    questions: Array.from({ length: 5 }, (_, i) => ({
      question_text: `[Demo ${i + 1}] Based on "${videoTitle}", which statement is most accurate?`,
      stimulus_text: null,
      options: [
        { id: "A", text: "An incorrect distractor", is_correct: false },
        { id: "B", text: "The best-supported answer", is_correct: true },
        { id: "C", text: "Another distractor", is_correct: false },
        { id: "D", text: "A third distractor", is_correct: false },
      ],
      explanation: "Option B aligns with the main idea of the lesson.",
      hint: "Focus on the core concept introduced in the video title.",
      topic,
      section: "reading_writing",
      difficulty: "medium" as const,
    })),
  };
}

function normalizeQuestions(raw: unknown): GeneratedLessonContent["questions"] {
  if (!Array.isArray(raw)) return [];
  return raw
    .map((item, i) => {
      const q = item as Record<string, unknown>;
      const opts = Array.isArray(q.options)
        ? (q.options as Array<Record<string, unknown>>).map((o, j) => ({
            id: String(o.id ?? ["A", "B", "C", "D"][j]),
            text: String(o.text ?? ""),
            is_correct: Boolean(o.is_correct),
          }))
        : [];
      return {
        question_text: String(q.question_text ?? ""),
        stimulus_text:
          q.stimulus_text != null ? String(q.stimulus_text) : null,
        options: opts.filter((o) => o.text).slice(0, 4),
        explanation: String(q.explanation ?? ""),
        hint: String(q.hint ?? ""),
        topic: String(q.topic ?? "General"),
        section: String(q.section ?? "reading_writing"),
        difficulty: (["easy", "medium", "hard"].includes(String(q.difficulty))
          ? q.difficulty
          : "medium") as "easy" | "medium" | "hard",
      };
    })
    .filter((q) => q.question_text && q.options.some((o) => o.is_correct))
    .slice(0, 5);
}

export async function generateLessonContent(
  apiKey: AiAuth,
  videoTitle: string,
  videoDescription: string,
  examType: string,
  subject: string,
): Promise<GeneratedLessonContent> {
  const fallback = stubLessonContent(videoTitle, subject);

  const prompt = `You are an expert ${examType} instructor. For this video lesson:
Title: ${videoTitle}
Description: ${videoDescription.slice(0, 1200)}
Subject: ${subject}

Return ONLY valid JSON:
{
  "summary": "2-4 paragraph markdown summary of what students will learn",
  "questions": [
    {
      "question_text": "string",
      "stimulus_text": null or "short passage if needed",
      "options": [
        { "id": "A", "text": "...", "is_correct": false },
        { "id": "B", "text": "...", "is_correct": true },
        { "id": "C", "text": "...", "is_correct": false },
        { "id": "D", "text": "...", "is_correct": false }
      ],
      "explanation": "why B is correct",
      "hint": "short hint",
      "topic": "${subject}",
      "section": "reading_writing or math",
      "difficulty": "easy|medium|hard"
    }
  ]
}

Generate exactly 5 multiple-choice questions tied to the video content.`;

  try {
    const raw = await completeJson<Record<string, unknown>>(apiKey, prompt, {
      maxTokens: 4000,
      temperature: 0.6,
    });
    const questions = normalizeQuestions(raw.questions);
    if (questions.length === 0) return fallback;

    return {
      summary: String(raw.summary ?? fallback.summary),
      questions,
    };
  } catch {
    return fallback;
  }
}

export async function generateCourseDescription(
  apiKey: AiAuth,
  title: string,
  examType: string,
  subject: string,
): Promise<string> {
  const fallback = `${title} prepares you for ${examType} ${subject} with structured video lessons and practice questions. Work through each lesson at your own pace and track your progress. Built for motivated students who want clear, exam-focused instruction.`;

  const prompt = buildCourseDescriptionPrompt(title, examType, subject);

  try {
    const text = (
      await complete(apiKey, prompt, { maxTokens: 300, temperature: 0.7 })
    ).trim();
    return text.length > 20 ? text : fallback;
  } catch {
    return fallback;
  }
}
