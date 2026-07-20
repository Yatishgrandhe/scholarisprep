#!/usr/bin/env node
/**
 * Verify College Board OpenSAT import counts on Supabase (project aioyzumxxsepbnfivvdd).
 * Uses Supabase MCP execute_sql when SUPABASE_ACCESS_TOKEN is available.
 *
 *   npm run import:cb:verify
 */
import { readFileSync, existsSync } from "node:fs";
import { join, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { homedir } from "node:os";
import { spawn } from "node:child_process";

const PROJECT_ID = "aioyzumxxsepbnfivvdd";
const __dirname = dirname(fileURLToPath(import.meta.url));
const MANIFEST = join(__dirname, "import-batches/manifest.json");

const EXPECTED = {
  imported: 2474,
  poolKey: "college_board_sat_v1",
  source: "college_board_opensat",
};

function getToken() {
  const paths = [
    join(homedir(), "Library/Application Support/supabase/access-token"),
    join(homedir(), ".supabase/access-token"),
  ];
  for (const p of paths) {
    if (existsSync(p)) return readFileSync(p, "utf8").trim();
  }
  return process.env.SUPABASE_ACCESS_TOKEN?.trim() || null;
}

function parseMcpRows(result) {
  const text = result?.content?.[0]?.text;
  if (!text) return null;
  const match = text.match(/\[[\s\S]*\]/);
  if (!match) return null;
  return JSON.parse(match[0]);
}

async function mcpQuery(query) {
  const token = getToken();
  if (!token) {
    console.error("No SUPABASE_ACCESS_TOKEN — run via Cursor Supabase MCP or set token.");
    process.exit(1);
  }

  return new Promise((resolve, reject) => {
    const proc = spawn(
      "npx",
      ["-y", "@supabase/mcp-server-supabase@0.7.0", "--project-ref", PROJECT_ID],
      {
        env: { ...process.env, SUPABASE_ACCESS_TOKEN: token, PATH: process.env.PATH },
        stdio: ["pipe", "pipe", "pipe"],
      },
    );

    let msgId = 1;
    let buf = "";
    const pending = new Map();

    const send = (method, params) => {
      const id = msgId++;
      proc.stdin.write(JSON.stringify({ jsonrpc: "2.0", id, method, params }) + "\n");
      return id;
    };

    proc.stdout.on("data", (chunk) => {
      buf += chunk.toString();
      const lines = buf.split("\n");
      buf = lines.pop() ?? "";
      for (const line of lines) {
        if (!line.trim()) continue;
        try {
          const msg = JSON.parse(line);
          if (msg.id && pending.has(msg.id)) {
            const { resolve: res, reject: rej } = pending.get(msg.id);
            pending.delete(msg.id);
            if (msg.error) rej(new Error(JSON.stringify(msg.error)));
            else res(msg.result);
          }
        } catch {
          /* ignore */
        }
      }
    });

    send("initialize", {
      protocolVersion: "2024-11-05",
      capabilities: {},
      clientInfo: { name: "scholaris-cb-verify", version: "1.0.0" },
    });
    send("notifications/initialized", {});

    setTimeout(async () => {
      try {
        const id = send("tools/call", {
          name: "execute_sql",
          arguments: { project_id: PROJECT_ID, query },
        });
        const result = await new Promise((res, rej) => pending.set(id, { resolve: res, reject: rej }));
        proc.kill();
        resolve(result);
      } catch (e) {
        proc.kill();
        reject(e);
      }
    }, 2000);
  });
}

async function main() {
  const manifest = existsSync(MANIFEST)
    ? JSON.parse(readFileSync(MANIFEST, "utf8"))
    : { total: EXPECTED.imported, batches: 99 };

  const summarySql = `
    SELECT
      count(*)::int AS total_sat,
      count(*) FILTER (WHERE source = '${EXPECTED.source}')::int AS imported,
      count(*) FILTER (WHERE pool_key = '${EXPECTED.poolKey}')::int AS pool_v1,
      count(*) FILTER (WHERE explanation IS NOT NULL AND explanation <> '')::int AS with_explanation,
      count(*) FILTER (WHERE difficulty IS NOT NULL)::int AS with_difficulty,
      count(*) FILTER (WHERE difficulty = 'easy')::int AS easy,
      count(*) FILTER (WHERE difficulty = 'medium')::int AS medium,
      count(*) FILTER (WHERE difficulty = 'hard')::int AS hard
    FROM public.questions
    WHERE exam_type = 'SAT' AND is_platform_question = true;
  `;

  const sectionSql = `
    SELECT section, count(*)::int AS cnt
    FROM public.questions
    WHERE source = '${EXPECTED.source}'
    GROUP BY section
    ORDER BY section;
  `;

  const columnsSql = `
    SELECT column_name
    FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'questions'
      AND column_name IN ('external_id', 'source', 'source_metadata', 'explanation', 'exam_type', 'pool_key')
    ORDER BY column_name;
  `;

  const [summaryRows, sectionRows, columnRows] = await Promise.all([
    mcpQuery(summarySql).then(parseMcpRows),
    mcpQuery(sectionSql).then(parseMcpRows),
    mcpQuery(columnsSql).then(parseMcpRows),
  ]);

  const summary = summaryRows?.[0] ?? {};
  const ok =
    summary.imported === manifest.total &&
    summary.imported === EXPECTED.imported &&
    (columnRows?.length ?? 0) === 6;

  const report = {
    ok,
    projectId: PROJECT_ID,
    manifest,
    expected: EXPECTED,
    summary,
    bySection: sectionRows,
    columns: columnRows?.map((r) => r.column_name),
    at: new Date().toISOString(),
  };

  console.log(JSON.stringify(report, null, 2));
  process.exit(ok ? 0 : 1);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
