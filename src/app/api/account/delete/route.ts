import { NextResponse } from "next/server";
import { z } from "zod";
import { dbError, parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient, isSupabaseAdminConfigured } from "@/lib/supabase/admin";

const bodySchema = z.object({
  confirmation: z.literal("DELETE"),
});

export async function POST(request: Request) {
  const csrfFailure = verifyCsrf(request);
  if (csrfFailure) return csrfFailure;

  if (!isSupabaseAdminConfigured()) {
    return NextResponse.json(
      { error: "Account deletion is not configured on this server" },
      { status: 503 },
    );
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const parsed = await parseJsonBody(request, bodySchema);
  if (!parsed.ok) return parsed.response;

  const admin = createAdminClient();
  const { error } = await admin.auth.admin.deleteUser(user.id);

  if (error) {
    return dbError("[account/delete]", error);
  }

  return NextResponse.json({ success: true });
}
