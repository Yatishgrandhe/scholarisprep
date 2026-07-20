import { createClient } from "@/lib/supabase/server";
import { NextResponse } from "next/server";

export async function POST(request: Request) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = (await request.json()) as {
    spark_type?: string;
    action?: string;
    exam_type?: string;
    conversation_id?: string;
    triggered_by_message?: string;
  };

  if (!body.spark_type || !body.action) {
    return NextResponse.json(
      { error: "spark_type and action required" },
      { status: 400 },
    );
  }

  const validActions = ["suggested", "try_it", "dismiss"];
  if (!validActions.includes(body.action)) {
    return NextResponse.json(
      { error: `action must be one of: ${validActions.join(", ")}` },
      { status: 400 },
    );
  }

  const { error } = await supabase.from("spark_interactions").insert({
    user_id: user.id,
    spark_type: body.spark_type,
    action: body.action,
    exam_type: body.exam_type ?? null,
    conversation_id: body.conversation_id ?? null,
    triggered_by_message: body.triggered_by_message ?? null,
  });

  if (error) {
    console.error("[spark] failed to log interaction:", error);
    return NextResponse.json(
      { error: "Failed to log interaction" },
      { status: 500 },
    );
  }

  return NextResponse.json({ ok: true });
}
