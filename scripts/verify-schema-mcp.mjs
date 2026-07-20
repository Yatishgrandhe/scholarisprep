#!/usr/bin/env node
/**
 * Schema verification — use Supabase MCP instead of `supabase db pull` when CLI link fails.
 * Compares supabase/remote-schema.json (MCP snapshot) to required foundation tables.
 */
import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const __dirname = dirname(fileURLToPath(import.meta.url));
const snapshot = JSON.parse(
  readFileSync(join(__dirname, "../supabase/remote-schema.json"), "utf8"),
);

const required = [
  "profiles",
  "organizations",
  "subscriptions",
  "courses",
  "lessons",
  "questions",
  "question_attempts",
  "exam_sessions",
  "study_plans",
  "enrollments",
  "lesson_progress",
  "tutor_conversations",
  "tutor_messages",
  "diagnostic_results",
  "user_streaks",
  "achievements",
  "user_achievements",
  "content_reports",
];

const remote = new Set(snapshot.tables);
const missing = required.filter((t) => !remote.has(t));
const extra = [...remote].filter((t) => !required.includes(t));

if (missing.length) {
  console.error("Missing tables:", missing.join(", "));
  process.exit(1);
}

console.log("OK — all", required.length, "foundation tables present on remote (MCP snapshot).");
if (extra.length) {
  console.log("Additional tables:", extra.join(", "));
}
console.log("Storage buckets:", snapshot.storage_buckets.map((b) => b.id).join(", "));
