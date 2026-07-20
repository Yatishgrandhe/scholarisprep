"use client";

import { useEffect } from "react";
import { ErrorFallbackView } from "@/components/shared/ErrorFallbackView";

type RouteErrorProps = {
  error: Error & { digest?: string };
  reset: () => void;
  homeHref?: string;
  homeLabel?: string;
};

export function RouteError({
  error,
  reset,
  homeHref = "/",
  homeLabel = "Go home",
}: RouteErrorProps) {
  useEffect(() => {
    console.error("[RouteError]", error);
  }, [error]);

  return (
    <ErrorFallbackView
      onTryAgain={reset}
      homeHref={homeHref}
      homeLabel={homeLabel}
    />
  );
}
