/**
 * Online web search for the AI tutor.
 *
 * This is the raw search backend — `tools.ts` wraps it as a LangChain tool so
 * Mistral can call it on its own. Two providers, tried in order:
 *
 *   1. **Tavily** — used when `TAVILY_API_KEY` is set. Purpose-built for LLMs:
 *      returns clean, ranked results plus a short answer. Free tier available at
 *      https://tavily.com.
 *   2. **DuckDuckGo (keyless)** — the always-available fallback. Scrapes the
 *      lightweight HTML endpoint, so it needs no API key or account.
 *
 * Results are returned as a compact, model-friendly list (title · url · snippet)
 * that the tutor can read and cite, plus the structured array for the UI.
 */

export type WebSearchResult = {
  title: string;
  url: string;
  snippet: string;
};

export type WebSearchResponse = {
  query: string;
  provider: "tavily" | "duckduckgo";
  /** Short direct answer when the provider supplies one (Tavily). */
  answer?: string;
  results: WebSearchResult[];
};

const DEFAULT_MAX_RESULTS = 5;
/** Don't let a slow search hang the whole tutor turn. */
const SEARCH_TIMEOUT_MS = 8000;

function decodeEntities(text: string): string {
  return text
    .replace(/&amp;/g, "&")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/&#x27;/g, "'")
    .replace(/&nbsp;/g, " ")
    .replace(/&#(\d+);/g, (_, n) => String.fromCodePoint(Number(n)));
}

function stripTags(html: string): string {
  return decodeEntities(html.replace(/<[^>]*>/g, "")).replace(/\s+/g, " ").trim();
}

function fetchWithTimeout(url: string, init: RequestInit = {}): Promise<Response> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), SEARCH_TIMEOUT_MS);
  return fetch(url, { ...init, signal: controller.signal }).finally(() =>
    clearTimeout(timer),
  );
}

/** Tavily: high-quality, LLM-oriented results. Only used when a key is set. */
async function searchTavily(
  query: string,
  apiKey: string,
  maxResults: number,
): Promise<WebSearchResponse> {
  const res = await fetchWithTimeout("https://api.tavily.com/search", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      api_key: apiKey,
      query,
      max_results: maxResults,
      include_answer: true,
      search_depth: "basic",
    }),
  });
  if (!res.ok) throw new Error(`Tavily ${res.status}`);
  const data = (await res.json()) as {
    answer?: string;
    results?: Array<{ title?: string; url?: string; content?: string }>;
  };
  return {
    query,
    provider: "tavily",
    answer: data.answer?.trim() || undefined,
    results: (data.results ?? []).slice(0, maxResults).map((r) => ({
      title: r.title?.trim() || r.url || "Result",
      url: r.url ?? "",
      snippet: r.content?.trim() ?? "",
    })),
  };
}

/**
 * DuckDuckGo HTML scrape — no key required. Parses the `result__a` /
 * `result__snippet` anchors and decodes the `uddg` redirect to the real URL.
 */
async function searchDuckDuckGo(
  query: string,
  maxResults: number,
): Promise<WebSearchResponse> {
  const res = await fetchWithTimeout("https://html.duckduckgo.com/html/", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
      // A browser-like UA avoids the bot challenge page.
      "User-Agent":
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 " +
        "(KHTML, like Gecko) Chrome/120.0 Safari/537.36",
    },
    body: new URLSearchParams({ q: query }).toString(),
  });
  if (!res.ok) throw new Error(`DuckDuckGo ${res.status}`);
  const html = await res.text();

  const results: WebSearchResult[] = [];
  // Each organic result is an <a class="result__a" href="...">title</a> followed
  // by an <a class="result__snippet">snippet</a>.
  const linkRe =
    /<a[^>]*class="[^"]*result__a[^"]*"[^>]*href="([^"]+)"[^>]*>([\s\S]*?)<\/a>/g;
  const snippetRe =
    /<a[^>]*class="[^"]*result__snippet[^"]*"[^>]*>([\s\S]*?)<\/a>/g;

  const snippets: string[] = [];
  let sm: RegExpExecArray | null;
  while ((sm = snippetRe.exec(html))) snippets.push(stripTags(sm[1]));

  let lm: RegExpExecArray | null;
  let i = 0;
  while ((lm = linkRe.exec(html)) && results.length < maxResults) {
    const url = resolveDuckUrl(lm[1]);
    const title = stripTags(lm[2]);
    if (!url || !title) {
      i++;
      continue;
    }
    results.push({ title, url, snippet: snippets[i] ?? "" });
    i++;
  }

  return { query, provider: "duckduckgo", results };
}

/** DuckDuckGo wraps targets in `//duckduckgo.com/l/?uddg=<encoded>`. Unwrap it. */
function resolveDuckUrl(href: string): string {
  let url = decodeEntities(href);
  if (url.startsWith("//")) url = `https:${url}`;
  try {
    const parsed = new URL(url);
    const uddg = parsed.searchParams.get("uddg");
    if (uddg) return decodeURIComponent(uddg);
  } catch {
    /* not a parseable URL — fall through */
  }
  return url;
}

/**
 * Run a web search. Picks Tavily when `TAVILY_API_KEY` is configured, otherwise
 * the keyless DuckDuckGo fallback. Never throws for "no results" — returns an
 * empty list so the model can decide what to say.
 */
export async function webSearch(
  query: string,
  maxResults = DEFAULT_MAX_RESULTS,
): Promise<WebSearchResponse> {
  const q = query.trim();
  if (!q) return { query, provider: "duckduckgo", results: [] };
  const limit = Math.min(Math.max(maxResults, 1), 8);

  const tavilyKey = process.env.TAVILY_API_KEY?.trim();
  if (tavilyKey) {
    try {
      return await searchTavily(q, tavilyKey, limit);
    } catch (err) {
      console.error("[webSearch] Tavily failed, falling back to DDG:", err);
    }
  }
  return searchDuckDuckGo(q, limit);
}

/** Render a search response as compact text the model can read and cite. */
export function formatSearchForModel(res: WebSearchResponse): string {
  if (!res.results.length && !res.answer) {
    return `No web results found for "${res.query}".`;
  }
  const lines: string[] = [];
  if (res.answer) lines.push(`Answer: ${res.answer}`, "");
  res.results.forEach((r, idx) => {
    lines.push(`[${idx + 1}] ${r.title}`);
    lines.push(`    URL: ${r.url}`);
    if (r.snippet) lines.push(`    ${r.snippet}`);
  });
  return lines.join("\n");
}
