/**
 * Keywords that indicate the user may benefit from a Spark visualization.
 * When a user message contains any of these, the chat UI can suggest
 * opening the relevant Spark (e.g., Live Graph for SHM).
 */

export type SparkType = "shm_live_graph";

export interface SparkSuggestion {
  type: SparkType;
  title: string;
  description: string;
  /** Short prompt to pre-fill if the user clicks "Try it" */
  tryPrompt?: string;
}

/** Normalized lowercase keywords → Spark suggestion mapping. */
const SPARK_KEYWORDS: Record<string, SparkSuggestion> = {
  // Simple Harmonic Motion
  shm: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  "simple harmonic": {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  "simple harmonic motion": {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  harmonic: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  oscillation: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  oscillate: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  // Graph/plot related
  graph: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  plot: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  "x(t)": {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  "a(t)": {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  cosine: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  sine: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  sin: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  cos: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  pendulum: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  spring: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
  mass: {
    type: "shm_live_graph",
    title: "Live Graph: Simple Harmonic Motion",
    description: "See displacement x(t) and acceleration a(t) in real time.",
    tryPrompt: "Show me a graph of SHM: x = A cos(ωt), a = −ω²x",
  },
};

/**
 * Normalize text for keyword matching: lowercase, remove common punctuation.
 */
function normalizeText(text: string): string {
  return text
    .toLowerCase()
    .replace(/[.,/#!$%^&*;:{}=\_`~()]/g, "")
    .replace(/\s+/g, " ")
    .trim();
}

/** Phrases that indicate the user wants to learn about a topic. */
const LEARN_INTENT_PATTERNS = [
  "i want to learn",
  "teach me",
  "explain",
  "help me understand",
  "walk me through",
  "show me how",
  "what is",
  "what are",
  "can you explain",
  "can you teach",
  "how does",
  "how do",
  "i don't understand",
  "i'm confused about",
  "i dont get",
];

/**
 * Check if a user message contains any Spark-related keywords.
 * Returns the matching suggestion or null if no match.
 */
export function matchSparkKeyword(message: string): SparkSuggestion | null {
  const normalized = normalizeText(message);
  for (const [keyword, suggestion] of Object.entries(SPARK_KEYWORDS)) {
    if (normalized.includes(keyword)) {
      return suggestion;
    }
  }
  return null;
}

/**
 * Check if a user message expresses intent to learn about a topic.
 * Combined with a keyword match, this helps trigger Spark suggestions
 * even when the user doesn't use the exact keyword but asks to learn.
 */
export function hasLearnIntent(message: string): boolean {
  const normalized = normalizeText(message);
  return LEARN_INTENT_PATTERNS.some((pattern) => normalized.includes(pattern));
}

/**
 * List of all Spark types currently available.
 */
export function getAvailableSparkTypes(): SparkType[] {
  return Object.values(SPARK_KEYWORDS).map((s) => s.type);
}
