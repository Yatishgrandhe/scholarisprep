/**
 * Free Studying Sims tab bridge → live `src/sims` registry.
 * Packs self-register under src/sims/<subject>/**; this file must not list
 * lab implementations — only merges live manifests with planned placeholders.
 */

import "@/sims/catalog";
import { listSims } from "@/sims/catalog";
import type { FidelityMode } from "@/sims/contracts";

export type SimFidelity = FidelityMode;

export type SimCatalogEntry = {
  id: string;
  title: string;
  subject: string;
  fidelity: SimFidelity;
  status: "planned" | "available";
  examTags: string[];
  href?: string;
};

/** Placeholders only for labs not yet shipped as packs (live ids filtered out). */
const PLANNED: Omit<SimCatalogEntry, "status" | "href">[] = [
  {
    id: "equilibrium-le-chatelier",
    title: "Equilibrium / Le Châtelier",
    subject: "chemistry",
    fidelity: "illustrative",
    examTags: ["AP Chemistry"],
  },
  {
    id: "enzyme-kinetics",
    title: "Enzyme kinetics",
    subject: "biology",
    fidelity: "illustrative",
    examTags: ["AP Biology"],
  },
  {
    id: "slope-fields",
    title: "Slope fields",
    subject: "math",
    fidelity: "ideal",
    examTags: ["AP Calculus"],
  },
];

export function listFreeStudySims(): SimCatalogEntry[] {
  const live = listSims().map((sim) => ({
    id: sim.id,
    title: sim.title,
    subject: sim.subject,
    fidelity: sim.fidelity,
    status: "available" as const,
    examTags: sim.examTags.map((t) =>
      t.course ? `${t.board} · ${t.course}` : t.board,
    ),
    href: `/dashboard/free-study/sims/${sim.id}`,
  }));

  const liveIds = new Set(live.map((s) => s.id));
  const planned = PLANNED.filter((p) => !liveIds.has(p.id)).map((p) => ({
    ...p,
    status: "planned" as const,
  }));

  return [...live, ...planned];
}
