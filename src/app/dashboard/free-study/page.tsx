import { FreeStudyHub } from "@/components/free-study/FreeStudyHub";
import { FreeStudyLanding } from "@/components/free-study/FreeStudyLanding";
import { resolveFreeStudyDest } from "@/lib/free-study/parseDest";

export default async function FreeStudyPage({
  searchParams,
}: {
  /** Contract uses `dest`; landing historically used `mode` — accept both. */
  searchParams: Promise<{ mode?: string; dest?: string }>;
}) {
  const params = await searchParams;
  const mode = resolveFreeStudyDest(params.dest, params.mode);

  if (mode) {
    // key forces remount when FreeStudyShell sidebar / deep links change ?dest=
    return <FreeStudyHub key={mode} initialMode={mode} />;
  }

  return <FreeStudyLanding />;
}
