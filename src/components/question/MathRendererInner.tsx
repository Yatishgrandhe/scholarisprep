"use client";

import { useMemo } from "react";
import { normalizeMathText } from "@/lib/question/normalizeMathText";
import { BlockMath, InlineMath } from "react-katex";
import "katex/dist/katex.min.css";

type MathRendererInnerProps = {
  text: string;
};

type Segment =
  | { type: "text"; value: string }
  | { type: "inline"; value: string }
  | { type: "block"; value: string };

/** Index of the next `token` ($ or $$) that is NOT escaped by a preceding
 * backslash (so a literal `\$`, e.g. in "$\$58$", is not treated as a math
 * delimiter). An even number of leading backslashes means "not escaped". */
function indexOfUnescaped(input: string, token: string, from: number): number {
  let idx = input.indexOf(token, from);
  while (idx !== -1) {
    let backslashes = 0;
    let k = idx - 1;
    while (k >= 0 && input[k] === "\\") {
      backslashes += 1;
      k -= 1;
    }
    if (backslashes % 2 === 0) return idx;
    idx = input.indexOf(token, idx + 1);
  }
  return -1;
}

/** A literal `\$` in plain text should display as a real dollar sign. */
function pushText(segments: Segment[], value: string) {
  if (!value) return;
  segments.push({ type: "text", value: value.replace(/\\\$/g, "$") });
}

function parseMathSegments(input: string): Segment[] {
  const segments: Segment[] = [];
  let i = 0;

  while (i < input.length) {
    const blockStart = indexOfUnescaped(input, "$$", i);
    const inlineStart = indexOfUnescaped(input, "$", i);

    if (blockStart === -1 && inlineStart === -1) {
      pushText(segments, input.slice(i));
      break;
    }

    const nextIsBlock =
      blockStart !== -1 && (inlineStart === -1 || blockStart <= inlineStart);

    if (nextIsBlock) {
      if (blockStart > i) {
        pushText(segments, input.slice(i, blockStart));
      }
      const blockEnd = indexOfUnescaped(input, "$$", blockStart + 2);
      if (blockEnd === -1) {
        pushText(segments, input.slice(blockStart));
        break;
      }
      segments.push({
        type: "block",
        value: input.slice(blockStart + 2, blockEnd),
      });
      i = blockEnd + 2;
      continue;
    }

    if (inlineStart > i) {
      pushText(segments, input.slice(i, inlineStart));
    }

    const inlineEnd = indexOfUnescaped(input, "$", inlineStart + 1);
    if (inlineEnd === -1) {
      pushText(segments, input.slice(inlineStart));
      break;
    }

    segments.push({
      type: "inline",
      value: input.slice(inlineStart + 1, inlineEnd),
    });
    i = inlineEnd + 1;
  }

  return segments;
}

function renderKatex(type: "inline" | "block", value: string) {
  try {
    if (type === "block") {
      return (
        <span className="my-3 block overflow-x-auto">
          <BlockMath math={value} />
        </span>
      );
    }
    return <InlineMath math={value} />;
  } catch {
    return <span>{type === "block" ? `$$${value}$$` : `$${value}$`}</span>;
  }
}

function MathSegment({ type, value }: { type: Segment["type"]; value: string }) {
  if (type === "text") {
    return <span>{value}</span>;
  }

  return renderKatex(type, value);
}

export default function MathRendererInner({ text }: MathRendererInnerProps) {
  const normalized = useMemo(() => normalizeMathText(text), [text]);
  const segments = useMemo(() => parseMathSegments(normalized), [normalized]);

  if (segments.length === 1 && segments[0]?.type === "text") {
    return <>{segments[0].value}</>;
  }

  return (
    <>
      {segments.map((segment, index) => (
        <MathSegment
          key={`${index}-${segment.type}-${segment.value.slice(0, 12)}`}
          type={segment.type}
          value={segment.value}
        />
      ))}
    </>
  );
}
