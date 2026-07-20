/**
 * Reads batch SQL files and prints progress JSON lines for MCP import runner.
 * Usage: node scripts/import-batches-via-mcp.mjs [start] [end]
 */
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const batchDir = path.join(__dirname, 'import-batches');

const start = Number(process.argv[2] ?? 0);
const end = Number(process.argv[3] ?? 98);

for (let i = start; i <= end; i++) {
  const num = String(i).padStart(3, '0');
  const file = path.join(batchDir, `batch-${num}.sql`);
  const sql = fs.readFileSync(file, 'utf8');
  process.stdout.write(JSON.stringify({ batch: num, sql }) + '\n');
}
