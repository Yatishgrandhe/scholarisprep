import styles from "@/components/tutor/tutor.module.css";

export default function Loading() {
  return (
    <div aria-busy="true" aria-label="Loading tutor">
      <div className={styles.chatLayout}>
        <div className={styles.sidebar}>
          <div className={`${styles.skel} ${styles.skelPill}`} />
          <div className={styles.convoList}>
            {Array.from({ length: 6 }).map((_, i) => (
              <div key={i} className={`${styles.skel} ${styles.skelRow}`} />
            ))}
          </div>
        </div>

        <div className={styles.chatMain}>
          <div className={styles.skelMessages}>
            <div className={`${styles.skel} ${styles.skelMsgUser}`} />
            <div className={`${styles.skel} ${styles.skelMsgAssistant}`} />
            <div className={`${styles.skel} ${styles.skelMsgUser}`} />
            <div className={`${styles.skel} ${styles.skelMsgAssistant}`} />
          </div>
          <div className={`${styles.skel} ${styles.skelComposer}`} />
        </div>
      </div>
    </div>
  );
}
