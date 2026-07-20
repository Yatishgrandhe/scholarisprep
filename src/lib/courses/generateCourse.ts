/**
 * Server-side course generation from a YouTube video.
 *
 * Pipeline: YouTube URL → captions/transcript (youtube-transcript) →
 * extractive compression (keep the highest-signal parts of the WHOLE video) →
 * Mistral via LangChain → a structured course (lessons + optional step-by-step
 * walkthroughs + quiz).
 *
 * Runs on the signed-in user's own Mistral key (the same key used everywhere
 * else), passed per request via the `x-ai-key` header — never read from server
 * env or stored in our database.
 */

import { complete, extractJson, type AiAuth } from "@/lib/ai/mistral";

/** Hard ceiling on transcript characters sent to the model after compression. */
const MAX_TRANSCRIPT_CHARS = 9_000;

export type CourseLesson = {
  title: string;
  summary: string;
  keyPoints: string[];
  /** Ordered steps for how-to / worked-example videos (empty for concept lessons). */
  steps: string[];
};

export type CourseQuizQuestion = {
  question: string;
  options: string[];
  answerIndex: number;
  explanation: string;
};

export type GeneratedCourse = {
  title: string;
  summary: string;
  lessons: CourseLesson[];
  quiz: CourseQuizQuestion[];
};

export type CourseDifficulty = "foundational" | "standard" | "advanced";
export type CourseFocus = "sat" | "general";

export type CourseOptions = {
  difficulty: CourseDifficulty;
  /** Target number of lessons (3–6). */
  lessons: number;
  focus: CourseFocus;
  includeQuiz: boolean;
};

export const DEFAULT_COURSE_OPTIONS: CourseOptions = {
  difficulty: "standard",
  lessons: 5,
  focus: "sat",
  includeQuiz: true,
};

/** Clamp/normalize untrusted option input coming from the request body. */
export function normalizeCourseOptions(input: unknown): CourseOptions {
  const o = (input ?? {}) as Record<string, unknown>;
  const difficulty: CourseDifficulty =
    o.difficulty === "foundational" || o.difficulty === "advanced"
      ? o.difficulty
      : "standard";
  const lessonsNum = Number(o.lessons);
  const lessons = Number.isFinite(lessonsNum)
    ? Math.min(6, Math.max(3, Math.round(lessonsNum)))
    : 5;
  const focus: CourseFocus = o.focus === "general" ? "general" : "sat";
  const includeQuiz = o.includeQuiz !== false;
  return { difficulty, lessons, focus, includeQuiz };
}

export class CourseGenerationError extends Error {
  code: "BAD_URL" | "NO_TRANSCRIPT" | "MODEL_ERROR" | "PARSE_ERROR";
  constructor(code: CourseGenerationError["code"], message: string) {
    super(message);
    this.code = code;
    this.name = "CourseGenerationError";
  }
}

/** Extract the 11-char YouTube video id from common URL shapes. */
export function parseYoutubeId(url: string): string | null {
  const patterns = [
    /(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/|youtube\.com\/shorts\/)([A-Za-z0-9_-]{11})/,
    /^([A-Za-z0-9_-]{11})$/,
  ];
  for (const re of patterns) {
    const m = url.trim().match(re);
    if (m) return m[1];
  }
  return null;
}

// --------------------------------------------------------------------------- //
// Transcript compression (extractive, no extra API call)
// --------------------------------------------------------------------------- //

const STOPWORDS = new Set(
  ("a an the and or but if then else of to in on at for with by from as is are " +
    "was were be been being this that these those it its it's i you he she we " +
    "they them his her their our your my me us do does did done so just like " +
    "really very okay ok yeah um uh hmm gonna wanna kind sort thing things " +
    "stuff right now here there what when where why how which who whom not no " +
    "yes can could should would will shall may might must have has had get got " +
    "going go went about into over than too also up out off down only more most")
    .split(/\s+/),
);

/** Strip caption cues, normalize whitespace, drop obvious filler. */
function cleanTranscript(raw: string): string {
  return raw
    .replace(/\[[^\]]*\]/g, " ") // [Music], [Applause]
    .replace(/\([^)]*\)/g, " ")
    .replace(/&#39;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/&amp;/g, "&")
    .replace(/\b(?:um+|uh+|hmm+|er+|ah+)\b/gi, " ")
    .replace(/\s+/g, " ")
    .trim();
}

/** Split into sentence-ish units; falls back to word windows for caption streams. */
function segment(text: string): string[] {
  const bySentence = text
    .split(/(?<=[.!?])\s+/)
    .map((s) => s.trim())
    .filter(Boolean);
  // Auto-captions often have almost no punctuation → one giant "sentence".
  // Fall back to fixed ~28-word windows so scoring has something to rank.
  if (bySentence.length >= 6) return bySentence;
  const words = text.split(/\s+/);
  const windows: string[] = [];
  for (let i = 0; i < words.length; i += 28) {
    windows.push(words.slice(i, i + 28).join(" "));
  }
  return windows.filter(Boolean);
}

/**
 * Frequency-based extractive summary: rank segments by the content-word
 * frequency they carry (length-normalized), keep the top ones that fit the
 * budget, and restore original order so the result reads in sequence.
 */
export function compressTranscript(
  raw: string,
  maxChars = MAX_TRANSCRIPT_CHARS,
): string {
  const text = cleanTranscript(raw);
  if (text.length <= maxChars) return text;

  const segments = segment(text);
  if (segments.length <= 1) return text.slice(0, maxChars);

  // Content-word frequencies across the whole transcript.
  const freq = new Map<string, number>();
  const wordsOf = (s: string) =>
    s
      .toLowerCase()
      .replace(/[^a-z0-9'\s]/g, " ")
      .split(/\s+/)
      .filter((w) => w.length > 2 && !STOPWORDS.has(w));
  for (const seg of segments) {
    for (const w of wordsOf(seg)) freq.set(w, (freq.get(w) ?? 0) + 1);
  }

  const scored = segments.map((seg, index) => {
    const words = wordsOf(seg);
    const raw = words.reduce((sum, w) => sum + (freq.get(w) ?? 0), 0);
    // Normalize by sqrt(length) so long rambling segments don't dominate.
    const score = words.length ? raw / Math.sqrt(words.length) : 0;
    return { seg, index, score };
  });

  const picked: { seg: string; index: number }[] = [];
  let used = 0;
  for (const item of [...scored].sort((a, b) => b.score - a.score)) {
    if (used + item.seg.length + 1 > maxChars) continue;
    picked.push(item);
    used += item.seg.length + 1;
    if (used >= maxChars) break;
  }
  if (picked.length === 0) return text.slice(0, maxChars);

  return picked
    .sort((a, b) => a.index - b.index)
    .map((p) => p.seg)
    .join(" ");
}

// --------------------------------------------------------------------------- //
// Transcript fetch
// --------------------------------------------------------------------------- //

async function fetchTranscript(videoId: string): Promise<string> {
  // youtube-transcript is CJS-ish; import lazily so the route stays light.
  const { YoutubeTranscript } = await import("youtube-transcript");
  try {
    const segments = await YoutubeTranscript.fetchTranscript(videoId);
    const text = segments
      .map((s) => s.text)
      .join(" ")
      .replace(/\s+/g, " ")
      .trim();
    if (!text) {
      throw new CourseGenerationError(
        "NO_TRANSCRIPT",
        "This video has no captions to build a course from.",
      );
    }
    return text;
  } catch (err) {
    if (err instanceof CourseGenerationError) throw err;
    throw new CourseGenerationError(
      "NO_TRANSCRIPT",
      "Couldn't fetch captions for this video. Try one that has captions enabled.",
    );
  }
}

// --------------------------------------------------------------------------- //
// Prompt + parsing
// --------------------------------------------------------------------------- //

const DIFFICULTY_GUIDANCE: Record<CourseDifficulty, string> = {
  foundational:
    "Pitch it for a beginner: define every term, move slowly, and avoid unexplained jargon.",
  standard:
    "Pitch it for a motivated student at a standard level — clear and thorough without over-explaining.",
  advanced:
    "Pitch it for an advanced learner: be concise and rigorous, assume the fundamentals, and go deeper.",
};

function buildPrompt(transcript: string, opts: CourseOptions): string {
  const focusLine =
    opts.focus === "sat"
      ? "Where the content allows, frame examples and quiz questions around Digital SAT / standardized-test relevance."
      : "Keep the framing general-purpose and broadly applicable.";

  const quizSchemaLine = opts.includeQuiz
    ? '  "quiz": [                   // 4 to 6 multiple-choice questions'
    : '  "quiz": []                  // no quiz requested — return an empty array';
  const quizShapeLine = opts.includeQuiz
    ? '    { "question": string, "options": string[4], "answerIndex": number, "explanation": string }\n  ]'
    : "  ]";

  return [
    "You are an expert curriculum designer. Turn the following video transcript",
    "into a concise, well-structured self-study course.",
    "",
    `Audience & depth: ${DIFFICULTY_GUIDANCE[opts.difficulty]}`,
    `Focus: ${focusLine}`,
    "",
    "Decide the course type from the content:",
    "- If the video TEACHES A PROCEDURE or WORKS THROUGH A PROBLEM (e.g. solving",
    "  a math question, a tutorial, a how-to), make each lesson a clear",
    '  step-by-step walkthrough: fill its "steps" array with the ordered actions',
    "  a learner should follow, in their own words.",
    "- If the video EXPLAINS CONCEPTS, leave \"steps\" empty and use \"keyPoints\"",
    "  for the main takeaways.",
    "",
    "Return ONLY valid JSON (no markdown, no commentary) matching this shape:",
    "{",
    '  "title": string,            // a clear course title',
    '  "summary": string,          // 2-3 sentence overview',
    `  "lessons": [                // exactly ${opts.lessons} lessons in logical order`,
    '    { "title": string, "summary": string, "keyPoints": string[], "steps": string[] }',
    "  ],",
    quizSchemaLine,
    quizShapeLine,
    "}",
    "",
    `Produce exactly ${opts.lessons} lessons.`,
    'Rules: a lesson uses EITHER "keyPoints" (3-5) OR "steps" (3-8), not both.',
    opts.includeQuiz
      ? "Each quiz question needs exactly 4 options; answerIndex is the 0-based index of the correct option."
      : "Do not write any quiz questions; the quiz array must be empty.",
    "Write everything in clear, original prose.",
    "",
    "TRANSCRIPT:",
    transcript,
  ].join("\n");
}

function coerceCourse(data: unknown, opts: CourseOptions): GeneratedCourse {
  const obj = (data ?? {}) as Record<string, unknown>;
  const lessons = Array.isArray(obj.lessons) ? obj.lessons : [];
  const quiz = opts.includeQuiz && Array.isArray(obj.quiz) ? obj.quiz : [];
  const strList = (v: unknown, max: number) =>
    Array.isArray(v) ? v.map((x) => String(x)).filter(Boolean).slice(0, max) : [];

  const course: GeneratedCourse = {
    title: String(obj.title ?? "Untitled course").slice(0, 200),
    summary: String(obj.summary ?? ""),
    // Honor the requested lesson count as a ceiling (the model is asked for an
    // exact number, but trim defensively if it over-produces).
    lessons: lessons.slice(0, Math.max(opts.lessons, 3)).map((l) => {
      const o = (l ?? {}) as Record<string, unknown>;
      return {
        title: String(o.title ?? "Lesson"),
        summary: String(o.summary ?? ""),
        keyPoints: strList(o.keyPoints, 8),
        steps: strList(o.steps, 12),
      };
    }),
    quiz: quiz.slice(0, 10).map((q) => {
      const o = (q ?? {}) as Record<string, unknown>;
      const options = strList(o.options, 6);
      const idx = Number(o.answerIndex);
      return {
        question: String(o.question ?? ""),
        options,
        answerIndex:
          Number.isInteger(idx) && idx >= 0 && idx < options.length ? idx : 0,
        explanation: String(o.explanation ?? ""),
      };
    }),
  };
  if (course.lessons.length === 0) {
    throw new CourseGenerationError(
      "PARSE_ERROR",
      "The model returned no lessons. Please try again.",
    );
  }
  return course;
}

export async function generateCourseFromYoutube(
  youtubeUrl: string,
  mistralApiKey: AiAuth,
  options?: Partial<CourseOptions>,
): Promise<GeneratedCourse & { videoId: string }> {
  const opts: CourseOptions = { ...DEFAULT_COURSE_OPTIONS, ...options };
  const videoId = parseYoutubeId(youtubeUrl);
  if (!videoId) {
    throw new CourseGenerationError(
      "BAD_URL",
      "That doesn't look like a valid YouTube link.",
    );
  }

  const fullTranscript = await fetchTranscript(videoId);
  const transcript = compressTranscript(fullTranscript);

  let raw: string;
  try {
    raw = await complete(mistralApiKey, buildPrompt(transcript, opts), {
      temperature: 0.4,
      maxTokens: 4096,
    });
  } catch (err) {
    const message = err instanceof Error ? err.message : "Mistral request failed.";
    throw new CourseGenerationError(
      "MODEL_ERROR",
      `Couldn't generate the course (${message}). Check your Mistral key in Settings.`,
    );
  }

  let parsed: unknown;
  try {
    parsed = extractJson(raw);
  } catch {
    throw new CourseGenerationError(
      "PARSE_ERROR",
      "The model returned unusable output. Please try again.",
    );
  }
  const course = coerceCourse(parsed, opts);
  return { ...course, videoId };
}
