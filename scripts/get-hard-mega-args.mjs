#!/usr/bin/env node
import { readFileSync } from "node:fs";
import { resolve } from "node:path";

const idx = Number(process.argv[2] ?? 0);
const n = String(idx).padStart(2, "0");
const payload = JSON.parse(
  readFileSync(resolve(`scripts/data/.hard-mega-payloads/mega-${n}.json`), "utf8"),
);
process.stdout.write(JSON.stringify({ project_id: payload.project_id, query: payload.query, file: `mega-${n}.json` }));
