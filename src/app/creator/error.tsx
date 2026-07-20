"use client";

import { RouteError } from "@/components/shared/RouteError";

export default function CreatorError({
  error,
  reset,
}: {
  error: Error & { digest?: string };
  reset: () => void;
}) {
  return (
    <RouteError
      error={error}
      reset={reset}
      homeHref="/creator"
      homeLabel="Go to creator studio"
    />
  );
}
