"use client";

import { useCallback, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import Link from "next/link";
import { format } from "date-fns";
import { toast } from "sonner";
import { Button, buttonVariants } from "@/components/ui/button";
import { cn } from "@/lib/utils";
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
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import dashboardStyles from "../dashboard/dashboard.module.css";
import styles from "./creator.module.css";

type CourseRow = {
  id: string;
  title: string;
  status: string | null;
  total_lessons: number | null;
  enrolled_count: number | null;
  created_at: string | null;
};

export default function CreatorDashboardPage() {
  const { user } = useAuth();
  const supabase = createClient();

  const [courses, setCourses] = useState<CourseRow[]>([]);
  const [totalLessons, setTotalLessons] = useState(0);
  const [totalEnrolled, setTotalEnrolled] = useState(0);
  const [loading, setLoading] = useState(true);
  const [deletingId, setDeletingId] = useState<string | null>(null);

  const load = useCallback(async () => {
    if (!user) return;
    await Promise.resolve();
    setLoading(true);

    const { data: rows } = await supabase
      .from("courses")
      .select("id, title, status, total_lessons, enrolled_count, created_at")
      .eq("creator_id", user.id)
      .order("created_at", { ascending: false });

    const list = rows ?? [];
    setCourses(list);
    setTotalLessons(
      list.reduce((sum, c) => sum + (c.total_lessons ?? 0), 0),
    );
    setTotalEnrolled(
      list.reduce((sum, c) => sum + (c.enrolled_count ?? 0), 0),
    );
    setLoading(false);
  }, [user, supabase]);

  useMountLoad(load, [load]);

  const handleDelete = async (courseId: string) => {
    setDeletingId(courseId);
    const { error } = await supabase.from("courses").delete().eq("id", courseId);
    setDeletingId(null);

    if (error) {
      toast.error(error.message);
      return;
    }

    toast.success("Course deleted");
    void load();
  };

  return (
    <>
      <div className={dashboardStyles.pageHeaderRow}>
        <header className={dashboardStyles.pageHeader}>
          <h1 className={dashboardStyles.pageTitle}>Creator Studio</h1>
          <p className={dashboardStyles.pageSubtitle}>
            Manage courses, lessons, and enrollments
          </p>
        </header>
        <div className="flex items-center gap-2">
          <Link
            href="/creator/courses/new"
            className={cn(buttonVariants())}
          >
            New course
          </Link>
          <ThemeToggle className="hidden md:flex" />
        </div>
      </div>

      <div className={styles.statsRow}>
        <div className={styles.statCard}>
          <p className={styles.statValue}>{courses.length}</p>
          <p className={styles.statLabel}>Total courses</p>
        </div>
        <div className={styles.statCard}>
          <p className={styles.statValue}>{totalEnrolled}</p>
          <p className={styles.statLabel}>Enrolled students</p>
        </div>
        <div className={styles.statCard}>
          <p className={styles.statValue}>{totalLessons}</p>
          <p className={styles.statLabel}>Total lessons</p>
        </div>
      </div>

      <div className={styles.tableWrap}>
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Title</TableHead>
              <TableHead>Status</TableHead>
              <TableHead>Lessons</TableHead>
              <TableHead>Enrolled</TableHead>
              <TableHead>Created</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {loading ? (
              <TableRow>
                <TableCell colSpan={6}>Loading…</TableCell>
              </TableRow>
            ) : courses.length === 0 ? (
              <TableRow>
                <TableCell colSpan={6}>
                  No courses yet.{" "}
                  <Link href="/creator/courses/new">Create your first course</Link>
                </TableCell>
              </TableRow>
            ) : (
              courses.map((course) => (
                <TableRow key={course.id}>
                  <TableCell className="font-medium">{course.title}</TableCell>
                  <TableCell>
                    <Badge variant={course.status === "published" ? "default" : "secondary"}>
                      {course.status ?? "draft"}
                    </Badge>
                  </TableCell>
                  <TableCell>{course.total_lessons ?? 0}</TableCell>
                  <TableCell>{course.enrolled_count ?? 0}</TableCell>
                  <TableCell>
                    {course.created_at
                      ? format(new Date(course.created_at), "MMM d, yyyy")
                      : "—"}
                  </TableCell>
                  <TableCell className="text-right">
                    <div className={styles.actions}>
                      <Link
                        href={`/creator/courses/${course.id}/edit`}
                        className={cn(buttonVariants({ variant: "outline", size: "sm" }))}
                      >
                        Edit
                      </Link>
                      <Link
                        href={`/creator/courses/${course.id}/analytics`}
                        className={cn(buttonVariants({ variant: "outline", size: "sm" }))}
                      >
                        Analytics
                      </Link>
                      <AlertDialog>
                        <AlertDialogTrigger
                          className={cn(
                            buttonVariants({ variant: "destructive", size: "sm" }),
                          )}
                        >
                          Delete
                        </AlertDialogTrigger>
                        <AlertDialogContent>
                          <AlertDialogHeader>
                            <AlertDialogTitle>Delete course?</AlertDialogTitle>
                            <AlertDialogDescription>
                              This permanently deletes &quot;{course.title}&quot;,
                              all lessons, and questions. This cannot be undone.
                            </AlertDialogDescription>
                          </AlertDialogHeader>
                          <AlertDialogFooter>
                            <AlertDialogCancel>Cancel</AlertDialogCancel>
                            <AlertDialogAction
                              onClick={() => void handleDelete(course.id)}
                              disabled={deletingId === course.id}
                            >
                              {deletingId === course.id ? "Deleting…" : "Delete"}
                            </AlertDialogAction>
                          </AlertDialogFooter>
                        </AlertDialogContent>
                      </AlertDialog>
                    </div>
                  </TableCell>
                </TableRow>
              ))
            )}
          </TableBody>
        </Table>
      </div>
    </>
  );
}

