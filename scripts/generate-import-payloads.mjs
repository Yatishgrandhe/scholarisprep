import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const dir = path.join(__dirname, 'import-batches');
const outDir = path.join(dir, '.payloads');

fs.mkdirSync(outDir, { recursive: true });

for (let i = 0; i <= 98; i++) {
  const num = String(i).padStart(3, '0');
  const sql = fs.readFileSync(path.join(dir, `batch-${num}.sql`), 'utf8');
  fs.writeFileSync(
    path.join(outDir, `batch-${num}.json`),
    JSON.stringify({ project_id: 'aioyzumxxsepbnfivvdd', query: sql })
  );
}

console.log(`Wrote 99 payload files to ${outDir}`);
