// Server-safe sanitizers ONLY — must not import anything that loads jsdom
// (e.g. isomorphic-dompurify), since this module is reachable from API routes
// and a jsdom import crashes Vercel's serverless runtime at load time. The
// HTML sanitizer (`sanitizeAIOutput`) lives in `./sanitizeHtml` (client-only).

/** Strip tags and clamp length on free-text user input. Pure, dependency-free. */
export function sanitizeUserInput(input: string): string {
  // Only strip actual HTML tags (e.g. <div>, </p>, <br>), not bare < and >
  // used in math equations (e.g. x < 5, 3 < x < 7).
  return input.replace(/<\/?[a-zA-Z][^>]*>/g, "").trim().substring(0, 10000);
}
