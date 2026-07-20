import type { ExamType } from "@/types/supabase";

const KEYS = {
  showPreviousAttempts: "scholaris-show-previous-attempts",
  showPauseDialog: "scholaris-show-pause-dialog",
  muteSchoPopups: "scholaris-mute-scho-popups",
  sidebarCollapsed: "scholaris-sidebar-collapsed",
  shufflePracticeOrder: "scholaris-shuffle-practice-order",
  account: "scholaris:account",
  legacyAccount: "scholaris-last-account",
} as const;

export const ACCOUNT_CHANGE_EVENT = "scholaris:account-change";

export type StoredAccount = {
  id: string;
  email: string;
  displayName: string | null;
  avatarUrl: string | null;
  activeExam: ExamType | null;
  lastLoginAt: string;
  savedAt: string;
};

export type StoredAccountInput = Omit<StoredAccount, "savedAt">;

function readBool(key: string, defaultValue: boolean): boolean {
  if (typeof window === "undefined") return defaultValue;
  const raw = localStorage.getItem(key);
  if (raw === null) return defaultValue;
  return raw === "true";
}

function writeBool(key: string, value: boolean): void {
  if (typeof window === "undefined") return;
  localStorage.setItem(key, String(value));
}

function isExamType(value: unknown): value is ExamType {
  return value === "SAT" || value === "ACT";
}

function parseStoredAccount(raw: string): StoredAccount | null {
  try {
    const parsed = JSON.parse(raw) as Partial<StoredAccount>;
    if (!parsed?.id || !parsed?.email) return null;

    return {
      id: parsed.id,
      email: parsed.email,
      displayName: parsed.displayName ?? null,
      avatarUrl: parsed.avatarUrl ?? null,
      activeExam: isExamType(parsed.activeExam) ? parsed.activeExam : null,
      lastLoginAt:
        typeof parsed.lastLoginAt === "string"
          ? parsed.lastLoginAt
          : typeof parsed.savedAt === "string"
            ? parsed.savedAt
            : new Date().toISOString(),
      savedAt:
        typeof parsed.savedAt === "string"
          ? parsed.savedAt
          : new Date().toISOString(),
    };
  } catch {
    return null;
  }
}

function migrateLegacyAccount(): StoredAccount | null {
  if (typeof window === "undefined") return null;

  const legacyRaw = localStorage.getItem(KEYS.legacyAccount);
  if (!legacyRaw) return null;

  const legacy = parseStoredAccount(legacyRaw);
  localStorage.removeItem(KEYS.legacyAccount);

  if (legacy) {
    localStorage.setItem(KEYS.account, JSON.stringify(legacy));
  }

  return legacy;
}

function notifyAccountChange(): void {
  if (typeof window === "undefined") return;
  window.dispatchEvent(new Event(ACCOUNT_CHANGE_EVENT));
}

export function getStoredAccount(): StoredAccount | null {
  if (typeof window === "undefined") return null;

  const raw = localStorage.getItem(KEYS.account);
  if (raw) {
    const parsed = parseStoredAccount(raw);
    if (parsed) return parsed;
    localStorage.removeItem(KEYS.account);
  }

  return migrateLegacyAccount();
}

export function saveStoredAccount(account: StoredAccountInput): void {
  if (typeof window === "undefined") return;

  const payload: StoredAccount = {
    ...account,
    savedAt: new Date().toISOString(),
  };
  localStorage.setItem(KEYS.account, JSON.stringify(payload));
  notifyAccountChange();
}

export function updateStoredAccount(
  partial: Partial<StoredAccountInput>,
): StoredAccount | null {
  if (typeof window === "undefined") return null;

  const current = getStoredAccount();
  if (!current) return null;

  const next: StoredAccountInput = {
    id: partial.id ?? current.id,
    email: partial.email ?? current.email,
    displayName:
      partial.displayName !== undefined
        ? partial.displayName
        : current.displayName,
    avatarUrl:
      partial.avatarUrl !== undefined ? partial.avatarUrl : current.avatarUrl,
    activeExam:
      partial.activeExam !== undefined ? partial.activeExam : current.activeExam,
    lastLoginAt: partial.lastLoginAt ?? current.lastLoginAt,
  };

  saveStoredAccount(next);
  return getStoredAccount();
}

export function clearStoredAccount(): void {
  if (typeof window === "undefined") return;
  localStorage.removeItem(KEYS.account);
  localStorage.removeItem(KEYS.legacyAccount);
  notifyAccountChange();
}

export function subscribeStoredAccount(
  onChange: (account: StoredAccount | null) => void,
): () => void {
  if (typeof window === "undefined") return () => {};

  const sync = () => onChange(getStoredAccount());

  const onStorage = (event: StorageEvent) => {
    if (event.key === KEYS.account || event.key === KEYS.legacyAccount) {
      sync();
    }
  };

  window.addEventListener("storage", onStorage);
  window.addEventListener(ACCOUNT_CHANGE_EVENT, sync);

  return () => {
    window.removeEventListener("storage", onStorage);
    window.removeEventListener(ACCOUNT_CHANGE_EVENT, sync);
  };
}

export function getShowPreviousAttempts(): boolean {
  return readBool(KEYS.showPreviousAttempts, true);
}

export function setShowPreviousAttempts(value: boolean): void {
  writeBool(KEYS.showPreviousAttempts, value);
}

export function getShowPauseDialog(): boolean {
  return readBool(KEYS.showPauseDialog, true);
}

export function setShowPauseDialog(value: boolean): void {
  writeBool(KEYS.showPauseDialog, value);
}

export function getMuteSchoPopups(): boolean {
  return readBool(KEYS.muteSchoPopups, false);
}

export function setMuteSchoPopups(value: boolean): void {
  writeBool(KEYS.muteSchoPopups, value);
}

export function getSidebarCollapsed(): boolean {
  return readBool(KEYS.sidebarCollapsed, false);
}

export function setSidebarCollapsed(value: boolean): void {
  writeBool(KEYS.sidebarCollapsed, value);
}

export function getShufflePracticeOrder(): boolean {
  // Default on so Question Bank Start mixes difficulties (stratified pools
  // otherwise concatenate easy → medium → hard).
  return readBool(KEYS.shufflePracticeOrder, true);
}

export function setShufflePracticeOrder(value: boolean): void {
  writeBool(KEYS.shufflePracticeOrder, value);
}
