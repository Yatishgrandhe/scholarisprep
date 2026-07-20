import { NextRequest, NextResponse } from "next/server";
import { verifyCronAuth } from "@/lib/cronAuth";

/**
 * Cron-driven question pre-generation.
 *
 * The platform now runs every AI call on the *signed-in user's own* Mistral
 * key (see `@/lib/ai/mistral`). There is no server/env AI key and this
 * cron route has no signed-in user, so it has no key to generate with and is
 * therefore disabled. Question generation happens on-demand via
 * `POST /api/ai/generate-questions-batch`, which uses the requesting user's key.
 */
export async function GET(req: NextRequest) {
  if (!verifyCronAuth(req)) {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  return NextResponse.json(
    {
      error:
        "Background pre-generation is disabled. AI generation now requires a " +
        "signed-in user's own Mistral key, which a cron job does not have. " +
        "Use POST /api/ai/generate-questions-batch instead.",
      code: "PREGENERATION_DISABLED",
    },
    { status: 503 },
  );
}
