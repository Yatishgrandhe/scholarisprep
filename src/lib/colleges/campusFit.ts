import {
  apIbDisplayName,
  getApIbCourse,
  isApExam,
  isIbExam,
} from "@/lib/apIbCatalog";
import { scoreBoundsForExam } from "@/lib/onboarding/examPrograms";
import type { ExamType } from "@/types/supabase";
import type { College } from "./queries";

export type FitTier = "reach" | "match" | "safety";
export type CampusFitMode = "sat" | "act" | "ap" | "ib";
export type CampusFitSortKey = "selectivity" | "name" | "sat" | "act";

export type CampusFitConfig = {
  mode: CampusFitMode;
  examType: ExamType;
  courseLabel: string;
  title: string;
  subtitle: string;
  scoreLabel: string;
  scorePlaceholder: string;
  scoreHint: string;
  scoreMin: number;
  scoreMax: number;
  scoreStep: number;
  sortOptions: { value: CampusFitSortKey; label: string }[];
  defaultSort: CampusFitSortKey;
  statLabels: { primary: string; secondary: string };
};

const TIER_LABEL: Record<FitTier, string> = {
  reach: "Reach",
  match: "Match",
  safety: "Safety",
};

export function tierLabel(tier: FitTier): string {
  return TIER_LABEL[tier];
}

export function campusFitModeForExam(examType: ExamType | string): CampusFitMode {
  if (examType === "ACT") return "act";
  if (isApExam(examType)) return "ap";
  if (isIbExam(examType)) return "ib";
  return "sat";
}

function apSubjectFitCopy(examType: string): Partial<Record<FitTier, string>> {
  const course = getApIbCourse(examType);
  const name = course?.display_name?.replace(/^AP\s+/i, "") ?? "this subject";

  const byCourse: Record<string, Partial<Record<FitTier, string>>> = {
    AP_ENVIRONMENTAL_SCIENCE: {
      reach:
        "Look for strong environmental science, sustainability, or earth-systems programs and highlight field work or research tied to APES.",
      match:
        "Schools with ecology or policy tracks where a solid APES score supports a STEM or environmental studies application.",
      safety:
        "Broad-access campuses where AP credit in environmental science can free electives for a related major.",
    },
    AP_BIOLOGY: {
      reach:
        "Prioritize research universities with competitive pre-med or biology pathways; emphasize lab skills from AP Bio.",
      match:
        "Schools with solid life-science majors where AP Bio credit accelerates your core sequence.",
      safety:
        "Options where AP Bio credit reduces intro course load while you explore health or bio majors.",
    },
    AP_CALCULUS_AB: {
      reach:
        "Math-heavy campuses expect strong calculus readiness — pair your AP score with rigorous STEM coursework.",
      match:
        "Engineering and quantitative majors where AB credit places you into the right math track.",
      safety:
        "Schools where AB credit clears calculus prerequisites and opens earlier major courses.",
    },
    AP_CALCULUS_BC: {
      reach:
        "Top STEM programs value BC-level mastery; highlight multivariable readiness if you continue in math.",
      match:
        "Quantitative majors where BC credit skips intro calc and signals strong math preparation.",
      safety:
        "Campuses where BC credit gives flexibility to double-major or add minors earlier.",
    },
  };

  if (byCourse[examType]) return byCourse[examType];

  return {
    reach: `Selective schools where strong ${name} performance supports a competitive academic profile.`,
    match: `Campuses where AP credit in ${name} aligns with your intended major or general-ed requirements.`,
    safety: `Schools where a qualifying AP ${name} score can reduce course load and cost.`,
  };
}

function ibSubjectFitCopy(examType: string): Partial<Record<FitTier, string>> {
  const course = getApIbCourse(examType);
  const name = course?.display_name?.replace(/^IB\s+/i, "") ?? "this subject";
  const level = course?.level ? ` (${course.level})` : "";

  return {
    reach: `Highly selective universities that recognize IB${level} rigor in ${name} and holistic diploma strength.`,
    match: `Schools with clear IB credit policies where your ${name} score supports your intended pathway.`,
    safety: `Institutions with generous IB recognition where ${name} credit can lighten your first-year schedule.`,
  };
}

export function tierRecommendation(
  examType: ExamType,
  tier: FitTier,
): string | null {
  const mode = campusFitModeForExam(examType);
  if (mode === "ap") {
    return apSubjectFitCopy(examType)[tier] ?? null;
  }
  if (mode === "ib") {
    return ibSubjectFitCopy(examType)[tier] ?? null;
  }
  if (mode === "act") {
    const copy: Record<FitTier, string> = {
      reach: "Your ACT composite is below typical admits — strengthen superscore strategy and section retakes.",
      match: "Your ACT aligns with the middle 50% — focus essays, activities, and fit to stand out.",
      safety: "Your ACT is above typical admits — prioritize affordability, major fit, and campus culture.",
    };
    return copy[tier];
  }
  const copy: Record<FitTier, string> = {
    reach: "Your SAT is below the middle 50% — consider retakes, superscore, and test-optional policies.",
    match: "Your SAT sits in the typical admit range — differentiate with coursework and narrative.",
    safety: "Your SAT exceeds typical admits — weigh cost, honors programs, and location.",
  };
  return copy[tier];
}

function subtitleForExam(examType: ExamType, mode: CampusFitMode): string {
  const courseName = apIbDisplayName(examType);
  switch (mode) {
    case "act":
      return "Compare colleges using ACT composites, acceptance rates, and reach / match / safety tags.";
    case "ap":
      return `Find colleges where your ${courseName} score and AP credit policy align with your goals.`;
    case "ib":
      return `Explore campuses that recognize ${courseName} and IB diploma credit for your target score.`;
    default:
      return "Find and compare colleges with admission stats, SAT scores, and reach / match / safety tags.";
  }
}

export function campusFitConfig(examType: ExamType): CampusFitConfig {
  const mode = campusFitModeForExam(examType);
  const bounds = scoreBoundsForExam(examType);
  const courseLabel = apIbDisplayName(examType);

  const base = {
    mode,
    examType,
    courseLabel,
    title: "Campus Fit",
    scoreMin: bounds.min,
    scoreMax: bounds.max,
    scoreStep: mode === "act" || mode === "ap" || mode === "ib" ? 1 : 10,
  };

  if (mode === "act") {
    return {
      ...base,
      subtitle: subtitleForExam(examType, mode),
      scoreLabel: "Your ACT composite",
      scorePlaceholder: "e.g. 28",
      scoreHint: "Tags each school using its published ACT middle 50%.",
      sortOptions: [
        { value: "selectivity", label: "Most selective" },
        { value: "act", label: "Highest ACT" },
        { value: "name", label: "Name (A–Z)" },
      ],
      defaultSort: "selectivity",
      statLabels: { primary: "Acceptance Rate", secondary: "ACT Range" },
    };
  }

  if (mode === "ap") {
    return {
      ...base,
      subtitle: subtitleForExam(examType, mode),
      scoreLabel: `Your ${courseLabel} score`,
      scorePlaceholder: "e.g. 4",
      scoreHint:
        "Reach / match / safety uses selectivity bands tuned for AP score goals (1–5).",
      sortOptions: [
        { value: "selectivity", label: "Most selective" },
        { value: "sat", label: "Highest admit SAT" },
        { value: "name", label: "Name (A–Z)" },
      ],
      defaultSort: "selectivity",
      statLabels: { primary: "Acceptance Rate", secondary: "Typical Admit SAT" },
    };
  }

  if (mode === "ib") {
    return {
      ...base,
      subtitle: subtitleForExam(examType, mode),
      scoreLabel: `Your ${courseLabel} score`,
      scorePlaceholder: "e.g. 6",
      scoreHint:
        "Reach / match / safety uses selectivity bands tuned for IB scores (1–7).",
      sortOptions: [
        { value: "selectivity", label: "Most selective" },
        { value: "sat", label: "Highest admit SAT" },
        { value: "name", label: "Name (A–Z)" },
      ],
      defaultSort: "selectivity",
      statLabels: { primary: "Acceptance Rate", secondary: "Typical Admit SAT" },
    };
  }

  return {
    ...base,
    subtitle: subtitleForExam(examType, mode),
    scoreLabel: "Your SAT score",
    scorePlaceholder: "e.g. 1430",
    scoreHint: "Tags each school as a reach, match, or safety using SAT middle 50%.",
    sortOptions: [
      { value: "selectivity", label: "Most selective" },
      { value: "sat", label: "Highest SAT" },
      { value: "name", label: "Name (A–Z)" },
    ],
    defaultSort: "selectivity",
    statLabels: { primary: "Acceptance Rate", secondary: "Median SAT" },
  };
}

/** Selectivity bands for AP scores (acceptance-rate % thresholds). */
const AP_SELECTIVITY_BANDS: Record<number, { safetyMin: number; matchMin: number }> = {
  5: { safetyMin: 22, matchMin: 12 },
  4: { safetyMin: 35, matchMin: 20 },
  3: { safetyMin: 50, matchMin: 32 },
  2: { safetyMin: 65, matchMin: 45 },
  1: { safetyMin: 80, matchMin: 55 },
};

/** Selectivity bands for IB scores (acceptance-rate % thresholds). */
const IB_SELECTIVITY_BANDS: Record<number, { safetyMin: number; matchMin: number }> = {
  7: { safetyMin: 20, matchMin: 10 },
  6: { safetyMin: 32, matchMin: 18 },
  5: { safetyMin: 45, matchMin: 28 },
  4: { safetyMin: 58, matchMin: 38 },
  3: { safetyMin: 70, matchMin: 50 },
  2: { safetyMin: 82, matchMin: 62 },
  1: { safetyMin: 90, matchMin: 72 },
};

function fitTierFromSat(
  satLow: number | null,
  satHigh: number | null,
  score: number,
): FitTier | null {
  if (!score || satLow == null || satHigh == null) return null;
  if (score >= satHigh) return "safety";
  if (score >= satLow - 40) return "match";
  return "reach";
}

function fitTierFromAct(
  actLow: number | null,
  actHigh: number | null,
  score: number,
): FitTier | null {
  if (!score || actLow == null || actHigh == null) return null;
  if (score >= actHigh) return "safety";
  if (score >= actLow - 1) return "match";
  return "reach";
}

function fitTierFromAcceptance(
  acceptanceRate: number | null,
  score: number,
  bands: Record<number, { safetyMin: number; matchMin: number }>,
): FitTier | null {
  if (!score || acceptanceRate == null) return null;
  const rounded = Math.round(score);
  // Only known score bands — reject leftover SAT/ACT magnitudes (e.g. 1450).
  const band = bands[rounded];
  if (!band) return null;
  if (acceptanceRate >= band.safetyMin) return "safety";
  if (acceptanceRate >= band.matchMin) return "match";
  return "reach";
}

export function fitTierForCollege(
  college: College,
  userScore: number,
  mode: CampusFitMode,
): FitTier | null {
  if (!userScore) return null;
  switch (mode) {
    case "act":
      return fitTierFromAct(college.act_low, college.act_high, userScore);
    case "ap":
      return fitTierFromAcceptance(
        college.acceptance_rate,
        userScore,
        AP_SELECTIVITY_BANDS,
      );
    case "ib":
      return fitTierFromAcceptance(
        college.acceptance_rate,
        userScore,
        IB_SELECTIVITY_BANDS,
      );
    default:
      return fitTierFromSat(college.sat_low, college.sat_high, userScore);
  }
}

export function formatCollegeSecondaryStat(
  college: College,
  mode: CampusFitMode,
): string {
  if (mode === "act") {
    if (college.act_low == null || college.act_high == null) return "—";
    return `${college.act_low}–${college.act_high}`;
  }
  if (college.sat_low == null || college.sat_high == null) return "—";
  return String(Math.round((college.sat_low + college.sat_high) / 2));
}

export function sortColleges(
  colleges: College[],
  sort: CampusFitSortKey,
): College[] {
  return [...colleges].sort((a, b) => {
    if (sort === "name") return a.name.localeCompare(b.name);
    if (sort === "sat") return (b.sat_high ?? 0) - (a.sat_high ?? 0);
    if (sort === "act") return (b.act_high ?? 0) - (a.act_high ?? 0);
    return (a.acceptance_rate ?? 999) - (b.acceptance_rate ?? 999);
  });
}

export const TIER_CLASS: Record<FitTier, string> = {
  reach: "tierReach",
  match: "tierMatch",
  safety: "tierSafety",
};
