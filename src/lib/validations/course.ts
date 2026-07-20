import { z } from "zod";

const examTypeSchema = z.enum(["SAT", "ACT", "JAMB", "GRE", "GMAT", "CUSTOM"]);

const difficultySchema = z.enum(["easy", "medium", "hard", "expert"]);

const youtubeUrlSchema = z
  .string()
  .url("Enter a valid URL")
  .refine(
    (url) =>
      /youtube\.com|youtu\.be/.test(url) || url.length === 0,
    "Must be a YouTube playlist or video URL",
  )
  .optional()
  .or(z.literal(""));

export const courseSchema = z.object({
  title: z.string().trim().min(3, "Title must be at least 3 characters").max(200),
  description: z
    .string()
    .trim()
    .min(10, "Description must be at least 10 characters")
    .max(5000),
  youtubeUrl: youtubeUrlSchema,
  examType: examTypeSchema,
  subject: z.string().trim().min(1, "Subject is required").max(120),
  level: difficultySchema,
  isPublic: z.boolean(),
});

export type CourseInput = z.infer<typeof courseSchema>;
