/** True when a question belongs to a math section (SAT, ACT, JAMB, etc.). */
export function isMathSection(section: string | null | undefined): boolean {
  if (!section) return false;
  const normalized = section.toLowerCase().replace(/\s+/g, "_");
  if (normalized === "math") return true;
  return normalized.includes("math");
}
