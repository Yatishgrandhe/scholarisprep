"use client";

import {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
  type ReactNode,
} from "react";
import { formatDistanceToNow } from "date-fns";
import { toast } from "sonner";
import { MagnifyingGlass, Users, Warning, X } from "@phosphor-icons/react";
import { Button, buttonVariants } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
} from "@/components/ui/sheet";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { ThemeToggle } from "@/components/shared/ThemeToggle";
import { AdminListSkeleton } from "@/components/admin/AdminListSkeleton";
import { cn } from "@/lib/utils";
import { planLabel, roleLabel } from "@/lib/admin/labels";
import type { Profile, SubscriptionPlan, UserRole } from "@/types/supabase";
import styles from "@/app/admin/admin.module.css";

type AdminUser = {
  id: string;
  email: string;
  fullName: string | null;
  avatarUrl: string | null;
  role: UserRole;
  plan: SubscriptionPlan;
  createdAt: string | null;
  lastActiveAt: string | null;
  isSuspended: boolean;
};

type ProfileDetail = Profile & {
  plan?: SubscriptionPlan;
};

function roleBadgeClass(role: UserRole): string {
  switch (role) {
    case "platform_admin":
      return styles.roleBadgePlatform;
    case "org_admin":
      return styles.roleBadgeOrg;
    case "creator":
      return styles.roleBadgeCreator;
    default:
      return styles.roleBadgeStudent;
  }
}

function roleBadgeVariant(
  role: UserRole,
): "default" | "secondary" | "outline" {
  switch (role) {
    case "platform_admin":
      return "default";
    case "org_admin":
      return "secondary";
    default:
      return "outline";
  }
}

function initials(name: string | null, email: string): string {
  const source = (name ?? email).trim();
  const parts = source.split(/\s+/).filter(Boolean);
  if (parts.length >= 2) {
    return `${parts[0]![0]!}${parts[1]![0]!}`.toUpperCase();
  }
  return source.slice(0, 2).toUpperCase() || "?";
}

export function AdminUsersPanel() {
  const [users, setUsers] = useState<AdminUser[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [loadError, setLoadError] = useState<string | null>(null);
  const [searchInput, setSearchInput] = useState("");
  const [search, setSearch] = useState("");
  const [roleFilter, setRoleFilter] = useState("all");
  const [planFilter, setPlanFilter] = useState("all");
  const [selectedId, setSelectedId] = useState<string | null>(null);
  const [profileDetail, setProfileDetail] = useState<ProfileDetail | null>(
    null,
  );
  const [detailLoading, setDetailLoading] = useState(false);
  const [roleDraft, setRoleDraft] = useState<UserRole>("student");
  const [actionBusy, setActionBusy] = useState(false);
  const hasLoadedRef = useRef(false);

  useEffect(() => {
    const t = setTimeout(() => setSearch(searchInput.trim()), 250);
    return () => clearTimeout(t);
  }, [searchInput]);

  const load = useCallback(async () => {
    setLoadError(null);
    if (hasLoadedRef.current) setRefreshing(true);
    else setLoading(true);

    const params = new URLSearchParams();
    if (search) params.set("q", search);
    if (roleFilter !== "all") params.set("role", roleFilter);
    if (planFilter !== "all") params.set("plan", planFilter);

    try {
      const res = await fetch(`/api/admin/users?${params.toString()}`, {
        credentials: "same-origin",
      });
      if (!res.ok) {
        const err = (await res.json().catch(() => ({}))) as { error?: string };
        const message =
          res.status === 401 || res.status === 403
            ? (err.error ?? "Sign in as platform_admin to manage users.")
            : (err.error ?? "Could not load users");
        setLoadError(message);
        toast.error(message);
        return;
      }
      const json = (await res.json()) as { users: AdminUser[] };
      setUsers(json.users ?? []);
      hasLoadedRef.current = true;
    } catch {
      const message = "Network error loading users";
      setLoadError(message);
      toast.error(message);
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, [search, roleFilter, planFilter]);

  useEffect(() => {
    void load();
  }, [load]);

  const counts = useMemo(() => {
    let suspended = 0;
    let admins = 0;
    let creators = 0;
    for (const u of users) {
      if (u.isSuspended) suspended += 1;
      if (u.role === "platform_admin" || u.role === "org_admin") admins += 1;
      if (u.role === "creator") creators += 1;
    }
    return {
      total: users.length,
      suspended,
      admins,
      creators,
    };
  }, [users]);

  const hasFilters =
    search.length > 0 || roleFilter !== "all" || planFilter !== "all";

  const clearFilters = () => {
    setSearchInput("");
    setSearch("");
    setRoleFilter("all");
    setPlanFilter("all");
  };

  const openProfile = async (userId: string) => {
    setSelectedId(userId);
    setProfileDetail(null);
    setDetailLoading(true);
    try {
      const res = await fetch(`/api/admin/users/${userId}`, {
        credentials: "same-origin",
      });
      if (!res.ok) {
        toast.error("Could not load profile");
        setSelectedId(null);
        return;
      }
      const json = (await res.json()) as {
        profile: Profile;
        subscription?: { plan?: SubscriptionPlan } | null;
      };
      const listUser = users.find((u) => u.id === userId);
      setProfileDetail({
        ...json.profile,
        plan: json.subscription?.plan ?? listUser?.plan ?? "free",
      });
      setRoleDraft(json.profile.role);
    } catch {
      toast.error("Could not load profile");
      setSelectedId(null);
    } finally {
      setDetailLoading(false);
    }
  };

  const changeRole = async (userId: string, role: UserRole) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/users/${userId}/role`, {
        method: "POST",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ role }),
      });
      if (!res.ok) {
        const err = (await res.json()) as { error?: string };
        toast.error(err.error ?? "Could not update role");
        return;
      }
      toast.success("Role updated");
      if (selectedId === userId && profileDetail) {
        setProfileDetail({ ...profileDetail, role });
      }
      void load();
    } finally {
      setActionBusy(false);
    }
  };

  const toggleSuspend = async (userId: string, suspended: boolean) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/users/${userId}/suspend`, {
        method: "POST",
        credentials: "same-origin",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ suspended }),
      });
      if (!res.ok) {
        const err = (await res.json()) as { error?: string };
        toast.error(err.error ?? "Could not update suspension");
        return;
      }
      toast.success(suspended ? "User suspended" : "User unsuspended");
      if (selectedId === userId && profileDetail) {
        setProfileDetail({ ...profileDetail, is_suspended: suspended });
      }
      void load();
    } finally {
      setActionBusy(false);
    }
  };

  const deleteUser = async (userId: string) => {
    setActionBusy(true);
    try {
      const res = await fetch(`/api/admin/users/${userId}`, {
        method: "DELETE",
        credentials: "same-origin",
      });
      if (!res.ok) {
        const err = (await res.json()) as { error?: string };
        toast.error(err.error ?? "Could not delete user");
        return;
      }
      toast.success("User deleted");
      setSelectedId(null);
      setProfileDetail(null);
      void load();
    } finally {
      setActionBusy(false);
    }
  };

  const selectedListUser = selectedId
    ? users.find((u) => u.id === selectedId)
    : undefined;

  return (
    <div className="adminPage">
      <header className="adminHeader">
        <div className="adminHeaderMain">
          <p className="adminEyebrow">Platform admin</p>
          <h1 className="adminHeaderTitle">Users</h1>
          <p className="adminHeaderSubtitle">
            Search, filter, and manage platform accounts
          </p>
        </div>
        <div className="adminHeaderActions">
          <ThemeToggle className="hidden md:flex" />
        </div>
      </header>

      {loading ? (
        <AdminListSkeleton />
      ) : loadError && users.length === 0 ? (
        <div className={styles.errorPanel} role="alert">
          <p className={styles.errorPanelText}>
            <Warning size={16} weight="fill" aria-hidden />
            {loadError}
          </p>
          <Button type="button" onClick={() => void load()}>
            Retry
          </Button>
        </div>
      ) : (
        <>
          <div className={styles.statsGrid}>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.total}</p>
              <p className={styles.statLabel}>In view</p>
              <p className={styles.statMeta}>
                {hasFilters ? "Matching filters" : "All accounts"}
              </p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.admins}</p>
              <p className={styles.statLabel}>Admins</p>
              <p className={styles.statMeta}>Platform + org</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.creators}</p>
              <p className={styles.statLabel}>Creators</p>
              <p className={styles.statMeta}>Course authors</p>
            </article>
            <article className={styles.statCard}>
              <p className={styles.statValue}>{counts.suspended}</p>
              <p className={styles.statLabel}>Suspended</p>
              <p className={styles.statMeta}>Login blocked</p>
            </article>
          </div>

          <div className={styles.filterRow}>
            <div className={cn(styles.filterField, styles.filterGrow)}>
              <label
                className={styles.filterLabel}
                htmlFor="admin-users-search"
              >
                Search
              </label>
              <div className={styles.searchWrap}>
                <MagnifyingGlass
                  className={styles.searchIcon}
                  size={16}
                  aria-hidden
                />
                <input
                  id="admin-users-search"
                  type="search"
                  placeholder="Name or email…"
                  value={searchInput}
                  onChange={(e) => setSearchInput(e.target.value)}
                  autoComplete="off"
                  spellCheck={false}
                />
                {searchInput ? (
                  <button
                    type="button"
                    className={styles.searchClear}
                    onClick={() => {
                      setSearchInput("");
                      setSearch("");
                    }}
                    aria-label="Clear search"
                  >
                    <X size={14} aria-hidden />
                  </button>
                ) : null}
              </div>
            </div>
            <div className={styles.filterField}>
              <label className={styles.filterLabel} htmlFor="admin-users-role">
                Role
              </label>
              <select
                id="admin-users-role"
                value={roleFilter}
                onChange={(e) => setRoleFilter(e.target.value)}
              >
                <option value="all">All roles</option>
                <option value="student">Student</option>
                <option value="creator">Creator</option>
                <option value="org_admin">Org admin</option>
                <option value="platform_admin">Platform admin</option>
              </select>
            </div>
            <div className={styles.filterField}>
              <label className={styles.filterLabel} htmlFor="admin-users-plan">
                Plan
              </label>
              <select
                id="admin-users-plan"
                value={planFilter}
                onChange={(e) => setPlanFilter(e.target.value)}
              >
                <option value="all">All plans</option>
                <option value="free">Free</option>
                <option value="student_monthly">Student monthly</option>
                <option value="student_annual">Student annual</option>
                <option value="creator">Creator</option>
                <option value="business">Business</option>
              </select>
            </div>
          </div>

          <div className={styles.filterMeta}>
            <p className={styles.resultCount} aria-live="polite">
              {counts.total === 0
                ? "No users"
                : `${counts.total} user${counts.total === 1 ? "" : "s"}`}
              {hasFilters ? " match filters" : ""}
              {refreshing ? " · Updating…" : null}
            </p>
            {hasFilters ? (
              <button
                type="button"
                className={styles.filterClear}
                onClick={clearFilters}
              >
                Clear filters
              </button>
            ) : null}
          </div>

          {counts.total === 0 ? (
            <div className={styles.emptyState} role="status">
              <div className={styles.emptyStateIcon} aria-hidden>
                <Users size={22} weight="duotone" />
              </div>
              <p className={styles.emptyStateTitle}>
                {hasFilters ? "No users match" : "No users yet"}
              </p>
              <p className={styles.emptyStateDesc}>
                {hasFilters
                  ? "Try a different search or clear your filters."
                  : "When people sign up, their accounts will appear here."}
              </p>
              {hasFilters ? (
                <Button type="button" variant="outline" onClick={clearFilters}>
                  Clear filters
                </Button>
              ) : null}
            </div>
          ) : (
            <div
              className={cn(
                styles.tableWrap,
                "adminTableWrap",
                "responsiveTable",
                refreshing && styles.tableRefreshing,
              )}
            >
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>User</TableHead>
                    <TableHead>Role</TableHead>
                    <TableHead>Plan</TableHead>
                    <TableHead>Joined</TableHead>
                    <TableHead>Last active</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead className={styles.actionsHead}>Actions</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {users.map((u) => (
                    <TableRow key={u.id}>
                      <TableCell
                        data-label="User"
                        className={styles.userCellTd}
                      >
                        <div className={styles.userCell}>
                          <div className={styles.avatarSm} aria-hidden>
                            {initials(u.fullName, u.email)}
                          </div>
                          <div className={styles.userMeta}>
                            <span className={styles.userName}>
                              {u.fullName ?? "Unnamed"}
                            </span>
                            <span className={styles.userEmail}>{u.email}</span>
                          </div>
                        </div>
                      </TableCell>
                      <TableCell data-label="Role">
                        <Badge
                          variant={roleBadgeVariant(u.role)}
                          className={cn(
                            styles.roleBadge,
                            roleBadgeClass(u.role),
                          )}
                        >
                          {roleLabel(u.role)}
                        </Badge>
                      </TableCell>
                      <TableCell data-label="Plan">
                        <Badge variant="outline" className={styles.planBadge}>
                          {planLabel(u.plan)}
                        </Badge>
                      </TableCell>
                      <TableCell
                        data-label="Joined"
                        className={styles.dateCell}
                      >
                        {u.createdAt
                          ? formatDistanceToNow(new Date(u.createdAt), {
                              addSuffix: true,
                            })
                          : "—"}
                      </TableCell>
                      <TableCell
                        data-label="Last active"
                        className={styles.dateCell}
                      >
                        {u.lastActiveAt
                          ? formatDistanceToNow(new Date(u.lastActiveAt), {
                              addSuffix: true,
                            })
                          : "—"}
                      </TableCell>
                      <TableCell data-label="Status">
                        {u.isSuspended ? (
                          <Badge variant="destructive">Suspended</Badge>
                        ) : (
                          <span className={styles.statusActive}>Active</span>
                        )}
                      </TableCell>
                      <TableCell data-label="Actions">
                        <div className={`${styles.actions} adminActionRow`}>
                          <Button
                            type="button"
                            variant="outline"
                            size="sm"
                            onClick={() => void openProfile(u.id)}
                          >
                            Manage
                          </Button>
                          {u.role !== "platform_admin" ? (
                            <Button
                              type="button"
                              variant={
                                u.isSuspended ? "secondary" : "outline"
                              }
                              size="sm"
                              disabled={actionBusy}
                              onClick={() =>
                                void toggleSuspend(u.id, !u.isSuspended)
                              }
                            >
                              {u.isSuspended ? "Unsuspend" : "Suspend"}
                            </Button>
                          ) : null}
                        </div>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            </div>
          )}
        </>
      )}

      <Sheet
        open={selectedId !== null}
        onOpenChange={(open) => {
          if (!open) {
            setSelectedId(null);
            setProfileDetail(null);
          }
        }}
      >
        <SheetContent className="sm:max-w-md">
          <SheetHeader>
            <SheetTitle>User profile</SheetTitle>
            <SheetDescription>
              Update role, suspend access, or delete this account.
            </SheetDescription>
          </SheetHeader>
          {detailLoading || !profileDetail ? (
            <p className={styles.loading}>Loading profile…</p>
          ) : (
            <div className={styles.sheetBody}>
              <div className={styles.sheetIdentity}>
                <div className={styles.avatarLg} aria-hidden>
                  {initials(profileDetail.full_name, profileDetail.email)}
                </div>
                <div className={styles.userMeta}>
                  <span className={styles.userName}>
                    {profileDetail.full_name ?? "Unnamed"}
                  </span>
                  <span className={styles.userEmail}>{profileDetail.email}</span>
                </div>
              </div>

              <div className={styles.detailGrid}>
                <DetailRow
                  label="Role"
                  value={
                    <Badge
                      variant={roleBadgeVariant(profileDetail.role)}
                      className={cn(
                        styles.roleBadge,
                        roleBadgeClass(profileDetail.role),
                      )}
                    >
                      {roleLabel(profileDetail.role)}
                    </Badge>
                  }
                />
                <DetailRow
                  label="Plan"
                  value={planLabel(
                    profileDetail.plan ?? selectedListUser?.plan ?? "free",
                  )}
                />
                <DetailRow
                  label="Status"
                  value={
                    profileDetail.is_suspended ? (
                      <Badge variant="destructive">Suspended</Badge>
                    ) : (
                      "Active"
                    )
                  }
                />
                <DetailRow
                  label="Joined"
                  value={
                    profileDetail.created_at
                      ? new Date(profileDetail.created_at).toLocaleString()
                      : "—"
                  }
                />
              </div>

              <label className={styles.detailLabel} htmlFor="role-select">
                Change role
              </label>
              {profileDetail.role === "platform_admin" ? (
                <p className={styles.pageSubtitle}>
                  Platform admin role cannot be demoted here. Delete the account
                  (if another admin remains) to remove access.
                </p>
              ) : (
                <div className={styles.sheetRoleRow}>
                  <Select
                    value={roleDraft}
                    onValueChange={(v) => setRoleDraft(v as UserRole)}
                  >
                    <SelectTrigger id="role-select">
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="student">Student</SelectItem>
                      <SelectItem value="creator">Creator</SelectItem>
                      <SelectItem value="org_admin">Org admin</SelectItem>
                      <SelectItem value="platform_admin">
                        Platform admin
                      </SelectItem>
                    </SelectContent>
                  </Select>
                  <Button
                    type="button"
                    disabled={actionBusy || roleDraft === profileDetail.role}
                    onClick={() =>
                      selectedId
                        ? void changeRole(selectedId, roleDraft)
                        : undefined
                    }
                  >
                    Save role
                  </Button>
                </div>
              )}

              <div className={styles.sheetActions}>
                {profileDetail.role !== "platform_admin" ? (
                  <Button
                    type="button"
                    variant="outline"
                    disabled={actionBusy}
                    onClick={() =>
                      selectedId
                        ? void toggleSuspend(
                            selectedId,
                            !profileDetail.is_suspended,
                          )
                        : undefined
                    }
                  >
                    {profileDetail.is_suspended ? "Unsuspend" : "Suspend"}
                  </Button>
                ) : null}

                <AlertDialog>
                  <AlertDialogTrigger
                    disabled={actionBusy}
                    className={cn(
                      buttonVariants({
                        variant: "destructive",
                        size: "default",
                      }),
                    )}
                  >
                    Delete user
                  </AlertDialogTrigger>
                  <AlertDialogContent>
                    <AlertDialogHeader>
                      <AlertDialogTitle>Delete user?</AlertDialogTitle>
                      <AlertDialogDescription>
                        Permanently delete {profileDetail.email}. This cannot be
                        undone.
                      </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                      <AlertDialogCancel>Cancel</AlertDialogCancel>
                      <AlertDialogAction
                        onClick={() =>
                          selectedId ? void deleteUser(selectedId) : undefined
                        }
                      >
                        Delete
                      </AlertDialogAction>
                    </AlertDialogFooter>
                  </AlertDialogContent>
                </AlertDialog>
              </div>
            </div>
          )}
        </SheetContent>
      </Sheet>
    </div>
  );
}

function DetailRow({
  label,
  value,
}: {
  label: string;
  value: ReactNode;
}) {
  return (
    <div className={styles.detailRow}>
      <span className={styles.detailLabel}>{label}</span>
      <span className={styles.detailValue}>{value}</span>
    </div>
  );
}
