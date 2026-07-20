#!/usr/bin/env node
/** Apply dsat-math-expansion megas to prod Postgres. */
import { readFileSync, readdirSync, appendFileSync } from "node:fs";
import { join, resolve } from "node:path";
import { homedir } from "node:os";
import pg from "pg";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const megaDir = resolve(process.argv[2] ?? "scripts/data/.dsat-math-expansion/megas");
const logPath = resolve("scripts/data/.dsat-math-expansion-apply-log.txt");

function getConnString() {
  const mcp = JSON.parse(readFileSync(join(homedir(), ".cursor/mcp.json"), "utf8"));
  for (const cfg of Object.values(mcp.mcpServers ?? {})) {
    if (JSON.stringify(cfg?.env ?? {}).includes(PROJECT_ID)) {
      return cfg.env.POSTGRES_URL_NON_POOLING?.trim() || cfg.env.POSTGRES_URL?.trim();
    }
  }
  throw new Error("no Postgres URL");
}

async function pgQuery(query) {
  const client = new pg.Client({ connectionString: getConnString(), ssl: { rejectUnauthorized: false } });
  await client.connect();
  try {
    return await client.query(query);
  } finally {
    await client.end();
  }
}

async function main() {
  const files = readdirSync(megaDir).filter((f) => /^mega-\d+\.sql$/.test(f)).sort();
  let ok = 0;
  let fail = 0;
  for (const file of files) {
    const sql = readFileSync(join(megaDir, file), "utf8");
    try {
      await pgQuery(sql);
      ok++;
      if (ok % 25 === 0) process.stdout.write(`progress ${ok}/${files.length}\n`);
    } catch (e) {
      fail++;
      appendFileSync(logPath, `FAIL ${file}: ${e.message}\n`);
      process.stdout.write(`FAIL ${file}\n`);
    }
  }
  const verify = await pgQuery(`SELECT COUNT(*)::int AS cnt FROM questions WHERE exam_type='SAT' AND section='math' AND is_platform_question=true`);
  console.log(JSON.stringify({ ok, fail, total: files.length, mathTotal: verify.rows[0] }));
}

main().catch((e) => { console.error(e); process.exit(1); });
