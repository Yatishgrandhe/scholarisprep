#!/usr/bin/env node
/**
 * Regenerate supabase/migrations/20260612150000_backfill_opensat_difficulty.sql
 * from live OpenSAT JSON (section + opensat_index → difficulty).
 */
import { writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const SOURCE_URL =
  "https://api.jsonsilo.com/public/942c3c3b-3a0c-4be3-81c2-12029def19f5";
const OUT = join(
  __dirname,
  "../supabase/migrations/20260612150000_backfill_opensat_difficulty.sql",
);

function norm(d) {
  const x = String(d ?? "").trim().toLowerCase();
  if (x === "easy") return "easy";
  if (x === "hard" || x === "expert") return "hard";
  return "medium";
}

function esc(s) {
  return String(s).replace(/'/g, "''");
}

const res = await fetch(SOURCE_URL);
const data = await res.json();
const rows = [];
for (const section of ["english", "math"]) {
  for (let i = 0; i < (data[section]?.length ?? 0); i++) {
    const item = data[section][i];
    rows.push({
      section,
      index: i,
      difficulty: norm(item.difficulty),
      raw: item.difficulty ?? "Medium",
    });
  }
}

const parts = [
  "-- Backfill difficulty + opensat_difficulty from OpenSAT index mapping",
  "",
  "CREATE TEMP TABLE _opensat_difficulty_map (section text, idx int, difficulty text, raw_diff text);",
  "",
];

const chunkSize = 200;
for (let c = 0; c < rows.length; c += chunkSize) {
  const chunk = rows.slice(c, c + chunkSize);
  const values = chunk
    .map(
      (r) =>
        `  ('${r.section}', ${r.index}, '${r.difficulty}', '${esc(r.raw)}')`,
    )
    .join(",\n");
  parts.push(
    `INSERT INTO _opensat_difficulty_map (section, idx, difficulty, raw_diff) VALUES\n${values};`,
    "",
  );
}

parts.push(
  `UPDATE public.questions q
SET
  difficulty = m.difficulty::public.difficulty,
  source_metadata = coalesce(q.source_metadata, '{}'::jsonb)
    || jsonb_build_object('opensat_difficulty', m.raw_diff)
FROM _opensat_difficulty_map m
WHERE q.source = 'college_board_opensat'
  AND q.source_metadata->>'section' = m.section
  AND (q.source_metadata->>'opensat_index')::int = m.idx;

DROP TABLE _opensat_difficulty_map;

-- Legacy seed rows (no college_board_opensat source)
UPDATE public.questions SET domain_id = 'algebra', skill_id = 'LIN', subtopic = 'Linear equations in one variable', math_skill_code = 'LIN'
WHERE id IN ('e85a69bc-3a4e-4668-80f4-7597104f3cfc', 'b7aabd31-c94e-494b-a14b-e84997755214');

UPDATE public.questions SET domain_id = 'geometry', skill_id = 'ARE', subtopic = 'Area and volume', math_skill_code = 'ARE'
WHERE id = '1c09933f-80e5-4b33-9ad0-d9fa52075437';

UPDATE public.questions SET domain_id = 'advanced', skill_id = 'NRM', subtopic = 'Nonlinear functions', math_skill_code = 'NRM'
WHERE id = '07335d35-3d2e-4c68-a5da-8e35562ecd6e';

UPDATE public.questions SET domain_id = 'psda', skill_id = 'OIA', subtopic = 'One-variable data', math_skill_code = 'OIA'
WHERE id = 'ac8886e7-2d23-4f01-9ee9-243abcb4e7ad';

UPDATE public.questions SET domain_id = 'psda', skill_id = 'PRO', subtopic = 'Probability and conditional probability', math_skill_code = 'PRO'
WHERE id = '76a4702f-9172-47a7-bc04-7151b71e6236';

UPDATE public.questions SET domain_id = 'craft', skill_id = 'WIC', subtopic = 'Words in Context'
WHERE id = '0d8f6d66-5074-4c82-8b6f-30afb711bb50';

UPDATE public.questions SET domain_id = 'information', skill_id = 'INF', subtopic = 'Inferences'
WHERE id = '395e54c1-dda9-49e3-a9d7-7708164e12d2';

UPDATE public.questions SET domain_id = 'conventions', skill_id = 'FSS', subtopic = 'Form, Structure, and Sense'
WHERE id = '87332d1f-bc56-481f-ba67-99e291a85c2e';

UPDATE public.questions SET domain_id = 'expression', skill_id = 'SYN', subtopic = 'Rhetorical Synthesis'
WHERE id = 'd19fd7f6-2535-4e02-ad49-d1f51e6f548e';
`,
);

writeFileSync(OUT, parts.join("\n"));
console.log(`Wrote ${OUT} (${rows.length} OpenSAT rows)`);
