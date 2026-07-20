"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { Check, Sparkle, YoutubeLogo } from "@phosphor-icons/react";
import { toast } from "sonner";
import { Button, buttonVariants } from "@/components/ui/button";
import { aiRequest } from "@/lib/ai/clientKey";
import { cn } from "@/lib/utils";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { extractPlaylistId } from "@/lib/courses/youtube";
import dashboardStyles from "../../../dashboard/dashboard.module.css";
import styles from "../../creator.module.css";

type Source = "youtube" | "manual";
type Level = "easy" | "medium" | "hard";

const LEVEL_LABELS: Record<Level, string> = {
  easy: "Beginner",
  medium: "Intermediate",
  hard: "Advanced",
};

type ProgressStep = { id: string; label: string; done: boolean };

export default function NewCourseWizardPage() {
  const { user } = useAuth();
  const router = useRouter();
  const supabase = createClient();

  const [step, setStep] = useState(1);
  const [source, setSource] = useState<Source>("youtube");
  const [youtubeUrl, setYoutubeUrl] = useState("");
  const [playlistPreview, setPlaylistPreview] = useState<{
    title: string;
    videoCount: number;
  } | null>(null);
  const [validatingPlaylist, setValidatingPlaylist] = useState(false);

  const [courseId, setCourseId] = useState<string | null>(null);
  const [title, setTitle] = useState("");
  const [description, setDescription] = useState("");
  const [examType, setExamType] = useState<
    "SAT" | "ACT" | "JAMB" | "GRE" | "GMAT" | "CUSTOM"
  >("SAT");
  const [subject, setSubject] = useState("");
  const [level, setLevel] = useState<Level>("medium");
  const [isFree, setIsFree] = useState(true);
  const [priceCents, setPriceCents] = useState(0);
  const [thumbnailUrl, setThumbnailUrl] = useState<string | null>(null);
  const [uploadingThumb, setUploadingThumb] = useState(false);
  const [generatingDesc, setGeneratingDesc] = useState(false);

  const [generating, setGenerating] = useState(false);
  const [progressSteps, setProgressSteps] = useState<ProgressStep[]>([]);
  const [generatedLessons, setGeneratedLessons] = useState<
    Array<{ id: string; title: string; order_index: number }>
  >([]);
  const [expandedLesson, setExpandedLesson] = useState<string | null>(null);
  const [saving, setSaving] = useState(false);

  const validatePlaylist = async () => {
    if (!youtubeUrl.trim() || source !== "youtube") return;
    if (!extractPlaylistId(youtubeUrl)) {
      toast.error("Enter a valid YouTube playlist URL");
      setPlaylistPreview(null);
      return;
    }

    setValidatingPlaylist(true);
    try {
      const res = await fetch("/api/youtube/playlist", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ url: youtubeUrl }),
      });
      const data = (await res.json()) as {
        title?: string;
        videoCount?: number;
        error?: string;
      };
      if (!res.ok) {
        toast.error(data.error ?? "Could not validate playlist");
        setPlaylistPreview(null);
        return;
      }
      setPlaylistPreview({
        title: data.title ?? "Playlist",
        videoCount: data.videoCount ?? 0,
      });
      if (!title) setTitle(data.title ?? "");
    } catch {
      toast.error("Failed to validate playlist");
    } finally {
      setValidatingPlaylist(false);
    }
  };

  const createDraftCourse = async (): Promise<string | null> => {
    if (!user) return null;
    if (courseId) return courseId;

    const { data, error } = await supabase
      .from("courses")
      .insert({
        creator_id: user.id,
        title: title.trim(),
        description: description.trim(),
        exam_type: examType,
        subject: subject.trim(),
        level,
        is_free: isFree,
        price_cents: isFree ? 0 : priceCents,
        thumbnail_url: thumbnailUrl,
        source: source === "youtube" ? "youtube" : "manual",
        youtube_playlist_url: source === "youtube" ? youtubeUrl : null,
        status: "draft",
      })
      .select("id")
      .single();

    if (error || !data) {
      toast.error(error?.message ?? "Failed to create course");
      return null;
    }

    setCourseId(data.id);
    return data.id;
  };

  const handleThumbnailUpload = async (file: File) => {
    if (!user) return;
    setUploadingThumb(true);

    const id = courseId ?? (await createDraftCourse());
    if (!id) {
      setUploadingThumb(false);
      return;
    }

    const ext = file.name.split(".").pop() ?? "jpg";
    const path = `${user.id}/${id}.${ext}`;

    const { error: uploadError } = await supabase.storage
      .from("course-thumbnails")
      .upload(path, file, { upsert: true });

    if (uploadError) {
      toast.error(uploadError.message);
      setUploadingThumb(false);
      return;
    }

    const { data: publicUrl } = supabase.storage
      .from("course-thumbnails")
      .getPublicUrl(path);

    setThumbnailUrl(publicUrl.publicUrl);
    await supabase
      .from("courses")
      .update({ thumbnail_url: publicUrl.publicUrl })
      .eq("id", id);

    setUploadingThumb(false);
    toast.success("Thumbnail uploaded");
  };

  const handleGenerateDescription = async () => {
    if (!title.trim()) {
      toast.error("Enter a course title first");
      return;
    }
    setGeneratingDesc(true);
    try {
      const res = await aiRequest("/api/ai/generate-course-description", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          title,
          exam_type: examType,
          subject: subject || "General",
        }),
      });
      const data = (await res.json()) as { description?: string; error?: string };
      if (!res.ok) {
        toast.error(data.error ?? "Generation failed");
        return;
      }
      setDescription(data.description ?? "");
    } catch {
      toast.error("Failed to generate description");
    } finally {
      setGeneratingDesc(false);
    }
  };

  const upsertProgressStep = (stepId: string, label: string, done: boolean) => {
    setProgressSteps((prev) => {
      const existing = prev.find((s) => s.id === stepId);
      if (existing) {
        return prev.map((s) =>
          s.id === stepId ? { ...s, label, done: done || s.done } : s,
        );
      }
      return [...prev, { id: stepId, label, done }];
    });
  };

  const runGeneration = async (id: string) => {
    setProgressSteps([]);
    setGenerating(true);

    try {
      const res = await aiRequest("/api/ai/generate-course", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Accept: "text/event-stream",
        },
        body: JSON.stringify({
          course_id: id,
          youtube_playlist_url: youtubeUrl,
          stream: true,
        }),
      });

      if (!res.ok) {
        const data = (await res.json().catch(() => ({}))) as { error?: string };
        toast.error(data.error ?? "Generation failed");
        return;
      }

      if (!res.body) {
        toast.error("Generation failed");
        return;
      }

      const reader = res.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });

        const parts = buffer.split("\n\n");
        buffer = parts.pop() ?? "";

        for (const part of parts) {
          const line = part
            .split("\n")
            .find((l) => l.startsWith("data: "));
          if (!line) continue;

          const event = JSON.parse(line.slice(6)) as {
            type: string;
            stepId?: string;
            label?: string;
            message?: string;
            lessons?: Array<{ id: string; title: string; order_index: number }>;
            lessonCount?: number;
          };

          if (event.type === "step_start" && event.stepId && event.label) {
            upsertProgressStep(event.stepId, event.label, false);
          } else if (event.type === "step_done" && event.stepId) {
            setProgressSteps((prev) =>
              prev.map((s) =>
                s.id === event.stepId ? { ...s, done: true } : s,
              ),
            );
          } else if (event.type === "complete") {
            setProgressSteps((prev) => prev.map((s) => ({ ...s, done: true })));
            setGeneratedLessons(event.lessons ?? []);
            toast.success(`Generated ${event.lessonCount ?? 0} lessons`);
          } else if (event.type === "error") {
            toast.error(event.message ?? "Generation failed");
          }
        }
      }
    } catch {
      toast.error("Course generation failed");
    } finally {
      setGenerating(false);
    }
  };

  const goNext = async () => {
    if (step === 1) {
      if (source === "youtube" && !playlistPreview) {
        toast.error("Validate your YouTube playlist URL first");
        return;
      }
      setStep(2);
      return;
    }

    if (step === 2) {
      if (!title.trim() || !description.trim() || !subject.trim()) {
        toast.error("Fill in title, description, and subject");
        return;
      }
      const id = await createDraftCourse();
      if (!id) return;
      setStep(3);
      if (source === "youtube" && youtubeUrl) {
        void runGeneration(id);
      }
    }
  };

  const publishDraft = async () => {
    if (!courseId) return;
    setSaving(true);
    const { error } = await supabase
      .from("courses")
      .update({
        title: title.trim(),
        description: description.trim(),
        status: "draft",
        updated_at: new Date().toISOString(),
      })
      .eq("id", courseId);

    setSaving(false);
    if (error) {
      toast.error(error.message);
      return;
    }
    router.push(`/creator/courses/${courseId}/edit`);
  };

  return (
    <>
      <div
        className={cn(
          dashboardStyles.pageHeaderRow,
          dashboardStyles.pageHeaderRowWide,
        )}
      >
        <header className={dashboardStyles.pageHeader}>
          <h1 className={dashboardStyles.pageTitle}>Create course</h1>
          <p className={dashboardStyles.pageSubtitle}>Step {step} of 3</p>
        </header>
        <div className="flex shrink-0 items-center gap-2">
          <Link
            href="/creator"
            className={cn(buttonVariants({ variant: "outline" }))}
          >
            Back to studio
          </Link>
          <ThemeToggle className="hidden md:flex" />
        </div>
      </div>

      <div className={styles.wizard}>
        <div className={styles.stepIndicator}>
          {[1, 2, 3].map((n) => (
            <div
              key={n}
              className={`${styles.stepDot} ${step >= n ? styles.stepDotActive : ""}`}
            />
          ))}
        </div>

        {step === 1 ? (
          <>
            <div className={styles.sourceCards}>
              <button
                type="button"
                className={`${styles.sourceCard} ${source === "youtube" ? styles.sourceCardSelected : ""}`}
                onClick={() => setSource("youtube")}
              >
                <YoutubeLogo size={32} weight="fill" />
                <p className={styles.sourceCardTitle}>YouTube Playlist</p>
                <p className={styles.sourceCardDesc}>
                  Import videos from a playlist and generate lessons with AI.
                </p>
              </button>
              <button
                type="button"
                className={`${styles.sourceCard} ${source === "manual" ? styles.sourceCardSelected : ""}`}
                onClick={() => setSource("manual")}
              >
                <p className={styles.sourceCardTitle}>Manual Creation</p>
                <p className={styles.sourceCardDesc}>
                  Build lessons yourself in the course editor.
                </p>
              </button>
            </div>

            {source === "youtube" ? (
              <div className={styles.formStack}>
                <div>
                  <Label htmlFor="playlist-url">YouTube playlist URL</Label>
                  <Input
                    id="playlist-url"
                    placeholder="https://www.youtube.com/playlist?list=..."
                    value={youtubeUrl}
                    onChange={(e) => setYoutubeUrl(e.target.value)}
                    onBlur={() => void validatePlaylist()}
                  />
                  {validatingPlaylist ? (
                    <p className="text-sm text-muted-foreground mt-1">
                      Validating…
                    </p>
                  ) : playlistPreview ? (
                    <p className="text-sm text-muted-foreground mt-1">
                      {playlistPreview.title} · {playlistPreview.videoCount} videos
                    </p>
                  ) : null}
                </div>
              </div>
            ) : (
              <div className={styles.formStack}>
                <p className="text-sm text-muted-foreground">
                  You will add lessons manually after creating the course shell.
                </p>
              </div>
            )}
          </>
        ) : null}

        {step === 2 ? (
          <div className={styles.formStack}>
            <div>
              <Label htmlFor="course-title">Course title</Label>
              <Input
                id="course-title"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
              />
            </div>
            <div>
              <div className="flex items-center justify-between gap-2">
                <Label htmlFor="course-desc">Description</Label>
                <Button
                  type="button"
                  variant="outline"
                  size="sm"
                  onClick={() => void handleGenerateDescription()}
                  disabled={generatingDesc}
                >
                  <Sparkle size={16} />
                  {generatingDesc ? "Generating…" : "Generate with AI"}
                </Button>
              </div>
              <textarea
                id="course-desc"
                className="flex min-h-[120px] w-full rounded-md border border-input bg-transparent px-3 py-2 text-sm"
                value={description}
                onChange={(e) => setDescription(e.target.value)}
              />
            </div>
            <div>
              <Label>Exam type</Label>
              <Select
                value={examType}
                onValueChange={(v) => v && setExamType(v)}
              >
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  {["SAT", "ACT", "JAMB", "GRE", "GMAT", "CUSTOM"].map((e) => (
                    <SelectItem key={e} value={e}>
                      {e}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div>
              <Label htmlFor="subject">Subject</Label>
              <Input
                id="subject"
                value={subject}
                onChange={(e) => setSubject(e.target.value)}
              />
            </div>
            <div>
              <Label>Level</Label>
              <Select value={level} onValueChange={(v) => setLevel(v as Level)}>
                <SelectTrigger>
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  {(Object.keys(LEVEL_LABELS) as Level[]).map((l) => (
                    <SelectItem key={l} value={l}>
                      {LEVEL_LABELS[l]}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div>
              <Label>Pricing</Label>
              <div className="flex gap-2 mt-1">
                <Button
                  type="button"
                  size="sm"
                  variant={isFree ? "default" : "outline"}
                  onClick={() => setIsFree(true)}
                >
                  Free
                </Button>
                <Button
                  type="button"
                  size="sm"
                  variant={!isFree ? "default" : "outline"}
                  onClick={() => setIsFree(false)}
                >
                  Paid
                </Button>
              </div>
              {!isFree ? (
                <Input
                  type="number"
                  className="mt-2"
                  placeholder="Price in cents"
                  value={priceCents}
                  onChange={(e) => setPriceCents(Number(e.target.value))}
                />
              ) : null}
            </div>
            <div>
              <Label htmlFor="thumbnail">Thumbnail</Label>
              <Input
                id="thumbnail"
                type="file"
                accept="image/*"
                disabled={uploadingThumb}
                onChange={(e) => {
                  const file = e.target.files?.[0];
                  if (file) void handleThumbnailUpload(file);
                }}
              />
              {thumbnailUrl ? (
                <p className="text-xs text-muted-foreground mt-1">Uploaded</p>
              ) : null}
            </div>
          </div>
        ) : null}

        {step === 3 ? (
          <>
            {source === "youtube" ? (
              <>
                {!generating && generatedLessons.length === 0 ? (
                  <Button
                    type="button"
                    size="lg"
                    onClick={() => courseId && void runGeneration(courseId)}
                    disabled={!courseId}
                  >
                    Generate Course with AI
                  </Button>
                ) : null}
                {progressSteps.length > 0 ? (
                  <ul className={styles.progressLog}>
                    {progressSteps.map((s) => (
                      <li
                        key={s.id}
                        className={`${styles.progressItem} ${s.done ? styles.progressItemDone : ""}`}
                      >
                        {s.done ? (
                          <Check size={18} weight="bold" />
                        ) : (
                          <span className="inline-block w-[18px]" />
                        )}
                        {s.label}
                      </li>
                    ))}
                  </ul>
                ) : null}
              </>
            ) : (
              <p className="text-sm text-muted-foreground mb-4">
                Your course shell is ready. Add lessons in the editor after publishing.
              </p>
            )}

            {generatedLessons.length > 0 ? (
              <div className={styles.lessonPreviewList}>
                {generatedLessons.map((l) => (
                  <div key={l.id} className={styles.lessonPreviewItem}>
                    <button
                      type="button"
                      className={styles.lessonPreviewHeader}
                      onClick={() =>
                        setExpandedLesson(expandedLesson === l.id ? null : l.id)
                      }
                    >
                      <span>
                        {l.order_index + 1}. {l.title}
                      </span>
                      <span>{expandedLesson === l.id ? "−" : "+"}</span>
                    </button>
                    {expandedLesson === l.id ? (
                      <div className={styles.lessonPreviewBody}>
                        Lesson generated with practice questions.
                      </div>
                    ) : null}
                  </div>
                ))}
              </div>
            ) : null}

            <Button
              type="button"
              size="lg"
              onClick={() => void publishDraft()}
              disabled={saving || !courseId}
            >
              {saving ? "Saving…" : "Publish Draft"}
            </Button>
          </>
        ) : null}

        {step < 3 ? (
          <div className={styles.wizardNav}>
            <Button
              type="button"
              variant="outline"
              disabled={step === 1}
              onClick={() => setStep((s) => Math.max(1, s - 1))}
            >
              Back
            </Button>
            <Button type="button" onClick={() => void goNext()}>
              Next
            </Button>
          </div>
        ) : null}
      </div>
    </>
  );
}
