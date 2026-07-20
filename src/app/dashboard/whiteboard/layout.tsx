import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Whiteboard Studio",
};

/**
 * Immersive Whiteboard Studio layout.
 * No Free Studying / Labs product sidebars — studio fills examLayout.
 * Dashboard chrome is hidden via `isWhiteboardFullscreenRoute`.
 * See docs/research/whiteboard/CONTRACT.md
 */
export default function WhiteboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div
      data-whiteboard-layout=""
      style={{
        width: "100%",
        height: "100dvh",
        maxHeight: "100dvh",
        minHeight: 0,
        overflow: "hidden",
      }}
    >
      {children}
    </div>
  );
}
