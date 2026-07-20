"use client";

import { useCallback, useMemo, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { format } from "date-fns";
import { toast } from "sonner";
import Image from "next/image";
import { Books, Warning } from "@phosphor-icons/react";
import { Search, X } from "lucide-react";
import { Button, buttonVariants } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Label } from "@/components/ui/label";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { AdminListSkeleton } from "@/components/admin/AdminListSkeleton";
import { cn } from "@/lib/utils";
import type { CourseStatus } from "@/types/supabase";
import styles from "@/app/admin/admin.module.css";

type AdminCourse = {
  id: string;
  title: string;
  thumbnailUrl: string | null;
  status: CourseStatus | null;
  totalLessons: number;
  enrolledCount: number;
  createdAt: string | null;
  featuredOnHome: boolean;
  creator: { name: string; email: string };
};

const STATUS_VARIANT: Record<
  string,
  "default" | "secondary" | "outline" | "destructive"
> = {
  published: "default",
  pending_review: "secondary",
  draft: "outline",
  archived: "destructive",
};

const STATUS_ORDER = [
  "pending_review",
  "published",
  "draft",
  "archived",
] as const;

function statusLabel(status: string): string {
  return status.replaceAll("_", " ");
}

function distFillClass(status: string) {
  if (status === "pending_review") return styles.distFillWarn;
  if (status === "archived" || status === "draft") return styles.distFillMuted;
  return undefined;
}

export function AdminCoursesPanel() {
  const [courses, setCourses] = useState<AdminCourse[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [statusFilter, setStatusFilter] = useState<string>("all");
  const [search, setSearch] = useState("");
  const [rejectId, setRejectId] = useState<string | null>(null);
  const [rejectReason, setRejectReason] = useState("");
  const [rejecting, setRejecting] = useState(false);
  const [actionBusy, setActionBusy] = useState(false);

  const load = useCallback(async (opts?: { soft?: boolean }) => {
    setError(null);
    if (opts?.soft) {
      setRefreshing(true);
    } else {
      setLoading(true);
    }

    const params = new URLSearchParams();
    if (statusFilter !== "all") params.set("status", statusFilter);

    try {
      const res = await fetch(`/api/admin/courses?${params.toString()}`, {
        credentials: "same-origin",
      });
      if (!res.ok) {
        const err = (await res.json().catch(() => ({}))) as { error?: string };
        setError(err.error ?? "Could not load courses");
        toast.error(err.error ?? "Could not load courses");
        return;
      }
      const json = (await res.json()) as { courses: AdminCourse[] };
      setCourses(json.courses ?? []);
    } catch {
      setError("Could not load courses");
      toast.error("Could not load courses");
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, [statusFilter]);

  useMountLoad(() => {
    void load({ soft: courses.length > 0 });
  }, [load]);

  const visibleCourses = useMemo(() => {
    const q = search.trim().toLowerCase();
    if (!q) return courses;
    return courses.filter(
      (c) =>
        c.title.toLowerCase().includes(q) ||
        c.creator.name.toLowerCase().includes(q) ||
        c.creator.email.toLowerCase().includes(q),
    );
  }, [courses, search]);

  const summary = useMemo(() => {
    const byStatus: Record<string, number> = {};
    let featured = 0;
    let pending = 0;
    for (const c of visibleCourses) {
      const s = c.status ?? "draft";
      byStatus[s] = (byStatus[s] ?? 0) + 1;
      if (c.featuredOnHome) featured += 1;
      if (s === "pending_review") pending += 1;
    }
    return {
      total: visibleCourses.length,
      pending,
      published: byStatus.published ?? 0,
      featured,
      byStatus,
    };
  }, [visibleCourses]);

  const distRows = useMemo(() => {
    const max = Math.max(1, ...Object.values(summary.byStatus), 1);
    return STATUS_ORDER.filter(
      (s) => (summary.byStatus[s] ?? 0) > 0 || statusFilter === "all",
    ).map((status) => ({
      status,
      count: summary.byStatus[status] ?? 0,
      pct: ((summary.byStatus[status] ?? 0) / max) * 100,
    }));
  }, [summary.byStatus, statusFilter]);

  const hasFilters = statusFilter !== "all" || search.trim().length > 0;

  const clearFilters = () => {
    setStatusFilter("all");
    setSearch("");
  };

  const approve = async (courseId: string) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/courses/${courseId}/approve`, {
        method: "POST",
        credentials: "same-origin",
      });
      if (!res.ok) {
        toast.error("Could not approve course");
        return;
      }
      const json = (await res.json()) as { emailSent?: boolean };
      toast.success(
        json.emailSent ? "Course approved — creator emailed" : "Course approved",
      );
      void load({ soft: true });
    } finally {
      setActionBusy(false);
    }
  };

  const reject = async () => {
    if (!rejectId || !rejectReason.trim()) {
      toast.error("Rejection reason is required");
      return;
    }
    setRejecting(true);
    try {
      const res = await fetch(`/api/admin/courses/${rejectId}/reject`, {
        method: "POST",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ reason: rejectReason.trim() }),
      });
      if (!res.ok) {
        toast.error("Could not reject course");
        return;
      }
      const json = (await res.json()) as { emailSent?: boolean };
      toast.success(
        json.emailSent ? "Course rejected — creator emailed" : "Course rejected",
      );
      setRejectId(null);
      setRejectReason("");
      void load({ soft: true });
    } finally {
      setRejecting(false);
    }
  };

  const toggleFeature = async (courseId: string, featured: boolean) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/courses/${courseId}`, {
        method: "PATCH",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          action: featured ? "feature" : "unfeature",
        }),
      });
      if (!res.ok) {
        toast.error("Could not update featured status");
        return;
      }
      toast.success(featured ? "Featured on home" : "Removed from home");
      setCourses((prev) =>
        prev.map((c) =>
          c.id === courseId ? { ...c, featuredOnHome: featured } : c,
        ),
      );
    } finally {
      setActionBusy(false);
    }
  };

  const remove = async (courseId: string) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/courses/${courseId}`, {
        method: "PATCH",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ action: "delete" }),
      });
      if (!res.ok) {
        toast.error("Could not delete course");
        return;
      }
      toast.success("Course deleted");
      setCourses((prev) => prev.filter((c) => c.id !== courseId));
    } finally {
      setActionBusy(false);
    }
  };

  const rejectTitle =
    courses.find((c) => c.id === rejectId)?.title ?? "this course";

  const showInitialSkeleton = loading && courses.length === 0 && !error;

  return (
    <div className="adminPage">
      <header className="adminHeader">
        <div className="adminHeaderMain">
          <p className="adminEyebrow">Platform admin</p>
          <h1 className="adminHeaderTitle">Courses</h1>
          <p className="adminHeaderSubtitle">
            Review, approve, feature, and remove creator courses
          </p>
        </div>
        <div className="adminHeaderActions">
          <ThemeToggle className="hidden md:flex" />
        </div>
      </header>

      {showInitialSkeleton ? (
        <AdminListSkeleton />
      ) : error && courses.length === 0 ? (
        <div className={styles.errorPanel} role="alert">
          <p className={styles.errorPanelText}>
            <Warning size={16} weight="fill" aria-hidden />
            {error}
          </p>
          <Button type="button" onClick={() => void load()}>
            Retry
          </Button>
        </div>
      ) : (
        <>
          <div className={styles.statsGrid}>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{summary.total}</p>
              <p className={styles.statLabel}>In view</p>
              <p className={styles.statMeta}>
                {hasFilters ? "Matching filters" : "All statuses"}
              </p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{summary.pending}</p>
              <p className={styles.statLabel}>Pending review</p>
              <p className={styles.statMeta}>Needs approve / reject</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{summary.published}</p>
              <p className={styles.statLabel}>Published</p>
              <p className={styles.statMeta}>Live for learners</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{summary.featured}</p>
              <p className={styles.statLabel}>Featured</p>
              <p className={styles.statMeta}>Shown on home</p>
            </article>
          </div>

          {summary.total > 0 ? (
            <article className={styles.distCard}>
              <p className={styles.chartTitle}>Status mix</p>
              <div className={styles.distBars}>
                {distRows.map((row) => (
                  <div key={row.status} className={styles.distRow}>
                    <span className={styles.distLabel}>
                      {statusLabel(row.status)}
                    </span>
                    <div className={styles.distTrack}>
                      <div
                        className={cn(styles.distFill, distFillClass(row.status))}
                        style={{ width: `${row.pct}%` }}
                      />
                    </div>
                    <span className={styles.distCount}>{row.count}</span>
                  </div>
                ))}
              </div>
            </article>
          ) : null}

          <div className={styles.filterRow}>
            <div className={cn(styles.filterField, styles.filterGrow)}>
              <label
                className={styles.filterLabel}
                htmlFor="admin-courses-search"
              >
                Search
              </label>
              <div className={styles.searchWrap}>
                <Search className={styles.searchIcon} aria-hidden size={16} />
                <input
                  id="admin-courses-search"
                  type="search"
                  placeholder="Title or creator…"
                  value={search}
                  onChange={(e) => setSearch(e.target.value)}
                  autoComplete="off"
                  spellCheck={false}
                />
                {search ? (
                  <button
                    type="button"
                    className={styles.searchClear}
                    onClick={() => setSearch("")}
                    aria-label="Clear search"
                  >
                    <X size={14} aria-hidden />
                  </button>
                ) : null}
              </div>
            </div>
            <div className={styles.filterField}>
              <label
                className={styles.filterLabel}
                htmlFor="admin-courses-status"
              >
                Status
              </label>
              <select
                id="admin-courses-status"
                value={statusFilter}
                onChange={(e) => setStatusFilter(e.target.value)}
              >
                <option value="all">All statuses</option>
                <option value="draft">Draft</option>
                <option value="pending_review">Pending review</option>
                <option value="published">Published</option>
                <option value="archived">Archived</option>
              </select>
            </div>
          </div>

          <div className={styles.filterMeta} aria-live="polite">
            <p className={styles.resultCount}>
              {summary.total === 0
                ? "No courses"
                : `${summary.total} course${summary.total === 1 ? "" : "s"}`}
              {hasFilters ? " match filters" : ""}
              {refreshing ? " · Updating…" : ""}
            </p>
            {hasFilters ? (
              <button
                type="button"
                className={styles.filterClear}
                onClick={clearFilters}
              >
                Clear filters
              </button>
            ) : null}
          </div>

          {visibleCourses.length === 0 ? (
            <div className={styles.emptyState} role="status">
              <div className={styles.emptyStateIcon} aria-hidden>
                <Books size={22} weight="duotone" />
              </div>
              <p className={styles.emptyStateTitle}>
                {hasFilters ? "No matching courses" : "No courses yet"}
              </p>
              <p className={styles.emptyStateDesc}>
                {hasFilters
                  ? "Try a different search or clear your filters."
                  : "When creators submit courses for review, they will show up here."}
              </p>
              {hasFilters ? (
                <Button type="button" variant="outline" onClick={clearFilters}>
                  Clear filters
                </Button>
              ) : null}
            </div>
          ) : (
            <div
              className={cn(
                styles.tableWrap,
                "adminTableWrap",
                "responsiveTable",
                refreshing && styles.tableRefreshing,
              )}
            >
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead className="w-14">Thumb</TableHead>
                    <TableHead>Title</TableHead>
                    <TableHead>Creator</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead>Lessons</TableHead>
                    <TableHead>Enrolled</TableHead>
                    <TableHead>Created</TableHead>
                    <TableHead className={styles.actionsHead}>Actions</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {visibleCourses.map((c) => {
                    const status = c.status ?? "draft";
                    const canModerate = status === "pending_review";

                    return (
                      <TableRow key={c.id}>
                        <TableCell data-label="Thumb">
                          {c.thumbnailUrl ? (
                            <Image
                              src={c.thumbnailUrl}
                              alt=""
                              width={48}
                              height={36}
                              className={styles.thumb}
                              unoptimized
                            />
                          ) : (
                            <div
                              className={styles.thumbPlaceholder}
                              aria-hidden
                            />
                          )}
                        </TableCell>
                        <TableCell data-label="Title">
                          <div className={styles.titleCell}>
                            <strong>{c.title}</strong>
                            {c.featuredOnHome ? (
                              <span className={styles.badgeRow}>
                                <Badge variant="secondary">Featured</Badge>
                              </span>
                            ) : null}
                          </div>
                        </TableCell>
                        <TableCell data-label="Creator">
                          <div className={styles.creatorCell}>
                            <span>{c.creator.name}</span>
                            {c.creator.email ? (
                              <span className={styles.creatorEmail}>
                                {c.creator.email}
                              </span>
                            ) : null}
                          </div>
                        </TableCell>
                        <TableCell data-label="Status">
                          <Badge variant={STATUS_VARIANT[status] ?? "outline"}>
                            {statusLabel(status)}
                          </Badge>
                        </TableCell>
                        <TableCell
                          data-label="Lessons"
                          className={styles.dateCell}
                        >
                          {c.totalLessons}
                        </TableCell>
                        <TableCell
                          data-label="Enrolled"
                          className={styles.dateCell}
                        >
                          {c.enrolledCount}
                        </TableCell>
                        <TableCell
                          data-label="Created"
                          className={styles.dateCell}
                        >
                          {c.createdAt
                            ? format(new Date(c.createdAt), "MMM d, yyyy")
                            : "—"}
                        </TableCell>
                        <TableCell data-label="Actions">
                          <div className={`${styles.actions} adminActionRow`}>
                            {canModerate ? (
                              <>
                                <Button
                                  type="button"
                                  size="sm"
                                  variant="outline"
                                  disabled={actionBusy}
                                  onClick={() => void approve(c.id)}
                                >
                                  Approve
                                </Button>
                                <Button
                                  type="button"
                                  size="sm"
                                  variant="outline"
                                  disabled={actionBusy}
                                  onClick={() => setRejectId(c.id)}
                                >
                                  Reject
                                </Button>
                              </>
                            ) : null}
                            <Button
                              type="button"
                              size="sm"
                              variant="outline"
                              disabled={actionBusy}
                              onClick={() =>
                                void toggleFeature(c.id, !c.featuredOnHome)
                              }
                            >
                              {c.featuredOnHome ? "Unfeature" : "Feature"}
                            </Button>
                            <AlertDialog>
                              <AlertDialogTrigger
                                disabled={actionBusy}
                                className={cn(
                                  buttonVariants({
                                    variant: "destructive",
                                    size: "sm",
                                  }),
                                )}
                              >
                                Delete
                              </AlertDialogTrigger>
                              <AlertDialogContent>
                                <AlertDialogHeader>
                                  <AlertDialogTitle>
                                    Delete course?
                                  </AlertDialogTitle>
                                  <AlertDialogDescription>
                                    Permanently delete “{c.title}”. This cannot
                                    be undone.
                                  </AlertDialogDescription>
                                </AlertDialogHeader>
                                <AlertDialogFooter>
                                  <AlertDialogCancel>Cancel</AlertDialogCancel>
                                  <AlertDialogAction
                                    onClick={() => void remove(c.id)}
                                  >
                                    Delete
                                  </AlertDialogAction>
                                </AlertDialogFooter>
                              </AlertDialogContent>
                            </AlertDialog>
                          </div>
                        </TableCell>
                      </TableRow>
                    );
                  })}
                </TableBody>
              </Table>
            </div>
          )}
        </>
      )}

      <Dialog
        open={rejectId !== null}
        onOpenChange={(open) => {
          if (!open) {
            setRejectId(null);
            setRejectReason("");
          }
        }}
      >
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Reject course</DialogTitle>
            <DialogDescription>
              The creator will be emailed this reason.
            </DialogDescription>
          </DialogHeader>
          <p className={styles.emptyStateDesc}>
            Explain why “{rejectTitle}” is being rejected.
          </p>
          <Label htmlFor="reject-reason">Reason (sent to creator)</Label>
          <textarea
            id="reject-reason"
            className={styles.notesArea}
            value={rejectReason}
            onChange={(e) => setRejectReason(e.target.value)}
            placeholder="Missing lessons, inaccurate content, …"
            disabled={rejecting}
          />
          <DialogFooter className={styles.dialogActions}>
            <Button
              type="button"
              variant="outline"
              disabled={rejecting}
              onClick={() => setRejectId(null)}
            >
              Cancel
            </Button>
            <Button
              type="button"
              disabled={rejecting || !rejectReason.trim()}
              onClick={() => void reject()}
            >
              {rejecting ? "Rejecting…" : "Reject & email"}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}
