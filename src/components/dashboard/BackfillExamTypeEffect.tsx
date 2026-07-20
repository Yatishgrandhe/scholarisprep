"use client";

import { useEffect, useRef } from "react";
import { useAuth } from "@/hooks/useAuth";

export function BackfillExamTypeEffect() {
  const { user } = useAuth();
  const ran = useRef(false);

  useEffect(() => {
    if (!user || ran.current) return;
    ran.current = true;

    const run = () => {
      void fetch("/api/dashboard/backfill-exam-type", { method: "POST" });
    };

    if (typeof requestIdleCallback !== "undefined") {
      const id = requestIdleCallback(run, { timeout: 4000 });
      return () => cancelIdleCallback(id);
    }

    const timer = window.setTimeout(run, 2000);
    return () => window.clearTimeout(timer);
  }, [user]);

  return null;
}
