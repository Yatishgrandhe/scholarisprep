import type { ComponentType } from "react";
import {
  ChartLineUp,
  ChatCircle,
  Exam,
  Fire,
  Footprints,
  GraduationCap,
  Lightning,
  Sparkle,
  Star,
  Trophy,
} from "@phosphor-icons/react";

export type AchievementIconComponent = ComponentType<{
  size?: number;
  weight?: "duotone" | "fill" | "regular";
}>;

export const ACHIEVEMENT_ICON_MAP: Record<string, AchievementIconComponent> = {
  footprints: Footprints,
  fire: Fire,
  trophy: Trophy,
  star: Star,
  "chart-line-up": ChartLineUp,
  exam: Exam,
  lightning: Lightning,
  sparkle: Sparkle,
  chat: ChatCircle,
  "graduation-cap": GraduationCap,
};

export function resolveAchievementIcon(
  icon: string | null,
): AchievementIconComponent {
  return (icon && ACHIEVEMENT_ICON_MAP[icon]) || Star;
}
