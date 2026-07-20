"use client";

import { useEffect, useMemo, useState } from "react";
import { useTheme } from "next-themes";
import { format, subDays } from "date-fns";
import type { DateRange } from "react-day-picker";
import {
  LineChart,
  Line,
  BarChart,
  Bar,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  Legend,
} from "recharts";
import { DownloadSimple } from "@phosphor-icons/react";
import { OrgPageHeader } from "@/components/org/OrgPageHeader";
import { TopicHeatmapGrid } from "@/components/org/TopicHeatmapGrid";
import { Button } from "@/components/ui/button";
import { Calendar } from "@/components/ui/calendar";
import { Card } from "@/components/ui/card";
import { ChartScroll } from "@/components/shared/ChartScroll";
import {
  Popover,
  PopoverContent,
  PopoverTrigger,
} from "@/components/ui/popover";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import {
  fetchOrgCourseFunnel,
  fetchOrgMemberProgressSeries,
  fetchOrgMemberTable,
  fetchOrgMembers,
  fetchOrgTopicHeatmap,
  type CourseFunnelRow,
  type MemberProgressSeries,
  type OrgMemberTableRow,
  type OrgReportDateRange,
} from "@/lib/org/queries";
import type { TopicHeatmapCell } from "@/lib/dashboard/topicHeatmap";
import styles from "@/app/org/org.module.css";

const LINE_COLORS = [
  "hsl(var(--primary))",
  "hsl(var(--accent))",
  "hsl(var(--score-positive))",
  "hsl(var(--exam-jamb))",
  "hsl(var(--exam-sat))",
  "hsl(var(--score-negative))",
];

const defaultRange: DateRange = {
  from: subDays(new Date(), 30),
  to: new Date(),
};

export function OrgReports() {
  const { profile } = useAuth();
  const { resolvedTheme } = useTheme();
  const theme = useMemo(() => chartTheme(), [resolvedTheme]);

  const [loading, setLoading] = useState(true);
  const [range, setRange] = useState<DateRange | undefined>(defaultRange);
  const [progressSeries, setProgressSeries] = useState<MemberProgressSeries[]>(
    [],
  );
  const [memberRows, setMemberRows] = useState<OrgMemberTableRow[]>([]);
  const [funnel, setFunnel] = useState<CourseFunnelRow[]>([]);
  const [heatmap, setHeatmap] = useState<TopicHeatmapCell[]>([]);

  const reportRange = useMemo((): OrgReportDateRange | undefined => {
    if (!range?.from || !range?.to) return undefined;
    return { from: range.from, to: range.to };
  }, [range]);

  useEffect(() => {
    queueMicrotask(() => {
      if (!profile?.org_id) {
        setLoading(false);
        return;
      }

      void (async () => {
        setLoading(true);
        const supabase = createClient();
        const members = await fetchOrgMembers(supabase, profile.org_id!);
        const memberIds = members.map((m) => m.id);

        const [series, funnelRows, heatmapCells, tableRows] = await Promise.all([
          fetchOrgMemberProgressSeries(supabase, members, reportRange),
          fetchOrgCourseFunnel(supabase, memberIds, reportRange),
          fetchOrgTopicHeatmap(supabase, memberIds, reportRange),
          fetchOrgMemberTable(supabase, profile.org_id!),
        ]);

        setProgressSeries(series);
        setFunnel(funnelRows);
        setHeatmap(heatmapCells);
        setMemberRows(tableRows);
        setLoading(false);
      })();
    });
  }, [profile?.org_id, reportRange]);

  const chartSeries = useMemo(
    () => progressSeries.slice(0, 6),
    [progressSeries],
  );

  const lineData = useMemo(() => {
    const dateSet = new Set<string>();
    for (const series of chartSeries) {
      for (const point of series.data) {
        dateSet.add(point.date);
      }
    }
    const dates = [...dateSet].sort();
    return dates.map((date) => {
      const row: Record<string, string | number> = { date };
      for (const series of chartSeries) {
        const point = series.data.find((p) => p.date === date);
        row[series.name] = point?.progress ?? 0;
      }
      return row;
    });
  }, [chartSeries]);

  const rangeLabel =
    range?.from && range?.to
      ? `${format(range.from, "MMM d, yyyy")} – ${format(range.to, "MMM d, yyyy")}`
      : "Select date range";

  const tooltipStyle = useMemo(
    () => ({
      backgroundColor: theme.tooltipBg,
      border: `1px solid ${theme.tooltipBorder}`,
      borderRadius: "var(--radius-md)",
      color: theme.tooltipText,
      fontSize: "0.8125rem",
    }),
    [theme],
  );

  const handleExportCsv = () => {
    const rangeFrom = range?.from ? format(range.from, "yyyy-MM-dd") : "all";
    const rangeTo = range?.to ? format(range.to, "yyyy-MM-dd") : "all";
    const rows: string[][] = [
      ["Report", "Date range", `${rangeFrom} to ${rangeTo}`],
      ["Report", "Exported at", format(new Date(), "yyyy-MM-dd HH:mm")],
      [],
      ["Members", "Name", "Email", "Role", "Courses", "Progress %", "Last active"],
      ...memberRows.map((m) => [
        "Members",
        m.full_name ?? "",
        m.email,
        m.role,
        String(m.coursesAssigned),
        String(m.progressPercent),
        m.lastActive ? format(new Date(m.lastActive), "yyyy-MM-dd") : "",
      ]),
      [],
      ["Progress", "Member", "Date", "Progress %"],
      ...progressSeries.flatMap((series) =>
        series.data.map((point) => [
          "Progress",
          series.name,
          point.date,
          String(point.progress),
        ]),
      ),
      [],
      ["Funnel", "Stage", "Count"],
      ...funnel.map((f) => ["Funnel", f.stage, String(f.count)]),
      [],
      ["Heatmap", "Topic", "Accuracy %", "Attempts"],
      ...heatmap.map((h) => [
        "Heatmap",
        h.topic,
        h.accuracy !== null ? String(h.accuracy) : "",
        String(h.attempted),
      ]),
    ];

    const csvBody = rows.map((r) => r.map(escapeCsv).join(",")).join("\n");
    const csv = `\uFEFF${csvBody}`;
    const blob = new Blob([csv], { type: "text/csv;charset=utf-8" });
    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");
    link.href = url;
    link.download = `org-report-${rangeFrom}_${rangeTo}.csv`;
    link.style.display = "none";
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);
  };

  if (loading) {
    return (
      <>
        <OrgPageHeader
          title="Reports"
          subtitle="Analyze learning trends and export organization data."
        />
        <p className={styles.loading}>Loading reports…</p>
      </>
    );
  }

  return (
    <>
      <OrgPageHeader
        title="Reports"
        subtitle="Analyze learning trends and export organization data."
        actions={
          <>
            <DateRangePopover range={range} onRangeChange={setRange} label={rangeLabel} />
            <Button type="button" variant="outline" onClick={handleExportCsv}>
              <DownloadSimple size={18} weight="bold" aria-hidden />
              Export CSV
            </Button>
          </>
        }
      />

      <div className={styles.reportsGrid}>
        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Member progress over time</p>
          {lineData.length === 0 ? (
            <p className={styles.emptyChart}>
              Progress snapshots appear as members enroll in courses.
            </p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={260}>
              <LineChart data={lineData}>
                <CartesianGrid strokeDasharray="3 3" stroke={theme.grid} />
                <XAxis dataKey="date" stroke={theme.axis} fontSize={10} />
                <YAxis domain={[0, 100]} stroke={theme.axis} fontSize={11} />
                <Tooltip contentStyle={tooltipStyle} />
                <Legend wrapperStyle={{ color: theme.label }} />
                {chartSeries.map((series, index) => (
                  <Line
                    key={series.memberId}
                    type="monotone"
                    dataKey={series.name}
                    stroke={LINE_COLORS[index % LINE_COLORS.length]}
                    strokeWidth={2}
                    dot={false}
                  />
                ))}
              </LineChart>
            </ResponsiveContainer>
            </ChartScroll>
          )}
        </Card>

        <Card className={styles.chartCard}>
          <p className={styles.chartTitle}>Course completion funnel</p>
          {funnel.every((f) => f.count === 0) ? (
            <p className={styles.emptyChart}>No enrollments in this period yet.</p>
          ) : (
            <ChartScroll>
            <ResponsiveContainer width="100%" height={260}>
              <BarChart data={funnel}>
                <CartesianGrid strokeDasharray="3 3" stroke={theme.grid} />
                <XAxis dataKey="stage" stroke={theme.axis} fontSize={11} />
                <YAxis allowDecimals={false} stroke={theme.axis} fontSize={11} />
                <Tooltip contentStyle={tooltipStyle} />
                <Bar
                  dataKey="count"
                  fill="hsl(var(--primary))"
                  radius={[4, 4, 0, 0]}
                />
              </BarChart>
            </ResponsiveContainer>
            </ChartScroll>
          )}
        </Card>
      </div>

      <section className={`${styles.card} ${styles.heatmapSection}`}>
        <h2 className={styles.cardTitle}>Topic weakness heatmap</h2>
        <TopicHeatmapGrid cells={heatmap} />
      </section>
    </>
  );
}

function DateRangePopover({
  range,
  onRangeChange,
  label,
}: {
  range: DateRange | undefined;
  onRangeChange: (range: DateRange | undefined) => void;
  label: string;
}) {
  return (
    <Popover>
      <PopoverTrigger
        render={
          <Button type="button" variant="outline" aria-label="Select date range">
            {label}
          </Button>
        }
      />
      <PopoverContent className="w-auto p-0" align="end">
        <Calendar
          mode="range"
          selected={range}
          onSelect={onRangeChange}
          numberOfMonths={2}
          defaultMonth={range?.from}
        />
      </PopoverContent>
    </Popover>
  );
}

function escapeCsv(value: string): string {
  if (value.includes(",") || value.includes('"') || value.includes("\n")) {
    return `"${value.replace(/"/g, '""')}"`;
  }
  return value;
}
