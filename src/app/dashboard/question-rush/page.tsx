import dynamic from "next/dynamic";
import { Lightning } from "@phosphor-icons/react/dist/ssr";
import { DashboardSkeleton } from "@/components/shared/skeletons/DashboardSkeleton";
import styles from "./page.module.css";

const QuestionRushClient = dynamic(
  () =>
    import("@/components/dashboard/QuestionRushClient").then((m) => ({
      default: m.QuestionRushClient,
    })),
  { loading: () => <DashboardSkeleton contentOnly /> },
);

export default function QuestionRushPage() {
  return (
    <div className={styles.page}>
      <header className={styles.header}>
        <span className={styles.headerIcon} aria-hidden>
          <Lightning size={22} weight="fill" />
        </span>
        <div>
          <h1 className={styles.title}>Question Rush</h1>
        </div>
      </header>

      <QuestionRushClient />
    </div>
  );
}
