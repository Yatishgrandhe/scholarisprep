import { Suspense } from "react";
import { TutorExamTypeSync } from "@/components/tutor/TutorExamTypeSync";

export default function TutorLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <Suspense fallback={null}>
        <TutorExamTypeSync />
      </Suspense>
      {children}
    </>
  );
}
