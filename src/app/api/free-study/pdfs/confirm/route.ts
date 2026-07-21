import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

const schema = z
  .object({
    asset_id: z.string().uuid(),
    object_key: z.string().min(8).max(512),
    title: z.string().min(1).max(255),
    project_id: z.string().uuid().nullable().optional(),
  })
  .strict();

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

  const limited = rateLimit("free-study-pdf-confirm", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, schema);
  if (!parsed.ok) return parsed.response;

  const { asset_id, object_key, title, project_id } = parsed.data;

  // Verify object_key matches expected pattern
  const expectedKey = `pdfs/${user.id}/${asset_id}.pdf`;
  if (object_key !== expectedKey) {
    return NextResponse.json({ error: "Invalid object key" }, { status: 400 });
  }

  // Verify project ownership if provided
  if (project_id) {
    const { data: project } = await supabase
      .from("free_study_projects")
      .select("id")
      .eq("id", project_id)
      .eq("user_id", user.id)
      .single();
    if (!project) {
      return NextResponse.json(
        { error: "Project not found" },
        { status: 404 },
      );
    }
  }

  const { data: pdf, error } = await supabase
    .from("free_study_pdfs")
    .insert({
      id: asset_id,
      user_id: user.id,
      project_id: project_id ?? null,
      title,
      object_key,
    })
    .select("id, title, object_key, project_id, created_at")
    .single();

  if (error) {
    console.error("[free-study/pdfs/confirm]", error);
    return NextResponse.json(
      { error: "Could not save PDF metadata" },
      { status: 500 },
    );
  }

  return NextResponse.json({ pdf }, { status: 201 });
}
