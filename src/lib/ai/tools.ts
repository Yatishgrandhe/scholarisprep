/**
 * LangChain tools Scho can call during tutoring.
 *
 * Prefer `tutorToolsForCourse` from `@/lib/ai/tutorAgent` for the main tutor
 * route — that variant scopes descriptions to the active exam/course.
 * This module keeps the generic `web_search` factory + default toolset.
 *
 * The agent loop lives in `streamWithTools` (`mistral.ts`); course wiring is
 * in `tutorAgent.ts`.
 */
import { tool } from "@langchain/core/tools";
import { z } from "zod";
import { webSearch, formatSearchForModel } from "@/lib/ai/webSearch";

export type WebSearchToolOptions = {
  /** Override the tool description (course-aware tutoring). */
  description?: string;
  /** Override the zod `.describe` text for the query field. */
  queryDescribe?: string;
};

/**
 * `web_search` — search the live web. The model passes a focused query string;
 * we return a compact, citable list of results (title · url · snippet).
 *
 * `onSearch` lets the route observe each call (so the UI can show a
 * "Searching the web…" indicator) without coupling the tool to any transport.
 */
export function makeWebSearchTool(
  onSearch?: (query: string) => void,
  options: WebSearchToolOptions = {},
) {
  return tool(
    async ({ query }: { query: string }) => {
      onSearch?.(query);
      const res = await webSearch(query);
      return formatSearchForModel(res);
    },
    {
      name: "web_search",
      description:
        options.description ??
        ("Search the live internet for current, factual, or up-to-date " +
          "information. Use this whenever the answer depends on recent events, " +
          "specific facts (dates, deadlines, statistics, test policies, college " +
          "info), or anything you are not certain about. Returns a ranked list of " +
          "web results with titles, URLs, and snippets that you should read and " +
          "cite in your answer."),
      schema: z.object({
        query: z
          .string()
          .min(2)
          .max(200)
          .describe(
            options.queryDescribe ??
              "A focused search query, e.g. 'SAT test dates fall 2026'.",
          ),
      }),
    },
  );
}

/** Generic tutor toolset (no course bias). Prefer `tutorToolsForCourse`. */
export function tutorTools(onSearch?: (query: string) => void) {
  return [makeWebSearchTool(onSearch)];
}
