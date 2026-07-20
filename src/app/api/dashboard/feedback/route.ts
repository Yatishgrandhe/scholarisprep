import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  const body = (await request.json()) as {
    type?: string;
    message?: string;
    email?: string;
    page_url?: string;
  };

  if (!body.message?.trim()) {
    return NextResponse.json({ error: "Message required" }, { status: 400 });
  }

  const messageText = body.message.trim();
  const reporterEmail = body.email?.trim() || user?.email || null;
  const pageUrl = body.page_url?.trim() || "unknown";

  if (body.type === "bug") {
    const { error } = await supabase.from("bug_reports").insert({
      user_id: user?.id || null,
      reporter_email: reporterEmail,
      page_url: pageUrl,
      description: messageText,
      status: "open",
    });

    if (error) {
      console.error("[feedback] failed to insert bug report:", error);
      return NextResponse.json({ error: "Failed to save bug report" }, { status: 500 });
    }
  } else {
    // Graceful stub for non-bug feedback — log server-side
    console.info("[feedback]", {
      userId: user?.id ?? "anonymous",
      type: body.type ?? "general",
      email: reporterEmail,
      message: messageText,
      pageUrl,
    });
  }

  return NextResponse.json({ ok: true });
}
