import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const batchDir = path.join(__dirname, 'import-batches');
const outDir = path.join(batchDir, '.combined');
const chunkSize = Number(process.argv[2] ?? 5);

fs.mkdirSync(outDir, { recursive: true });

const chunks = [];
for (let i = 0; i <= 98; i += chunkSize) {
  const end = Math.min(i + chunkSize - 1, 98);
  const parts = [];
  for (let j = i; j <= end; j++) {
    const num = String(j).padStart(3, '0');
    parts.push(fs.readFileSync(path.join(batchDir, `batch-${num}.sql`), 'utf8').trim());
  }
  const chunkId = String(Math.floor(i / chunkSize)).padStart(3, '0');
  const sql = parts.join('\n\n');
  const outFile = path.join(outDir, `chunk-${chunkId}.sql`);
  fs.writeFileSync(outFile, sql);
  chunks.push({ chunkId, start: i, end, file: outFile, bytes: sql.length });
}

fs.writeFileSync(path.join(outDir, 'manifest.json'), JSON.stringify(chunks, null, 2));
console.log(`Wrote ${chunks.length} combined chunks (size ${chunkSize} batches each)`);
