import type { Metadata } from "next";
import { notFound } from "next/navigation";
import "@/sims/catalog";
import { getSim, listSimIds } from "@/sims/catalog";
import { SimLabHost } from "@/components/sims/SimLabHost";
import styles from "@/components/sims/sims-hub.module.css";

type Props = {
  params: Promise<{ simId: string }>;
};

export function generateStaticParams() {
  return listSimIds().map((simId) => ({ simId }));
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { simId: raw } = await params;
  const simId = decodeURIComponent(raw);
  const sim = getSim(simId);
  return { title: sim ? `${sim.title} · STEM Lab` : "STEM Lab" };
}

/** Lab stage — catalog nav / back live in LabsShell sidebar. */
export default async function StemLabPage({ params }: Props) {
  const { simId: raw } = await params;
  const simId = decodeURIComponent(raw);
  if (!getSim(simId)) notFound();

  return (
    <div className={styles.labPage}>
      <SimLabHost key={simId} simId={simId} />
    </div>
  );
}
