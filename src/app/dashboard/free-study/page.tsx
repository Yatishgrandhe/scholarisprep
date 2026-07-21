import { FreeStudyLanding } from "@/components/free-study/FreeStudyLanding";
import { FreeStudyTutor } from "@/components/free-study/FreeStudyTutor";
import { FreeStudyNotes } from "@/components/free-study/FreeStudyNotes";

export default async function FreeStudyPage({
  searchParams,
}: {
  searchParams: Promise<{ mode?: string; dest?: string }>;
}) {
  const params = await searchParams;
  const dest = params.dest ?? params.mode;

  switch (dest) {
    case "tutor":
      return <FreeStudyTutor />;
    case "notes":
      return <FreeStudyNotes />;
    default:
      return <FreeStudyLanding />;
  }
}
