import { FreeStudyHub, type FreeStudyMode } from "@/components/free-study/FreeStudyHub";
import { FreeStudyLanding } from "@/components/free-study/FreeStudyLanding";

const HUB_MODES = new Set<FreeStudyMode>(["tutor", "pdf", "voice", "notes"]);

function parseMode(value: string | undefined): FreeStudyMode | null {
  if (!value || !HUB_MODES.has(value as FreeStudyMode)) return null;
  return value as FreeStudyMode;
}

export default async function FreeStudyPage({
  searchParams,
}: {
  /** Contract uses `dest`; landing historically used `mode` — accept both. */
  searchParams: Promise<{ mode?: string; dest?: string }>;
}) {
  const params = await searchParams;
  const mode = parseMode(params.dest) ?? parseMode(params.mode);

  if (mode) {
    return <FreeStudyHub initialMode={mode} />;
  }

  return <FreeStudyLanding />;
}
