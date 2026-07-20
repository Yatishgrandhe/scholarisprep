"use client";

import Link from "next/link";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { usePathname } from "next/navigation";
import {
  ChartBar,
  Bug,
  Flag,
  GraduationCap,
  House,
  Key,
  SignOut,
  Users,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import styles from "./DashboardSidebar.module.css";
import adminStyles from "@/app/admin/admin.module.css";

const NAV_ITEMS = [
  { href: "/admin", label: "Overview", icon: House, exact: true },
  { href: "/admin/users", label: "Users", icon: Users },
  { href: "/admin/courses", label: "Courses", icon: GraduationCap },
  { href: "/admin/reports", label: "Reports", icon: Flag },
  { href: "/admin/bugs", label: "Bug reports", icon: Bug },
  {
    href: "/admin/ai-key-policy",
    label: "Central API",
    hint: "AI key policy",
    icon: Key,
  },
] as const;

export function AdminSidebar() {
  const pathname = usePathname();
  const { profile, user } = useAuth();
  const supabase = createClient();

  const initials =
    profile?.full_name
      ?.split(" ")
      .map((n) => n[0])
      .join("")
      .slice(0, 2)
      .toUpperCase() ?? "A";

  const handleSignOut = async () => {
    try {
      await supabase.auth.signOut({ scope: "local" });
    } finally {
      // Server route clears the auth cookies on the redirect response so
      // middleware can't bounce us back in. See /auth/signout.
      window.location.href = "/auth/signout";
    }
  };

  return (
    <aside className={`${styles.sidebar} ${adminStyles.adminSidebar}`}>
      <BrandHomeLink
        href="/admin"
        className={adminStyles.adminBrand}
        size="sm"
        variant="light"
      />

      <div className={adminStyles.adminBadge}>
        <ChartBar size={14} weight="fill" aria-hidden />
        Platform Admin
      </div>

      <div className={adminStyles.adminUser}>
        <div className={styles.avatar} aria-hidden>
          <span className={styles.avatarInitial}>{initials}</span>
        </div>
        <div className={adminStyles.adminUserMeta}>
          <div className={adminStyles.adminUserName}>
            {profile?.full_name ?? "Admin"}
          </div>
          <div className={adminStyles.adminUserEmail}>{user?.email ?? ""}</div>
        </div>
      </div>

      <div className={adminStyles.adminNavScroll}>
        <nav className={adminStyles.adminNav} aria-label="Platform admin">
          {NAV_ITEMS.map(({ href, label, icon: Icon, ...item }) => {
            const exact = "exact" in item && item.exact;
            const hint = "hint" in item ? item.hint : undefined;
            const active = exact
              ? pathname === href
              : pathname.startsWith(href);
            return (
              <Link
                key={href}
                href={href}
                title={hint ? `${label} — ${hint}` : label}
                aria-label={hint ? `${label} (${hint})` : label}
                className={`${adminStyles.adminNavLink} ${active ? adminStyles.adminNavLinkActive : ""}`}
              >
                <Icon size={20} weight={active ? "fill" : "regular"} />
                <span className={adminStyles.navLabelStack}>
                  <span>{label}</span>
                  {hint ? (
                    <span className={adminStyles.navHint}>{hint}</span>
                  ) : null}
                </span>
              </Link>
            );
          })}
        </nav>
      </div>

      <div className={adminStyles.adminFooter}>
        <Link href="/dashboard" className={adminStyles.dashboardLink}>
          Student dashboard
        </Link>
        <button
          type="button"
          className={styles.signOut}
          onClick={() => void handleSignOut()}
        >
          <SignOut
            size={16}
            style={{ verticalAlign: "middle", marginRight: 6 }}
          />
          Sign out
        </button>
      </div>
    </aside>
  );
}
