import { Suspense } from "react";
import { CourseTutorSubjectSync } from "@/components/tutor/CourseTutorSubjectSync";

export default function CourseTutorLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <Suspense fallback={null}>
        <CourseTutorSubjectSync />
      </Suspense>
      {children}
    </>
  );
}
