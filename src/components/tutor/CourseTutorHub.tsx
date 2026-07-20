"use client";

import {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
  useSyncExternalStore,
  type KeyboardEvent as ReactKeyboardEvent,
} from "react";
import { useRouter } from "next/navigation";
import { useMountLoad } from "@/hooks/useMountLoad";
import {
  ArrowUp,
  CaretDown,
  CaretLeft,
  CaretRight,
  Check,
  MagnifyingGlass,
  Plus,
  SidebarSimple,
  Sparkle,
  Trash,
  X,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { useAuth } from "@/hooks/useAuth";
import { useTutorStream } from "@/hooks/useTutorStream";
import { useSubjectStore } from "@/stores/subjectStore";
import {
  filterTutorHubCourses,
  getTutorHubCourse,
  groupTutorHubCourses,
  listTutorHubCourses,
  type TutorHubCourse,
  type TutorHubFamily,
} from "@/lib/apIbCatalog";
import {
  courseTutorPromptFull,
  resolveCourseTutorContext,
} from "@/lib/tutor/courseSuggestions";
import {
  pushRecentCourseId,
  readRecentCourseIds,
} from "@/lib/tutor/recentCourses";
import { courseTutorPath } from "@/lib/tutor/routes";
import { TutorMarkdown } from "@/components/tutor/TutorMarkdown";
import { SparkSuggestionCard } from "@/components/tutor/SparkSuggestionCard";
import { toast } from "sonner";
import type { ExamType } from "@/types/supabase";
import { matchSparkKeyword, hasLearnIntent, type SparkSuggestion } from "@/lib/tutor/sparkKeywords";
import { logSparkInteraction } from "@/lib/tutor/logSparkInteraction";
import styles from "./course-tutor-hub.module.css";

type Message = { role: "user" | "assistant"; content: string };

type Conversation = {
  id: string;
  title: string;
  updated_at: string;
};

type FamilyFilter = "all" | TutorHubFamily;

const FAMILY_FILTERS: { id: FamilyFilter; label: string }[] = [
  { id: "all", label: "All" },
  { id: "SAT", label: "SAT" },
  { id: "ACT", label: "ACT" },
  { id: "AP", label: "AP" },
  { id: "IB", label: "IB" },
];

/** Families larger than this collapse behind an accordion when browsing "All". */
const FAMILY_ACCORDION_THRESHOLD = 8;

const MOBILE_QUERY = "(max-width: 960px)";

function courseMatchesQuery(c: TutorHubCourse, q: string): boolean {
  if (!q) return true;
  const needle = q.toLowerCase();
  return (
    c.display_name.toLowerCase().includes(needle) ||
    c.short_code.toLowerCase().includes(needle) ||
    c.exam_type.toLowerCase().includes(needle) ||
    c.category.toLowerCase().includes(needle)
  );
}

function groupCoursesByCategory(
  courses: TutorHubCourse[],
): { category: string; courses: TutorHubCourse[] }[] {
  const map = new Map<string, TutorHubCourse[]>();
  for (const c of courses) {
    const list = map.get(c.category) ?? [];
    list.push(c);
    map.set(c.category, list);
  }
  return [...map.entries()].map(([category, rows]) => ({
    category,
    courses: rows,
  }));
}

function subscribeMobile(onChange: () => void): () => void {
  const mql = window.matchMedia(MOBILE_QUERY);
  mql.addEventListener("change", onChange);
  return () => mql.removeEventListener("change", onChange);
}

function getMobileSnapshot(): boolean {
  return window.matchMedia(MOBILE_QUERY).matches;
}

function getMobileServerSnapshot(): boolean {
  return false;
}

function useIsMobileCoursePicker(): boolean {
  return useSyncExternalStore(
    subscribeMobile,
    getMobileSnapshot,
    getMobileServerSnapshot,
  );
}

export type CourseTutorHubProps = {
  /** When omitted, uses the active subject from the global switcher. */
  initialCourseId?: string;
};

export function CourseTutorHub({ initialCourseId }: CourseTutorHubProps) {
  const router = useRouter();
  const isMobilePicker = useIsMobileCoursePicker();
  const { user, loading: authLoading } = useAuth();
  const activeSubject = useSubjectStore((s) => s.activeSubject);
  const allSubjects = useSubjectStore((s) => s.allSubjects);
  const subjectConfigs = useSubjectStore((s) => s.subjectConfigs);
  const setActiveSubject = useSubjectStore((s) => s.setActiveSubject);

  // URL courseId (after ActiveExamScopeEffect redirect) wins; bare hub uses sidebar.
  // Do NOT write store←URL here — that fights sidebar→URL sync while path is stale.
  const resolvedCourseId = (initialCourseId ??
    activeSubject ??
    "SAT") as ExamType;

  const courseContext = useMemo(
    () => resolveCourseTutorContext(resolvedCourseId),
    [resolvedCourseId],
  );
  const { course, welcome, prompts } = courseContext;

  const allCourses = useMemo(() => listTutorHubCourses(), []);
  const courseById = useMemo(() => {
    const map = new Map<string, TutorHubCourse>();
    for (const c of allCourses) map.set(c.exam_type, c);
    return map;
  }, [allCourses]);

  const supabase = createClient();
  const bottomRef = useRef<HTMLDivElement>(null);
  const skipLoadRef = useRef<string | null>(null);
  const selectedCourseRef = useRef<HTMLButtonElement | null>(null);
  const searchInputRef = useRef<HTMLInputElement | null>(null);

  const [courseQuery, setCourseQuery] = useState("");
  const [familyFilter, setFamilyFilter] = useState<FamilyFilter>("all");
  const [recentIds, setRecentIds] = useState<string[]>([]);
  const [mobilePickerOpen, setMobilePickerOpen] = useState(false);
  const [courseRailCollapsed, setCourseRailCollapsed] = useState(false);
  /** User overrides for family accordion; reset when filter/query changes. */
  const [familyOpen, setFamilyOpen] = useState<
    Partial<Record<TutorHubFamily, boolean>>
  >({});
  /** User overrides for category accordion within AP/IB. */
  const [categoryOpen, setCategoryOpen] = useState<Record<string, boolean>>({});
  /** Keyboard typeahead highlight index into navigable course ids. */
  const [highlightIndex, setHighlightIndex] = useState(-1);

  const [conversations, setConversations] = useState<Conversation[]>([]);
  const [activeId, setActiveId] = useState<string | null>(null);
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState("");
  const [chatsLoading, setChatsLoading] = useState(true);
  const [messagesLoading, setMessagesLoading] = useState(false);
  const [showTyping, setShowTyping] = useState(false);
  const [sparkSuggestion, setSparkSuggestion] = useState<SparkSuggestion | null>(null);

  const { isStreaming, streamedText, statusNote, startStream, setStreamedText } =
    useTutorStream();

  useEffect(() => {
    setRecentIds(readRecentCourseIds());
  }, []);

  useEffect(() => {
    if (!isMobilePicker) setMobilePickerOpen(false);
  }, [isMobilePicker]);

  useEffect(() => {
    if (!mobilePickerOpen) return;
    const prev = document.body.style.overflow;
    document.body.style.overflow = "hidden";
    const onKey = (e: globalThis.KeyboardEvent) => {
      if (e.key === "Escape") setMobilePickerOpen(false);
    };
    window.addEventListener("keydown", onKey);
    const t = window.setTimeout(() => searchInputRef.current?.focus(), 50);
    return () => {
      document.body.style.overflow = prev;
      window.removeEventListener("keydown", onKey);
      window.clearTimeout(t);
    };
  }, [mobilePickerOpen]);

  useEffect(() => {
    setFamilyOpen({});
    setCategoryOpen({});
    setHighlightIndex(-1);
  }, [familyFilter, courseQuery]);

  useEffect(() => {
    selectedCourseRef.current?.scrollIntoView({
      block: "nearest",
      behavior: "smooth",
    });
  }, [resolvedCourseId, familyFilter, courseQuery]);

  const familyCounts = useMemo(() => {
    const counts: Record<FamilyFilter, number> = {
      all: allCourses.length,
      SAT: 0,
      ACT: 0,
      AP: 0,
      IB: 0,
    };
    for (const c of allCourses) {
      counts[c.family] += 1;
    }
    return counts;
  }, [allCourses]);

  const yourCourses = useMemo(() => {
    const sorted = [...allSubjects].sort((a, b) => {
      if (a.is_primary !== b.is_primary) return a.is_primary ? -1 : 1;
      return a.priority - b.priority;
    });
    const fromStore: TutorHubCourse[] = [];
    for (const s of sorted) {
      const fromCatalog =
        getTutorHubCourse(s.exam_type) ?? courseById.get(s.exam_type);
      if (fromCatalog) {
        fromStore.push(fromCatalog);
        continue;
      }
      const cfg = subjectConfigs[s.exam_type];
      fromStore.push({
        exam_type: s.exam_type,
        display_name: cfg?.display_name ?? s.exam_type.replace(/_/g, " "),
        family:
          s.exam_type === "ACT"
            ? "ACT"
            : s.exam_type === "SAT"
              ? "SAT"
              : s.exam_type.startsWith("IB_")
                ? "IB"
                : "AP",
        category: "Your courses",
        short_code: cfg?.short_code ?? s.exam_type,
      });
    }
    return fromStore;
  }, [allSubjects, courseById, subjectConfigs]);

  const recentCourses = useMemo(() => {
    const yourIds = new Set(yourCourses.map((c) => c.exam_type));
    return recentIds
      .filter((id) => id !== resolvedCourseId && !yourIds.has(id))
      .map((id) => courseById.get(id))
      .filter((c): c is TutorHubCourse => Boolean(c))
      .slice(0, 5);
  }, [recentIds, courseById, yourCourses, resolvedCourseId]);

  const queryTrimmed = courseQuery.trim();
  const isSearching = queryTrimmed.length > 0;

  const filteredCatalog = useMemo(() => {
    let list = filterTutorHubCourses(courseQuery, allCourses);
    if (familyFilter !== "all") {
      list = list.filter((c) => c.family === familyFilter);
    }
    const pinned = new Set([
      course.exam_type,
      ...yourCourses.map((c) => c.exam_type),
      ...recentCourses.map((c) => c.exam_type),
    ]);
    // When searching, keep matches even if pinned elsewhere; otherwise hide duplicates.
    if (!isSearching) {
      list = list.filter((c) => !pinned.has(c.exam_type));
    }
    return groupTutorHubCourses(list);
  }, [
    courseQuery,
    allCourses,
    familyFilter,
    yourCourses,
    recentCourses,
    course.exam_type,
    isSearching,
  ]);

  const visibleActiveCourse = useMemo(() => {
    if (familyFilter !== "all" && course.family !== familyFilter) return null;
    if (!courseMatchesQuery(course, queryTrimmed)) return null;
    return course;
  }, [course, familyFilter, queryTrimmed]);

  const visibleYourCourses = useMemo(() => {
    let list = yourCourses.filter((c) => c.exam_type !== course.exam_type);
    if (familyFilter !== "all") {
      list = list.filter((c) => c.family === familyFilter);
    }
    if (!isSearching) return list;
    return list.filter((c) => courseMatchesQuery(c, queryTrimmed));
  }, [
    yourCourses,
    course.exam_type,
    familyFilter,
    isSearching,
    queryTrimmed,
  ]);

  const visibleRecentCourses = useMemo(() => {
    if (isSearching) return [];
    if (familyFilter === "all") return recentCourses;
    return recentCourses.filter((c) => c.family === familyFilter);
  }, [recentCourses, isSearching, familyFilter]);

  const isFamilyExpanded = useCallback(
    (
      family: TutorHubFamily,
      courseCount: number,
      containsActive: boolean,
    ): boolean => {
      const override = familyOpen[family];
      if (override !== undefined) return override;
      if (isSearching) return true;
      if (familyFilter === family) return true;
      if (containsActive) return true;
      if (courseCount <= FAMILY_ACCORDION_THRESHOLD) return true;
      return false;
    },
    [familyOpen, isSearching, familyFilter],
  );

  const isCategoryExpanded = useCallback(
    (key: string, containsActive: boolean): boolean => {
      const override = categoryOpen[key];
      if (override !== undefined) return override;
      if (isSearching) return true;
      if (containsActive) return true;
      return false;
    },
    [categoryOpen, isSearching],
  );

  const toggleFamily = (family: TutorHubFamily, next: boolean) => {
    setFamilyOpen((prev) => ({ ...prev, [family]: next }));
  };

  const toggleCategory = (key: string, next: boolean) => {
    setCategoryOpen((prev) => ({ ...prev, [key]: next }));
  };

  /** Flat list of courses currently visible (keyboard typeahead). */
  const navigableCourses = useMemo(() => {
    const rows: TutorHubCourse[] = [];
    if (visibleActiveCourse) rows.push(visibleActiveCourse);
    rows.push(...visibleYourCourses);
    rows.push(...visibleRecentCourses);

    for (const group of filteredCatalog) {
      const containsActive = group.courses.some(
        (c) => c.exam_type === resolvedCourseId,
      );
      if (
        !isFamilyExpanded(group.family, group.courses.length, containsActive)
      ) {
        continue;
      }
      const useCategories =
        group.courses.length > FAMILY_ACCORDION_THRESHOLD &&
        (group.family === "AP" || group.family === "IB");
      if (!useCategories) {
        rows.push(...group.courses);
        continue;
      }
      for (const cat of groupCoursesByCategory(group.courses)) {
        const key = `${group.family}:${cat.category}`;
        const catActive = cat.courses.some(
          (c) => c.exam_type === resolvedCourseId,
        );
        if (!isCategoryExpanded(key, catActive)) continue;
        rows.push(...cat.courses);
      }
    }
    return rows;
  }, [
    visibleActiveCourse,
    visibleYourCourses,
    visibleRecentCourses,
    filteredCatalog,
    resolvedCourseId,
    isFamilyExpanded,
    isCategoryExpanded,
  ]);

  const hasAnyResults =
    Boolean(visibleActiveCourse) ||
    visibleYourCourses.length > 0 ||
    visibleRecentCourses.length > 0 ||
    filteredCatalog.some((g) => g.courses.length > 0);

  const catalogMatchCount = filteredCatalog.reduce(
    (n, g) => n + g.courses.length,
    0,
  );

  const loadConversations = useCallback(async () => {
    if (!user) return;
    setChatsLoading(true);
    try {
      await ensureFreshSession(supabase);
      const { data } = await supabase
        .from("tutor_conversations")
        .select("id, title, updated_at")
        .eq("user_id", user.id)
        .eq("exam_type", resolvedCourseId)
        .or("context_type.is.null,context_type.eq.general")
        .order("updated_at", { ascending: false })
        .limit(25);
      setConversations((data as Conversation[]) ?? []);
    } finally {
      setChatsLoading(false);
    }
  }, [user, supabase, resolvedCourseId]);

  const loadMessages = useCallback(
    async (conversationId: string) => {
      setMessagesLoading(true);
      try {
        await ensureFreshSession(supabase);
        const { data } = await supabase
          .from("tutor_messages")
          .select("role, content")
          .eq("conversation_id", conversationId)
          .order("created_at", { ascending: true });
        setMessages((data ?? []) as Message[]);
      } finally {
        setMessagesLoading(false);
      }
    },
    [supabase],
  );

  useMountLoad(async () => {
    setActiveId(null);
    setMessages([]);
    await loadConversations();
  }, [resolvedCourseId, loadConversations]);

  useMountLoad(
    () => {
      if (!activeId) return;
      if (skipLoadRef.current === activeId) {
        skipLoadRef.current = null;
        return;
      }
      void loadMessages(activeId);
    },
    [activeId, loadMessages],
  );

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, streamedText, isStreaming, statusNote]);

  useEffect(() => {
    if (!authLoading && !user) setChatsLoading(false);
  }, [authLoading, user]);

  const selectCourse = (nextCourse: TutorHubCourse) => {
    setRecentIds(pushRecentCourseId(nextCourse.exam_type));
    setMobilePickerOpen(false);
    setCourseQuery("");
    if (nextCourse.exam_type === resolvedCourseId) return;
    setActiveSubject(nextCourse.exam_type as ExamType);
    setActiveId(null);
    setMessages([]);
    setInput("");
    router.push(courseTutorPath(nextCourse.exam_type));
  };

  const startConversation = async () => {
    if (!user) return;
    await ensureFreshSession(supabase);
    const { data, error } = await supabase
      .from("tutor_conversations")
      .insert({
        user_id: user.id,
        title: "New chat",
        exam_type: resolvedCourseId,
        context_type: "general",
      })
      .select("id, title, updated_at")
      .single();

    if (error || !data) return;
    skipLoadRef.current = data.id;
    setConversations((prev) => [data as Conversation, ...prev]);
    setActiveId(data.id);
    setMessages([]);
  };

  const deleteConversation = async (id: string) => {
    if (!user) return;
    if (
      typeof window !== "undefined" &&
      !window.confirm("Delete this chat? This can't be undone.")
    ) {
      return;
    }
    setConversations((prev) => prev.filter((c) => c.id !== id));
    if (activeId === id) {
      setActiveId(null);
      setMessages([]);
    }
    await ensureFreshSession(supabase);
    const { error } = await supabase
      .from("tutor_conversations")
      .delete()
      .eq("id", id)
      .eq("user_id", user.id);
    await supabase.from("tutor_messages").delete().eq("conversation_id", id);
    if (error) {
      toast.error("Could not delete that chat.");
      void loadConversations();
    }
  };

  const ensureConversation = async (): Promise<string | null> => {
    if (activeId) return activeId;
    if (!user) return null;
    await ensureFreshSession(supabase);
    const { data } = await supabase
      .from("tutor_conversations")
      .insert({
        user_id: user.id,
        title: "New chat",
        exam_type: resolvedCourseId,
        context_type: "general",
      })
      .select("id")
      .single();
    if (!data) return null;
    skipLoadRef.current = data.id;
    setActiveId(data.id);
    await loadConversations();
    return data.id;
  };

  const sendMessage = async () => {
    const text = input.trim();
    if (!text || isStreaming || !user) return;

    setInput("");
    setMessages((m) => [...m, { role: "user", content: text }]);
    setStreamedText("");
    setShowTyping(true);

    const sparkMatch = matchSparkKeyword(text);
    if (sparkMatch) {
      setSparkSuggestion(sparkMatch);
      logSparkInteraction({
        sparkType: sparkMatch.type,
        action: "suggested",
        examType: resolvedCourseId,
        conversationId: activeId ?? undefined,
        triggeredByMessage: text,
      });
    } else {
      setSparkSuggestion(null);
    }

    await ensureFreshSession(supabase);
    const conversationId = await ensureConversation();
    if (!conversationId) {
      setShowTyping(false);
      return;
    }

    if (text.length < 60) {
      await supabase
        .from("tutor_conversations")
        .update({
          title: text.slice(0, 48),
          updated_at: new Date().toISOString(),
        })
        .eq("id", conversationId);
      void loadConversations();
    }

    try {
      const result = await startStream({
        conversationId,
        message: text,
        context: { exam_type: resolvedCourseId },
      });

      if (result.text) {
        setMessages((m) => [...m, { role: "assistant", content: result.text }]);
      }
      setStreamedText("");
      setShowTyping(false);
      void loadConversations();
    } catch {
      setMessages((m) => [
        ...m,
        {
          role: "assistant",
          content: "Hmm, that didn't go through. Mind giving it another try?",
        },
      ]);
      setStreamedText("");
      setShowTyping(false);
    }
  };

  const showEmptyWelcome =
    !messagesLoading &&
    messages.length === 0 &&
    !isStreaming &&
    !streamedText &&
    !showTyping;

  const showStreamBubble =
    (isStreaming || showTyping) && Boolean(streamedText);

  const showStatusChoreography =
    (isStreaming || showTyping) && !streamedText;

  const onSearchKeyDown = (e: ReactKeyboardEvent<HTMLInputElement>) => {
    if (e.key === "Escape") {
      if (courseQuery) {
        e.preventDefault();
        setCourseQuery("");
        setHighlightIndex(-1);
      }
      return;
    }
    if (e.key === "ArrowDown") {
      e.preventDefault();
      if (navigableCourses.length === 0) return;
      setHighlightIndex((i) =>
        i < 0 ? 0 : Math.min(i + 1, navigableCourses.length - 1),
      );
      return;
    }
    if (e.key === "ArrowUp") {
      e.preventDefault();
      if (navigableCourses.length === 0) return;
      setHighlightIndex((i) => (i <= 0 ? 0 : i - 1));
      return;
    }
    if (e.key === "Enter") {
      const target =
        highlightIndex >= 0
          ? navigableCourses[highlightIndex]
          : isSearching
            ? navigableCourses[0]
            : undefined;
      if (target) {
        e.preventDefault();
        selectCourse(target);
      }
    }
  };

  const renderCourseButton = (c: TutorHubCourse, navIndex?: number) => {
    const active = c.exam_type === resolvedCourseId;
    const highlighted =
      navIndex !== undefined &&
      highlightIndex >= 0 &&
      navigableCourses[highlightIndex]?.exam_type === c.exam_type;
    return (
      <button
        key={c.exam_type}
        type="button"
        role="option"
        ref={active || highlighted ? selectedCourseRef : undefined}
        className={`${styles.courseBtn} ${
          active ? styles.courseBtnActive : ""
        } ${highlighted ? styles.courseBtnHighlight : ""}`}
        onClick={() => selectCourse(c)}
        aria-current={active ? "true" : undefined}
        aria-selected={highlighted || active}
        id={`course-opt-${c.exam_type}`}
      >
        <span className={styles.courseBadge}>{c.short_code}</span>
        <span className={styles.courseName}>{c.display_name}</span>
        {active ? (
          <Check
            className={styles.courseCheck}
            size={16}
            weight="bold"
            aria-hidden
          />
        ) : null}
      </button>
    );
  };

  const renderCatalogGroup = (
    group: {
      family: TutorHubFamily;
      label: string;
      courses: TutorHubCourse[];
    },
  ) => {
    const containsActive = group.courses.some(
      (c) => c.exam_type === resolvedCourseId,
    );
    const singleFamilyView = familyFilter === group.family;
    const expanded =
      singleFamilyView ||
      isFamilyExpanded(group.family, group.courses.length, containsActive);
    const needsAccordion =
      group.courses.length > FAMILY_ACCORDION_THRESHOLD;
    const useCategories =
      needsAccordion &&
      (group.family === "AP" || group.family === "IB");
    const showFamilyToggle =
      needsAccordion && !singleFamilyView && familyFilter === "all";

    const header = showFamilyToggle ? (
      <button
        type="button"
        className={styles.accordionHeader}
        onClick={() => toggleFamily(group.family, !expanded)}
        aria-expanded={expanded}
      >
        <span className={styles.accordionHeaderLabel}>
          {expanded ? (
            <CaretDown size={14} weight="bold" aria-hidden />
          ) : (
            <CaretRight size={14} weight="bold" aria-hidden />
          )}
          {group.label}
        </span>
        <span className={styles.accordionCount}>{group.courses.length}</span>
      </button>
    ) : (
      <p className={styles.courseGroupLabel}>
        {group.label}
        {needsAccordion ? (
          <span className={styles.accordionCountInline}>
            {group.courses.length}
          </span>
        ) : null}
      </p>
    );

    return (
      <div key={group.family} className={styles.courseGroup}>
        {header}
        {expanded ? (
          useCategories ? (
            <div className={styles.categoryStack}>
              {groupCoursesByCategory(group.courses).map((cat) => {
                const key = `${group.family}:${cat.category}`;
                const catActive = cat.courses.some(
                  (c) => c.exam_type === resolvedCourseId,
                );
                const catOpen = isCategoryExpanded(key, catActive);
                return (
                  <div key={key} className={styles.categoryGroup}>
                    <button
                      type="button"
                      className={styles.categoryHeader}
                      onClick={() => toggleCategory(key, !catOpen)}
                      aria-expanded={catOpen}
                    >
                      <span className={styles.accordionHeaderLabel}>
                        {catOpen ? (
                          <CaretDown size={12} weight="bold" aria-hidden />
                        ) : (
                          <CaretRight size={12} weight="bold" aria-hidden />
                        )}
                        {cat.category}
                      </span>
                      <span className={styles.accordionCount}>
                        {cat.courses.length}
                      </span>
                    </button>
                    {catOpen
                      ? cat.courses.map((c) =>
                          renderCourseButton(
                            c,
                            navigableCourses.findIndex(
                              (n) => n.exam_type === c.exam_type,
                            ),
                          ),
                        )
                      : null}
                  </div>
                );
              })}
            </div>
          ) : (
            group.courses.map((c) =>
              renderCourseButton(
                c,
                navigableCourses.findIndex((n) => n.exam_type === c.exam_type),
              ),
            )
          )
        ) : (
          <p className={styles.accordionHint}>
            {group.courses.length} courses — expand or search
          </p>
        )}
      </div>
    );
  };

  const coursePickerBody = (
    <div className={styles.pickerShell}>
      <div className={styles.pickerControls}>
        <div className={styles.searchWrap}>
          <MagnifyingGlass
            className={styles.searchIcon}
            size={16}
            weight="bold"
            aria-hidden
          />
          <input
            ref={searchInputRef}
            type="search"
            className={styles.searchInput}
            placeholder="Search AP Calc, IB Hist…"
            value={courseQuery}
            onChange={(e) => setCourseQuery(e.target.value)}
            onKeyDown={onSearchKeyDown}
            aria-label="Search courses"
            aria-controls="course-tutor-listbox"
            aria-autocomplete="list"
            aria-activedescendant={
              highlightIndex >= 0 && navigableCourses[highlightIndex]
                ? `course-opt-${navigableCourses[highlightIndex].exam_type}`
                : undefined
            }
            autoComplete="off"
            enterKeyHint="search"
          />
          {courseQuery ? (
            <button
              type="button"
              className={styles.searchClear}
              onClick={() => {
                setCourseQuery("");
                setHighlightIndex(-1);
                searchInputRef.current?.focus();
              }}
              aria-label="Clear search"
            >
              <X size={14} weight="bold" />
            </button>
          ) : null}
        </div>

        <div
          className={styles.familyChips}
          role="toolbar"
          aria-label="Filter by exam family"
        >
          {FAMILY_FILTERS.map((f) => (
            <button
              key={f.id}
              type="button"
              className={`${styles.familyChip} ${
                familyFilter === f.id ? styles.familyChipActive : ""
              }`}
              onClick={() => setFamilyFilter(f.id)}
              aria-pressed={familyFilter === f.id}
            >
              <span>{f.label}</span>
              <span className={styles.familyChipCount}>{familyCounts[f.id]}</span>
            </button>
          ))}
        </div>

        {isSearching && hasAnyResults ? (
          <p className={styles.searchMeta} aria-live="polite">
            {navigableCourses.length} match
            {navigableCourses.length === 1 ? "" : "es"}
            {catalogMatchCount > 0 && familyFilter === "all"
              ? ` · ${catalogMatchCount} in catalog`
              : ""}
          </p>
        ) : null}
      </div>

      <div
        className={styles.courseScroll}
        id="course-tutor-listbox"
        role="listbox"
        aria-label="Courses"
      >
        {!hasAnyResults ? (
          <div className={styles.emptyResults}>
            <p className={styles.emptyResultsTitle}>No courses found</p>
            <p className={styles.emptyResultsHint}>
              Try another name, short code, or switch family filters.
              {queryTrimmed ? (
                <>
                  {" "}
                  Nothing matched “{queryTrimmed}”.
                </>
              ) : null}
            </p>
            <button
              type="button"
              className={styles.emptyResultsAction}
              onClick={() => {
                setCourseQuery("");
                setFamilyFilter("all");
                searchInputRef.current?.focus();
              }}
            >
              Clear filters
            </button>
          </div>
        ) : null}

        {(visibleActiveCourse ||
          visibleYourCourses.length > 0 ||
          visibleRecentCourses.length > 0) &&
        hasAnyResults ? (
          <div className={styles.pinnedZone}>
            {visibleActiveCourse ? (
              <div className={styles.courseGroup}>
                <p className={styles.courseGroupLabel}>Active</p>
                {renderCourseButton(
                  visibleActiveCourse,
                  navigableCourses.findIndex(
                    (n) => n.exam_type === visibleActiveCourse.exam_type,
                  ),
                )}
              </div>
            ) : null}

            {visibleYourCourses.length > 0 ? (
              <div className={styles.courseGroup}>
                <p className={styles.courseGroupLabel}>Your courses</p>
                {visibleYourCourses.map((c) =>
                  renderCourseButton(
                    c,
                    navigableCourses.findIndex(
                      (n) => n.exam_type === c.exam_type,
                    ),
                  ),
                )}
              </div>
            ) : null}

            {visibleRecentCourses.length > 0 ? (
              <div className={styles.courseGroup}>
                <p className={styles.courseGroupLabel}>Recent</p>
                {visibleRecentCourses.map((c) =>
                  renderCourseButton(
                    c,
                    navigableCourses.findIndex(
                      (n) => n.exam_type === c.exam_type,
                    ),
                  ),
                )}
              </div>
            ) : null}
          </div>
        ) : null}

        {filteredCatalog.map(renderCatalogGroup)}
      </div>
    </div>
  );

  return (
    <div className={styles.hub}>
      <div className={`${styles.layout} ${courseRailCollapsed ? styles.layoutCollapsed : ""}`}>
        <aside
          className={`${styles.courseRail} ${courseRailCollapsed ? styles.courseRailCollapsed : ""}`}
          aria-label="Courses"
        >
          <div className={styles.railHeader}>
            <div className={styles.railHeaderTop}>
              <div>
                <p className={styles.railEyebrow}>
                  <Sparkle size={12} weight="fill" aria-hidden />
                  Ask Scho
                </p>
                <h2 className={styles.railTitle}>
                  {courseRailCollapsed ? course.short_code : "Pick a course"}
                </h2>
              </div>
              <button
                type="button"
                className={styles.railCollapseToggle}
                onClick={() => setCourseRailCollapsed((prev) => !prev)}
                aria-label={courseRailCollapsed ? "Expand course picker" : "Collapse course picker"}
                title={courseRailCollapsed ? "Expand" : "Collapse"}
              >
                {courseRailCollapsed ? (
                  <CaretRight size={16} weight="bold" aria-hidden />
                ) : (
                  <SidebarSimple size={16} weight="bold" aria-hidden />
                )}
              </button>
            </div>
          </div>
          {!courseRailCollapsed && !isMobilePicker ? coursePickerBody : null}
          {courseRailCollapsed && !isMobilePicker ? (
            <div className={styles.collapsedPreview}>
              <span className={styles.courseBadge}>{course.short_code}</span>
              <span className={styles.collapsedCourseName}>{course.display_name}</span>
            </div>
          ) : null}
        </aside>

        <aside className={styles.convoRail} aria-label="Conversations">
          {isMobilePicker ? (
            <div className={styles.mobileCourseBar}>
              <button
                type="button"
                className={styles.mobileCourseToggle}
                aria-expanded={mobilePickerOpen}
                aria-haspopup="dialog"
                aria-controls="course-tutor-mobile-picker"
                onClick={() => setMobilePickerOpen((open) => !open)}
              >
                <span className={styles.courseBadge}>{course.short_code}</span>
                <span className={styles.mobileCourseToggleMeta}>
                  <span className={styles.mobileCourseToggleLabel}>Course</span>
                  <span className={styles.mobileCourseToggleName}>
                    {course.display_name}
                  </span>
                </span>
                <CaretDown
                  className={styles.mobileCourseChevron}
                  size={16}
                  weight="bold"
                  aria-hidden
                />
              </button>
            </div>
          ) : null}

          <div className={styles.convoHeader}>
            <h3 className={styles.convoHeaderTitle}>Your chats</h3>
            <button
              type="button"
              className={styles.newChatBtn}
              onClick={() => void startConversation()}
              disabled={authLoading || !user}
            >
              <Plus size={14} weight="bold" aria-hidden />
              New
            </button>
          </div>

          {(authLoading || chatsLoading) && conversations.length === 0 ? (
            <p className={styles.convoEmpty}>Loading conversations…</p>
          ) : conversations.length === 0 ? (
            <p className={styles.convoEmpty}>
              No chats for {course.short_code} yet. Start one — Scho asks back
              until the idea clicks.
            </p>
          ) : (
            <ul className={styles.convoList}>
              {conversations.map((c) => (
                <li
                  key={c.id}
                  className={`${styles.convoRow} ${
                    c.id === activeId ? styles.convoRowActive : ""
                  }`}
                >
                  <button
                    type="button"
                    className={styles.convoItem}
                    onClick={() => setActiveId(c.id)}
                  >
                    <span className={styles.convoTitle}>{c.title}</span>
                  </button>
                  <button
                    type="button"
                    className={styles.convoDelete}
                    aria-label={`Delete chat: ${c.title}`}
                    onClick={(e) => {
                      e.stopPropagation();
                      void deleteConversation(c.id);
                    }}
                  >
                    <Trash size={14} />
                  </button>
                </li>
              ))}
            </ul>
          )}
        </aside>

        <section className={styles.chatPane} aria-label="Chat with Scho">
          <header className={styles.chatHeader}>
            <p className={styles.chatEyebrow}>
              <Sparkle size={12} weight="fill" aria-hidden />
              {welcome.eyebrow}
            </p>
            <h1 className={styles.chatHeadline}>{welcome.headline}</h1>
            <p className={styles.chatSub}>{welcome.sub}</p>
            <div className={styles.selectedChip} aria-live="polite">
              <span className={styles.selectedChipCode}>{course.short_code}</span>
              {course.display_name}
            </div>
          </header>

          <div className={styles.messages} role="log" aria-live="polite">
            {messagesLoading && messages.length === 0 ? (
              <div className={styles.loadingState}>
                <span className={styles.typingDots} aria-hidden>
                  <span />
                  <span />
                  <span />
                </span>
                Loading conversation…
              </div>
            ) : null}

            {showEmptyWelcome ? (
              <div className={`${styles.welcome} ${styles.welcomeAnimate}`}>
                <span className={styles.welcomeIcon} aria-hidden>
                  <Sparkle size={28} weight="duotone" />
                </span>
                <h2 className={styles.welcomeHeadline}>
                  What are you stuck on in {course.display_name}?
                </h2>
                <p className={styles.welcomeSub}>
                  Half-formed questions welcome. Scho asks one sharp question at
                  a time — not a lecture.
                </p>
                <div className={styles.promptList}>
                  {prompts.map((p) => (
                    <button
                      key={`${p.lead}-${p.text}`}
                      type="button"
                      className={styles.promptRow}
                      onClick={() => setInput(courseTutorPromptFull(p))}
                    >
                      <span className={styles.promptLead}>{p.lead}</span>
                      <span className={styles.promptText}>{p.text}</span>
                      <span className={styles.promptChevron} aria-hidden>
                        <CaretRight size={16} />
                      </span>
                    </button>
                  ))}
                </div>
              </div>
            ) : null}

            {messages.map((msg, i) => (
              <HubMessageBubble key={`${i}-${msg.role}`} message={msg} />
            ))}

            {sparkSuggestion ? (
              <div className={styles.rowAssistant}>
                <span className={styles.avatar} aria-hidden>S</span>
                <div className={styles.assistantBody}>
                  <span className={styles.roleLabel}>Scho</span>
                  <SparkSuggestionCard
                    suggestion={sparkSuggestion}
                    onTryIt={(prompt) => {
                      logSparkInteraction({
                        sparkType: sparkSuggestion.type,
                        action: "try_it",
                        examType: resolvedCourseId,
                        conversationId: activeId ?? undefined,
                      });
                      setInput(prompt);
                      setSparkSuggestion(null);
                    }}
                    onDismiss={() => {
                      logSparkInteraction({
                        sparkType: sparkSuggestion.type,
                        action: "dismiss",
                        examType: resolvedCourseId,
                        conversationId: activeId ?? undefined,
                      });
                      setSparkSuggestion(null);
                    }}
                  />
                </div>
              </div>
            ) : null}

            {showStatusChoreography ? (
              <HubStatusIndicator
                label={statusNote || "Scho is thinking…"}
              />
            ) : null}

            {showStreamBubble ? (
              <HubMessageBubble
                message={{ role: "assistant", content: streamedText }}
              />
            ) : null}

            <div ref={bottomRef} />
          </div>

          <div className={styles.composer}>
            <div className={styles.inputArea}>
              <label htmlFor="course-tutor-message" className="sr-only">
                Message Scho about {course.display_name}
              </label>
              <textarea
                id="course-tutor-message"
                className={styles.textarea}
                value={input}
                onChange={(e) => setInput(e.target.value)}
                placeholder={`Ask about ${course.short_code}…`}
                rows={1}
                disabled={isStreaming}
                onKeyDown={(e) => {
                  if (e.key === "Enter" && !e.shiftKey) {
                    e.preventDefault();
                    void sendMessage();
                  }
                }}
              />
              <button
                type="button"
                className={styles.sendBtn}
                onClick={() => void sendMessage()}
                disabled={isStreaming || !input.trim()}
                aria-label="Send message"
              >
                <ArrowUp size={18} weight="bold" />
              </button>
            </div>
            <p className={styles.disclaimer}>
              Scho can make mistakes. Check important details.
            </p>
          </div>
        </section>
      </div>

      {isMobilePicker && mobilePickerOpen ? (
        <div className={styles.mobilePickerRoot}>
          <button
            type="button"
            className={styles.mobilePickerBackdrop}
            aria-label="Close course picker"
            onClick={() => setMobilePickerOpen(false)}
          />
          <div
            id="course-tutor-mobile-picker"
            className={styles.mobilePickerSheet}
            role="dialog"
            aria-modal="true"
            aria-label="Pick a course"
          >
            <div className={styles.mobilePickerGrab} aria-hidden />
            <div className={styles.mobilePickerSheetHeader}>
              <div>
                <p className={styles.railEyebrow}>
                  <Sparkle size={12} weight="fill" aria-hidden />
                  Ask Scho
                </p>
                <h2 className={styles.mobilePickerSheetTitle}>Pick a course</h2>
              </div>
              <button
                type="button"
                className={styles.mobilePickerClose}
                onClick={() => setMobilePickerOpen(false)}
                aria-label="Close"
              >
                <X size={18} weight="bold" />
              </button>
            </div>
            <div className={styles.mobilePickerScroll}>{coursePickerBody}</div>
          </div>
        </div>
      ) : null}
    </div>
  );
}

function HubMessageBubble({ message }: { message: Message }) {
  if (message.role === "user") {
    return (
      <div className={styles.rowUser}>
        <span className={styles.roleLabel}>You</span>
        <span className={styles.bubbleUser}>{message.content}</span>
      </div>
    );
  }
  return (
    <div className={styles.rowAssistant}>
      <span className={styles.avatar} aria-hidden>
        S
      </span>
      <div className={styles.assistantBody}>
        <span className={styles.roleLabel}>Scho</span>
        <div className={styles.bubbleAssistant}>
          {message.content ? <TutorMarkdown content={message.content} /> : null}
        </div>
      </div>
    </div>
  );
}

/** Spark-inspired status pulse — cobalt styling, not a Studi clone. */
function HubStatusIndicator({ label }: { label: string }) {
  return (
    <div className={styles.rowAssistant}>
      <span className={styles.avatar} aria-hidden>
        S
      </span>
      <div className={styles.assistantBody}>
        <span className={styles.roleLabel}>Scho</span>
        <div
          className={styles.statusCard}
          aria-live="polite"
          aria-label={label}
        >
          <span className={styles.statusSpark} aria-hidden>
            <Sparkle size={14} weight="fill" />
          </span>
          <span className={styles.statusLabel}>{label}</span>
          <span className={styles.statusTrail} aria-hidden>
            <span />
            <span />
            <span />
          </span>
        </div>
      </div>
    </div>
  );
}
