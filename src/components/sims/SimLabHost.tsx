"use client";

import { useEffect, useState } from "react";
import "@/sims/catalog";
import { getSim } from "@/sims/catalog";
import type { SimLabComponent, SimManifest } from "@/sims/contracts";
import styles from "./sims-hub.module.css";

type Props = {
  /** Look up + dynamic-import on the client — never pass `load` from a Server Component. */
  simId: string;
};

/** Dynamically loads a self-registered lab component. */
export function SimLabHost({ simId }: Props) {
  const [manifest, setManifest] = useState<SimManifest | null>(null);
  const [Lab, setLab] = useState<SimLabComponent | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let cancelled = false;
    setLab(null);
    setError(null);

    const entry = getSim(simId);
    if (!entry) {
      setManifest(null);
      setError(`Unknown lab: ${simId}`);
      return;
    }
    setManifest(entry);

    void entry
      .load()
      .then((mod) => {
        if (!cancelled) setLab(() => mod.default);
      })
      .catch((err: unknown) => {
        if (!cancelled) {
          setError(err instanceof Error ? err.message : "Failed to load lab");
        }
      });
    return () => {
      cancelled = true;
    };
  }, [simId]);

  if (error) {
    return (
      <div className={styles.empty} role="alert">
        <p className={styles.emptyTitle}>Could not load lab</p>
        <p className={styles.emptyBody}>{error}</p>
      </div>
    );
  }

  if (!Lab || !manifest) {
    return (
      <div className={styles.loading} role="status" aria-live="polite">
        Loading {manifest?.title ?? simId}…
      </div>
    );
  }

  return <Lab manifest={manifest} />;
}
