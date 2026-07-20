import {
  getTutorHubCourse,
  isApExamType,
  isIbExamType,
  type TutorHubCourse,
} from "@/lib/apIbCatalog";

export type CourseTutorPrompt = {
  lead: string;
  text: string;
};

export type CourseTutorWelcome = {
  eyebrow: string;
  headline: string;
  sub: string;
};

function categoryKind(category: string): "stem" | "humanities" | "language" | "arts" | "general" {
  const c = category.toLowerCase();
  if (
    c.includes("math") ||
    c.includes("science") ||
    c.includes("computer") ||
    c.includes("technology") ||
    c.includes("design technology")
  ) {
    return "stem";
  }
  if (c.includes("language") || c.includes("world languages")) return "language";
  if (c.includes("history") || c.includes("social") || c.includes("government") || c.includes("economics")) {
    return "humanities";
  }
  if (c.includes("art") || c.includes("music")) return "arts";
  return "general";
}

export function courseTutorWelcome(course: TutorHubCourse): CourseTutorWelcome {
  const name = course.display_name;

  if (course.family === "SAT") {
    return {
      eyebrow: "Learn by figuring it out",
      headline: "Ask the question that makes the SAT click.",
      sub: "Scho won't just hand you the answer — we'll work through Reading, Writing, and Math until the idea feels like yours.",
    };
  }
  if (course.family === "ACT") {
    return {
      eyebrow: "Learn by figuring it out",
      headline: "Work through ACT confusion one sharp question at a time.",
      sub: "English, Math, Reading, Science — pick a section and let's find the next thought that unlocks it.",
    };
  }
  if (isApExamType(course.exam_type)) {
    return {
      eyebrow: "Course tutor",
      headline: `Figure out ${name} — don't just memorize it.`,
      sub: "FRQs, MCQs, and unit concepts: Scho asks back until the aha moment lands and stays.",
    };
  }
  if (isIbExamType(course.exam_type)) {
    return {
      eyebrow: "Course tutor",
      headline: `Own ${name} with IB-style reasoning.`,
      sub: "Command terms, paper structure, and deep understanding — one precise question at a time.",
    };
  }

  return {
    eyebrow: "Course tutor",
    headline: `Ask anything about ${name}.`,
    sub: "Bring half-formed questions. Scho works the confusion with you until it clicks.",
  };
}

export function courseTutorPrompts(course: TutorHubCourse): CourseTutorPrompt[] {
  const name = course.display_name;
  const kind = categoryKind(course.category);

  if (course.family === "SAT") {
    return [
      { lead: "Why does", text: "this grammar rule keep tricking me on Writing?" },
      { lead: "Walk me through", text: "breaking down a hard linear-equations problem" },
      { lead: "Quiz me", text: "on my weakest Reading passage type" },
      { lead: "What's the move", text: "when I'm stuck between two answer choices?" },
      { lead: "Help me plan", text: "how to use my time on test day" },
    ];
  }

  if (course.family === "ACT") {
    return [
      { lead: "Explain", text: "why my Science reasoning keeps missing the trend" },
      { lead: "Quiz me", text: "on ACT English punctuation traps" },
      { lead: "Show me", text: "how to speed up without losing accuracy in Math" },
      { lead: "Help me study", text: "for the section I struggle with most" },
      { lead: "Walk me through", text: "a full Reading passage strategy" },
    ];
  }

  if (kind === "stem") {
    return [
      { lead: "Why does", text: `this ${name} concept work the way it does — not just the formula?` },
      { lead: "Quiz me", text: `on the toughest unit in ${name}` },
      { lead: "Walk me through", text: "how to set up a free-response from scratch" },
      { lead: "What mistake", text: "do students make most on this topic's MCQs?" },
      { lead: "Help me connect", text: "two units that keep feeling unrelated" },
    ];
  }

  if (kind === "humanities") {
    return [
      { lead: "Help me argue", text: `a stronger thesis for ${name}` },
      { lead: "Explain", text: "how to use evidence without just summarizing" },
      { lead: "Quiz me", text: "on cause-and-effect chains I keep mixing up" },
      { lead: "Walk me through", text: "structuring a timed FRQ under pressure" },
      { lead: "Compare", text: "two themes I'm confusing in this course" },
    ];
  }

  if (kind === "language") {
    return [
      { lead: "Why does", text: "this grammar pattern work in context?" },
      { lead: "Quiz me", text: `on high-frequency ${name} vocabulary` },
      { lead: "Help me write", text: "a stronger paragraph for the written assignment" },
      { lead: "Explain", text: "what examiners want on the oral-style prompts" },
      { lead: "Practice", text: "turning my English thoughts into target-language sentences" },
    ];
  }

  if (kind === "arts") {
    return [
      { lead: "Help me analyze", text: "a work for the comparative study" },
      { lead: "Explain", text: "how to talk about technique without listing features" },
      { lead: "Quiz me", text: "on vocabulary I need for the written response" },
      { lead: "Walk me through", text: "building a coherent portfolio rationale" },
      { lead: "What separates", text: "a strong from a weak evaluation?" },
    ];
  }

  return [
    { lead: "Quiz me", text: `on the toughest unit in ${name}` },
    { lead: "Explain", text: "a concept I keep missing on practice questions" },
    { lead: "Help me study", text: "for my next unit test" },
    { lead: "Walk me through", text: "how to structure a strong free-response answer" },
    { lead: "Show me", text: "common mistakes on this course's multiple-choice" },
  ];
}

export function courseTutorPromptFull(prompt: CourseTutorPrompt): string {
  return `${prompt.lead} ${prompt.text}`;
}

export function resolveCourseTutorContext(examType: string): {
  course: TutorHubCourse;
  welcome: CourseTutorWelcome;
  prompts: CourseTutorPrompt[];
} {
  const course = getTutorHubCourse(examType);
  const fallback: TutorHubCourse = course ?? {
    exam_type: examType,
    display_name: examType.replace(/_/g, " "),
    family: isApExamType(examType) ? "AP" : isIbExamType(examType) ? "IB" : "SAT",
    category: "General",
    short_code: examType,
  };
  return {
    course: fallback,
    welcome: courseTutorWelcome(fallback),
    prompts: courseTutorPrompts(fallback),
  };
}
