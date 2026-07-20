import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { getAiKeyMode } from "@/lib/ai/keyPolicy";

/**
 * Public-safe mode probe for authenticated clients.
 * Response is intentionally `{ mode }` only — never key material,
 * never `platformKeyConfigured`, never env details.
 */
export async function GET() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const mode = await getAiKeyMode();
  // Explicit shape — do not spread policy/admin objects here.
  return NextResponse.json({ mode } as const);
}
