"use client";

import Link from "next/link";
import { BrandHomeLink } from "@/components/brand/BrandHomeLink";
import { usePathname } from "next/navigation";
import {
  ChartBar,
  GraduationCap,
  House,
  SignOut,
  Users,
} from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import styles from "./DashboardSidebar.module.css";

const NAV_ITEMS = [
  { href: "/org", label: "Overview", icon: House, exact: true },
  { href: "/org/users", label: "Members", icon: Users },
  { href: "/org/courses", label: "Courses", icon: GraduationCap },
  { href: "/org/reports", label: "Reports", icon: ChartBar },
] as const;

export function OrgSidebar() {
  const pathname = usePathname();
  const { profile, user } = useAuth();
  const supabase = createClient();

  const initials =
    profile?.full_name
      ?.split(" ")
      .map((n) => n[0])
      .join("")
      .slice(0, 2)
      .toUpperCase() ?? "O";

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
    <aside className={styles.sidebar}>
      <BrandHomeLink
        href="/org"
        className={styles.brand}
        size="sm"
        variant="light"
      />

      <div className={styles.user}>
        <div className={styles.avatar} aria-hidden>
          <span className={styles.avatarInitial}>{initials}</span>
        </div>
        <OrgUserMeta
          name={profile?.full_name ?? "Org Admin"}
          email={user?.email}
        />
      </div>

      <nav className={styles.nav} aria-label="Organization">
        {NAV_ITEMS.map(({ href, label, icon: Icon, ...item }) => {
          const exact = "exact" in item && item.exact;
          const active = exact
            ? pathname === href
            : pathname === href || pathname.startsWith(`${href}/`);
          return (
            <Link
              key={href}
              href={href}
              className={`${styles.navLink} ${active ? styles.navLinkActive : ""}`}
            >
              <Icon size={20} weight={active ? "fill" : "regular"} />
              {label}
            </Link>
          );
        })}
      </nav>

      <div className={styles.footer}>
        <span className={styles.planBadge}>Organization</span>
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

function OrgUserMeta({ name, email }: { name: string; email?: string }) {
  return (
    <div>
      <div className={styles.userName}>{name}</div>
      <div className={styles.userEmail}>{email ?? ""}</div>
    </div>
  );
}
