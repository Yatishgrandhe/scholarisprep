import Link from "next/link";
import styles from "./stub.module.css";

type StubPageProps = {
  title: string;
  description: string;
  backHref?: string;
  backLabel?: string;
};

export function StubPage({
  title,
  description,
  backHref = "/dashboard",
  backLabel = "Back to dashboard",
}: StubPageProps) {
  return (
    <div className={styles.wrap}>
      <h1 className={styles.title}>{title}</h1>
      <p className={styles.desc}>{description}</p>
      <p className={styles.badge}>Coming soon</p>
      <Link href={backHref} className={styles.back}>
        {backLabel}
      </Link>
    </div>
  );
}
