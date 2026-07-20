import type { Metadata } from "next";
import "@/sims/catalog";
import { listSims } from "@/sims/catalog";
import type { SimManifestMeta } from "@/sims/contracts";
import { LabsShell } from "@/components/sims/LabsShell";

export const metadata: Metadata = {
  title: "STEM Labs",
};

function toMeta(sim: ReturnType<typeof listSims>[number]): SimManifestMeta {
  const { load: _load, ...meta } = sim;
  return meta;
}

/**
 * Fullscreen LabsShell — own sidebar; main dashboard chrome hidden via
 * `isLabsFullscreenRoute` in DashboardShell.
 */
export default function LabsLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const sims = listSims().map(toMeta);
  return <LabsShell sims={sims}>{children}</LabsShell>;
}
