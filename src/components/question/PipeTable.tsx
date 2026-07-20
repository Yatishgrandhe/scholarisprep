"use client";

import { isPipeTable, parsePipeTable } from "@/lib/question/formatStimulusText";
import { cn } from "@/lib/utils";
import { MathRenderer } from "./MathRenderer";
import styles from "./PipeTable.module.css";

export { isPipeTable };

/** Render a markdown-style pipe table (used for table-valued answer choices and
 * inline tables). Cells are rendered through MathRenderer so $...$ math works. */
export function PipeTable({ text, className }: { text: string; className?: string }) {
  const rows = parsePipeTable(text);
  if (rows.length === 0) return <MathRenderer text={text} />;
  const [header, ...body] = rows;
  const dataRows = header ? body : rows;
  return (
    <div className={styles.scrollWrap}>
    <table className={cn(styles.table, className)}>
      {header ? (
        <thead>
          <tr>
            {header.map((cell, i) => (
              <th key={i} scope="col">
                <MathRenderer text={cell} />
              </th>
            ))}
          </tr>
        </thead>
      ) : null}
      <tbody>
        {dataRows.map((row, ri) => (
          <tr key={ri}>
            {row.map((cell, ci) => (
              <td key={ci}>
                <MathRenderer text={cell} />
              </td>
            ))}
          </tr>
        ))}
      </tbody>
    </table>
    </div>
  );
}
