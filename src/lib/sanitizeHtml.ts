import DOMPurify from "isomorphic-dompurify";

// NOTE: `isomorphic-dompurify` pulls in jsdom on the server, which crashes at
// import time in Vercel's bundled serverless runtime (a hard 500 before the
// handler runs). Keep this import OUT of any module reachable from an API
// route. It is only used by `sanitizeAIOutput`, which runs in a "use client"
// component (browser DOMPurify — no jsdom), so this file must stay client-only.
// Pure server-safe helpers (e.g. `sanitizeUserInput`) live in `./sanitize`.

/** Sanitize AI-generated HTML before rendering it via dangerouslySetInnerHTML. */
export function sanitizeAIOutput(html: string): string {
  return DOMPurify.sanitize(html, {
    ALLOWED_TAGS: [
      "p",
      "strong",
      "em",
      "ul",
      "ol",
      "li",
      "code",
      "pre",
      "h3",
      "h4",
      "br",
      "span",
    ],
    ALLOWED_ATTR: ["class"],
  });
}
