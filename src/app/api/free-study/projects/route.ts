import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

const createSchema = z
  .object({
    name: z.string().min(1).max(120),
    description: z.string().max(500).optional(),
    color: z.string().max(20).optional(),
    icon: z.string().max(40).optional(),
    parent_id: z.string().uuid().nullable().optional(),
  })
  .strict();

export async function GET(req: NextRequest) {
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

  const { data: projects, error } = await supabase
    .from("free_study_projects")
    .select("*")
    .eq("user_id", user.id)
    .order("sort_order", { ascending: true })
    .order("created_at", { ascending: false });

  if (error) {
    console.error("[free-study/projects] list", error);
    return NextResponse.json(
      { error: "Could not load projects" },
      { status: 500 },
    );
  }

  const ids = (projects ?? []).map((p) => p.id);
  const noteCounts: Record<string, number> = {};
  const pdfCounts: Record<string, number> = {};
  const imageCounts: Record<string, number> = {};

  if (ids.length > 0) {
    // Fetch rows grouped by project_id and count client-side
    const [allNotes, allPdfs, allAssets] = await Promise.all([
      supabase
        .from("free_study_notes")
        .select("project_id")
        .in("project_id", ids),
      supabase
        .from("free_study_pdfs")
        .select("project_id")
        .in("project_id", ids),
      supabase
        .from("free_study_note_assets")
        .select("project_id")
        .in("project_id", ids),
    ]);

    for (const row of allNotes.data ?? []) {
      const pid = row.project_id as string;
      noteCounts[pid] = (noteCounts[pid] ?? 0) + 1;
    }
    for (const row of allPdfs.data ?? []) {
      const pid = row.project_id as string;
      pdfCounts[pid] = (pdfCounts[pid] ?? 0) + 1;
    }
    for (const row of allAssets.data ?? []) {
      const pid = row.project_id as string;
      imageCounts[pid] = (imageCounts[pid] ?? 0) + 1;
    }
  }

  const enriched = (projects ?? []).map((p) => ({
    ...p,
    note_count: noteCounts[p.id] ?? 0,
    pdf_count: pdfCounts[p.id] ?? 0,
    image_count: imageCounts[p.id] ?? 0,
  }));

  return NextResponse.json({ projects: enriched });
}

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

  const limited = rateLimit("free-study-projects", user.id);
  if (!limited.ok) {
    return rateLimitResponse(limited.retryAfterSeconds);
  }

  const parsed = await parseJsonBody(req, createSchema);
  if (!parsed.ok) return parsed.response;

  const { name, description, color, icon, parent_id } = parsed.data;

  if (parent_id) {
    const { data: parent } = await supabase
      .from("free_study_projects")
      .select("id, user_id")
      .eq("id", parent_id)
      .single();
    if (!parent || parent.user_id !== user.id) {
      return NextResponse.json(
        { error: "Parent project not found" },
        { status: 404 },
      );
    }
  }

  // Determine sort_order: max + 1 within user's projects
  const { data: existing } = await supabase
    .from("free_study_projects")
    .select("sort_order")
    .eq("user_id", user.id)
    .order("sort_order", { ascending: false })
    .limit(1);

  const nextOrder = (existing?.[0]?.sort_order ?? 0) + 1;

  const { data: project, error } = await supabase
    .from("free_study_projects")
    .insert({
      user_id: user.id,
      name,
      description: description ?? null,
      color: color ?? null,
      icon: icon ?? null,
      parent_id: parent_id ?? null,
      sort_order: nextOrder,
    })
    .select("*")
    .single();

  if (error) {
    console.error("[free-study/projects] create", error);
    return NextResponse.json(
      { error: "Could not create project" },
      { status: 500 },
    );
  }

  return NextResponse.json({ project }, { status: 201 });
}
