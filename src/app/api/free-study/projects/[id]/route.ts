import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

const updateSchema = z
  .object({
    name: z.string().min(1).max(120).optional(),
    description: z.string().max(500).nullable().optional(),
    color: z.string().max(20).nullable().optional(),
    icon: z.string().max(40).nullable().optional(),
    sort_order: z.number().int().min(0).optional(),
  })
  .strict();

export async function GET(
  req: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("free-study-projects", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const { id } = await context.params;

  const { data: project, error } = await supabase
    .from("free_study_projects")
    .select("*")
    .eq("id", id)
    .eq("user_id", user.id)
    .single();

  if (error || !project) {
    return NextResponse.json({ error: "Project not found" }, { status: 404 });
  }

  const [notesRes, pdfsRes, assetsRes] = await Promise.all([
    supabase
      .from("free_study_notes")
      .select("id, title, updated_at, sort_order")
      .eq("project_id", id)
      .order("sort_order", { ascending: true })
      .order("updated_at", { ascending: false }),
    supabase
      .from("free_study_pdfs")
      .select("id, title, page_count, byte_size, created_at")
      .eq("project_id", id)
      .order("created_at", { ascending: false }),
    supabase
      .from("free_study_note_assets")
      .select("id, note_id, content_type, byte_size")
      .eq("project_id", id),
  ]);

  return NextResponse.json({
    project,
    notes: notesRes.data ?? [],
    pdfs: pdfsRes.data ?? [],
    images: assetsRes.data ?? [],
  });
}

export async function PATCH(
  req: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("free-study-projects", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const { id } = await context.params;

  const parsed = await parseJsonBody(req, updateSchema);
  if (!parsed.ok) return parsed.response;

  const fields = parsed.data;
  if (Object.keys(fields).length === 0) {
    return NextResponse.json({ error: "No fields to update" }, { status: 400 });
  }

  const { data: project, error } = await supabase
    .from("free_study_projects")
    .update(fields satisfies Record<string, unknown>)
    .eq("id", id)
    .eq("user_id", user.id)
    .select("*")
    .single();

  if (error || !project) {
    return NextResponse.json({ error: "Project not found" }, { status: 404 });
  }

  return NextResponse.json({ project });
}

export async function DELETE(
  req: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  const csrfFailure = verifyCsrf(req);
  if (csrfFailure) return csrfFailure;

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const limited = rateLimit("free-study-projects", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const { id } = await context.params;

  // FK cascades handle child notes/PDFs via ON DELETE SET NULL on project_id
  const { error } = await supabase
    .from("free_study_projects")
    .delete()
    .eq("id", id)
    .eq("user_id", user.id);

  if (error) {
    console.error("[free-study/projects] delete", error);
    return NextResponse.json(
      { error: "Could not delete project" },
      { status: 500 },
    );
  }

  return NextResponse.json({ ok: true });
}
