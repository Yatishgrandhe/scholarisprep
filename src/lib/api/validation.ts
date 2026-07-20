import { NextResponse } from "next/server";
import { z } from "zod";

export function validationError(error: z.ZodError): NextResponse {
  return NextResponse.json(
    {
      error: "Validation failed",
      details: error.flatten(),
    },
    { status: 400 },
  );
}

export async function parseJsonBody<T extends z.ZodType>(
  request: Request,
  schema: T,
): Promise<
  { ok: true; data: z.infer<T> } | { ok: false; response: NextResponse }
> {
  let json: unknown;
  try {
    json = await request.json();
  } catch {
    return {
      ok: false,
      response: NextResponse.json({ error: "Invalid JSON body" }, { status: 400 }),
    };
  }

  const parsed = schema.safeParse(json);
  if (!parsed.success) {
    return { ok: false, response: validationError(parsed.error) };
  }

  return { ok: true, data: parsed.data };
}

/** Parse JSON body; treats an empty body as `{}` before validation. */
export async function parseJsonBodyOrEmpty<T extends z.ZodType>(
  request: Request,
  schema: T,
): Promise<
  { ok: true; data: z.infer<T> } | { ok: false; response: NextResponse }
> {
  let text = "";
  try {
    text = await request.text();
  } catch {
    return {
      ok: false,
      response: NextResponse.json({ error: "Invalid request body" }, { status: 400 }),
    };
  }

  let json: unknown = {};
  if (text.trim()) {
    try {
      json = JSON.parse(text) as unknown;
    } catch {
      return {
        ok: false,
        response: NextResponse.json({ error: "Invalid JSON body" }, { status: 400 }),
      };
    }
  }

  const parsed = schema.safeParse(json);
  if (!parsed.success) {
    return { ok: false, response: validationError(parsed.error) };
  }

  return { ok: true, data: parsed.data };
}

export function parseSearchParams<T extends z.ZodType>(
  searchParams: URLSearchParams,
  schema: T,
): { ok: true; data: z.infer<T> } | { ok: false; response: NextResponse } {
  const raw = Object.fromEntries(searchParams.entries());
  const parsed = schema.safeParse(raw);
  if (!parsed.success) {
    return { ok: false, response: validationError(parsed.error) };
  }
  return { ok: true, data: parsed.data };
}

export async function parseRouteParams<T extends z.ZodType>(
  params: Promise<unknown> | unknown,
  schema: T,
): Promise<
  { ok: true; data: z.infer<T> } | { ok: false; response: NextResponse }
> {
  const raw = await Promise.resolve(params);
  const parsed = schema.safeParse(raw);
  if (!parsed.success) {
    return { ok: false, response: validationError(parsed.error) };
  }
  return { ok: true, data: parsed.data };
}

export function dbError(logLabel: string, error: unknown): NextResponse {
  console.error(logLabel, error);
  const message =
    error && typeof error === "object" && "message" in error
      ? String((error as { message?: unknown }).message ?? "")
      : "";
  // Misconfigured / rotated service_role key surfaces as PostgREST 401.
  if (/invalid api key/i.test(message)) {
    return NextResponse.json(
      {
        error:
          "Admin data access is misconfigured (invalid Supabase service_role key).",
      },
      { status: 503 },
    );
  }
  return NextResponse.json(
    { error: "A database error occurred. Please try again." },
    { status: 500 },
  );
}
