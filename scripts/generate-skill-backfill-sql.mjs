#!/usr/bin/env node
/**
 * Generate SQL to backfill domain_id + skill_id on college_board_opensat rows.
 * Usage: node scripts/generate-skill-backfill-sql.mjs > /tmp/skill-backfill.sql
 */

import { createHash } from "node:crypto";
import { writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { classifyOpenSatItem } from "./sat-question-taxonomy.mjs";

const __dirname = dirname(fileURLToPath(import.meta.url));
const SOURCE_URL =
  "https://api.jsonsilo.com/public/942c3c3b-3a0c-4be3-81c2-12029def19f5";

function sqlEscape(str) {
  return String(str).replace(/'/g, "''");
}

function externalIdFor(item, section, index) {
  const raw = String(item.id ?? "").trim();
  const slot = `${section}_${String(index).padStart(5, "0")}`;
  if (raw && !/^random_id_/i.test(raw)) return `${raw}_${slot}`;

  const q = item.question;
  const fingerprint = [
    section,
    index,
    item.domain ?? "",
    q?.question ?? "",
    q?.correct_answer ?? "",
    JSON.stringify(q?.choices ?? {}),
  ].join("\0");
  return `opensat_${createHash("sha256").update(fingerprint).digest("hex").slice(0, 16)}_${slot}`;
}

async function main() {
  const res = await fetch(SOURCE_URL);
  const data = await res.json();
  const updates = [];

  for (const section of ["english", "math"]) {
    (data[section] || []).forEach((item, index) => {
      const { domainId, domainLabel, skillId, skillLabel } = classifyOpenSatItem(
        item,
        section,
      );
      const externalId = externalIdFor(item, section, index);
      updates.push({
        externalId,
        domainId,
        domainLabel,
        skillId,
        skillLabel,
        section,
        index,
      });
    });
  }

  const lines = [
    "-- Auto-generated skill backfill for college_board_opensat",
    `BEGIN;`,
    `-- ${updates.length} rows`,
  ];

  for (const u of updates) {
    lines.push(
      `UPDATE public.questions SET domain_id = '${sqlEscape(u.domainId)}', skill_id = '${sqlEscape(u.skillId)}', topic = '${sqlEscape(u.domainLabel)}', subtopic = '${sqlEscape(u.skillLabel)}', source_metadata = coalesce(source_metadata, '{}'::jsonb) || jsonb_build_object('domain_id', '${sqlEscape(u.domainId)}', 'skill_id', '${sqlEscape(u.skillId)}') WHERE source = 'college_board_opensat' AND external_id = '${sqlEscape(u.externalId)}';`,
    );
  }

  lines.push("COMMIT;");

  const outPath = join(__dirname, "data", "college-board-skill-backfill.sql");
  writeFileSync(outPath, lines.join("\n"));
  console.error(`Wrote ${updates.length} updates to ${outPath}`);
  console.log(lines.join("\n"));
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
