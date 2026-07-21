import { NextRequest, NextResponse } from "next/server";
import { z } from "zod";
import { parseJsonBody } from "@/lib/api/validation";
import { verifyCsrf } from "@/lib/csrf";
import { rateLimit, rateLimitResponse } from "@/lib/rateLimit";
import { createClient } from "@/lib/supabase/server";

export const runtime = "nodejs";

const reorderSchema = z
  .object({
    items: z.array(
      z.object({
        id: z.string().uuid(),
        sort_order: z.number().int().min(0),
      }),
    ),
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

  // Verify project ownership
  const { data: project } = await supabase
    .from("free_study_projects")
    .select("id")
    .eq("id", id)
    .eq("user_id", user.id)
    .single();

  if (!project) {
    return NextResponse.json({ error: "Project not found" }, { status: 404 });
  }

  const [notesRes, pdfsRes] = await Promise.all([
    supabase
      .from("free_study_notes")
      .select("id, title, body, updated_at, sort_order")
      .eq("project_id", id)
      .order("sort_order", { ascending: true })
      .order("updated_at", { ascending: false }),
    supabase
      .from("free_study_pdfs")
      .select("id, title, object_key, page_count, byte_size, created_at")
      .eq("project_id", id)
      .order("created_at", { ascending: false }),
  ]);

  type NoteItem = { type: "note"; sort_order: number } & (typeof notesRes.data extends (infer T)[] | null ? T : never);
  type PdfItem = { type: "pdf"; sort_order: number } & (typeof pdfsRes.data extends (infer T)[] | null ? T : never);

  const notes: Array<{ type: string; sort_order: number; [k: string]: unknown }> =
    (notesRes.data ?? []).map((n) => ({ ...n, type: "note" }));
  const pdfs: Array<{ type: string; sort_order: number; [k: string]: unknown }> =
    (pdfsRes.data ?? []).map((p) => ({ ...p, type: "pdf", sort_order: 0 }));

  const items = [...notes, ...pdfs].sort((a, b) => a.sort_order - b.sort_order);

  return NextResponse.json({ items });
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

  const parsed = await parseJsonBody(req, reorderSchema);
  if (!parsed.ok) return parsed.response;

  // Verify project ownership
  const { data: project } = await supabase
    .from("free_study_projects")
    .select("id")
    .eq("id", id)
    .eq("user_id", user.id)
    .single();

  if (!project) {
    return NextResponse.json({ error: "Project not found" }, { status: 404 });
  }

  // Update sort_order for notes and PDFs belonging to this project
  const noteIds = parsed.data.items
    .filter((item) => {
      // We check membership by updating only items currently in the project
      return true;
    })
    .map((item) => item.id);

  // Batch update: update each item's sort_order
  // PostgREST doesn't support bulk update with different values in one call,
  // so we use individual updates for the small number of items in a reorder.
  const errors: string[] = [];

  for (const item of parsed.data.items) {
    // Try updating as a note first
    const { error: noteErr } = await supabase
      .from("free_study_notes")
      .update({ sort_order: item.sort_order })
      .eq("id", item.id)
      .eq("project_id", id)
      .eq("user_id", user.id);

    if (noteErr) {
      // Try as a PDF
      const { error: pdfErr } = await supabase
        .from("free_study_pdfs")
        .update({ sort_order: item.sort_order } as never)
        .eq("id", item.id)
        .eq("project_id", id)
        .eq("user_id", user.id);

      if (pdfErr) {
        errors.push(item.id);
      }
    }
  }

  if (errors.length > 0) {
    return NextResponse.json(
      { error: "Some items could not be reordered", failed_ids: errors },
      { status: 207 },
    );
  }

  return NextResponse.json({ ok: true });
}
