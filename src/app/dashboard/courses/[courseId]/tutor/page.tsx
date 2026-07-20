"use client";

import { useParams } from "next/navigation";
import { CourseTutorHub } from "@/components/tutor/CourseTutorHub";

export default function CourseTutorPage() {
  const params = useParams();
  const courseId = decodeURIComponent(params.courseId as string);

  return <CourseTutorHub initialCourseId={courseId} />;
}
