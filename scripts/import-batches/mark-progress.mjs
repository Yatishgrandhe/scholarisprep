#!/usr/bin/env node
/** Write .progress/batch-NNN.ok or .fail */
import { writeFileSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const [, , n, status, ...errParts] = process.argv;
const dir = dirname(fileURLToPath(import.meta.url));
const progressDir = join(dir, ".progress");
const batch = `batch-${n}`;
if (status === "ok") {
  writeFileSync(join(progressDir, `${batch}.ok`), new Date().toISOString() + "\n");
} else {
  writeFileSync(join(progressDir, `${batch}.fail`), errParts.join(" ") || "unknown error");
}
