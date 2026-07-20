export type BankSkill = {
  id: string;
  label: string;
  domain: string;
};

export type BankDomain = {
  id: string;
  label: string;
  skills: BankSkill[];
};

export const SAT_RW_DOMAINS: BankDomain[] = [
  {
    id: "craft",
    label: "Craft and Structure",
    skills: [
      { id: "CTC", label: "Cross-Text Connections", domain: "craft" },
      { id: "TSP", label: "Text Structure and Purpose", domain: "craft" },
      { id: "WIC", label: "Words in Context", domain: "craft" },
    ],
  },
  {
    id: "expression",
    label: "Expression of Ideas",
    skills: [
      { id: "SYN", label: "Rhetorical Synthesis", domain: "expression" },
      { id: "TRA", label: "Transitions", domain: "expression" },
    ],
  },
  {
    id: "information",
    label: "Information and Ideas",
    skills: [
      { id: "CID", label: "Central Ideas and Details", domain: "information" },
      { id: "COE", label: "Command of Evidence", domain: "information" },
      { id: "INF", label: "Inferences", domain: "information" },
    ],
  },
  {
    id: "conventions",
    label: "Standard English Conventions",
    skills: [
      { id: "BOU", label: "Boundaries", domain: "conventions" },
      { id: "FSS", label: "Form, Structure, and Sense", domain: "conventions" },
    ],
  },
];

export const SAT_MATH_DOMAINS: BankDomain[] = [
  {
    id: "algebra",
    label: "Algebra",
    skills: [
      { id: "LIN", label: "Linear equations in one variable", domain: "algebra" },
      { id: "LIF", label: "Linear functions", domain: "algebra" },
      { id: "LEQ", label: "Linear equations in two variables", domain: "algebra" },
      { id: "SYS", label: "Systems of two linear equations", domain: "algebra" },
      { id: "INE", label: "Linear inequalities", domain: "algebra" },
    ],
  },
  {
    id: "advanced",
    label: "Advanced Math",
    skills: [
      { id: "NRM", label: "Nonlinear functions", domain: "advanced" },
      { id: "NRE", label: "Nonlinear equations in one variable", domain: "advanced" },
      { id: "EQS", label: "Equivalent expressions", domain: "advanced" },
    ],
  },
  {
    id: "psda",
    label: "Problem-Solving and Data Analysis",
    skills: [
      { id: "RAT", label: "Ratios, rates, and proportions", domain: "psda" },
      { id: "PER", label: "Percentages", domain: "psda" },
      { id: "OIA", label: "One-variable data", domain: "psda" },
      { id: "TVA", label: "Two-variable data", domain: "psda" },
      { id: "PRO", label: "Probability and conditional probability", domain: "psda" },
      { id: "IEE", label: "Inference from sample statistics", domain: "psda" },
      { id: "EVA", label: "Evaluating statistical claims", domain: "psda" },
    ],
  },
  {
    id: "geometry",
    label: "Geometry and Trigonometry",
    skills: [
      { id: "ARE", label: "Area and volume", domain: "geometry" },
      { id: "LIN_G", label: "Lines, angles, and triangles", domain: "geometry" },
      { id: "RIG", label: "Right triangles and trigonometry", domain: "geometry" },
      { id: "CIR", label: "Circles", domain: "geometry" },
    ],
  },
];

export const ACT_SECTIONS: BankDomain[] = [
  {
    id: "english",
    label: "English",
    skills: [
      { id: "ACT_ENG_1", label: "Production of Writing", domain: "english" },
      { id: "ACT_ENG_2", label: "Knowledge of Language", domain: "english" },
      { id: "ACT_ENG_3", label: "Conventions of Standard English", domain: "english" },
    ],
  },
  {
    id: "math",
    label: "Math",
    skills: [
      { id: "ACT_MATH_1", label: "Preparing for Higher Math", domain: "math" },
      { id: "ACT_MATH_2", label: "Number & Quantity", domain: "math" },
      { id: "ACT_MATH_3", label: "Algebra", domain: "math" },
      { id: "ACT_MATH_4", label: "Functions", domain: "math" },
      { id: "ACT_MATH_5", label: "Geometry", domain: "math" },
      { id: "ACT_MATH_6", label: "Statistics & Probability", domain: "math" },
    ],
  },
  {
    id: "reading",
    label: "Reading",
    skills: [
      { id: "ACT_RD_1", label: "Key Ideas and Details", domain: "reading" },
      { id: "ACT_RD_2", label: "Craft and Structure", domain: "reading" },
      { id: "ACT_RD_3", label: "Integration of Knowledge and Ideas", domain: "reading" },
    ],
  },
  {
    id: "science",
    label: "Science",
    skills: [
      { id: "ACT_SCI_1", label: "Interpretation of Data", domain: "science" },
      { id: "ACT_SCI_2", label: "Scientific Investigation", domain: "science" },
      { id: "ACT_SCI_3", label: "Evaluation of Models", domain: "science" },
    ],
  },
];

export function flattenSkills(domains: BankDomain[]): BankSkill[] {
  return domains.flatMap((d) => d.skills);
}

export function countSkills(domains: BankDomain[]): number {
  return flattenSkills(domains).length;
}

const ALL_DOMAINS = [...SAT_RW_DOMAINS, ...SAT_MATH_DOMAINS, ...ACT_SECTIONS];

const ALL_SKILLS = flattenSkills(ALL_DOMAINS);

/** Canonical skill codes from bankTaxonomy (CID, LIN, …). */
export const KNOWN_SKILL_IDS = new Set(ALL_SKILLS.map((s) => s.id));

export function isKnownSkillId(skillId: string): boolean {
  return KNOWN_SKILL_IDS.has(skillId);
}

export function skillLabelsForIds(skillIds: string[]): string[] {
  const byId = new Map(flattenSkills(ALL_DOMAINS).map((s) => [s.id, s.label]));
  return skillIds.map((id) => byId.get(id)).filter((l): l is string => Boolean(l));
}

/** DB `topic` column stores domain labels (e.g. "Algebra"), not skill labels. */
export function domainLabelForSkillId(skillId: string): string | undefined {
  for (const domain of ALL_DOMAINS) {
    if (domain.skills.some((s) => s.id === skillId)) return domain.label;
  }
  return undefined;
}

export function domainTopicsForSkillIds(skillIds: string[]): string[] {
  const topics = new Set<string>();
  for (const id of skillIds) {
    const label = domainLabelForSkillId(id);
    if (label) topics.add(label);
  }
  return [...topics];
}

export function skillLabelForId(skillId: string): string | undefined {
  return flattenSkills(ALL_DOMAINS).find((s) => s.id === skillId)?.label;
}

export function domainForSkillId(skillId: string): BankDomain | undefined {
  return ALL_DOMAINS.find((d) => d.skills.some((s) => s.id === skillId));
}

/** Values that may appear in question_subtype, subtopic, or math_skill_code. */
export function subtypeValuesForSkillId(skillId: string): string[] {
  const skill = flattenSkills(ALL_DOMAINS).find((s) => s.id === skillId);
  if (!skill) return [];
  return [skill.id, skill.label];
}

export type QuestionSubtypeRow = {
  topic: string | null;
  skill_id?: string | null;
  domain_id?: string | null;
  question_subtype?: string | null;
  subtopic?: string | null;
  math_skill_code?: string | null;
};

function normalizeSubtype(value: string): string {
  return value.trim().toLowerCase();
}

function subtypeMatchesSkill(subtypeRaw: string, skill: BankSkill): boolean {
  const normalized = normalizeSubtype(subtypeRaw);
  return (
    skill.id === subtypeRaw ||
    normalizeSubtype(skill.label) === normalized ||
    skill.id.toLowerCase() === normalized
  );
}

/** Resolve a taxonomy skill id from canonical skill_id or legacy subtype columns. */
export function resolveQuestionSkillId(row: QuestionSubtypeRow): string | null {
  const skillId = row.skill_id?.trim();
  if (skillId) {
    const known = flattenSkills(ALL_DOMAINS).some((s) => s.id === skillId);
    if (known) return skillId;
  }

  const topic = row.topic?.trim();
  if (!topic) return null;

  const candidates = [
    row.subtopic?.trim() !== topic ? row.subtopic?.trim() : null,
    row.math_skill_code?.trim(),
  ].filter((v): v is string => Boolean(v));

  if (candidates.length === 0) return null;

  for (const domain of ALL_DOMAINS) {
    if (domain.label !== topic) continue;
    for (const skill of domain.skills) {
      if (candidates.some((c) => subtypeMatchesSkill(c, skill))) {
        return skill.id;
      }
    }
  }
  return null;
}

export function domainIdForTopicLabel(topicLabel: string): string | undefined {
  return ALL_DOMAINS.find((d) => d.label === topicLabel)?.id;
}
