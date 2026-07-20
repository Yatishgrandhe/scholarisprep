/** Days until an exam date (local midnight-to-midnight). */
export function daysUntilExam(examDate: string | null | undefined): number | null {
  if (!examDate) return null;

  const datePart = examDate.split("T")[0] ?? examDate;
  const [y, m, d] = datePart.split("-").map(Number);
  if (!y || !m || !d) return null;

  const target = new Date(y, m - 1, d);
  target.setHours(0, 0, 0, 0);

  const today = new Date();
  today.setHours(0, 0, 0, 0);

  const diffMs = target.getTime() - today.getTime();
  return Math.max(0, Math.round(diffMs / 86_400_000));
}

export function formatExamCountdown(days: number | null): string {
  if (days === null) return "No exam date set";
  if (days === 0) return "Exam is today";
  if (days === 1) return "1 day to exam";
  return `${days} days to exam`;
}

export function formatExamSubline(
  days: number | null,
  score: number | null | undefined,
): string {
  const parts = [formatExamCountdown(days)];
  if (score != null && Number.isFinite(score)) {
    parts.push(`~${Math.round(score)} predicted`);
  }
  return parts.join(" · ");
}

/** First letter of the email local part (e.g. john@gmail.com → J). */
export function getProfileAvatarInitial(
  email: string | null | undefined,
): string {
  const local = email?.split("@")[0]?.trim();
  if (local && local.length > 0) return local.charAt(0).toUpperCase();
  return "?";
}

export function getDisplayNameLabel(
  fullName: string | null | undefined,
  email: string | null | undefined,
): string {
  if (fullName?.trim()) return fullName.trim();
  const local = email?.split("@")[0]?.trim();
  if (local) return local;
  return "Account";
}

export function formatMemberSince(
  profileCreatedAt: string | null | undefined,
  authCreatedAt: string | null | undefined,
): string | null {
  const raw = profileCreatedAt ?? authCreatedAt;
  if (!raw) return null;
  return new Date(raw).toLocaleDateString(undefined, {
    month: "long",
    year: "numeric",
  });
}
