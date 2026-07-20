import { handleAuthCallback } from "@/lib/auth/callback";

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const code = searchParams.get("code");
  return handleAuthCallback(request, code);
}
