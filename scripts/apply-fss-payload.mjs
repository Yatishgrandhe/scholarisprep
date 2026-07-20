#!/usr/bin/env node
/** Apply FSS payload.json to prod via parameterized PG updates. */
import { readFileSync, writeFileSync, existsSync } from "node:fs";
import { homedir } from "node:os";
import { join } from "node:path";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const PAYLOAD = "scripts/data/.fss-regen/payload.json";
const LOG = "scripts/data/.fss-regen/apply-log.txt";

function getDatabaseUrl() {
  if (process.env.DATABASE_URL?.trim()) return process.env.DATABASE_URL.trim();
  const mcpPath = join(homedir(), ".cursor/mcp.json");
  if (!existsSync(mcpPath)) return null;
  const mcp = JSON.parse(readFileSync(mcpPath, "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    const blob = JSON.stringify(cfg?.env ?? {});
    if (blob.includes(PROJECT_ID)) {
      return cfg?.env?.POSTGRES_URL_NON_POOLING?.trim() || cfg?.env?.POSTGRES_URL?.trim() || null;
    }
  }
  return null;
}

const url = getDatabaseUrl();
if (!url) {
  console.error("No DATABASE_URL");
  process.exit(1);
}

const { default: pg } = await import("pg");
process.env.NODE_TLS_REJECT_UNAUTHORIZED = "0";
const client = new pg.Client({ connectionString: url, ssl: { rejectUnauthorized: false } });
await client.connect();

const rows = JSON.parse(readFileSync(PAYLOAD, "utf8"));
let applied = 0;

await client.query("BEGIN");
try {
  for (const u of rows) {
    await client.query(
      `UPDATE public.questions SET
        stimulus_text = $1,
        options = $2::jsonb,
        correct_answer = $3,
        explanation = $4,
        hint = $5,
        source_metadata = source_metadata || $6::jsonb,
        updated_at = now()
      WHERE id = $7`,
      [
        u.stimulus_text,
        JSON.stringify(u.options),
        u.correct_answer,
        u.explanation,
        u.hint,
        JSON.stringify(u.source_metadata),
        u.id,
      ],
    );
    applied++;
    if (applied % 25 === 0) console.log(`Applied ${applied}/${rows.length}`);
  }
  await client.query("COMMIT");
} catch (e) {
  await client.query("ROLLBACK");
  throw e;
} finally {
  await client.end();
}

const msg = `Applied ${applied} FSS master-manual payload updates at ${new Date().toISOString()}`;
writeFileSync(LOG, msg + "\n", { flag: "a" });
console.log(msg);
