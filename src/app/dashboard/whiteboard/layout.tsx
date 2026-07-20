import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Whiteboard Studio",
};

/**
 * Immersive Whiteboard Studio layout.
 * No Free Studying mode tabs — studio fills the dashboard main pane.
 * See docs/research/whiteboard/CONTRACT.md
 */
export default function WhiteboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return children;
}
