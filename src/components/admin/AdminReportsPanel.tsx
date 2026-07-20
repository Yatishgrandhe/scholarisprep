"use client";

import { useCallback, useMemo, useRef, useState, type KeyboardEvent } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { format } from "date-fns";
import { toast } from "sonner";
import { Flag, Warning } from "@phosphor-icons/react";
import { Button } from "@/components/ui/button";
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
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { AdminListSkeleton } from "@/components/admin/AdminListSkeleton";
import { cn } from "@/lib/utils";
import type { ContentReportStatus } from "@/types/supabase";
import styles from "@/app/admin/admin.module.css";

const REPORT_STATUS_VARIANT: Record<
  string,
  "default" | "secondary" | "outline" | "destructive"
> = {
  open: "destructive",
  reviewing: "secondary",
  resolved: "default",
  dismissed: "outline",
};

const STATUS_ORDER: ContentReportStatus[] = [
  "open",
  "reviewing",
  "resolved",
  "dismissed",
];

type ReportRow = {
  id: string;
  contentType: string | null;
  contentId: string;
  reason: string;
  status: ContentReportStatus | null;
  createdAt: string | null;
  reporterEmail: string;
  adminNotes: string | null;
};

function distFillClass(status: string) {
  if (status === "open") return styles.distFillDanger;
  if (status === "reviewing") return styles.distFillWarn;
  if (status === "dismissed") return styles.distFillMuted;
  return undefined;
}

export function AdminReportsPanel() {
  const [reports, setReports] = useState<ReportRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [loadError, setLoadError] = useState<string | null>(null);
  const [statusFilter, setStatusFilter] = useState("all");
  const [selected, setSelected] = useState<ReportRow | null>(null);
  const [notes, setNotes] = useState("");
  const [statusDraft, setStatusDraft] = useState<ContentReportStatus>("open");
  const [saving, setSaving] = useState(false);
  const hasLoadedRef = useRef(false);

  const load = useCallback(async () => {
    if (hasLoadedRef.current) setRefreshing(true);
    else setLoading(true);
    setLoadError(null);
    const params = new URLSearchParams();
    if (statusFilter !== "all") params.set("status", statusFilter);
    try {
      const res = await fetch(`/api/admin/reports?${params.toString()}`, {
        credentials: "same-origin",
      });
      if (!res.ok) {
        const err = (await res.json().catch(() => ({}))) as { error?: string };
        const message = err.error ?? "Could not load reports";
        setLoadError(message);
        toast.error(message);
        setLoading(false);
        setRefreshing(false);
        return;
      }
      const json = (await res.json()) as { reports: ReportRow[] };
      setReports(json.reports ?? []);
      hasLoadedRef.current = true;
    } catch {
      const message = "Network error loading reports";
      setLoadError(message);
      toast.error(message);
    }
    setLoading(false);
    setRefreshing(false);
  }, [statusFilter]);

  useMountLoad(load, [load]);

  const counts = useMemo(() => {
    const byStatus: Record<string, number> = {};
    for (const r of reports) {
      const s = r.status ?? "open";
      byStatus[s] = (byStatus[s] ?? 0) + 1;
    }
    return {
      total: reports.length,
      open: byStatus.open ?? 0,
      reviewing: byStatus.reviewing ?? 0,
      resolved: byStatus.resolved ?? 0,
      dismissed: byStatus.dismissed ?? 0,
      byStatus,
    };
  }, [reports]);

  const distRows = useMemo(() => {
    const max = Math.max(1, ...Object.values(counts.byStatus), 1);
    return STATUS_ORDER.filter(
      (s) => (counts.byStatus[s] ?? 0) > 0 || statusFilter === "all",
    ).map((status) => ({
      status,
      count: counts.byStatus[status] ?? 0,
      pct: ((counts.byStatus[status] ?? 0) / max) * 100,
    }));
  }, [counts.byStatus, statusFilter]);

  const openReport = (row: ReportRow) => {
    setSelected(row);
    setNotes(row.adminNotes ?? "");
    setStatusDraft(row.status ?? "open");
  };

  const saveReport = async () => {
    if (!selected) return;
    setSaving(true);
    try {
      const res = await fetch(`/api/admin/reports/${selected.id}`, {
        method: "PATCH",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          status: statusDraft,
          admin_notes: notes || null,
        }),
      });
      if (!res.ok) {
        toast.error("Could not save report");
        return;
      }
      toast.success("Report updated");
      setSelected(null);
      void load();
    } finally {
      setSaving(false);
    }
  };

  const filterActive = statusFilter !== "all";

  return (
    <div className="adminPage">
      <header className="adminHeader">
        <div className="adminHeaderMain">
          <p className="adminEyebrow">Platform admin</p>
          <h1 className="adminHeaderTitle">Content reports</h1>
          <p className="adminHeaderSubtitle">
            Review flagged content, update status, and add admin notes
          </p>
        </div>
        <div className="adminHeaderActions">
          <ThemeToggle className="hidden md:flex" />
        </div>
      </header>

      {loading ? (
        <AdminListSkeleton />
      ) : loadError ? (
        <div className={styles.errorPanel} role="alert">
          <p className={styles.errorPanelText}>
            <Warning size={16} weight="fill" aria-hidden />
            {loadError}
          </p>
          <Button type="button" onClick={() => void load()}>
            Retry
          </Button>
        </div>
      ) : (
        <>
          <div className={styles.statsGrid}>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.total}</p>
              <p className={styles.statLabel}>In view</p>
              <p className={styles.statMeta}>
                {filterActive ? statusFilter : "All statuses"}
              </p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.open}</p>
              <p className={styles.statLabel}>Open</p>
              <p className={styles.statMeta}>Needs triage</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.reviewing}</p>
              <p className={styles.statLabel}>Reviewing</p>
              <p className={styles.statMeta}>In progress</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>
                {counts.resolved + counts.dismissed}
              </p>
              <p className={styles.statLabel}>Closed</p>
              <p className={styles.statMeta}>
                {counts.resolved} resolved · {counts.dismissed} dismissed
              </p>
            </article>
          </div>

          {counts.total > 0 ? (
            <article className={styles.distCard}>
              <p className={styles.chartTitle}>Queue mix</p>
              <div className={styles.distBars}>
                {distRows.map((row) => (
                  <div key={row.status} className={styles.distRow}>
                    <span className={styles.distLabel}>{row.status}</span>
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
            <div className={styles.filterField}>
              <label
                className={styles.filterLabel}
                htmlFor="admin-reports-status"
              >
                Status
              </label>
              <select
                id="admin-reports-status"
                value={statusFilter}
                onChange={(e) => setStatusFilter(e.target.value)}
                aria-label="Filter by status"
              >
                <option value="all">All statuses</option>
                <option value="open">Open</option>
                <option value="reviewing">Reviewing</option>
                <option value="resolved">Resolved</option>
                <option value="dismissed">Dismissed</option>
              </select>
            </div>
          </div>

          <div className={styles.filterMeta}>
            <p className={styles.resultCount}>
              {counts.total === 0
                ? "No reports"
                : `${counts.total} report${counts.total === 1 ? "" : "s"}`}
              {refreshing ? " · Updating…" : null}
            </p>
            {filterActive ? (
              <button
                type="button"
                className={styles.filterClear}
                onClick={() => setStatusFilter("all")}
              >
                Clear filter
              </button>
            ) : null}
          </div>

          {counts.total === 0 ? (
            <div className={styles.emptyState} role="status">
              <div className={styles.emptyStateIcon} aria-hidden>
                <Flag size={22} weight="duotone" />
              </div>
              <p className={styles.emptyStateTitle}>
                {filterActive
                  ? `No ${statusFilter} reports`
                  : "No content reports yet"}
              </p>
              <p className={styles.emptyStateDesc}>
                {filterActive
                  ? "Try another status filter, or clear the filter to see the full queue."
                  : "When users flag courses, lessons, or other content, those reports appear here."}
              </p>
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
                    <TableHead>Type</TableHead>
                    <TableHead>Content ID</TableHead>
                    <TableHead>Reporter</TableHead>
                    <TableHead>Reason</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead>Created</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {reports.map((r) => (
                    <TableRow
                      key={r.id}
                      className={styles.clickableRow}
                      tabIndex={0}
                      role="button"
                      onClick={() => openReport(r)}
                      onKeyDown={(e: KeyboardEvent<HTMLTableRowElement>) => {
                        if (e.key === "Enter" || e.key === " ") {
                          e.preventDefault();
                          openReport(r);
                        }
                      }}
                      aria-label={`Open report from ${r.reporterEmail}`}
                    >
                      <TableCell data-label="Type">
                        {r.contentType ?? "—"}
                      </TableCell>
                      <TableCell
                        data-label="Content ID"
                        className={styles.monoId}
                      >
                        {r.contentId.slice(0, 8)}…
                      </TableCell>
                      <TableCell data-label="Reporter">
                        {r.reporterEmail}
                      </TableCell>
                      <TableCell
                        data-label="Reason"
                        className={styles.reasonCell}
                      >
                        {r.reason}
                      </TableCell>
                      <TableCell data-label="Status">
                        <Badge
                          variant={
                            REPORT_STATUS_VARIANT[r.status ?? "open"] ??
                            "outline"
                          }
                        >
                          {r.status ?? "open"}
                        </Badge>
                      </TableCell>
                      <TableCell data-label="Created">
                        {r.createdAt
                          ? format(new Date(r.createdAt), "MMM d, yyyy")
                          : "—"}
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </div>
          )}
        </>
      )}

      <Sheet
        open={selected !== null}
        onOpenChange={(open) => {
          if (!open) setSelected(null);
        }}
      >
        <SheetContent className="sm:max-w-lg">
          <SheetHeader>
            <SheetTitle>Report details</SheetTitle>
            <SheetDescription>
              Update status and leave notes for the moderation queue.
            </SheetDescription>
          </SheetHeader>
          {selected ? (
            <div className={styles.sheetBody}>
              <div className={styles.detailGrid}>
                <Detail label="Type" value={selected.contentType ?? "—"} />
                <Detail label="Content ID" value={selected.contentId} mono />
                <Detail label="Reporter" value={selected.reporterEmail} />
                <Detail label="Reason" value={selected.reason} />
                <Detail
                  label="Created"
                  value={
                    selected.createdAt
                      ? format(
                          new Date(selected.createdAt),
                          "MMM d, yyyy · h:mm a",
                        )
                      : "—"
                  }
                />
              </div>
              <label className={styles.detailLabel} htmlFor="report-status">
                Status
              </label>
              <select
                id="report-status"
                className={styles.sheetSelect}
                value={statusDraft}
                onChange={(e) =>
                  setStatusDraft(e.target.value as ContentReportStatus)
                }
                disabled={saving}
              >
                <option value="open">Open</option>
                <option value="reviewing">Reviewing</option>
                <option value="resolved">Resolved</option>
                <option value="dismissed">Dismissed</option>
              </select>
              <label className={styles.detailLabel} htmlFor="admin-notes">
                Admin notes
              </label>
              <textarea
                id="admin-notes"
                className={styles.notesArea}
                value={notes}
                onChange={(e) => setNotes(e.target.value)}
                placeholder="Optional context for other admins…"
                disabled={saving}
              />
              <div className={styles.sheetActions}>
                <Button
                  type="button"
                  onClick={() => void saveReport()}
                  disabled={saving}
                >
                  {saving ? "Saving…" : "Save changes"}
                </Button>
                <Button
                  type="button"
                  variant="outline"
                  onClick={() => setSelected(null)}
                  disabled={saving}
                >
                  Cancel
                </Button>
              </div>
            </div>
          ) : null}
        </SheetContent>
      </Sheet>
    </div>
  );
}

function Detail({
  label,
  value,
  mono,
}: {
  label: string;
  value: string;
  mono?: boolean;
}) {
  return (
    <div className={styles.detailRow}>
      <span className={styles.detailLabel}>{label}</span>
      <span
        className={
          mono
            ? `text-right break-all ${styles.monoId}`
            : "text-right break-all"
        }
      >
        {value}
      </span>
    </div>
  );
}
