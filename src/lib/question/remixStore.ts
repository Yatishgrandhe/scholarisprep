/**
 * Ephemeral, per-question "remix" store.
 *
 * A remix is a locally-generated variant of a question. It lives ONLY in this
 * tab's sessionStorage, keyed by the original question id, so it survives an
 * in-page reload and moving between questions — but the practice page clears the
 * whole store on unmount (`clearAllRemixes`), so leaving the page and coming
 * back shows the original question again. Nothing is persisted server-side.
 */
import type { Question } from "@/components/question/QuestionInterface";

const KEY = "scholaris.remixes";

export type RemixMap = Record<string, Question>;

export function loadRemixes(): RemixMap {
  if (typeof window === "undefined") return {};
  try {
    return JSON.parse(window.sessionStorage.getItem(KEY) ?? "{}") as RemixMap;
  } catch {
    return {};
  }
}

function persist(map: RemixMap): void {
  if (typeof window === "undefined") return;
  try {
    window.sessionStorage.setItem(KEY, JSON.stringify(map));
  } catch {
    /* storage full / disabled — the in-memory state still works this session */
  }
}

/** Store a remix for `id` and return the new map. */
export function setRemix(id: string, question: Question): RemixMap {
  const map = { ...loadRemixes(), [id]: question };
  persist(map);
  return map;
}

/** Drop the remix for `id` (revert to original) and return the new map. */
export function removeRemix(id: string): RemixMap {
  const map = { ...loadRemixes() };
  delete map[id];
  persist(map);
  return map;
}

/** Clear every remix — called when leaving the practice page. */
export function clearAllRemixes(): void {
  if (typeof window === "undefined") return;
  try {
    window.sessionStorage.removeItem(KEY);
  } catch {
    /* ignore */
  }
}
