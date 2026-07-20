import type { MetadataRoute } from "next";
import { getAppUrl } from "@/lib/env";

const PUBLIC_PATHS = [
  "",
  "/about",
  "/blog",
  "/contact",
  "/learn",
  "/exams/sat",
  "/exams/act",
  "/sat-score-calculator",
  "/act-score-calculator",
  "/legal/privacy",
  "/legal/terms",
  "/auth/login",
  "/auth/signup",
] as const;

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = getAppUrl();
  const now = new Date();

  // Only emit real public routes. Published courses play at
  // /dashboard/courses/[id]/[lessonId] after enroll — there is no
  // /learn/[slug] page, so course slugs must not appear here.
  return PUBLIC_PATHS.map((path) => ({
    url: path === "" ? baseUrl : `${baseUrl}${path}`,
    lastModified: now,
    changeFrequency: path === "" ? "weekly" : "monthly",
    priority: path === "" ? 1 : path.startsWith("/exams") ? 0.9 : 0.7,
  }));
}
