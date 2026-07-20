"use client";

import type { Components } from "react-markdown";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import "katex/dist/katex.min.css";
import styles from "./tutor.module.css";

/**
 * Normalize the LaTeX delimiters models actually emit into the `$`/`$$`
 * delimiters remark-math understands. gpt-oss commonly uses `\( … \)` and
 * `\[ … \]`; convert those so the math renders instead of showing as raw text.
 * (Replacement is done with functions so the literal `$`/`$$` aren't treated as
 * `String.replace` special patterns.)
 */
function normalizeMath(input: string): string {
  return input
    .replace(/\\\[/g, () => "$$")
    .replace(/\\\]/g, () => "$$")
    .replace(/\\\(/g, () => "$")
    .replace(/\\\)/g, () => "$");
}

const markdownComponents: Components = {
  table: ({ children }) => (
    <div className={styles.tableWrap}>
      <table>{children}</table>
    </div>
  ),
};

/** Markdown + GFM + KaTeX renderer shared by the tutor page and side panel. */
export function TutorMarkdown({ content }: { content: string }) {
  return (
    <ReactMarkdown
      remarkPlugins={[remarkGfm, remarkMath]}
      // throwOnError:false → partial/incomplete math while streaming renders as
      // dimmed source instead of crashing the whole message.
      rehypePlugins={[[rehypeKatex, { throwOnError: false }]]}
      components={markdownComponents}
    >
      {normalizeMath(content)}
    </ReactMarkdown>
  );
}
