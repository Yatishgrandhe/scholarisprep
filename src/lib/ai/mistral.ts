/**
 * Mistral + FreeModel (OpenAI-compatible) LangChain AI client.
 *
 * Runtime AI features use either:
 * - **Personal BYO** Mistral keys (browser localStorage → `x-ai-key` header →
 *   Mistral cloud via ChatMistralAI, model `mistral-small-2506`), or
 * - **Central / platform** keys from `app_secrets`, routed to FreeModel
 *   (`https://cc.freemodel.dev`) via ChatOpenAI Chat Completions when
 *   `resolveAiClient` returns `source: "platform"` (default model
 *   `claude-sonnet-4-6`).
 *
 * Mistral's free tier is rate-limited (~1 request/second); every model call
 * is funnelled through `throttle()`.
 *
 * If no key is available, callers should surface `MissingAiKeyError` /
 * `NO_KEY_MESSAGE` rather than failing opaquely.
 */
import { ChatMistralAI } from "@langchain/mistralai";
import { ChatOpenAI } from "@langchain/openai";
import type { BaseChatModel } from "@langchain/core/language_models/chat_models";
import {
  AIMessage,
  HumanMessage,
  SystemMessage,
  ToolMessage,
  type AIMessageChunk,
  type BaseMessage,
  type MessageContent,
} from "@langchain/core/messages";
import type { StructuredToolInterface } from "@langchain/core/tools";
import {
  DEFAULT_PLATFORM_AI_BASE_URL,
  DEFAULT_PLATFORM_AI_MODEL,
} from "@/lib/ai/aiKeyModes";

/** Free, no-cost model served through Mistral's API (personal BYO). */
export const MISTRAL_MODEL = "mistral-small-2506";

/** Default FreeModel model for central/platform keys. */
export const PLATFORM_AI_MODEL = DEFAULT_PLATFORM_AI_MODEL;

/** Header the browser sends each user's own Mistral key on. */
export const AI_KEY_HEADER = "x-ai-key";

/**
 * Stop sequences for conversational (tutor) replies — a hard backstop that cuts
 * the model off if it ever starts role-playing the student's turn or emitting a
 * new speaker label, so it can't "respond to itself".
 */
export const TUTOR_STOP_SEQUENCES = [
  "\nUser:",
  "\nStudent:",
  "\nYou:",
  "\nScho:",
  "\nAssistant:",
  "\nQ:",
];

/** Shown to users (in chat / toasts) when no key is configured. */
export const NO_KEY_MESSAGE =
  "Add your free Mistral API key in Settings → AI key to use this feature. " +
  "Create one at https://console.mistral.ai/api-keys — it's free, no cost.";

/** Thrown by helpers when the request carries no usable Mistral key. */
export class MissingAiKeyError extends Error {
  readonly code = "NO_AI_KEY" as const;
  constructor() {
    super(NO_KEY_MESSAGE);
    this.name = "MissingAiKeyError";
  }
}

const PLACEHOLDER_KEYS = new Set([
  "placeholder",
  "your-key-here",
  "your_api_key",
  "changeme",
  "todo",
  "none",
  "null",
  "undefined",
]);

/**
 * True when `key` looks like a usable API key (not blank/placeholder).
 * Accepts Mistral cloud keys and FreeModel / OpenAI-compatible keys
 * (e.g. `fe_oa_*`). No vendor-prefix allowlist — length + placeholder only.
 */
export function isValidAiKey(key?: string | null): key is string {
  if (!key) return false;
  const trimmed = key.trim();
  if (trimmed.length < 20) return false;
  if (PLACEHOLDER_KEYS.has(trimmed.toLowerCase())) return false;
  // Explicitly allow FreeModel (`fe_oa_…`) and common Mistral shapes.
  if (/^fe_oa_[A-Za-z0-9_-]+$/.test(trimmed)) return true;
  return true;
}

/** API key string, or key + optional custom server URL/model (central FreeModel). */
export type AiAuth =
  | string
  | {
      apiKey: string;
      /** OpenAI-compatible base URL — set for platform/central keys. */
      serverURL?: string;
      /** Model override for platform/central keys. */
      model?: string;
    };

export function normalizeAiAuth(auth: AiAuth): {
  apiKey: string;
  serverURL?: string;
  model?: string;
} {
  if (typeof auth === "string") return { apiKey: auth };
  return {
    apiKey: auth.apiKey,
    serverURL: auth.serverURL,
    model: auth.model,
  };
}

/**
 * Ensure OpenAI SDK `baseURL` ends with `/v1` (Chat Completions path prefix).
 */
function openAiCompatibleBaseUrl(serverURL: string): string {
  const trimmed = serverURL.replace(/\/+$/, "");
  return trimmed.endsWith("/v1") ? trimmed : `${trimmed}/v1`;
}

/**
 * The user's personal BYO key for this request, read from the `x-ai-key` header
 * (set by the browser from localStorage), or null if missing/invalid.
 * Prefer `resolveAiClient` from `@/lib/ai/keyPolicy` in AI routes so platform
 * shared-key modes attach FreeModel `serverURL` / model (not key-only).
 */
export function getRequestAiKey(req: Request): string | null {
  const key = req.headers.get(AI_KEY_HEADER)?.trim() ?? null;
  return isValidAiKey(key) ? key : null;
}

/**
 * Lightweight live check that a key is accepted by the provider.
 * Personal BYO keys are checked against Mistral cloud. FreeModel (`fe_oa_*`)
 * keys are checked against the given `serverURL` (or FreeModel default).
 * Returns `true`/`false` when the API answers, or `null` on network failure.
 */
export async function verifyMistralKey(
  apiKey: string,
  opts: { serverURL?: string } = {},
): Promise<boolean | null> {
  if (!isValidAiKey(apiKey)) return false;
  const isFreeModel = /^fe_oa_/i.test(apiKey.trim());
  const base =
    opts.serverURL?.replace(/\/+$/, "") ||
    (isFreeModel ? DEFAULT_PLATFORM_AI_BASE_URL : "https://api.mistral.ai");
  try {
    const res = await fetch(`${base}/v1/models`, {
      headers: { Authorization: `Bearer ${apiKey}` },
    });
    if (res.status === 401 || res.status === 403) return false;
    // Some OpenAI-compatible gateways omit /v1/models — treat 404 as inconclusive.
    if (res.status === 404 && isFreeModel) return null;
    return res.ok;
  } catch {
    return null;
  }
}

/**
 * Throttle to keep within Mistral's free tier (~1 request/second).
 *
 * `nextSlot` is the earliest timestamp the next request may fire. Each caller
 * atomically claims a slot (read + write happen with no `await` in between, so
 * concurrent callers can't grab the same slot) and waits until it's due. This
 * spaces even a `Promise.all` burst ~1s apart instead of hitting `429`.
 */
const MIN_REQUEST_INTERVAL_MS = 1100;
let nextSlot = 0;
async function throttle(): Promise<void> {
  const now = Date.now();
  const wait = Math.max(0, nextSlot - now);
  nextSlot = Math.max(now, nextSlot) + MIN_REQUEST_INTERVAL_MS;
  if (wait > 0) await new Promise((resolve) => setTimeout(resolve, wait));
}

export type ChatTurn = { role: "user" | "assistant"; content: string };

export type ChatOptions = {
  system?: string;
  temperature?: number;
  maxTokens?: number;
  /** Hard stop sequences — generation halts before emitting any of these. */
  stop?: string[];
};

/** A configured LangChain chat model (Mistral cloud or FreeModel OpenAI-compat). */
export function createChatModel(
  auth: AiAuth,
  opts: { temperature?: number; maxTokens?: number; streaming?: boolean } = {},
): BaseChatModel {
  const { apiKey, serverURL, model } = normalizeAiAuth(auth);

  // Central / platform: OpenAI-compatible Chat Completions (FreeModel + Sonnet).
  if (serverURL) {
    return new ChatOpenAI({
      apiKey,
      model: model?.trim() || PLATFORM_AI_MODEL,
      temperature: opts.temperature ?? 0.6,
      maxTokens: opts.maxTokens,
      streaming: opts.streaming ?? false,
      useResponsesApi: false,
      configuration: {
        baseURL: openAiCompatibleBaseUrl(serverURL),
      },
    });
  }

  // Personal BYO: Mistral cloud.
  return new ChatMistralAI({
    apiKey,
    model: MISTRAL_MODEL,
    temperature: opts.temperature ?? 0.6,
    maxTokens: opts.maxTokens,
    streaming: opts.streaming ?? false,
  });
}

/** Flatten LangChain `MessageContent` (string or content-block array) to text. */
function contentToText(content: MessageContent): string {
  if (typeof content === "string") return content;
  if (!Array.isArray(content)) return "";
  return content
    .map((part) => {
      if (typeof part === "string") return part;
      if (part && typeof part === "object" && "text" in part) {
        return String((part as { text?: unknown }).text ?? "");
      }
      return "";
    })
    .join("");
}

function toMessages(system: string | undefined, turns: ChatTurn[]): BaseMessage[] {
  const messages: BaseMessage[] = [];
  if (system && system.trim()) messages.push(new SystemMessage(system));
  for (const turn of turns) {
    messages.push(
      turn.role === "assistant"
        ? new AIMessage(turn.content)
        : new HumanMessage(turn.content),
    );
  }
  return messages;
}

/** Earliest index of any stop sequence in `text`, or -1 if none present. */
function earliestStop(text: string, stops: string[], from = 0): number {
  let cut = -1;
  for (const seq of stops) {
    if (!seq) continue;
    const i = text.indexOf(seq, from);
    if (i !== -1 && (cut === -1 || i < cut)) cut = i;
  }
  return cut;
}

/**
 * Single-shot completion. Returns the assistant's text.
 *
 * Mistral's LangChain integration doesn't accept `stop` sequences, so we apply
 * them in software — truncating the reply at the first stop marker.
 */
export async function chatComplete(
  auth: AiAuth,
  params: ChatOptions & { messages: ChatTurn[] },
): Promise<string> {
  const model = createChatModel(auth, {
    temperature: params.temperature,
    maxTokens: params.maxTokens,
  });
  await throttle();
  const result = await model.invoke(toMessages(params.system, params.messages));
  let text = contentToText(result.content);
  if (params.stop?.length) {
    const cut = earliestStop(text, params.stop);
    if (cut !== -1) text = text.slice(0, cut);
  }
  return text;
}

/** Convenience: a single user prompt (+ optional system). */
export async function complete(
  auth: AiAuth,
  prompt: string,
  opts: ChatOptions = {},
): Promise<string> {
  return chatComplete(auth, {
    ...opts,
    messages: [{ role: "user", content: prompt }],
  });
}

/** Streaming token generator — yields text deltas as they arrive. */
export async function* chatStream(
  auth: AiAuth,
  params: ChatOptions & { messages: ChatTurn[] },
): AsyncGenerator<string> {
  const model = createChatModel(auth, {
    temperature: params.temperature,
    maxTokens: params.maxTokens,
    streaming: true,
  });
  await throttle();
  const stream = await model.stream(toMessages(params.system, params.messages));

  // Mistral's integration ignores `stop`, so enforce stop sequences here:
  // accumulate, cut the stream the moment a stop marker appears, and hold back
  // the last few chars so a marker split across chunks is still caught.
  const stops = params.stop ?? [];
  const maxStopLen = stops.reduce((m, s) => Math.max(m, s.length), 0);
  let acc = "";
  let emitted = 0;
  for await (const chunk of stream) {
    const text = contentToText(chunk.content);
    if (!text) continue;
    acc += text;

    const cut = earliestStop(acc, stops, emitted);
    if (cut !== -1) {
      if (cut > emitted) yield acc.slice(emitted, cut);
      return;
    }

    const safeEnd = Math.max(emitted, acc.length - Math.max(0, maxStopLen - 1));
    if (safeEnd > emitted) {
      yield acc.slice(emitted, safeEnd);
      emitted = safeEnd;
    }
  }
  if (acc.length > emitted) yield acc.slice(emitted);
}

/**
 * Events emitted by the tool-calling agent loop (`streamWithTools`).
 * - `token`  — a delta of the model's visible answer.
 * - `search` — the model called `web_search` with this query (UI indicator).
 * - `tool`   — the model called some other tool.
 */
export type AgentEvent =
  | { type: "token"; text: string }
  | { type: "search"; query: string }
  | { type: "tool"; name: string };

/**
 * Tool-calling agent loop with streaming — this is how the tutor "thinks before
 * it answers". Tools are bound to the model so it can decide, each round,
 * whether to call one (e.g. `web_search`) before responding:
 *
 *   1. Stream a model turn. If it emits tool calls, run them and feed the
 *      results back, then loop — the model reasons over what it found.
 *   2. When a turn produces a plain answer (no tool calls), that text is the
 *      final answer and has already been streamed to the caller.
 *
 * Bounded by `maxRounds` so a tool-happy model can't loop forever; the last
 * round forces a tool-free answer. Each model call is throttled for the free
 * tier. Stop sequences are enforced in software (Mistral ignores `stop`).
 */
export async function* streamWithTools(
  auth: AiAuth,
  params: ChatOptions & {
    messages: ChatTurn[];
    tools: StructuredToolInterface[];
    maxRounds?: number;
  },
): AsyncGenerator<AgentEvent> {
  const maxRounds = Math.max(1, params.maxRounds ?? 3);
  const toolMap = new Map(params.tools.map((t) => [t.name, t]));
  const model = createChatModel(auth, {
    temperature: params.temperature,
    maxTokens: params.maxTokens,
    streaming: true,
  });
  if (typeof model.bindTools !== "function") {
    throw new Error("Chat model does not support tool binding");
  }
  const convo: BaseMessage[] = toMessages(params.system, params.messages);

  for (let round = 0; round < maxRounds; round++) {
    // The final round must produce an answer, so drop the tools there.
    const lastRound = round === maxRounds - 1;
    const runner = lastRound ? model : model.bindTools(params.tools);

    await throttle();
    const stream = await runner.stream(convo);

    let gathered: AIMessageChunk | undefined;
    const stops = params.stop ?? [];
    let acc = "";
    let emitted = 0;
    let stopped = false;
    for await (const chunk of stream) {
      gathered = gathered ? gathered.concat(chunk) : chunk;
      const text = contentToText(chunk.content);
      if (!text) continue;
      acc += text;
      // Enforce stop sequences: cut the visible stream at the first marker and
      // emit only the not-yet-sent text up to that point.
      const cut = stops.length ? earliestStop(acc, stops, emitted) : -1;
      if (cut !== -1) {
        if (cut > emitted) yield { type: "token", text: acc.slice(emitted, cut) };
        stopped = true;
        break;
      }
      yield { type: "token", text: acc.slice(emitted) };
      emitted = acc.length;
    }
    if (stopped) return;

    const toolCalls = gathered?.tool_calls ?? [];
    if (!toolCalls.length) return; // plain answer — already streamed above.

    // Record the assistant's tool-call turn, then run each tool and feed the
    // result back so the next round can reason over it.
    if (gathered) convo.push(gathered);
    for (const call of toolCalls) {
      if (call.name === "web_search") {
        const q = typeof call.args?.query === "string" ? call.args.query : "";
        yield { type: "search", query: q };
      } else {
        yield { type: "tool", name: call.name };
      }
      const selected = toolMap.get(call.name);
      let result: string;
      try {
        result = selected
          ? String(await selected.invoke(call.args))
          : `Error: unknown tool "${call.name}".`;
      } catch (err) {
        result =
          "Search failed: " +
          (err instanceof Error ? err.message : String(err));
      }
      convo.push(
        new ToolMessage({
          content: result,
          tool_call_id: call.id ?? call.name,
        }),
      );
    }
  }
}

/**
 * Pull the first JSON object/array out of an LLM response, tolerating ```json
 * fences and surrounding prose (models often wrap output in commentary).
 */
export function extractJson<T = unknown>(raw: string): T {
  let text = raw.trim();
  // Strip ```json ... ``` or ``` ... ``` fences.
  const fence = text.match(/```(?:json)?\s*([\s\S]*?)```/i);
  if (fence) text = fence[1].trim();
  try {
    return JSON.parse(text) as T;
  } catch {
    // Fall back to the first balanced {...} or [...] span.
    const firstObj = text.indexOf("{");
    const firstArr = text.indexOf("[");
    const start =
      firstObj === -1
        ? firstArr
        : firstArr === -1
          ? firstObj
          : Math.min(firstObj, firstArr);
    if (start === -1) throw new Error("No JSON found in model response");
    const open = text[start];
    const close = open === "{" ? "}" : "]";
    const end = text.lastIndexOf(close);
    if (end <= start) throw new Error("Malformed JSON in model response");
    return JSON.parse(text.slice(start, end + 1)) as T;
  }
}

/** Single-shot completion that parses the response as JSON. */
export async function completeJson<T = unknown>(
  auth: AiAuth,
  prompt: string,
  opts: ChatOptions = {},
): Promise<T> {
  const raw = await complete(auth, prompt, {
    temperature: opts.temperature ?? 0.4,
    ...opts,
  });
  return extractJson<T>(raw);
}
