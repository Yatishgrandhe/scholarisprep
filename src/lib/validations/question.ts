import { z } from "zod";

const questionOptionSchema = z.object({
  id: z.string().min(1),
  text: z.string().trim().min(1),
  is_correct: z.boolean().optional(),
});

export const questionSchema = z.object({
  questionText: z
    .string()
    .trim()
    .min(5, "Question text is required")
    .max(10000),
  stimulusText: z.string().trim().max(10000).optional().nullable(),
  options: z
    .array(questionOptionSchema)
    .min(2, "At least two answer options are required")
    .max(6),
  explanation: z.string().trim().min(1, "Explanation is required").max(10000),
  hint: z.string().trim().max(2000).optional().nullable(),
  topic: z.string().trim().min(1, "Topic is required").max(120),
  difficulty: z.enum(["easy", "medium", "hard", "expert"]),
});

export type QuestionInput = z.infer<typeof questionSchema>;
