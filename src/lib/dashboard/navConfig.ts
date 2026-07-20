import type { ExamType } from "@/types/supabase";
import type { Icon } from "@phosphor-icons/react";
import {
  House,
  ChatsCircle,
  Calendar,
  PlayCircle,
  ChartLine,
  BookOpen,
  Lightning,
  PuzzlePiece,
  Clock,
  BookBookmark,
  Bookmark,
  WarningCircle,
  GraduationCap,
  ChatCircle,
  Bug,
  ChatTeardropText,
  Briefcase,
  UserPlus,
  Sparkle,
  UsersThree,
  Calculator,
  Newspaper,
  DiscordLogo,
  InstagramLogo,
  ArrowSquareOut,
  Notebook,
  Flask,
  PencilLine,
} from "@phosphor-icons/react";
import { isApOrIbExam, isLanguageCourse } from "@/lib/apIbCatalog";
import { tutorHref, tutorNavLabel } from "@/lib/tutor/routes";
import {
  FREE_STUDY_HREF,
  FREE_STUDY_NAV_ID,
  LABS_HREF,
  LABS_NAV_ID,
  WHITEBOARD_HREF,
  WHITEBOARD_NAV_ID,
} from "@/lib/dashboard/navRoutes";

export type NavItem = {
  id: string;
  href: string;
  label: string;
  icon: Icon;
  badge?: string;
  external?: boolean;
  /** Nested links (e.g. Whiteboard under Free Studying). */
  children?: NavItem[];
};

export type NavSection = {
  id: string;
  label?: string;
  items: NavItem[];
};

export type MoreLinkItem = {
  id: string;
  label: string;
  href?: string;
  external?: boolean;
  onClick?: "feedback" | "bug" | "join-class" | "support";
};

export type MoreLinkSection = {
  id: string;
  label: string;
  items: MoreLinkItem[];
};

export {
  FREE_STUDY_HREF,
  FREE_STUDY_NAV_ID,
  LABS_HREF,
  LABS_NAV_ID,
  WHITEBOARD_HREF,
  WHITEBOARD_NAV_ID,
} from "@/lib/dashboard/navRoutes";

/** Whiteboard Studio — Free Studying child / account shortcut (not STEM Labs). */
export const WHITEBOARD_NAV_ITEM: NavItem = {
  id: WHITEBOARD_NAV_ID,
  href: WHITEBOARD_HREF,
  label: "Whiteboard Studio",
  icon: PencilLine,
};

function mainNavForExam(examType: ExamType): NavItem[] {
  return [
    { id: "home", href: "/dashboard", label: "Home", icon: House },
    {
      id: FREE_STUDY_NAV_ID,
      href: FREE_STUDY_HREF,
      label: "Free Studying",
      icon: Notebook,
      badge: "New",
      children: [WHITEBOARD_NAV_ITEM],
    },
    {
      id: LABS_NAV_ID,
      href: LABS_HREF,
      label: "STEM Labs",
      icon: Flask,
      badge: "New",
    },
    {
      id: "scho",
      href: tutorHref(examType),
      label: tutorNavLabel(examType),
      icon: ChatsCircle,
    },
    { id: "planner", href: "/dashboard/study-plan", label: "Study Planner", icon: Calendar },
    {
      id: "workshops",
      href: "/dashboard/masterclass",
      label: "Expert Workshops",
      icon: PlayCircle,
    },
    {
      id: "ai-courses",
      href: "/dashboard/courses/create",
      label: "AI Courses",
      icon: Sparkle,
    },
    { id: "analytics", href: "/dashboard/analytics", label: "Analytics", icon: ChartLine },
  ];
}

const SAT_PRACTICE: NavItem[] = [
  { id: "bank", href: "/dashboard/practice/bank", label: "Question Bank", icon: BookOpen },
  { id: "rush", href: "/dashboard/question-rush", label: "Speed Drill", icon: Lightning },
  {
    id: "challenge",
    href: "/dashboard/practice/challenge",
    label: "Challenge Questions",
    icon: PuzzlePiece,
  },
  {
    id: "simulator",
    href: "/dashboard/predicted-papers",
    label: "Practice Exams",
    icon: Clock,
  },
  { id: "wordbank", href: "/dashboard/vocab", label: "Word Bank", icon: BookBookmark },
];

/** AP/IB practice: bank, unit tests, challenge, Forms A–J exams; Word Bank only for languages. */
const AP_IB_PRACTICE_BASE: NavItem[] = [
  { id: "bank", href: "/dashboard/practice/bank", label: "Question Bank", icon: BookOpen },
  {
    id: "unit-tests",
    href: "/dashboard/unit-tests",
    label: "Unit Tests",
    icon: PuzzlePiece,
  },
  {
    id: "challenge",
    href: "/dashboard/practice/challenge",
    label: "Challenge Questions",
    icon: Lightning,
  },
  {
    id: "simulator",
    href: "/dashboard/exams",
    label: "Practice Exams",
    icon: Clock,
  },
];

const WORD_BANK_ITEM: NavItem = {
  id: "wordbank",
  href: "/dashboard/vocab",
  label: "Word Bank",
  icon: BookBookmark,
};

const SAT_PROGRESS: NavItem[] = [
  { id: "saved", href: "/dashboard/saved", label: "Saved", icon: Bookmark },
  { id: "review", href: "/dashboard/mistakes", label: "Mistake Log", icon: WarningCircle },
];

const COLLEGE: NavItem[] = [
  {
    id: "campus-fit",
    href: "/dashboard/college-finder",
    label: "Campus Fit",
    icon: GraduationCap,
  },
];

const ACT_PRACTICE: NavItem[] = SAT_PRACTICE;
const ACT_PROGRESS: NavItem[] = SAT_PROGRESS;

function practiceNavForExam(examType: ExamType): NavItem[] {
  if (!isApOrIbExam(examType)) {
    return examType === "ACT" ? ACT_PRACTICE : SAT_PRACTICE;
  }
  const items = [...AP_IB_PRACTICE_BASE];
  if (isLanguageCourse(examType)) {
    items.push(WORD_BANK_ITEM);
  }
  return items;
}

export function getNavForExam(examType: ExamType): NavSection[] {
  const mainNav = mainNavForExam(examType);

  if (isApOrIbExam(examType)) {
    return [
      { id: "main", items: mainNav },
      { id: "practice", label: "Practice", items: practiceNavForExam(examType) },
      { id: "progress", label: "Progress", items: SAT_PROGRESS },
      { id: "college", label: "College", items: COLLEGE },
    ];
  }

  if (examType === "ACT") {
    return [
      { id: "main", items: mainNav },
      { id: "practice", label: "Practice", items: ACT_PRACTICE },
      { id: "progress", label: "Progress", items: ACT_PROGRESS },
      { id: "college", label: "College", items: COLLEGE },
    ];
  }

  return [
    { id: "main", items: mainNav },
    { id: "practice", label: "Practice", items: SAT_PRACTICE },
    { id: "progress", label: "Progress", items: SAT_PROGRESS },
    { id: "college", label: "College", items: COLLEGE },
  ];
}

export function getMoreLinksForExam(examType: ExamType): MoreLinkSection[] {
  // Free Studying hub stays primary sidebar / mobile Study tab.
  // Whiteboard Studio is a Free Studying sub-entry (desktop) + Study More (mobile).
  const sections: MoreLinkSection[] = [
    {
      id: "study",
      label: "Study",
      items: [
        {
          id: WHITEBOARD_NAV_ID,
          label: "Whiteboard Studio",
          href: WHITEBOARD_HREF,
        },
      ],
    },
    {
      id: "college",
      label: "College",
      items: [
        { id: "campus-fit", label: "Campus Fit", href: "/dashboard/college-finder" },
      ],
    },
    {
      id: "support",
      label: "Support",
      items: [
        { id: "support", label: "Chat with Support", onClick: "support" },
        { id: "bug", label: "Bug Report", onClick: "bug" },
        { id: "feedback", label: "Give Feedback", href: "/dashboard/feedback" },
      ],
    },
  ];

  if (examType !== "ACT" && !isApOrIbExam(examType)) {
    sections.push({
      id: "opportunities",
      label: "Opportunities",
      items: [
        { id: "jobs", label: "Join Us", href: "/about" },
        { id: "tutor", label: "Apply as a Tutor", href: "/contact" },
      ],
    });
  }

  const resourceItems: MoreLinkItem[] = [
    { id: "join-class", label: "Join a class", onClick: "join-class" },
  ];

  if (examType === "ACT") {
    resourceItems.push({
      id: "calculator",
      label: "ACT Score Calculator",
      href: "/act-score-calculator",
    });
  } else if (!isApOrIbExam(examType)) {
    resourceItems.push({
      id: "calculator",
      label: "DSAT Score Calculator",
      href: "/sat-score-calculator",
    });
  }

  resourceItems.push({ id: "blog", label: "Blog", href: "/blog" });

  sections.push({
    id: "resources",
    label: "Resources",
    items: resourceItems,
  });

  sections.push({
    id: "social",
    label: "Social",
    items: [
      {
        id: "discord",
        label: "Join Discord",
        href: "https://discord.gg/dbhzySfGPH",
        external: true,
      },
      {
        id: "instagram",
        label: "Instagram",
        href: "https://www.instagram.com/scholaris/",
        external: true,
      },
    ],
  });

  return sections;
}

export const MORE_SECTION_ICONS: Record<string, Icon> = {
  study: Notebook,
  college: GraduationCap,
  support: ChatCircle,
  opportunities: Briefcase,
  resources: BookOpen,
  social: UsersThree,
};

export const MORE_ITEM_ICONS: Record<string, Icon> = {
  whiteboard: PencilLine,
  "campus-fit": GraduationCap,
  support: ChatCircle,
  bug: Bug,
  feedback: ChatTeardropText,
  jobs: Briefcase,
  tutor: UserPlus,
  creator: Sparkle,
  "join-class": UsersThree,
  calculator: Calculator,
  blog: Newspaper,
  discord: DiscordLogo,
  instagram: InstagramLogo,
  upgrade: ArrowSquareOut,
};
