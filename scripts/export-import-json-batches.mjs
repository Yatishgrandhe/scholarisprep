#!/usr/bin/env node
/** Export JSON batches for MCP import_question_batch() calls */
import { mkdir, writeFile, readFile } from "node:fs/promises";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const OUT = join(__dirname, "import-json-batches");
const BATCH = 25;

function transformItem(item, section) {
  const q = item.question;
  if (!q?.choices || !q.correct_answer) return null;
  const paragraph =
    q.paragraph && q.paragraph !== "null" ? q.paragraph.trim() : null;
  const subject = section === "math" ? "math" : "reading_writing";
  const options = ["A", "B", "C", "D"].map((id) => ({
    id,
    text: q.choices[id] ?? "",
    is_correct: id === q.correct_answer,
    explanation: "",
  }));
  const domain = item.domain || "";
  const mapMath = (d) => {
    const x = d.toLowerCase();
    if (x.includes("algebra")) return "algebra";
    if (x.includes("advanced")) return "advanced_math";
    if (x.includes("problem") || x.includes("data")) return "problem_solving_data";
    if (x.includes("geometry") || x.includes("trig")) return "geometry_trig";
    return null;
  };
  return {
    external_id: String(item.id),
    source: "college_board_opensat",
    question_text: q.question,
    stimulus_text: paragraph,
    stimulus_type: paragraph ? "passage" : null,
    options,
    correct_answer: q.correct_answer,
    explanation: q.explanation || "See official explanation.",
    hint: "Review the passage and eliminate choices that contradict the text.",
    topic: domain || (section === "math" ? "Algebra" : "Reading & Writing"),
    subtopic: domain || null,
    section: subject,
    subject,
    difficulty: "medium",
    exam_type: "SAT",
    question_type: "multiple_choice",
    math_domain: section === "math" ? mapMath(domain) : null,
    pool_key: "college_board_sat_v1",
    diagnostic_eligible: true,
    is_platform_question: true,
    ai_generated: false,
    calculator_allowed: section === "math",
    tags: ["college_board", "opensat", section, domain].filter(Boolean),
    source_metadata: { opensat_domain: domain, section },
  };
}

async function main() {
  const data = JSON.parse(await readFile("/tmp/opensat.json", "utf8"));
  const rows = [];
  for (const section of ["english", "math"]) {
    for (const item of data[section] || []) {
      const row = transformItem(item, section);
      if (row) rows.push(row);
    }
  }
  await mkdir(OUT, { recursive: true });
  const batches = [];
  for (let i = 0; i < rows.length; i += BATCH) {
    const chunk = rows.slice(i, i + BATCH);
    const name = `batch-${String(batches.length).padStart(3, "0")}.json`;
    await writeFile(join(OUT, name), JSON.stringify(chunk));
    batches.push(name);
  }
  await writeFile(
    join(OUT, "manifest.json"),
    JSON.stringify({ total: rows.length, batches: batches.length }, null, 2),
  );
  console.log(JSON.stringify({ total: rows.length, batches: batches.length }));
}

main();
