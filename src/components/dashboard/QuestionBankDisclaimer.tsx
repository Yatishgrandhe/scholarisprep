import { isApExam, isIbExam } from "@/lib/examFamily";
import styles from "./QuestionBankDisclaimer.module.css";

type QuestionBankDisclaimerProps = {
  examType?: string;
};

export function QuestionBankDisclaimer({
  examType = "SAT",
}: QuestionBankDisclaimerProps) {
  if (isApExam(examType)) {
    return (
      <p className={styles.disclaimer} role="note">
        Scholaris is an independent study aid and is not affiliated with,
        endorsed by, or sponsored by College Board. AP® is a registered
        trademark of College Board. Practice items are unofficial,
        AP-style study material written to match published course frameworks —
        not copied from official AP Exams.
      </p>
    );
  }

  if (isIbExam(examType)) {
    return (
      <p className={styles.disclaimer} role="note">
        Scholaris is an independent study aid and is not affiliated with,
        endorsed by, or sponsored by the International Baccalaureate
        Organization. IB® and related marks are trademarks of the IB. Practice
        items are unofficial, IB Diploma Programme–style study material — not
        copied from official IB examinations.
      </p>
    );
  }

  if (examType === "ACT") {
    return (
      <p className={styles.disclaimer} role="note">
        Scholaris is an independent study aid and is not affiliated with,
        endorsed by, or sponsored by ACT, Inc. ACT® is a registered trademark
        of ACT, Inc. Practice items are unofficial, ACT-style study material —
        not copied from official ACT exams.
      </p>
    );
  }

  return (
    <p className={styles.disclaimer} role="note">
      Scholaris is an independent study aid and is not affiliated with, endorsed
      by, or sponsored by the College Board. SAT® is a registered trademark of
      the College Board. Practice items are unofficial, Digital SAT–style
      study material: some are paraphrased (“remixed”) from open third-party
      datasets (including OpenSAT) or written to match published Digital SAT
      formats, not copied verbatim from official exams.
    </p>
  );
}
