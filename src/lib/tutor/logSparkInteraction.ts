import type { SparkType } from "@/lib/tutor/sparkKeywords";

export type SparkAction = "suggested" | "try_it" | "dismiss";

type LogSparkOptions = {
  sparkType: SparkType;
  action: SparkAction;
  examType?: string;
  conversationId?: string;
  triggeredByMessage?: string;
};

/**
 * Fire-and-forget log of a Spark interaction to the API.
 * Errors are swallowed — analytics should never block the UI.
 */
export async function logSparkInteraction({
  sparkType,
  action,
  examType,
  conversationId,
  triggeredByMessage,
}: LogSparkOptions): Promise<void> {
  try {
    await fetch("/api/spark/log", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        spark_type: sparkType,
        action,
        exam_type: examType,
        conversation_id: conversationId,
        triggered_by_message: triggeredByMessage,
      }),
    });
  } catch {
    // silent — analytics only
  }
}
