"use client";

import dynamic from "next/dynamic";

type MathRendererProps = {
  text: string;
};

const MathRendererInner = dynamic(() => import("./MathRendererInner"), {
  ssr: false,
});

export function MathRenderer({ text }: MathRendererProps) {
  return <MathRendererInner text={text} />;
}
