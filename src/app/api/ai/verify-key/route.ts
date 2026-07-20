import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { createClient } from "@/lib/supabase/server";
import { isValidAiKey, verifyMistralKey } from "@/lib/ai/mistral";

/**
 * Stateless Mistral key check.
 *
 * The key itself is stored ONLY in the browser's localStorage — it never
 * touches our database. This endpoint just confirms Mistral accepts the key so
 * the Settings / onboarding UI can give clear feedback before saving it
 * locally. A transient network failure is treated as "ok" so the user isn't
 * blocked from saving a key they know is good.
 */
const schema = z.object({
  api_key: z.string().trim().min(20).max(400),
});

export async function POST(req: NextRequest) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const apiKey = parsed.data.api_key.trim();
  if (!isValidAiKey(apiKey)) {
    return NextResponse.json(
      { valid: false, error: "That doesn't look like a valid Mistral API key." },
      { status: 400 },
    );
  }

  const verdict = await verifyMistralKey(apiKey);
  if (verdict === false) {
    return NextResponse.json(
      {
        valid: false,
        error:
          "Mistral rejected that key. Double-check it at https://console.mistral.ai/api-keys.",
      },
      { status: 400 },
    );
  }

  // `true` (accepted) or `null` (couldn't reach Mistral) → let the client save.
  return NextResponse.json({ valid: true, last4: apiKey.slice(-4) });
}
