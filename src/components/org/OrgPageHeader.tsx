import { ThemeToggle } from "@/components/shared/ThemeToggle";
import styles from "@/app/org/org.module.css";

type OrgPageHeaderProps = {
  title: string;
  subtitle: string;
  actions?: React.ReactNode;
};

export function OrgPageHeader({ title, subtitle, actions }: OrgPageHeaderProps) {
  return (
    <header className={styles.pageHeaderRow}>
      <OrgHeaderText title={title} subtitle={subtitle} />
      <div className={styles.headerActions}>
        {actions}
        <div className={styles.headerThemeToggle}>
          <ThemeToggle />
        </div>
      </div>
    </header>
  );
}

function OrgHeaderText({
  title,
  subtitle,
}: {
  title: string;
  subtitle: string;
}) {
  return (
    <div className={styles.pageHeader}>
      <h1 className={styles.pageTitle}>{title}</h1>
      <p className={styles.pageSubtitle}>{subtitle}</p>
    </div>
  );
}
