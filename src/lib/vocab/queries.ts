import type { SupabaseClient } from "@supabase/supabase-js";
import type { Database, ExamType } from "@/types/supabase";

export type VocabDifficulty = "easy" | "medium" | "hard" | "all";
export type VocabProgressFilter = "all" | "new" | "learning" | "mastered" | "saved";

export type VocabularyWord = {
  id: string;
  word: string;
  definition: string;
  example_sentence: string | null;
  part_of_speech: string | null;
  difficulty: "easy" | "medium" | "hard" | "expert";
  exam_type: string;
  mastery: number;
  is_saved: boolean;
  times_reviewed: number;
};

type VocabRow = Database["public"]["Tables"] extends { vocabulary_words: infer T }
  ? T extends { Row: infer R }
    ? R
    : never
  : never;

type ProgressRow = {
  word_id: string;
  mastery: number;
  is_saved: boolean;
  times_reviewed: number;
};

function masteryStatus(mastery: number): "new" | "learning" | "mastered" {
  if (mastery >= 80) return "mastered";
  if (mastery > 0) return "learning";
  return "new";
}

export async function fetchVocabularyWords(
  supabase: SupabaseClient<Database>,
  userId: string | undefined,
  options: {
    examType?: ExamType;
    search?: string;
    difficulty?: VocabDifficulty;
    progress?: VocabProgressFilter;
  } = {},
): Promise<VocabularyWord[]> {
  const examType = options.examType ?? "SAT";
  let query = supabase
    .from("vocabulary_words")
    .select("id, word, definition, example_sentence, part_of_speech, difficulty, exam_type")
    .eq("exam_type", examType)
    .order("word", { ascending: true });

  if (options.difficulty && options.difficulty !== "all") {
    query = query.eq("difficulty", options.difficulty);
  }

  const { data: words, error } = await query;
  if (error) throw error;

  const progressMap = new Map<string, ProgressRow>();
  if (userId) {
    const { data: progress } = await supabase
      .from("user_vocabulary_progress")
      .select("word_id, mastery, is_saved, times_reviewed")
      .eq("user_id", userId);

    for (const row of progress ?? []) {
      progressMap.set(row.word_id, row as ProgressRow);
    }
  }

  const q = options.search?.trim().toLowerCase() ?? "";

  const merged: VocabularyWord[] = (words as VocabRow[]).map((w) => {
    const p = progressMap.get(w.id);
    return {
      id: w.id,
      word: w.word,
      definition: w.definition,
      example_sentence: w.example_sentence,
      part_of_speech: w.part_of_speech,
      difficulty: w.difficulty,
      exam_type: w.exam_type,
      mastery: p?.mastery ?? 0,
      is_saved: p?.is_saved ?? false,
      times_reviewed: p?.times_reviewed ?? 0,
    };
  });

  return merged.filter((w) => {
    if (q && !w.word.toLowerCase().includes(q) && !w.definition.toLowerCase().includes(q)) {
      return false;
    }
    const status = masteryStatus(w.mastery);
    switch (options.progress) {
      case "saved":
        return w.is_saved;
      case "new":
        return status === "new";
      case "learning":
        return status === "learning";
      case "mastered":
        return status === "mastered";
      default:
        return true;
    }
  });
}

export async function toggleVocabularySaved(
  supabase: SupabaseClient<Database>,
  userId: string,
  wordId: string,
  nextSaved: boolean,
): Promise<void> {
  const { data: existing } = await supabase
    .from("user_vocabulary_progress")
    .select("id, mastery, times_reviewed")
    .eq("user_id", userId)
    .eq("word_id", wordId)
    .maybeSingle();

  if (existing) {
    const { error } = await supabase
      .from("user_vocabulary_progress")
      .update({
        is_saved: nextSaved,
        updated_at: new Date().toISOString(),
      })
      .eq("id", existing.id);
    if (error) throw error;
    return;
  }

  const { error } = await supabase.from("user_vocabulary_progress").insert({
    user_id: userId,
    word_id: wordId,
    is_saved: nextSaved,
    mastery: 0,
    times_reviewed: 0,
  });
  if (error) throw error;
}

/** Clears all of a user's vocabulary mastery + review history (keeps nothing). */
export async function resetVocabularyProgress(
  supabase: SupabaseClient<Database>,
  userId: string,
): Promise<void> {
  const { error } = await supabase
    .from("user_vocabulary_progress")
    .delete()
    .eq("user_id", userId);
  if (error) throw error;
}

/** Set a user's mastery for a word directly (manual status pill override). */
export async function setVocabularyMastery(
  supabase: SupabaseClient<Database>,
  userId: string,
  wordId: string,
  mastery: number,
): Promise<void> {
  const clamped = Math.max(0, Math.min(100, Math.round(mastery)));
  const { data: existing } = await supabase
    .from("user_vocabulary_progress")
    .select("id")
    .eq("user_id", userId)
    .eq("word_id", wordId)
    .maybeSingle();

  if (existing) {
    const { error } = await supabase
      .from("user_vocabulary_progress")
      .update({ mastery: clamped, updated_at: new Date().toISOString() })
      .eq("id", existing.id);
    if (error) throw error;
    return;
  }

  const { error } = await supabase.from("user_vocabulary_progress").insert({
    user_id: userId,
    word_id: wordId,
    is_saved: false,
    mastery: clamped,
    times_reviewed: 0,
  });
  if (error) throw error;
}

export async function recordVocabularyReview(
  supabase: SupabaseClient<Database>,
  userId: string,
  wordId: string,
  knewIt: boolean,
): Promise<void> {
  const { data: existing } = await supabase
    .from("user_vocabulary_progress")
    .select("id, mastery, times_reviewed, is_saved")
    .eq("user_id", userId)
    .eq("word_id", wordId)
    .maybeSingle();

  const delta = knewIt ? 15 : -10;
  const nextMastery = Math.max(0, Math.min(100, (existing?.mastery ?? 0) + delta));
  const payload = {
    mastery: nextMastery,
    times_reviewed: (existing?.times_reviewed ?? 0) + 1,
    last_reviewed_at: new Date().toISOString(),
    updated_at: new Date().toISOString(),
  };

  if (existing) {
    const { error } = await supabase
      .from("user_vocabulary_progress")
      .update(payload)
      .eq("id", existing.id);
    if (error) throw error;
    return;
  }

  const { error } = await supabase.from("user_vocabulary_progress").insert({
    user_id: userId,
    word_id: wordId,
    is_saved: false,
    ...payload,
  });
  if (error) throw error;
}

export async function fetchVocabularyStats(
  supabase: SupabaseClient<Database>,
  userId: string | undefined,
  examType: ExamType = "SAT",
): Promise<{ total: number; saved: number; mastered: number }> {
  const { count: total } = await supabase
    .from("vocabulary_words")
    .select("id", { count: "exact", head: true })
    .eq("exam_type", examType);

  if (!userId) {
    return { total: total ?? 0, saved: 0, mastered: 0 };
  }

  const { data: progress } = await supabase
    .from("user_vocabulary_progress")
    .select("mastery, is_saved, vocabulary_words!inner(exam_type)")
    .eq("user_id", userId)
    .eq("vocabulary_words.exam_type", examType);

  const rows = progress ?? [];
  return {
    total: total ?? 0,
    saved: rows.filter((r) => r.is_saved).length,
    mastered: rows.filter((r) => (r.mastery ?? 0) >= 80).length,
  };
}
