import type { CSSProperties, ReactNode } from "react";
import styles from "./board-atmosphere.module.css";

export type BoardAtmosphereLamp = "dim" | "normal" | "bright";

export type BoardAtmosphereProps = {
  children?: ReactNode;
  className?: string;
  /** Desk-lamp intensity. Default `normal`. */
  lamp?: BoardAtmosphereLamp;
  style?: CSSProperties;
};

/**
 * Immersive drafting-desk shell for whiteboard surfaces.
 * Visual layers live in `board-atmosphere.module.css` (studio CSS variables).
 */
export function BoardAtmosphere({
  children,
  className,
  lamp = "normal",
  style,
}: BoardAtmosphereProps) {
  const rootClass = [styles.root, className].filter(Boolean).join(" ");

  return (
    <div
      className={rootClass}
      data-lamp={lamp === "normal" ? undefined : lamp}
      style={style}
    >
      <div className={styles.paper} aria-hidden />
      <div className={styles.lamp} aria-hidden />
      <div className={styles.fill} aria-hidden />
      <div className={styles.grain} aria-hidden />
      <div className={styles.vignette} aria-hidden />
      <div className={styles.content}>{children}</div>
    </div>
  );
}
