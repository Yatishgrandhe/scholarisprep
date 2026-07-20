"use client";

import { useCallback, useEffect, useMemo, useState } from "react";
import { motion } from "framer-motion";
import { useTheme } from "next-themes";
import { formatDistanceToNow } from "date-fns";
import {
  Bar,
  BarChart,
  CartesianGrid,
  Line,
  LineChart,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { usePageRevealed } from "@/components/loading/usePageRevealed";
import { useReducedMotion } from "@/hooks/useReducedMotion";
import { chartTheme } from "@/lib/dashboard/chartTheme";
import { formatUsdFromCents } from "@/lib/admin/planAmounts";
import { planLabel, roleLabel } from "@/lib/admin/labels";
import type { PlatformOverviewData } from "@/lib/admin/overview-data";
import type { SubscriptionPlan, UserRole } from "@/types/supabase";
import styles from "@/app/admin/admin.module.css";

const chartEase = [0.22, 1, 0.36, 1] as const;

type PlatformOverviewProps = {
  initialData?: PlatformOverviewData | null;
  initialError?: string | null;
};

export function PlatformOverview({
  initialData = null,
  initialError = null,
}: PlatformOverviewProps) {
  const { resolvedTheme } = useTheme();
  const theme = useMemo(() => chartTheme(), [resolvedTheme]);
  const pageRevealed = usePageRevealed();
  const reducedMotion = useReducedMotion();

  const [data, setData] = useState<PlatformOverviewData | null>(initialData);
  const [loading, setLoading] = useState(!initialData && !initialError);
  const [error, setError] = useState<string | null>(initialError);
  const [refreshing, setRefreshing] = useState(false);

  const chartListVariants = useMemo(
    () => ({
      hidden: {},
      visible: {
        transition: {
          staggerChildren: reducedMotion ? 0 : 0.14,
          delayChildren: reducedMotion ? 0 : 0.06,
        },
      },
    }),
    [reducedMotion],
  );

  const chartCardVariants = useMemo(
    () => ({
      hidden: reducedMotion
        ? { opacity: 0 }
        : { opacity: 0, y: 28 },
      visible: {
        opacity: 1,
        y: 0,
        transition: {
          duration: reducedMotion ? 0.18 : 0.55,
          ease: chartEase,
        },
      },
    }),
    [reducedMotion],
  );

  const load = useCallback(async (isRefresh = false) => {
    if (isRefresh) {
      setRefreshing(true);
    } else {
      setLoading(true);
    }
    setError(null);
    try {
      const res = await fetch("/api/admin/overview", {
        credentials: "same-origin",
      });
      if (!res.ok) {
        const err = (await res.json().catch(() => ({}))) as { error?: string };
        setError(err.error ?? "Could not load platform overview");
        if (!isRefresh) setData(null);
        return;
      }
      const json = (await res.json()) as PlatformOverviewData;
      setData(json);
    } catch {
      setError("Network error loading platform overview. Check your connection.");
      if (!isRefresh) setData(null);
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, []);

  useEffect(() => {
    if (initialData || initialError) return;
    void load(false);
  }, [initialData, initialError, load]);

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

  if (loading) {
    return (
      <div className={`adminPage ${styles.overviewRoot}`} aria-busy="true">
        <header className="adminHeader">
          <div className="adminHeaderMain">
            <p className="adminEyebrow">Platform</p>
            <h1 className="adminHeaderTitle">Platform overview</h1>
            <p className="adminHeaderSubtitle">Loading live platform metrics…</p>
          </div>
        </header>
        <div className={styles.statsGrid}>
          {Array.from({ length: 5 }).map((_, i) => (
            <div
              key={i}
              className={`${styles.statCard} ${styles.overviewSkeleton}`}
            />
          ))}
        </div>
        <p className={styles.loading}>Fetching users, courses, and revenue…</p>
      </div>
    );
  }

  if (error && !data) {
    return (
      <div className={`adminPage ${styles.overviewRoot}`}>
        <header className="adminHeader">
          <div className="adminHeaderMain">
            <p className="adminEyebrow">Platform</p>
            <h1 className="adminHeaderTitle">Platform overview</h1>
            <p className="adminHeaderSubtitle">
              Stats could not be loaded. Retry or check admin data access.
            </p>
          </div>
        </header>
        <div className={styles.policyCard}>
          <p className={styles.policyWarning} role="alert">
            {error}
          </p>
          <div className={styles.policyActions}>
            <Button type="button" onClick={() => void load(false)}>
              Retry
            </Button>
          </div>
        </div>
      </div>
    );
  }

  if (!data) {
    return (
      <div className={`adminPage ${styles.overviewRoot}`}>
        <header className="adminHeader">
          <div className="adminHeaderMain">
            <h1 className="adminHeaderTitle">Platform overview</h1>
            <p className="adminHeaderSubtitle">No overview data yet.</p>
          </div>
        </header>
        <div className={styles.policyCard}>
          <p className={styles.policyWarning}>No data</p>
          <div className={styles.policyActions}>
            <Button type="button" onClick={() => void load(false)}>
              Retry
            </Button>
          </div>
        </div>
      </div>
    );
  }

  const roleBreakdown = Object.entries(data.usersByRole)
    .filter(([, n]) => n > 0)
    .map(([role, count]) => `${roleLabel(role as UserRole)}: ${count}`)
    .join(" · ");

  const statusBreakdown =
    Object.keys(data.coursesByStatus).length === 0
      ? "No courses yet"
      : Object.entries(data.coursesByStatus)
          .map(([status, count]) => `${status}: ${count}`)
          .join(" · ");

  const hasGrowth = data.userGrowth.some((d) => d.signups > 0);
  const hasRevenue = data.revenueByDay.some((d) => d.revenueCents > 0);

  return (
    <div className={`adminPage ${styles.overviewRoot}`}>
      <header className="adminHeader">
        <div className="adminHeaderMain">
          <p className="adminEyebrow">Platform</p>
          <h1 className="adminHeaderTitle">Platform overview</h1>
          <p className="adminHeaderSubtitle">
            Users, courses, revenue, and recent signups
          </p>
        </div>
        <div className="adminHeaderActions">
          <Button
            type="button"
            variant="outline"
            size="sm"
            disabled={refreshing}
            onClick={() => void load(true)}
          >
            {refreshing ? "Refreshing…" : "Refresh"}
          </Button>
          <ThemeToggle className="hidden md:flex" />
        </div>
      </header>

      {error ? (
        <p className={styles.policyWarning} role="status">
          {error} Showing last loaded data.
        </p>
      ) : null}

      <div className={styles.statsGrid}>
        <StatCard
          label="Total users"
          value={String(data.totalUsers)}
          meta={roleBreakdown || "No roles recorded"}
        />
        <StatCard
          label="Total courses"
          value={String(data.totalCourses)}
          meta={statusBreakdown}
        />
        <StatCard
          label="Revenue today"
          value={formatUsdFromCents(data.revenueTodayCents)}
          meta="New subscriptions (MRR est.)"
        />
        <StatCard
          label="Revenue this month"
          value={formatUsdFromCents(data.revenueMonthCents)}
          meta="New subscriptions (MRR est.)"
        />
        <StatCard
          label="New signups today"
          value={String(data.newSignupsToday)}
        />
      </div>

      <motion.div
        className={styles.chartsRow}
        initial="hidden"
        animate={pageRevealed ? "visible" : "hidden"}
        variants={chartListVariants}
      >
        <motion.article
          className={styles.chartCard}
          variants={chartCardVariants}
        >
          <p className={styles.chartTitle}>User growth (90 days)</p>
          {!hasGrowth ? (
            <p className={styles.overviewEmptyChart}>
              No new signups in the last 90 days. Total users: {data.totalUsers}.
            </p>
          ) : (
            <div className="chartScroll">
              <div className="chartScrollInner">
                <ResponsiveContainer
                  key={`users-${resolvedTheme ?? "light"}`}
                  width="100%"
                  height={240}
                >
                  <LineChart data={data.userGrowth}>
                    <CartesianGrid strokeDasharray="3 3" stroke={theme.grid} />
                    <XAxis dataKey="label" stroke={theme.axis} fontSize={10} />
                    <YAxis
                      stroke={theme.axis}
                      fontSize={11}
                      allowDecimals={false}
                    />
                    <Tooltip contentStyle={tooltipStyle} />
                    <Line
                      type="monotone"
                      dataKey="total"
                      stroke="var(--cobalt)"
                      strokeWidth={2}
                      dot={false}
                    />
                  </LineChart>
                </ResponsiveContainer>
              </div>
            </div>
          )}
        </motion.article>

        <motion.article
          className={styles.chartCard}
          variants={chartCardVariants}
        >
          <p className={styles.chartTitle}>Revenue (30 days)</p>
          {!hasRevenue ? (
            <p className={styles.overviewEmptyChart}>
              No paid subscription starts in the last 30 days.
            </p>
          ) : (
            <div className="chartScroll">
              <div className="chartScrollInner">
                <ResponsiveContainer
                  key={`revenue-${resolvedTheme ?? "light"}`}
                  width="100%"
                  height={240}
                >
                  <BarChart
                    data={data.revenueByDay.map((d) => ({
                      ...d,
                      revenue: d.revenueCents / 100,
                    }))}
                  >
                    <CartesianGrid strokeDasharray="3 3" stroke={theme.grid} />
                    <XAxis dataKey="label" stroke={theme.axis} fontSize={10} />
                    <YAxis stroke={theme.axis} fontSize={11} />
                    <Tooltip
                      contentStyle={tooltipStyle}
                      formatter={(value) => [
                        `$${Number(value).toFixed(0)}`,
                        "Revenue",
                      ]}
                    />
                    <Bar
                      dataKey="revenue"
                      fill="var(--cobalt)"
                      radius={[4, 4, 0, 0]}
                    />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </div>
          )}
        </motion.article>
      </motion.div>

      <h2 className="adminCardTitle">Recent signups</h2>
      {data.recentSignups.length === 0 ? (
        <p className={styles.overviewEmpty}>No signups yet.</p>
      ) : (
        <div className={`${styles.tableWrap} adminTableWrap responsiveTable`}>
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Name</TableHead>
                <TableHead>Email</TableHead>
                <TableHead>Role</TableHead>
                <TableHead>Plan</TableHead>
                <TableHead>Joined</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {data.recentSignups.map((row) => (
                <TableRow key={row.id}>
                  <TableCell data-label="Name">{row.name}</TableCell>
                  <TableCell data-label="Email">{row.email}</TableCell>
                  <TableCell data-label="Role">
                    <Badge variant="secondary">{roleLabel(row.role)}</Badge>
                  </TableCell>
                  <TableCell data-label="Plan">
                    <Badge variant="outline">
                      {planLabel(row.plan as SubscriptionPlan)}
                    </Badge>
                  </TableCell>
                  <TableCell data-label="Joined">
                    {row.createdAt
                      ? formatDistanceToNow(new Date(row.createdAt), {
                          addSuffix: true,
                        })
                      : "—"}
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </div>
      )}
    </div>
  );
}

function StatCard({
  label,
  value,
  meta,
}: {
  label: string;
  value: string;
  meta?: string;
}) {
  return (
    <article className={styles.statCard}>
      <p className={styles.statValue}>{value}</p>
      <p className={styles.statLabel}>{label}</p>
      {meta ? <p className={styles.statMeta}>{meta}</p> : null}
    </article>
  );
}
