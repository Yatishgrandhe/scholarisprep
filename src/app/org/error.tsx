"use client";

import { RouteError } from "@/components/shared/RouteError";

export default function OrgError({
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
      homeHref="/org"
      homeLabel="Go to organization"
    />
  );
}
