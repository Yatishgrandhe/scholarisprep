import type { SupabaseClient } from "@supabase/supabase-js";
import type { ExamType } from "@/types/supabase";

export type TutorConversationRow = {
  id: string;
  title: string;
  updated_at: string;
  context_type: string | null;
  context_id: string | null;
  lastPreview: string;
};

export async function fetchTutorConversations(
  supabase: SupabaseClient,
  userId: string,
  examType?: ExamType,
): Promise<TutorConversationRow[]> {
  let query = supabase
    .from("tutor_conversations")
    .select("id, title, updated_at, context_type, context_id")
    .eq("user_id", userId)
    .order("updated_at", { ascending: false });

  if (examType) {
    query = query.eq("exam_type", examType);
  }

  const { data: conversations } = await query;

  if (!conversations?.length) return [];

  const ids = conversations.map((c) => c.id);
  const { data: messages } = await supabase
    .from("tutor_messages")
    .select("conversation_id, content, created_at")
    .in("conversation_id", ids)
    .order("created_at", { ascending: false });

  const previewByConvo = new Map<string, string>();
  for (const msg of messages ?? []) {
    if (!previewByConvo.has(msg.conversation_id)) {
      previewByConvo.set(msg.conversation_id, msg.content);
    }
  }

  return conversations.map((c) => ({
    ...c,
    lastPreview: previewByConvo.get(c.id) ?? "",
  }));
}

export async function createTutorConversation(
  supabase: SupabaseClient,
  userId: string,
  options: {
    title?: string;
    context_type?:
      | "exam_prep"
      | "lesson"
      | "question"
      | "general"
      | "free_study";
    context_id?: string;
    exam_type?: ExamType;
  } = {},
): Promise<string | null> {
  const { data, error } = await supabase
    .from("tutor_conversations")
    .insert({
      user_id: userId,
      title: options.title ?? "New conversation",
      context_type: options.context_type ?? "general",
      context_id: options.context_id ?? null,
      exam_type: options.exam_type ?? "SAT",
    })
    .select("id")
    .single();

  if (error || !data) return null;
  return data.id;
}
