"use client";

import { useMemo, useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { formatDistanceToNow } from "date-fns";
import { DotsThreeVertical, UserPlus } from "@phosphor-icons/react";
import { toast } from "sonner";
import { OrgPageHeader } from "@/components/org/OrgPageHeader";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { fetchOrgMemberTable, type OrgMemberTableRow } from "@/lib/org/queries";
import type { UserRole } from "@/types/supabase";
import styles from "@/app/org/org.module.css";

const ROLE_FILTER_OPTIONS: Array<UserRole | "all"> = [
  "all",
  "student",
  "org_admin",
  "creator",
];

const INVITE_ROLES = ["student", "creator"] as const;

function roleBadgeVariant(role: UserRole) {
  if (role === "org_admin") return "default" as const;
  if (role === "creator") return "secondary" as const;
  return "outline" as const;
}

export function OrgMembers() {
  const { profile } = useAuth();
  const [loading, setLoading] = useState(true);
  const [members, setMembers] = useState<OrgMemberTableRow[]>([]);
  const [search, setSearch] = useState("");
  const [roleFilter, setRoleFilter] = useState<UserRole | "all">("all");
  const [inviteOpen, setInviteOpen] = useState(false);
  const [inviteEmail, setInviteEmail] = useState("");
  const [inviteRole, setInviteRole] = useState<(typeof INVITE_ROLES)[number]>("student");
  const [inviting, setInviting] = useState(false);

  const loadMembers = async () => {
    if (!profile?.org_id) {
      setMembers([]);
      setLoading(false);
      return;
    }
    const supabase = createClient();
    const rows = await fetchOrgMemberTable(supabase, profile.org_id);
    setMembers(rows);
    setLoading(false);
  };

  useMountLoad(loadMembers, [profile?.org_id]);

  const filtered = useMemo(() => {
    const query = search.trim().toLowerCase();
    return members.filter((member) => {
      if (roleFilter !== "all" && member.role !== roleFilter) return false;
      if (!query) return true;
      return (
        member.email.toLowerCase().includes(query) ||
        (member.full_name?.toLowerCase().includes(query) ?? false)
      );
    });
  }, [members, search, roleFilter]);

  const handleInvite = async () => {
    if (!inviteEmail.trim()) {
      toast.error("Enter an email address.");
      return;
    }
    setInviting(true);
    try {
      const res = await fetch("/api/org/invite", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          email: inviteEmail.trim(),
          role: inviteRole,
        }),
      });
      const body = (await res.json()) as {
        error?: string;
        message?: string;
        success?: boolean;
      };
      if (!res.ok) {
        throw new Error(body.error ?? "Invite failed");
      }
      toast.success(body.message ?? "Invitation sent successfully.");
      setInviteOpen(false);
      setInviteEmail("");
      setInviteRole("student");
      await loadMembers();
    } catch (err) {
      toast.error(err instanceof Error ? err.message : "Invite failed");
    } finally {
      setInviting(false);
    }
  };

  const handleRemove = async (member: OrgMemberTableRow) => {
    if (!profile?.org_id) return;
    if (member.id === profile.id) {
      toast.error("You cannot remove yourself from the organization.");
      return;
    }
    const supabase = createClient();
    // Never demote platform_admin (DB trigger also blocks authenticated demotion).
    const { error } = await supabase
      .from("profiles")
      .update({
        org_id: null,
        ...(member.role === "platform_admin" ? {} : { role: "student" as const }),
      })
      .eq("id", member.id)
      .eq("org_id", profile.org_id);
    if (error) {
      toast.error(error.message);
      return;
    }
    toast.success(`${member.full_name ?? member.email} removed from organization.`);
    await loadMembers();
  };

  const handleRoleChange = async (member: OrgMemberTableRow, role: UserRole) => {
    if (!profile?.org_id) return;
    if (member.role === "platform_admin" && role !== "platform_admin") {
      toast.error("Cannot change role of a platform admin.");
      return;
    }
    const supabase = createClient();
    const { error } = await supabase
      .from("profiles")
      .update({ role })
      .eq("id", member.id)
      .eq("org_id", profile.org_id);
    if (error) {
      toast.error(error.message);
      return;
    }
    toast.success("Role updated.");
    await loadMembers();
  };

  if (loading) {
    return (
      <>
        <OrgPageHeader
          title="Members"
          subtitle="Invite learners, manage roles, and monitor progress."
        />
        <p className={styles.loading}>Loading members…</p>
      </>
    );
  }

  return (
    <>
      <OrgPageHeader
        title="Members"
        subtitle="Invite learners, manage roles, and monitor progress."
        actions={
          <Button type="button" onClick={() => setInviteOpen(true)}>
            <UserPlus size={18} weight="bold" aria-hidden />
            Invite member
          </Button>
        }
      />

      <div className={styles.toolbar}>
        <div className={`${styles.toolbarField} ${styles.toolbarGrow}`}>
          <Label className={styles.toolbarLabel} htmlFor="org-members-search">
            Search
          </Label>
          <Input
            id="org-members-search"
            placeholder="Name or email…"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
          />
        </div>
        <div className={styles.toolbarField}>
          <Label className={styles.toolbarLabel} htmlFor="org-members-role">
            Role
          </Label>
          <select
            id="org-members-role"
            className={styles.filterSelect}
            value={roleFilter}
            onChange={(e) => setRoleFilter(e.target.value as UserRole | "all")}
          >
          {ROLE_FILTER_OPTIONS.map((role) => (
            <option key={role} value={role}>
              {role === "all" ? "All roles" : role.replace("_", " ")}
            </option>
          ))}
          </select>
        </div>
      </div>

      <section className={styles.card}>
        <MembersTable
          members={filtered}
          onRemove={(m) => void handleRemove(m)}
          onRoleChange={(m, role) => void handleRoleChange(m, role)}
        />
      </section>

      <Dialog open={inviteOpen} onOpenChange={setInviteOpen}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Invite member</DialogTitle>
            <DialogDescription>
              Send an invitation to join your organization on Scholaris.
            </DialogDescription>
          </DialogHeader>
          <div className={styles.inviteFields}>
            <div>
              <Label htmlFor="invite-email">Email</Label>
              <Input
                id="invite-email"
                type="email"
                value={inviteEmail}
                onChange={(e) => setInviteEmail(e.target.value)}
                placeholder="name@school.edu"
              />
            </div>
            <InviteRoleField inviteRole={inviteRole} onRoleChange={setInviteRole} />
          </div>
          <DialogFooter>
            <Button
              type="button"
              variant="outline"
              onClick={() => setInviteOpen(false)}
            >
              Cancel
            </Button>
            <Button
              type="button"
              disabled={inviting}
              onClick={() => void handleInvite()}
            >
              {inviting ? "Sending…" : "Send invite"}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </>
  );
}

function InviteRoleField({
  inviteRole,
  onRoleChange,
}: {
  inviteRole: (typeof INVITE_ROLES)[number];
  onRoleChange: (role: (typeof INVITE_ROLES)[number]) => void;
}) {
  return (
    <div>
      <Label htmlFor="invite-role">Role</Label>
      <Select
        value={inviteRole}
        onValueChange={(value) =>
          onRoleChange(value as (typeof INVITE_ROLES)[number])
        }
      >
        <SelectTrigger id="invite-role">
          <SelectValue />
        </SelectTrigger>
        <SelectContent>
          {INVITE_ROLES.map((role) => (
            <SelectItem key={role} value={role}>
              {role === "creator" ? "Course creator" : "Student"}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
    </div>
  );
}

function MembersTable({
  members,
  onRemove,
  onRoleChange,
}: {
  members: OrgMemberTableRow[];
  onRemove: (member: OrgMemberTableRow) => void;
  onRoleChange: (member: OrgMemberTableRow, role: UserRole) => void;
}) {
  return (
    <div className={`${styles.tableWrap} responsiveTable`}>
      <Table>
        <TableHeader>
          <TableRow>
            <TableHead>Member</TableHead>
            <TableHead>Role</TableHead>
            <TableHead>Courses</TableHead>
            <TableHead>Progress</TableHead>
            <TableHead>Last active</TableHead>
            <TableHead className="w-12" />
          </TableRow>
        </TableHeader>
        <TableBody>
          {members.length === 0 ? (
            <TableRow>
              <TableCell colSpan={6} className={styles.emptyState}>
                No members match your filters.
              </TableCell>
            </TableRow>
          ) : (
            members.map((member) => (
              <MemberRow
                key={member.id}
                member={member}
                onRemove={onRemove}
                onRoleChange={onRoleChange}
              />
            ))
          )}
        </TableBody>
      </Table>
    </div>
  );
}

function MemberRow({
  member,
  onRemove,
  onRoleChange,
}: {
  member: OrgMemberTableRow;
  onRemove: (member: OrgMemberTableRow) => void;
  onRoleChange: (member: OrgMemberTableRow, role: UserRole) => void;
}) {
  const initials =
    member.full_name
      ?.split(" ")
      .map((n) => n[0])
      .join("")
      .slice(0, 2)
      .toUpperCase() ?? member.email[0]?.toUpperCase() ?? "?";

  return (
    <TableRow>
      <TableCell data-label="Member">
        <MemberIdentity member={member} initials={initials} />
      </TableCell>
      <TableCell data-label="Role">
        <Badge variant={roleBadgeVariant(member.role)}>
          {member.role.replace("_", " ")}
        </Badge>
      </TableCell>
      <TableCell data-label="Courses">{member.coursesAssigned}</TableCell>
      <TableCell data-label="Progress">
        <ProgressCell percent={member.progressPercent} />
      </TableCell>
      <TableCell data-label="Last active">
        {member.lastActive
          ? formatDistanceToNow(new Date(member.lastActive), { addSuffix: true })
          : "—"}
      </TableCell>
      <TableCell data-label="">
        <MemberActionsMenu
          member={member}
          onRemove={onRemove}
          onRoleChange={onRoleChange}
        />
      </TableCell>
    </TableRow>
  );
}

function MemberIdentity({
  member,
  initials,
}: {
  member: OrgMemberTableRow;
  initials: string;
}) {
  return (
    <div className={styles.memberIdentity}>
      <Avatar size="sm">
        {member.avatar_url ? <AvatarImage src={member.avatar_url} alt="" /> : null}
        <AvatarFallback>{initials}</AvatarFallback>
      </Avatar>
      <div>
        <MemberNameText name={member.full_name ?? member.email} />
        <MemberEmailLine email={member.email} />
      </div>
    </div>
  );
}

function MemberNameText({ name }: { name: string }) {
  return <div className={styles.memberName}>{name}</div>;
}

function MemberEmailLine({ email }: { email: string }) {
  return <div className={styles.memberEmail}>{email}</div>;
}

function ProgressCell({ percent }: { percent: number }) {
  return (
    <div role="group" aria-label={`Progress ${percent} percent`}>
      <div className={styles.progressBar} aria-hidden>
        <div className={styles.progressFill} style={{ width: `${percent}%` }} />
      </div>
      <div className={styles.progressLabel}>{percent}%</div>
    </div>
  );
}

function MemberActionsMenu({
  member,
  onRemove,
  onRoleChange,
}: {
  member: OrgMemberTableRow;
  onRemove: (member: OrgMemberTableRow) => void;
  onRoleChange: (member: OrgMemberTableRow, role: UserRole) => void;
}) {
  return (
    <DropdownMenu>
      <DropdownMenuTrigger
        render={
          <Button type="button" variant="ghost" size="icon-sm" aria-label="Actions">
            <DotsThreeVertical size={18} weight="bold" aria-hidden />
          </Button>
        }
      />
      <DropdownMenuContent align="end">
        <DropdownMenuItem disabled>Assign course (coming soon)</DropdownMenuItem>
        <DropdownMenuItem onClick={() => onRoleChange(member, "student")}>
          Set role: student
        </DropdownMenuItem>
        <DropdownMenuItem onClick={() => onRoleChange(member, "org_admin")}>
          Set role: org admin
        </DropdownMenuItem>
        <DropdownMenuItem variant="destructive" onClick={() => onRemove(member)}>
          Remove from org
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  );
}
