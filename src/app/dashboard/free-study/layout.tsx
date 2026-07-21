import type { Metadata } from "next";
import type { ReactNode } from "react";

export const metadata: Metadata = {
  title: "Free Studying",
};

export default function FreeStudyLayout({ children }: { children: ReactNode }) {
  return <>{children}</>;
}
