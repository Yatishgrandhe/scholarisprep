/**
 * Import all OpenSAT batch SQL files via Supabase MCP HTTP endpoint.
 * Reads each batch with fs.readFileSync as required.
 */
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const batchDir = path.join(__dirname, 'import-batches');
const progressDir = path.join(batchDir, '.progress');
const PROJECT_ID = 'aioyzumxxsepbnfivvdd';
const MCP_URL = 'https://mcp.supabase.com/mcp';

fs.mkdirSync(progressDir, { recursive: true });

const start = Number(process.argv[2] ?? 0);
const end = Number(process.argv[3] ?? 98);

async function executeSql(query) {
  const body = {
    jsonrpc: '2.0',
    id: Date.now(),
    method: 'tools/call',
    params: {
      name: 'execute_sql',
      arguments: { project_id: PROJECT_ID, query },
    },
  };
  const res = await fetch(MCP_URL, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Accept: 'application/json, text/event-stream',
    },
    body: JSON.stringify(body),
  });
  const text = await res.text();
  if (!res.ok) {
    throw new Error(`HTTP ${res.status}: ${text.slice(0, 500)}`);
  }
  return text;
}

const results = { ok: [], fail: [] };

for (let i = start; i <= end; i++) {
  const num = String(i).padStart(3, '0');
  const file = path.join(batchDir, `batch-${num}.sql`);
  const sql = fs.readFileSync(file, 'utf8');
  process.stdout.write(`batch-${num} (${sql.length} bytes)... `);
  try {
    const resp = await executeSql(sql);
    if (/error/i.test(resp) && !/DO NOTHING/i.test(resp)) {
      throw new Error(resp.slice(0, 300));
    }
    results.ok.push(num);
    fs.writeFileSync(path.join(progressDir, `${num}.ok`), resp.slice(0, 200));
    console.log('ok');
  } catch (err) {
    results.fail.push({ batch: num, error: String(err.message || err) });
    fs.writeFileSync(path.join(progressDir, `${num}.fail`), String(err));
    console.log('FAIL', err.message || err);
  }
}

fs.writeFileSync(path.join(progressDir, 'import-results.json'), JSON.stringify(results, null, 2));
console.log(JSON.stringify({ ok: results.ok.length, fail: results.fail }));
