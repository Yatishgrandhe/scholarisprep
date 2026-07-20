import Link from "next/link";
import { OrgPageHeader } from "@/components/org/OrgPageHeader";
import styles from "../org.module.css";

export default function OrgCoursesPage() {
  return (
    <>
      <OrgPageHeader
        title="Courses"
        subtitle="Assign and manage courses for your organization."
      />
      <section className={styles.card}>
        <p className={styles.placeholderPage}>
          Course assignment and org-wide catalog management are coming soon.
          Members can still enroll through the student dashboard.
        </p>
        <Link href="/org/users" className={styles.manageMembersLink}>
          Manage members
        </Link>
      </section>
    </>
  );
}
