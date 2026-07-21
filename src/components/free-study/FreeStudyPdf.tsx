"use client";

import { useCallback, useRef, useState } from "react";
import { FilePdf, UploadSimple, X } from "@phosphor-icons/react";
import { toast } from "sonner";
import { FreeStudyLayout } from "./FreeStudyLayout";
import { FreeStudyChat, type ChatMessage } from "./FreeStudyChat";
import styles from "./free-study-pdf.module.css";

export function FreeStudyPdf() {
  const [excerpt, setExcerpt] = useState("");
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [isStreaming, setIsStreaming] = useState(false);
  const [fileName, setFileName] = useState<string | null>(null);
  const fileRef = useRef<HTMLInputElement>(null);

  const handleFile = useCallback(async (file: File) => {
    if (file.type !== "application/pdf") {
      toast.error("Please upload a PDF file");
      return;
    }
    setFileName(file.name);

    try {
      const pdfjsLib = await import("pdfjs-dist");
      pdfjsLib.GlobalWorkerOptions.workerSrc = `//unpkg.com/pdfjs-dist@${pdfjsLib.version}/build/pdf.worker.min.mjs`;

      const arrayBuffer = await file.arrayBuffer();
      const pdf = await pdfjsLib.getDocument({ data: arrayBuffer }).promise;
      let text = "";

      for (let i = 1; i <= pdf.numPages; i++) {
        const page = await pdf.getPage(i);
        const content = await page.getTextContent();
        text += content.items.map((item: any) => item.str).join(" ") + "\n";
      }

      setExcerpt(text.slice(0, 8000));
      toast.success("Text extracted from PDF");
    } catch {
      toast.error("Could not extract text from PDF");
    }
  }, []);

  const handleSend = useCallback(
    async (content: string) => {
      if (!excerpt.trim()) {
        toast.error("Please upload or paste text first");
        return;
      }

      const userMsg: ChatMessage = { role: "user", content };
      setMessages((prev) => [...prev, userMsg]);
      setIsStreaming(true);

      try {
        const res = await fetch("/api/ai/tutor", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            messages: [
              {
                role: "system",
                content: `The user has provided the following text excerpt:\n\n${excerpt.slice(0, 6000)}`,
              },
              ...[...messages, userMsg].map((m) => ({
                role: m.role,
                content: m.content,
              })),
            ],
            examType: "general",
          }),
        });

        if (!res.ok) throw new Error("Failed");

        const reader = res.body?.getReader();
        if (!reader) throw new Error("No body");

        const decoder = new TextDecoder();
        let assistant = "";

        setMessages((prev) => [...prev, { role: "assistant", content: "" }]);

        while (true) {
          const { done, value } = await reader.read();
          if (done) break;
          assistant += decoder.decode(value, { stream: true });
          setMessages((prev) => {
            const next = [...prev];
            next[next.length - 1] = { role: "assistant", content: assistant };
            return next;
          });
        }
      } catch {
        toast.error("Something went wrong");
        setMessages((prev) => prev.filter((m) => m !== userMsg));
      } finally {
        setIsStreaming(false);
      }
    },
    [excerpt, messages],
  );

  const handleClear = useCallback(() => {
    setExcerpt("");
    setFileName(null);
    setMessages([]);
    if (fileRef.current) fileRef.current.value = "";
  }, []);

  return (
    <FreeStudyLayout mode="PDF">
      <div className={styles.layout}>
        <div className={styles.left}>
          <div className={styles.panelHeader}>
            <h2 className={styles.panelTitle}>Document</h2>
            {fileName ? (
              <button
                type="button"
                className={styles.clearBtn}
                onClick={handleClear}
              >
                <X size={14} aria-hidden /> Clear
              </button>
            ) : null}
          </div>

          {!excerpt ? (
            <label className={styles.uploadZone}>
              <input
                ref={fileRef}
                type="file"
                accept=".pdf"
                className={styles.fileInput}
                onChange={(e) => {
                  const file = e.target.files?.[0];
                  if (file) handleFile(file);
                }}
              />
              <UploadSimple size={28} weight="duotone" aria-hidden />
              <span className={styles.uploadText}>
                Drop a PDF or click to upload
              </span>
            </label>
          ) : (
            <div className={styles.excerptBlock}>
              <div className={styles.excerptHeader}>
                <FilePdf size={16} weight="duotone" aria-hidden />
                <span className={styles.excerptName}>{fileName}</span>
              </div>
              <textarea
                className={styles.excerptTextarea}
                value={excerpt}
                onChange={(e) => setExcerpt(e.target.value)}
                placeholder="Extracted text will appear here…"
              />
              <span className={styles.charCount}>
                {excerpt.length.toLocaleString()} characters
              </span>
            </div>
          )}
        </div>

        <div className={styles.right}>
          <FreeStudyChat
            messages={messages}
            onSend={handleSend}
            isStreaming={isStreaming}
            disabled={!excerpt.trim()}
            placeholder={
              excerpt.trim()
                ? "Ask about this document…"
                : "Upload a PDF first"
            }
            emptyState={
              <div className={styles.empty}>
                <p className={styles.emptyTitle}>Ask about your PDF</p>
                <p className={styles.emptyDesc}>
                  Upload a document, then ask Scho to summarize, explain, or
                  quiz you on it.
                </p>
              </div>
            }
          />
        </div>
      </div>
    </FreeStudyLayout>
  );
}
