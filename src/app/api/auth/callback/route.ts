import { NextResponse } from "next/server";
import { parseSearchParams } from "@/lib/api/validation";
import { handleAuthCallback } from "@/lib/auth/callback";
import { authCallbackQuerySchema } from "@/lib/validations/api";

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const parsed = parseSearchParams(searchParams, authCallbackQuerySchema);
  if (!parsed.ok) return parsed.response;

  return handleAuthCallback(request, parsed.data.code);
}
