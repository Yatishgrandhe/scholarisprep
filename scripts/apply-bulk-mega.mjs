#!/usr/bin/env node
/**
 * Apply gen-bulk-500-mega/*.sql via Supabase Management API (needs SUPABASE_ACCESS_TOKEN).
 * Prefer MCP apply_migration in Cursor; this is a CLI fallback.
 */
import { readFileSync, readdirSync } from "node:fs";
import { join, resolve } from "node:path";

const PROJECT_REF = "aioyzumxxsepbnfivvdd";
const megaDir = resolve(process.argv[2] ?? "scripts/data/gen-bulk-500-mega");
const prefix = process.argv[3] ?? "seed_bulk_500_mega";
const delayMs = Number(process.argv[4] ?? 2000);

const token = process.env.SUPABASE_ACCESS_TOKEN;
if (!token) {
  console.error("Set SUPABASE_ACCESS_TOKEN");
  process.exit(1);
}

const files = readdirSync(megaDir)
  .filter((f) => f.startsWith("mega-") && f.endsWith(".sql"))
  .sort();

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

for (const file of files) {
  const idx = file.match(/mega-(\d+)/)?.[1] ?? "00";
  const name = `${prefix}_${idx}`;
  const query = readFileSync(join(megaDir, file), "utf8");
  const res = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${token}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ query }),
  });
  const body = await res.text();
  if (!res.ok) {
    console.error(`FAILED ${name}:`, body.slice(0, 500));
    process.exit(1);
  }
  console.error(`OK ${name} (${file})`);
  await sleep(delayMs);
}

console.log(JSON.stringify({ ok: true, applied: files.length }, null, 2));
