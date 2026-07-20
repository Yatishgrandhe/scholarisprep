#!/usr/bin/env node
/**
 * Prints MCP execute_sql chunk indices for manual or agent import.
 * Each chunk = 5 batch files (~125 questions).
 */
import { readdirSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";

const dir = join(dirname(fileURLToPath(import.meta.url)), "import-batches");
const chunks = readdirSync(dir)
  .filter((f) => f.startsWith("mcp-chunk-") && f.endsWith(".json"))
  .sort();
console.log(JSON.stringify({ chunks: chunks.length, files: chunks }));
