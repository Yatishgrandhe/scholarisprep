import { redirect } from "next/navigation";

type SearchParams = Promise<Record<string, string | string[] | undefined>>;

/**
 * The diagnostic is no longer part of onboarding. Legacy links and
 * bookmarks land on the optional dashboard diagnostic instead.
 */
export default async function LegacyOnboardingDiagnosticPage({
  searchParams,
}: {
  searchParams: SearchParams;
}) {
  const params = await searchParams;
  const program = typeof params.program === "string" ? params.program : null;
  redirect(
    program
      ? `/dashboard/diagnostic?program=${encodeURIComponent(program)}`
      : "/dashboard/diagnostic",
  );
}
