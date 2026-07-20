"use client";

import { useCallback, useMemo, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { useRouter } from "next/navigation";
import {
  BookOpen,
  Compass,
  GraduationCap,
  MagnifyingGlass,
  Stack,
} from "@phosphor-icons/react";
import { toast } from "sonner";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Input } from "@/components/ui/input";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { CourseCard } from "@/components/courses/CourseCard";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import {
  enrollInCourse,
  fetchEnrolledCourses,
  fetchPublishedCourses,
  type CatalogFilters,
  type EnrolledCourseCard,
  type CatalogCourseCard,
} from "@/lib/courses/queries";
import { cn } from "@/lib/utils";
import styles from "./page.module.css";

const EXAM_OPTIONS = ["all", "SAT", "ACT", "JAMB", "GRE", "GMAT", "CUSTOM"] as const;

function CourseSkeletonGrid() {
  return (
    <div className={styles.skeletonGrid} aria-hidden>
      {Array.from({ length: 4 }).map((_, i) => (
        <div key={i} className={styles.skeletonCard} />
      ))}
    </div>
  );
}

export default function DashboardCoursesPage() {
  const { user } = useAuth();
  const router = useRouter();
  const supabase = createClient();

  const [myCourses, setMyCourses] = useState<EnrolledCourseCard[]>([]);
  const [catalog, setCatalog] = useState<CatalogCourseCard[]>([]);
  const [loadingMy, setLoadingMy] = useState(true);
  const [loadingCatalog, setLoadingCatalog] = useState(true);
  const [enrollingId, setEnrollingId] = useState<string | null>(null);

  const [examType, setExamType] = useState<string>("all");
  const [subject, setSubject] = useState("");
  const [priceFilter, setPriceFilter] = useState<"all" | "free" | "paid">("all");

  const loadMyCourses = useCallback(async () => {
    if (!user) return;
    setLoadingMy(true);
    const rows = await fetchEnrolledCourses(supabase, user.id);
    setMyCourses(rows);
    setLoadingMy(false);
  }, [user, supabase]);

  const loadCatalog = useCallback(async () => {
    if (!user) return;
    setLoadingCatalog(true);
    const filters: CatalogFilters = {
      examType: examType === "all" ? undefined : examType,
      subject: subject || undefined,
      freeOnly: priceFilter === "free",
      paidOnly: priceFilter === "paid",
    };
    const rows = await fetchPublishedCourses(supabase, user.id, filters);
    setCatalog(rows);
    setLoadingCatalog(false);
  }, [user, supabase, examType, subject, priceFilter]);

  useMountLoad(loadMyCourses, [loadMyCourses]);
  useMountLoad(loadCatalog, [loadCatalog]);

  const avgProgress = useMemo(() => {
    if (myCourses.length === 0) return 0;
    const sum = myCourses.reduce((acc, c) => acc + c.progressPercent, 0);
    return Math.round(sum / myCourses.length);
  }, [myCourses]);

  const freeCatalogCount = useMemo(
    () => catalog.filter((c) => c.is_free).length,
    [catalog],
  );

  const handleEnroll = async (courseId: string) => {
    if (!user) return;
    setEnrollingId(courseId);
    const { lessonId, error } = await enrollInCourse(supabase, user.id, courseId);
    setEnrollingId(null);

    if (error) {
      toast.error(error);
      return;
    }

    toast.success("Enrolled successfully");
    void loadMyCourses();
    void loadCatalog();

    if (lessonId) {
      router.push(`/dashboard/courses/${courseId}/${lessonId}`);
    }
  };

  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <BookOpen
          size={22}
          weight="duotone"
          className={styles.headerIcon}
          aria-hidden
        />
        <div>
          <h1 className={styles.title}>Courses</h1>
          <p className={styles.subtitle}>
            Continue where you left off or explore new prep tracks tailored to
            your exam.
          </p>
        </div>
      </header>

      <div className={styles.statsRow}>
        <div className={styles.statCard}>
          <div className={styles.statIcon}>
            <BookOpen size={20} weight="duotone" aria-hidden />
          </div>
          <div>
            <p className={styles.statLabel}>Enrolled</p>
            <p className={styles.statValue}>
              {loadingMy ? "…" : myCourses.length}
            </p>
          </div>
        </div>
        <div className={styles.statCard}>
          <div className={styles.statIcon}>
            <GraduationCap size={20} weight="duotone" aria-hidden />
          </div>
          <div>
            <p className={styles.statLabel}>Avg progress</p>
            <p className={styles.statValue}>
              {loadingMy ? "…" : myCourses.length ? `${avgProgress}%` : "—"}
            </p>
          </div>
        </div>
        <div className={styles.statCard}>
          <div className={styles.statIcon}>
            <Compass size={20} weight="duotone" aria-hidden />
          </div>
          <div>
            <p className={styles.statLabel}>Catalog (free)</p>
            <p className={styles.statValue}>
              {loadingCatalog ? "…" : freeCatalogCount}
            </p>
          </div>
        </div>
      </div>

      <Tabs defaultValue="my-courses" className="w-full">
        <div className={styles.tabsShell}>
          <TabsList className={styles.tabList}>
            <TabsTrigger value="my-courses" className={styles.tabTrigger}>
              <Stack size={16} weight="duotone" aria-hidden />
              My Courses
            </TabsTrigger>
            <TabsTrigger value="explore" className={styles.tabTrigger}>
              <Compass size={16} weight="duotone" aria-hidden />
              Explore
            </TabsTrigger>
          </TabsList>
        </div>

        <TabsContent value="my-courses" className={styles.tabContent}>
          {loadingMy ? (
            <CourseSkeletonGrid />
          ) : myCourses.length === 0 ? (
            <div className={styles.empty}>
              <div className={styles.emptyIcon}>
                <BookOpen size={28} weight="duotone" aria-hidden />
              </div>
              <h2 className={styles.emptyTitle}>No courses yet</h2>
              <p className={styles.emptyText}>
                You haven&apos;t enrolled in any courses. Switch to Explore to
                find your first track.
              </p>
            </div>
          ) : (
            <div className={styles.grid}>
              {myCourses.map((item) => (
                <CourseCard
                  key={item.enrollmentId}
                  id={item.course.id}
                  title={item.course.title}
                  thumbnailUrl={item.course.thumbnail_url}
                  creatorName={item.course.creator_name}
                  examType={item.course.exam_type}
                  subject={item.course.subject}
                  isFree={item.course.is_free}
                  priceCents={item.course.price_cents}
                  progressPercent={item.progressPercent}
                  continueHref={
                    item.continueLessonId
                      ? `/dashboard/courses/${item.course.id}/${item.continueLessonId}`
                      : null
                  }
                />
              ))}
            </div>
          )}
        </TabsContent>

        <TabsContent value="explore" className={styles.tabContent}>
          <div className={styles.filterDock}>
            <div className={styles.filterField}>
              <span className={styles.filterLabel}>Exam type</span>
              <Select
                value={examType}
                onValueChange={(v) => setExamType(v ?? "all")}
              >
                <SelectTrigger className={styles.filterControl}>
                  <SelectValue placeholder="All exams" />
                </SelectTrigger>
                <SelectContent>
                  {EXAM_OPTIONS.map((opt) => (
                    <SelectItem key={opt} value={opt}>
                      {opt === "all" ? "All exams" : opt}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div className={styles.filterField}>
              <span className={styles.filterLabel} id="subject-filter-label">
                Subject
              </span>
              <div className="relative">
                <MagnifyingGlass
                  size={16}
                  weight="bold"
                  className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground pointer-events-none"
                  aria-hidden
                />
                <Input
                  id="subject-filter"
                  className={cn("pl-9", styles.filterControl)}
                  placeholder="e.g. Algebra"
                  value={subject}
                  onChange={(e) => setSubject(e.target.value)}
                  aria-labelledby="subject-filter-label"
                />
              </div>
            </div>
            <div className={styles.filterField}>
              <span className={styles.filterLabel}>Price</span>
              <div className={styles.pricePills}>
                {(["all", "free", "paid"] as const).map((value) => (
                  <Button
                    key={value}
                    type="button"
                    size="sm"
                    variant={priceFilter === value ? "default" : "outline"}
                    className={cn(
                      styles.pricePill,
                      priceFilter === value && styles.pricePillActive,
                    )}
                    onClick={() => setPriceFilter(value)}
                  >
                    {value === "all"
                      ? "All"
                      : value === "free"
                        ? "Free"
                        : "Paid"}
                  </Button>
                ))}
              </div>
            </div>
            <Button
              type="button"
              className={styles.applyBtn}
              onClick={() => void loadCatalog()}
            >
              Apply filters
            </Button>
          </div>

          {loadingCatalog ? (
            <CourseSkeletonGrid />
          ) : catalog.length === 0 ? (
            <div className={styles.empty}>
              <div className={styles.emptyIcon}>
                <Compass size={28} weight="duotone" aria-hidden />
              </div>
              <h2 className={styles.emptyTitle}>No matches</h2>
              <p className={styles.emptyText}>
                No courses match your filters. Try broadening exam type or
                subject search.
              </p>
            </div>
          ) : (
            <div className={styles.grid}>
              {catalog.map((course) => (
                <CourseCard
                  key={course.id}
                  id={course.id}
                  title={course.title}
                  thumbnailUrl={course.thumbnail_url}
                  creatorName={course.creator_name}
                  examType={course.exam_type}
                  subject={course.subject}
                  isFree={course.is_free}
                  priceCents={course.price_cents}
                  enrolled={course.is_enrolled}
                  enrolling={enrollingId === course.id}
                  onEnroll={() => void handleEnroll(course.id)}
                />
              ))}
            </div>
          )}
        </TabsContent>
      </Tabs>
    </div>
  );
}
