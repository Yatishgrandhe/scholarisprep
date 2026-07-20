import type { SimManifest, SimSubject } from "@/sims/contracts";

const registry = new Map<string, SimManifest>();

/**
 * Packs call this from their `register.ts` at module load.
 * Later packs must not edit a central catalog file — only self-register.
 */
export function registerSim(manifest: SimManifest): void {
  if (registry.has(manifest.id)) {
    if (process.env.NODE_ENV !== "production") {
      console.warn(`[sims] duplicate register ignored: ${manifest.id}`);
    }
    return;
  }
  registry.set(manifest.id, manifest);
}

export function getSim(id: string): SimManifest | undefined {
  return registry.get(id);
}

export function listSims(filter?: {
  subject?: SimSubject;
  priority?: SimManifest["priority"];
}): SimManifest[] {
  let items = Array.from(registry.values());
  if (filter?.subject) {
    items = items.filter((s) => s.subject === filter.subject);
  }
  if (filter?.priority) {
    items = items.filter((s) => s.priority === filter.priority);
  }
  return items.sort((a, b) => {
    const p = priorityRank(a.priority) - priorityRank(b.priority);
    if (p !== 0) return p;
    return a.title.localeCompare(b.title);
  });
}

function priorityRank(p: SimManifest["priority"]): number {
  if (p === "P0") return 0;
  if (p === "P1") return 1;
  return 2;
}

export function listSimIds(): string[] {
  return listSims().map((s) => s.id);
}
