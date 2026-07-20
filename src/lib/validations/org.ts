import { z } from "zod";
import { emailSchema } from "@/lib/validations/auth";

/** Roles assignable when inviting someone to an organization. */
export const orgInviteRoleSchema = z.enum(["student", "creator"]);

export const orgInviteBodySchema = z.object({
  email: emailSchema,
  role: orgInviteRoleSchema,
});

export type OrgInviteBody = z.infer<typeof orgInviteBodySchema>;
