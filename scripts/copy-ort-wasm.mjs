#!/usr/bin/env node
/**
 * Copy ONNX Runtime Web WASM helpers into public/ort/ so Kokoro / transformers.js
 * can load them same-origin instead of cdn.jsdelivr.net (blocked by CSP / flaky CDN).
 *
 * Run via postinstall + prebuild. Assets are gitignored (~32 MB).
 */
import { copyFileSync, existsSync, mkdirSync, readdirSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const root = join(dirname(fileURLToPath(import.meta.url)), "..");
const outDir = join(root, "public", "ort");

const sources = [
  join(root, "node_modules", "@huggingface", "transformers", "dist"),
  join(root, "node_modules", "onnxruntime-web", "dist"),
  join(
    root,
    "node_modules",
    "@huggingface",
    "transformers",
    "node_modules",
    "onnxruntime-web",
    "dist",
  ),
];

const needed = [
  "ort-wasm-simd-threaded.jsep.mjs",
  "ort-wasm-simd-threaded.jsep.wasm",
  "ort-wasm-simd-threaded.mjs",
  "ort-wasm-simd-threaded.wasm",
];

function findFile(name) {
  for (const dir of sources) {
    const path = join(dir, name);
    if (existsSync(path)) return path;
  }
  return null;
}

mkdirSync(outDir, { recursive: true });

const missing = [];
for (const name of needed) {
  const src = findFile(name);
  if (!src) {
    missing.push(name);
    continue;
  }
  copyFileSync(src, join(outDir, name));
}

if (missing.length === needed.length) {
  console.warn(
    "[copy-ort-wasm] No ORT WASM files found — install deps (kokoro-js / @huggingface/transformers) first.",
  );
  process.exit(0);
}

if (missing.length) {
  console.warn(
    `[copy-ort-wasm] Missing optional assets (WASM CPU may fail): ${missing.join(", ")}`,
  );
}

const listed = readdirSync(outDir).filter((f) => f.startsWith("ort-wasm"));
console.log(`[copy-ort-wasm] Wrote ${listed.length} file(s) → public/ort/`);
