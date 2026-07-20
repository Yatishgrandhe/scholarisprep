"use client";

import type { Components } from "react-markdown";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import "katex/dist/katex.min.css";
import styles from "./course-chat.module.css";

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

/** Markdown + GFM + KaTeX for GetStudi-style assistant bubbles. */
export function ChatMarkdown({ content }: { content: string }) {
  return (
    <div className={styles.bubbleContent}>
      <ReactMarkdown
        remarkPlugins={[remarkGfm, remarkMath]}
        rehypePlugins={[[rehypeKatex, { throwOnError: false }]]}
        components={markdownComponents}
      >
        {normalizeMath(content)}
      </ReactMarkdown>
    </div>
  );
}
