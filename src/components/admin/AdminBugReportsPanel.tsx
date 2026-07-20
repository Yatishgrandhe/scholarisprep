"use client";

import { useCallback, useState, type ReactNode } from "react";
import { format } from "date-fns";
import { Bug, CalendarBlank, Envelope, Eye, Globe } from "@phosphor-icons/react";
import { toast } from "sonner";
import { useMountLoad } from "@/hooks/useMountLoad";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Sheet, SheetContent, SheetDescription, SheetHeader, SheetTitle } from "@/components/ui/sheet";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";
import styles from "@/app/admin/admin.module.css";

type Status = "open" | "reviewing" | "resolved" | "dismissed";
type BugReport = { id: string; reporter_email: string | null; page_url: string; description: string; status: Status; admin_notes: string | null; created_at: string };

const variants: Record<Status, "default" | "secondary" | "outline" | "destructive"> = { open: "destructive", reviewing: "secondary", resolved: "default", dismissed: "outline" };

export function AdminBugReportsPanel() {
  const [reports, setReports] = useState<BugReport[]>([]);
  const [status, setStatus] = useState<Status | "all">("all");
  const [selected, setSelected] = useState<BugReport | null>(null);
  const [notes, setNotes] = useState("");
  const [statusDraft, setStatusDraft] = useState<Status>("open");
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  const load = useCallback(async () => {
    setLoading(true);
    try {
      const res = await fetch(`/api/admin/bug-reports?status=${status}`, { credentials: "same-origin" });
      const json = (await res.json().catch(() => ({}))) as { reports?: BugReport[]; error?: string };
      if (!res.ok) throw new Error(json.error ?? "Could not load bug reports");
      setReports(json.reports ?? []);
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Could not load bug reports");
    } finally { setLoading(false); }
  }, [status]);

  useMountLoad(load, [load]);

  const open = (report: BugReport) => { setSelected(report); setNotes(report.admin_notes ?? ""); setStatusDraft(report.status); };
  const save = async () => {
    if (!selected) return;
    setSaving(true);
    try {
      const res = await fetch(`/api/admin/bug-reports/${selected.id}`, { method: "PATCH", credentials: "same-origin", headers: { "Content-Type": "application/json" }, body: JSON.stringify({ status: statusDraft, admin_notes: notes || null }) });
      if (!res.ok) throw new Error("Could not update bug report");
      toast.success("Bug report updated"); setSelected(null); void load();
    } catch (error) { toast.error(error instanceof Error ? error.message : "Could not update bug report"); }
    finally { setSaving(false); }
  };

  const openCount = reports.filter((report) => report.status === "open").length;
  return <div className="adminPage">
    <header className="adminHeader"><div className="adminHeaderMain"><p className="adminEyebrow">Platform admin</p><h1 className="adminHeaderTitle">Bug reports</h1><p className="adminHeaderSubtitle">Triage product issues with the exact page where they occurred.</p></div></header>
    <div className={styles.statsGrid}><article className={styles.statCard}><p className={styles.statValue}>{reports.length}</p><p className={styles.statLabel}>In view</p></article><article className={styles.statCard}><p className={styles.statValue}>{openCount}</p><p className={styles.statLabel}>Open bugs</p></article></div>
    <div className={styles.filterRow}><div className={styles.filterField}><label className={styles.filterLabel} htmlFor="bug-status">Status</label><select id="bug-status" value={status} onChange={(event) => setStatus(event.target.value as Status | "all")}><option value="all">All statuses</option><option value="open">Open</option><option value="reviewing">Reviewing</option><option value="resolved">Resolved</option><option value="dismissed">Dismissed</option></select></div></div>
    {loading ? <p className={styles.resultCount}>Loading bug reports…</p> : reports.length === 0 ? <div className={styles.emptyState}><div className={styles.emptyStateIcon}><Bug size={22} weight="duotone" /></div><p className={styles.emptyStateTitle}>No {status === "all" ? "bug reports" : status + " bug reports"}</p><p className={styles.emptyStateDesc}>New reports submitted from the dashboard will appear here.</p></div> : <div className={`${styles.tableWrap} adminTableWrap responsiveTable`}><Table><TableHeader><TableRow><TableHead>Reporter</TableHead><TableHead>Page</TableHead><TableHead>Issue</TableHead><TableHead>Status</TableHead><TableHead>Created</TableHead><TableHead className={styles.actionHead}>Action</TableHead></TableRow></TableHeader><TableBody>{reports.map((report) => <TableRow key={report.id} className={styles.bugReportRow}><TableCell data-label="Reporter">{report.reporter_email ?? "Anonymous"}</TableCell><TableCell data-label="Page" className={styles.reasonCell}>{report.page_url}</TableCell><TableCell data-label="Issue" className={styles.reasonCell}>{report.description}</TableCell><TableCell data-label="Status"><Badge variant={variants[report.status]}>{report.status}</Badge></TableCell><TableCell data-label="Created">{format(new Date(report.created_at), "MMM d, yyyy")}</TableCell><TableCell data-label="Action" className={styles.actionCell}><Button type="button" variant="ghost" size="sm" onClick={() => open(report)} aria-label={`View bug report from ${report.reporter_email ?? "anonymous reporter"}`}><Eye size={16} aria-hidden />View</Button></TableCell></TableRow>)}</TableBody></Table></div>}
    <Sheet open={selected !== null} onOpenChange={(isOpen) => { if (!isOpen) setSelected(null); }}><SheetContent className={`${styles.bugDetailSheet} sm:max-w-xl`}><SheetHeader className={styles.bugDetailHeader}><div className={styles.bugDetailTitleRow}><span className={styles.bugDetailIcon}><Bug size={20} weight="duotone" aria-hidden /></span><div><SheetTitle>Bug report details</SheetTitle><SheetDescription>Review the report context and update its triage status.</SheetDescription></div></div></SheetHeader>{selected ? <div className={styles.bugDetailBody}><section className={styles.bugIssueCard} aria-labelledby="bug-issue-heading"><div className={styles.bugSectionHeading}><span><Bug size={16} weight="duotone" aria-hidden /> Reported issue</span><Badge variant={variants[selected.status]}>{selected.status}</Badge></div><h2 id="bug-issue-heading" className="sr-only">Reported issue</h2><p className={styles.bugIssueText}>{selected.description}</p></section><section className={styles.bugContextCard} aria-label="Report context"><Detail icon={<Envelope size={16} aria-hidden />} label="Reporter" value={selected.reporter_email ?? "Anonymous"}/><Detail icon={<CalendarBlank size={16} aria-hidden />} label="Submitted" value={format(new Date(selected.created_at), "MMM d, yyyy · h:mm a")}/><Detail icon={<Globe size={16} aria-hidden />} label="Page" value={selected.page_url} href={selected.page_url}/></section><section className={styles.bugTriageSection} aria-labelledby="bug-triage-heading"><div><p className={styles.bugSectionEyebrow}>Admin workspace</p><h2 id="bug-triage-heading" className={styles.bugTriageTitle}>Triage this report</h2></div><div className={styles.bugField}><label htmlFor="bug-report-status">Status</label><select id="bug-report-status" className={styles.sheetSelect} value={statusDraft} onChange={(event) => setStatusDraft(event.target.value as Status)} disabled={saving}><option value="open">Open</option><option value="reviewing">Reviewing</option><option value="resolved">Resolved</option><option value="dismissed">Dismissed</option></select></div><div className={styles.bugField}><label htmlFor="bug-admin-notes">Admin notes</label><textarea id="bug-admin-notes" className={styles.notesArea} value={notes} onChange={(event) => setNotes(event.target.value)} placeholder="Add investigation notes or next steps…" disabled={saving}/></div></section><div className={styles.bugSheetActions}><Button type="button" variant="outline" onClick={() => setSelected(null)} disabled={saving}>Cancel</Button><Button type="button" onClick={() => void save()} disabled={saving}>{saving ? "Saving…" : "Save changes"}</Button></div></div> : null}</SheetContent></Sheet>
  </div>;
}

function Detail({ icon, label, value, href }: { icon: ReactNode; label: string; value: string; href?: string }) { const safeHref = href && /^(https?:)\/\//i.test(href) ? href : undefined; return <div className={styles.bugContextRow}><span className={styles.bugContextIcon}>{icon}</span><span className={styles.bugContextText}><span className={styles.bugContextLabel}>{label}</span>{safeHref ? <a className={styles.bugContextLink} href={safeHref} target="_blank" rel="noreferrer">{value}</a> : <span className={styles.bugContextValue}>{value}</span>}</span></div>; }
