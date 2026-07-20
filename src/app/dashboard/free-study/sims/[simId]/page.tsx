import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { ArrowLeft } from "@phosphor-icons/react/dist/ssr";
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
  const { simId } = await params;
  const sim = getSim(simId);
  return { title: sim ? `${sim.title} · STEM Lab` : "STEM Lab" };
}

export default async function FreeStudySimPage({ params }: Props) {
  const { simId } = await params;
  if (!getSim(simId)) notFound();

  return (
    <div className={styles.labPage}>
      <Link href="/dashboard/free-study/sims" className={styles.labBack}>
        <ArrowLeft size={16} weight="bold" aria-hidden />
        All labs
      </Link>
      <SimLabHost simId={simId} />
    </div>
  );
}
