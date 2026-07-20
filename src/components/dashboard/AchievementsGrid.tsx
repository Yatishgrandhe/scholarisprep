"use client";

import { useState } from "react";
import { useMountLoad } from "@/hooks/useMountLoad";
import { formatDistanceToNow } from "date-fns";
import { motion } from "framer-motion";
import { Lock } from "@phosphor-icons/react";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import {
  clearNewlyEarnedAchievementId,
  getNewlyEarnedAchievementIds,
} from "@/lib/dashboard/achievementCelebration";
import {
  ACHIEVEMENT_ICON_MAP,
  type AchievementIconComponent,
} from "@/lib/dashboard/achievementIcons";
import { Star } from "@phosphor-icons/react";
import styles from "./achievements.module.css";

type Achievement = {
  id: string;
  key: string;
  name: string;
  description: string | null;
  icon: string | null;
};

type UserAchievement = {
  achievement_id: string;
  earned_at: string | null;
};

function AchievementIcon({ icon }: { icon: string | null }) {
  const Icon: AchievementIconComponent =
    (icon && ACHIEVEMENT_ICON_MAP[icon]) || Star;
  return <Icon size={28} weight="duotone" />;
}

export function AchievementsGrid() {
  const { user } = useAuth();
  const [achievements, setAchievements] = useState<Achievement[]>([]);
  const [earnedMap, setEarnedMap] = useState<Map<string, string>>(new Map());
  const [newlyEarnedIds, setNewlyEarnedIds] = useState(
    () => new Set(getNewlyEarnedAchievementIds()),
  );
  const [loading, setLoading] = useState(true);

  useMountLoad(async () => {
    if (!user) return;

    const supabase = createClient();
    const [{ data: all }, { data: earned }] = await Promise.all([
      supabase.from("achievements").select("id, key, name, description, icon").order("name"),
      supabase
        .from("user_achievements")
        .select("achievement_id, earned_at")
        .eq("user_id", user.id),
    ]);

    setAchievements((all as Achievement[]) ?? []);
    const map = new Map<string, string>();
    for (const row of (earned as UserAchievement[]) ?? []) {
      if (row.achievement_id && row.earned_at) {
        map.set(row.achievement_id, row.earned_at);
      }
    }
    setEarnedMap(map);
    setLoading(false);
  }, [user]);

  if (loading) {
    return <p className={styles.description}>Loading achievements…</p>;
  }

  const earned = achievements.filter((a) => earnedMap.has(a.id));
  const locked = achievements.filter((a) => !earnedMap.has(a.id));

  return (
    <>
      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Earned</h2>
        {earned.length === 0 ? (
          <p className={styles.emptyEarned}>
            No achievements yet. Complete practice sessions and exams to earn
            your first badge.
          </p>
        ) : (
          <motion.div
            className={styles.grid}
            initial="hidden"
            animate="visible"
            variants={{
              visible: { transition: { staggerChildren: 0.04 } },
            }}
          >
            {earned.map((a) => {
              const isNew = newlyEarnedIds.has(a.id);
              return (
                <motion.article
                  key={a.id}
                  className={`${styles.card} ${isNew ? styles.cardNewlyEarned : ""}`}
                  variants={{
                    hidden: { opacity: 0, y: 16 },
                    visible: { opacity: 1, y: 0 },
                  }}
                  animate={isNew ? { scale: [1, 1.04, 1] } : undefined}
                  transition={
                    isNew
                      ? { duration: 0.9, ease: "easeInOut" }
                      : { duration: 0.35 }
                  }
                  onAnimationComplete={() => {
                    if (!isNew) return;
                    clearNewlyEarnedAchievementId(a.id);
                    setNewlyEarnedIds((prev) => {
                      const next = new Set(prev);
                      next.delete(a.id);
                      return next;
                    });
                  }}
                >
                  <motion.div
                    className={styles.iconWrap}
                    animate={
                      isNew
                        ? { rotate: [0, -8, 8, 0], scale: [1, 1.12, 1] }
                        : undefined
                    }
                    transition={{ duration: 0.7, delay: 0.1 }}
                  >
                    <AchievementIcon icon={a.icon} />
                  </motion.div>
                  <p className={styles.name}>{a.name}</p>
                  <p className={styles.description}>{a.description}</p>
                  <p className={styles.earnedAt}>
                    Earned{" "}
                    {formatDistanceToNow(new Date(earnedMap.get(a.id)!), {
                      addSuffix: true,
                    })}
                  </p>
                </motion.article>
              );
            })}
          </motion.div>
        )}
      </section>

      <section className={styles.section}>
        <h2 className={styles.sectionTitle}>Locked</h2>
        <motion.div
          className={styles.grid}
          initial="hidden"
          animate="visible"
          variants={{
            visible: { transition: { staggerChildren: 0.03 } },
          }}
        >
          {locked.map((a) => (
            <motion.article
              key={a.id}
              className={`${styles.card} ${styles.cardLocked}`}
              variants={{
                hidden: { opacity: 0, y: 12 },
                visible: { opacity: 1, y: 0 },
              }}
            >
              <Lock
                className={styles.lockOverlay}
                size={20}
                weight="fill"
                aria-hidden
              />
              <span className="sr-only">Locked</span>
              <motion.div className={styles.iconWrap}>
                <AchievementIcon icon={a.icon} />
              </motion.div>
              <p className={styles.name}>{a.name}</p>
              <p className={styles.description}>{a.description}</p>
            </motion.article>
          ))}
        </motion.div>
      </section>
    </>
  );
}
