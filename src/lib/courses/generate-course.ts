import type { SupabaseClient } from "@supabase/supabase-js";
import { fetchYouTubePlaylist } from "@/lib/courses/youtube";
import { generateLessonContent } from "@/lib/courses/ai-lesson";

export type GenerateCourseProgressEvent =
  | { type: "step_start"; stepId: string; label: string }
  | { type: "step_done"; stepId: string }
  | {
      type: "complete";
      lessonCount: number;
      lessons: Array<{ id: string; title: string; order_index: number }>;
    }
  | { type: "error"; message: string };

import type { AiAuth } from "@/lib/ai/mistral";

export type GenerateCourseInput = {
  courseId: string;
  youtubePlaylistUrl: string;
  youtubeApiKey: string;
  /** Personal Mistral key or platform credentials (with FreeModel serverURL). */
  apiKey: AiAuth;
  examType: string;
  subject: string;
  userId: string;
};

export async function generateCourseFromPlaylist(
  supabase: SupabaseClient,
  input: GenerateCourseInput,
  emit: (event: GenerateCourseProgressEvent) => void,
): Promise<
  | { ok: true; lessons: Array<{ id: string; title: string; order_index: number }> }
  | { ok: false; message: string }
> {
  const {
    courseId,
    youtubePlaylistUrl,
    youtubeApiKey,
    apiKey,
    examType,
    subject,
    userId,
  } = input;

  emit({
    type: "step_start",
    stepId: "fetch",
    label: "Fetching playlist info",
  });

  let playlist;
  try {
    playlist = await fetchYouTubePlaylist(youtubePlaylistUrl, youtubeApiKey);
  } catch (err) {
    const message = err instanceof Error ? err.message : "Playlist fetch failed";
    emit({ type: "error", message });
    return { ok: false, message };
  }

  emit({ type: "step_done", stepId: "fetch" });

  await supabase
    .from("courses")
    .update({
      youtube_playlist_url: youtubePlaylistUrl,
      source: "youtube",
      updated_at: new Date().toISOString(),
    })
    .eq("id", courseId);

  const lessonsCreated: Array<{ id: string; title: string; order_index: number }> =
    [];
  const count = playlist.videos.length;

  for (let i = 0; i < count; i += 1) {
    const video = playlist.videos[i];
    const videoStepId = `video-${i}`;
    const questionsStepId = `questions-${i}`;

    emit({
      type: "step_start",
      stepId: videoStepId,
      label: `Processing video ${i + 1} of ${count}`,
    });

    const content = await generateLessonContent(
      apiKey,
      video.title,
      video.description,
      examType,
      subject,
    );

    const { data: lesson, error: lessonError } = await supabase
      .from("lessons")
      .insert({
        course_id: courseId,
        title: video.title,
        youtube_video_id: video.videoId,
        summary: content.summary,
        order_index: i,
        description: video.description.slice(0, 500),
      })
      .select("id, title, order_index")
      .single();

    if (lessonError || !lesson) {
      const message = lessonError?.message ?? `Failed on video ${i + 1}`;
      emit({ type: "error", message });
      return { ok: false, message };
    }

    emit({ type: "step_done", stepId: videoStepId });
    lessonsCreated.push(lesson);

    emit({
      type: "step_start",
      stepId: questionsStepId,
      label: `Generating questions for lesson ${i + 1}`,
    });

    for (const q of content.questions) {
      const correct = q.options.find((o) => o.is_correct);
      await supabase.from("questions").insert({
        course_id: courseId,
        lesson_id: lesson.id,
        created_by: userId,
        exam_type: examType,
        question_text: q.question_text,
        stimulus_text: q.stimulus_text,
        options: q.options.map((o) => ({
          id: o.id,
          text: o.text,
          is_correct: o.is_correct,
          explanation: q.explanation,
        })),
        correct_answer: correct?.id ?? "A",
        explanation: q.explanation,
        hint: q.hint,
        topic: q.topic,
        section: q.section,
        difficulty: q.difficulty,
        question_type: "multiple_choice",
        ai_generated: true,
        is_platform_question: false,
      });
    }

    emit({ type: "step_done", stepId: questionsStepId });
  }

  await supabase
    .from("courses")
    .update({
      total_lessons: lessonsCreated.length,
      updated_at: new Date().toISOString(),
    })
    .eq("id", courseId);

  emit({
    type: "complete",
    lessonCount: lessonsCreated.length,
    lessons: lessonsCreated,
  });

  return { ok: true, lessons: lessonsCreated };
}
