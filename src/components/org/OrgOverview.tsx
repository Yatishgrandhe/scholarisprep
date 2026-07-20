"use client";

import { useEffect, useState } from "react";
import { formatDistanceToNow } from "date-fns";
import { StatCard } from "@/components/marketing/cards/StatCard";
import { OrgPageHeader } from "@/components/org/OrgPageHeader";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import {
  fetchOrgOverview,
  type OrgCourseRow,
  type OrgMemberActivityRow,
  type OrgOverviewStats,
} from "@/lib/org/queries";
import styles from "@/app/org/org.module.css";

export function OrgOverview() {
  const { profile } = useAuth();
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState<OrgOverviewStats | null>(null);
  const [topCourses, setTopCourses] = useState<OrgCourseRow[]>([]);
  const [memberActivity, setMemberActivity] = useState<OrgMemberActivityRow[]>(
    [],
  );

  useEffect(() => {
    queueMicrotask(() => {
      if (!profile?.org_id) {
        setLoading(false);
        return;
      }

      void (async () => {
        const supabase = createClient();
        const { data: members } = await supabase
          .from("profiles")
          .select("id")
          .eq("org_id", profile.org_id!);

        const memberIds = (members ?? []).map((m) => m.id);
        const result = await fetchOrgOverview(
          supabase,
          profile.org_id!,
          memberIds,
        );
        setStats(result.stats);
        setTopCourses(result.topCourses);
        setMemberActivity(result.memberActivity);
        setLoading(false);
      })();
    });
  }, [profile?.org_id]);

  if (loading) {
    return (
      <>
        <OrgPageHeader
          title="Organization overview"
          subtitle="Track member engagement, course adoption, and learning outcomes."
        />
        <p className={styles.loading}>Loading overview…</p>
      </>
    );
  }

  if (!profile?.org_id) {
    return (
      <p className={styles.emptyState}>
        Your account is not linked to an organization yet. Contact support to
        finish setup.
      </p>
    );
  }

  return (
    <>
      <OrgPageHeader
        title="Organization overview"
        subtitle="Track member engagement, course adoption, and learning outcomes."
      />

      <div className={styles.statsRow}>
        <StatCard
          label="Active members"
          value={String(stats?.activeMembers ?? 0)}
        />
        <StatCard
          label="Courses assigned"
          value={String(stats?.coursesAssigned ?? 0)}
        />
        <StatCard
          label="Average completion rate"
          value={`${stats?.avgCompletionRate ?? 0}%`}
        />
        <StatCard
          label="Average score improvement"
          value={
            (stats?.avgScoreImprovement ?? 0) >= 0
              ? `+${stats?.avgScoreImprovement ?? 0}`
              : String(stats?.avgScoreImprovement ?? 0)
          }
        />
      </div>

      <div className={styles.grid2}>
        <section className={styles.card}>
          <h2 className={styles.cardTitle}>Top courses</h2>
          <div className={`${styles.tableWrap} responsiveTable`}>
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Course</TableHead>
                  <TableHead>Assigned</TableHead>
                  <TableHead>Completion</TableHead>
                  <TableHead>Avg score</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {topCourses.length === 0 ? (
                  <TableRow>
                    <TableCell colSpan={4} className={styles.emptyState}>
                      No course assignments yet.
                    </TableCell>
                  </TableRow>
                ) : (
                  topCourses.map((course) => (
                    <TableRow key={course.courseId}>
                      <TableCell data-label="Course">{course.title}</TableCell>
                      <TableCell data-label="Assigned">{course.assignedCount}</TableCell>
                      <TableCell data-label="Completion">{course.completionRate}%</TableCell>
                      <TableCell data-label="Avg score">
                        {course.avgScore > 0 ? course.avgScore : "—"}
                      </TableCell>
                    </TableRow>
                  ))
                )}
              </TableBody>
            </Table>
          </div>
        </section>

        <section className={styles.card}>
          <h2 className={styles.cardTitle}>Member activity</h2>
          <div className={`${styles.tableWrap} responsiveTable`}>
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Member</TableHead>
                  <TableHead>Last active</TableHead>
                  <TableHead>Questions (7d)</TableHead>
                  <TableHead>Courses done</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {memberActivity.length === 0 ? (
                  <TableRow>
                    <TableCell colSpan={4} className={styles.emptyState}>
                      No members in this organization yet.
                    </TableCell>
                  </TableRow>
                ) : (
                  memberActivity.map((row) => (
                    <TableRow key={row.memberId}>
                      <TableCell data-label="Member">{row.name}</TableCell>
                      <TableCell data-label="Last active">
                        {row.lastActive
                          ? formatDistanceToNow(new Date(row.lastActive), {
                              addSuffix: true,
                            })
                          : "—"}
                      </TableCell>
                      <TableCell data-label="Questions (7d)">{row.questionsThisWeek}</TableCell>
                      <TableCell data-label="Courses done">{row.coursesCompleted}</TableCell>
                    </TableRow>
                  ))
                )}
              </TableBody>
            </Table>
          </div>
        </section>
      </div>
    </>
  );
}
