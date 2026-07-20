export const DIAGNOSTIC_QUESTION_COUNT = 35;

export type DiagnosticSection = "reading_writing" | "math";

export type DiagnosticSlot = {
  index: number;
  section: DiagnosticSection;
  topic: string;
  difficulty: "hard" | "expert";
};

const RW_TOPICS = [
  "Central Ideas and Details",
  "Command of Evidence",
  "Words in Context",
  "Text Structure and Purpose",
  "Cross-Text Connections",
  "Rhetorical Synthesis",
  "Transitions",
  "Boundaries",
  "Form, Structure, and Sense",
] as const;

const MATH_TOPICS = [
  "Linear equations and inequalities",
  "Systems of equations",
  "Quadratic and polynomial functions",
  "Exponential and rational expressions",
  "Geometry and trigonometry",
  "Ratios, rates, and proportions",
  "Statistics and data analysis",
  "Complex word problems",
] as const;

function hashSeed(seed: string): number {
  let h = 2166136261;
  for (let i = 0; i < seed.length; i++) {
    h ^= seed.charCodeAt(i);
    h = Math.imul(h, 16777619);
  }
  return h >>> 0;
}

function mulberry32(a: number) {
  return () => {
    let t = (a += 0x6d2b79f5);
    t = Math.imul(t ^ (t >>> 15), t | 1);
    t ^= t + Math.imul(t ^ (t >>> 7), t | 61);
    return ((t ^ (t >>> 14)) >>> 0) / 4294967296;
  };
}

function pickTopics<T extends string>(
  rng: () => number,
  pool: readonly T[],
  count: number,
): T[] {
  const bag = [...pool];
  const picked: T[] = [];
  for (let i = 0; i < count; i++) {
    if (bag.length === 0) bag.push(...pool);
    const idx = Math.floor(rng() * bag.length);
    picked.push(bag.splice(idx, 1)[0]!);
  }
  return picked;
}

/** SAT-style mix: 18 R&W (long passages) + 17 Math (hard). */
export function buildDiagnosticBlueprint(
  sessionSeed: string,
  examType: string,
): DiagnosticSlot[] {
  const rng = mulberry32(hashSeed(sessionSeed));
  const rwCount =
    examType === "SAT" || examType === "ACT" ? 18 : 18;
  const mathCount = DIAGNOSTIC_QUESTION_COUNT - rwCount;

  const rwTopics = pickTopics(rng, RW_TOPICS, rwCount);
  const mathTopics = pickTopics(rng, MATH_TOPICS, mathCount);

  const slots: DiagnosticSlot[] = [];

  for (let i = 0; i < rwCount; i++) {
    slots.push({
      index: i,
      section: "reading_writing",
      topic: rwTopics[i]!,
      difficulty: "hard",
    });
  }

  for (let i = 0; i < mathCount; i++) {
    slots.push({
      index: rwCount + i,
      section: "math",
      topic: mathTopics[i]!,
      difficulty: i % 3 === 0 ? "expert" : "hard",
    });
  }

  for (let i = slots.length - 1; i > 0; i--) {
    const j = Math.floor(rng() * (i + 1));
    [slots[i], slots[j]] = [slots[j]!, slots[i]!];
  }

  return slots.map((slot, index) => ({ ...slot, index }));
}
