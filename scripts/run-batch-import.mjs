/**
 * Reads batch SQL files with fs.readFileSync and writes status for MCP runner.
 * The parent agent should call execute_sql for each batch listed in pending.
 */
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const batchDir = path.join(__dirname, 'import-batches');
const progressDir = path.join(batchDir, '.progress');
const statusFile = path.join(progressDir, 'status.json');

fs.mkdirSync(progressDir, { recursive: true });

const start = Number(process.argv[2] ?? 0);
const end = Number(process.argv[3] ?? 98);
const action = process.argv[4] ?? 'list';

let status = { ok: [], fail: [], pending: [] };
if (fs.existsSync(statusFile)) {
  status = JSON.parse(fs.readFileSync(statusFile, 'utf8'));
}

if (action === 'list') {
  const pending = [];
  for (let i = start; i <= end; i++) {
    const num = String(i).padStart(3, '0');
    if (!status.ok.includes(num) && !status.fail.includes(num)) pending.push(num);
  }
  console.log(JSON.stringify({ pending, ok: status.ok.length, fail: status.fail }));
} else if (action === 'sql') {
  const num = String(start).padStart(3, '0');
  const sql = fs.readFileSync(path.join(batchDir, `batch-${num}.sql`), 'utf8');
  process.stdout.write(sql);
} else if (action === 'mark-ok') {
  const num = String(start).padStart(3, '0');
  if (!status.ok.includes(num)) status.ok.push(num);
  status.fail = status.fail.filter((b) => b !== num);
  fs.writeFileSync(statusFile, JSON.stringify(status, null, 2));
  console.log(JSON.stringify({ marked: num, ok: status.ok.length }));
} else if (action === 'mark-fail') {
  const num = String(start).padStart(3, '0');
  if (!status.fail.includes(num)) status.fail.push(num);
  fs.writeFileSync(statusFile, JSON.stringify(status, null, 2));
  console.log(JSON.stringify({ marked: num, fail: status.fail.length }));
}
