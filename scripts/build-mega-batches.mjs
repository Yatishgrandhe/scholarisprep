#!/usr/bin/env node
/**
 * Combine import batches into pairs for MCP execute_sql (keeps each file ~100KB).
 * Output: scripts/import-mega/mega-00.sql … mega-49.sql
 */
import { mkdir, readdir, readFile, writeFile } from "node:fs/promises";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const BATCH_DIR = join(__dirname, "import-batches");
const OUT_DIR = join(__dirname, "import-mega");
const PAIR_SIZE = 2;

const files = (await readdir(BATCH_DIR))
  .filter((f) => f.startsWith("batch-") && f.endsWith(".sql"))
  .sort();

await mkdir(OUT_DIR, { recursive: true });

let megaIdx = 0;
for (let i = 0; i < files.length; i += PAIR_SIZE) {
  const chunk = files.slice(i, i + PAIR_SIZE);
  const sql = (
    await Promise.all(
      chunk.map((f) => readFile(join(BATCH_DIR, f), "utf8"))
    )
  ).join("\n\n");
  const name = `mega-${String(megaIdx).padStart(2, "0")}.sql`;
  await writeFile(join(OUT_DIR, name), sql);
  console.log(`${name}: ${chunk.join(", ")} (${sql.length} bytes)`);
  megaIdx++;
}

await writeFile(
  join(OUT_DIR, "manifest.json"),
  JSON.stringify({ pairSize: PAIR_SIZE, megaFiles: megaIdx, batches: files.length }, null, 2)
);
