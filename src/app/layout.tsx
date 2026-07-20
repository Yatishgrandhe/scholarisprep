import type { Metadata } from "next";
import "@/styles/globals.css";
import { AuthProvider } from "@/components/providers/AuthProvider";
import { QueryProvider } from "@/components/providers/QueryProvider";
import { ThemeProvider } from "@/components/providers/ThemeProvider";
import { TooltipProvider } from "@/components/ui/tooltip";
import { Toaster } from "@/components/ui/sonner";
import { AppLoadingOverlay } from "@/components/loading/AppLoadingOverlay";

export const metadata: Metadata = {
  title: {
    default: "Scholaris | Ace Every Exam",
    template: "%s | Scholaris",
  },
  description:
    "AI-powered exam prep with unique practice questions, personalized study plans, and your tutor Scho, always on.",
  icons: {
    icon: [{ url: "/icon.svg", type: "image/svg+xml" }],
    apple: [{ url: "/apple-icon.svg", type: "image/svg+xml" }],
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className="dark" suppressHydrationWarning>
      <body suppressHydrationWarning>
        <ThemeProvider>
          <TooltipProvider>
            <QueryProvider>
              <AuthProvider>
                <AppLoadingOverlay />
                {children}
                <Toaster position="bottom-right" richColors closeButton />
              </AuthProvider>
            </QueryProvider>
          </TooltipProvider>
        </ThemeProvider>
      </body>
    </html>
  );
}
