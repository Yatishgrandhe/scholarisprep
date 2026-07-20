import { z } from "zod";

export const uuidSchema = z.string().uuid();

export const userRoleSchema = z.enum([
  "student",
  "creator",
  "org_admin",
  "platform_admin",
]);

export const subscriptionPlanSchema = z.enum([
  "free",
  "student_monthly",
  "student_annual",
  "creator",
  "business",
]);

export const courseStatusSchema = z.enum([
  "draft",
  "pending_review",
  "published",
  "archived",
]);

export const contentReportStatusSchema = z.enum([
  "open",
  "reviewing",
  "resolved",
  "dismissed",
]);

export const examTypeSchema = z.enum([
  "SAT",
  "ACT",
  "JAMB",
  "GRE",
  "GMAT",
  "CUSTOM",
]);

export const adminUsersQuerySchema = z.object({
  q: z
    .string()
    .max(200)
    .optional()
    .transform((v) => (v ?? "").trim().toLowerCase()),
  role: z
    .union([userRoleSchema, z.literal("all")])
    .optional()
    .default("all"),
  plan: z
    .union([subscriptionPlanSchema, z.literal("all")])
    .optional()
    .default("all"),
});

export const adminCoursesQuerySchema = z.object({
  status: z
    .union([courseStatusSchema, z.literal("all")])
    .optional()
    .default("all"),
});

export const adminReportsQuerySchema = z.object({
  status: z
    .union([contentReportStatusSchema, z.literal("all")])
    .optional()
    .default("all"),
});

export const adminBillingQuerySchema = z.object({
  q: z
    .string()
    .max(200)
    .optional()
    .transform((v) => (v ?? "").trim().toLowerCase()),
  plan: z
    .union([subscriptionPlanSchema, z.literal("all")])
    .optional()
    .default("all"),
});

export const authCallbackQuerySchema = z.object({
  code: z.string().min(1, "Authorization code is required"),
  next: z.string().optional(),
});

export const emptyBodySchema = z.object({}).strict();

/** Rejects unexpected query string keys on GET routes with no filters. */
export const emptyQuerySchema = z.object({}).strict();

export const courseIdParamsSchema = z.object({
  courseId: uuidSchema,
});

export const userIdParamsSchema = z.object({
  userId: uuidSchema,
});

export const reportIdParamsSchema = z.object({
  reportId: uuidSchema,
});
