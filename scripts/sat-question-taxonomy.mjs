/**
 * Digital SAT domain + skill taxonomy for College Board / OpenSAT imports.
 * Domain labels match official CB content domains; skill IDs match bankTaxonomy.ts.
 */

/** @typedef {{ domainId: string, domainLabel: string, skillId: string, skillLabel: string }} TaxonomyAssignment */

export const DOMAIN_LABEL_TO_ID = {
  "Craft and Structure": "craft",
  "Expression of Ideas": "expression",
  "Information and Ideas": "information",
  "Standard English Conventions": "conventions",
  Algebra: "algebra",
  "Advanced Math": "advanced",
  "Problem-Solving and Data Analysis": "psda",
  "Geometry and Trigonometry": "geometry",
};

export const DOMAIN_ID_TO_LABEL = Object.fromEntries(
  Object.entries(DOMAIN_LABEL_TO_ID).map(([label, id]) => [id, label]),
);

export const SKILL_META = {
  CTC: { label: "Cross-Text Connections", domain: "craft" },
  TSP: { label: "Text Structure and Purpose", domain: "craft" },
  WIC: { label: "Words in Context", domain: "craft" },
  SYN: { label: "Rhetorical Synthesis", domain: "expression" },
  TRA: { label: "Transitions", domain: "expression" },
  CID: { label: "Central Ideas and Details", domain: "information" },
  COE: { label: "Command of Evidence", domain: "information" },
  INF: { label: "Inferences", domain: "information" },
  BOU: { label: "Boundaries", domain: "conventions" },
  FSS: { label: "Form, Structure, and Sense", domain: "conventions" },
  LIN: { label: "Linear equations in one variable", domain: "algebra" },
  LIF: { label: "Linear functions", domain: "algebra" },
  LEQ: { label: "Linear equations in two variables", domain: "algebra" },
  SYS: { label: "Systems of two linear equations", domain: "algebra" },
  INE: { label: "Linear inequalities", domain: "algebra" },
  NRM: { label: "Nonlinear functions", domain: "advanced" },
  NRE: { label: "Nonlinear equations in one variable", domain: "advanced" },
  EQS: { label: "Equivalent expressions", domain: "advanced" },
  RAT: { label: "Ratios, rates, and proportions", domain: "psda" },
  PER: { label: "Percentages", domain: "psda" },
  OIA: { label: "One-variable data", domain: "psda" },
  TVA: { label: "Two-variable data", domain: "psda" },
  PRO: { label: "Probability and conditional probability", domain: "psda" },
  IEE: { label: "Inference from sample statistics", domain: "psda" },
  EVA: { label: "Evaluating statistical claims", domain: "psda" },
  ARE: { label: "Area and volume", domain: "geometry" },
  LIN_G: { label: "Lines, angles, and triangles", domain: "geometry" },
  RIG: { label: "Right triangles and trigonometry", domain: "geometry" },
  CIR: { label: "Circles", domain: "geometry" },
};

const DOMAIN_DEFAULT_SKILL = {
  craft: "TSP",
  expression: "SYN",
  information: "CID",
  conventions: "FSS",
  algebra: "LIN",
  advanced: "NRM",
  psda: "RAT",
  geometry: "ARE",
};

export function domainLabelForId(domainId) {
  return DOMAIN_ID_TO_LABEL[domainId] ?? null;
}

export function skillLabelForId(skillId) {
  return SKILL_META[skillId]?.label ?? null;
}

export function mapMathDomainSlug(domainLabel) {
  const id = DOMAIN_LABEL_TO_ID[domainLabel];
  if (id === "algebra") return "algebra";
  if (id === "advanced") return "advanced_math";
  if (id === "psda") return "problem_solving_data";
  if (id === "geometry") return "geometry_trig";
  return null;
}

function normalizeText(...parts) {
  return parts
    .filter(Boolean)
    .join(" ")
    .toLowerCase()
    .replace(/\s+/g, " ");
}

function firstMatch(text, rules) {
  for (const [skillId, patterns] of rules) {
    for (const pattern of patterns) {
      if (pattern.test(text)) return skillId;
    }
  }
  return null;
}

function classifyRwSkill(domainId, text) {
  if (domainId === "craft") {
    return (
      firstMatch(text, [
        ["CTC", [/text 1|text 2|both (passage|text)|another (author|passage)|other passage/i]],
        ["WIC", [/\bword\b.*\b(mean|used|suggest|conveys)\b/i, /as used in the (line|passage)/i, /most nearly mean/i]],
        ["TSP", [/structure|purpose|perspective|contrast|shift|organiz|function of|primarily serve|tone|point of view/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.craft
    );
  }
  if (domainId === "information") {
    return (
      firstMatch(text, [
        ["COE", [/evidence|support(s)? the|quotation|cite|data in the (table|graph|chart)/i]],
        ["INF", [/infer|imply|suggest that|primarily suggest|most likely (true|conclude|believe)|can be inferred/i]],
        ["CID", [/main (idea|point)|primarily|summarize|central idea|best (describes|states)|primary purpose/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.information
    );
  }
  if (domainId === "expression") {
    return (
      firstMatch(text, [
        ["TRA", [/transition|logical flow|connect|link(s)? the|however,|therefore,|concluding sentence/i]],
        ["SYN", [/notes|researcher|student|bullet|synthesize|combining|while researching|graphic organizer/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.expression
    );
  }
  if (domainId === "conventions") {
    return (
      firstMatch(text, [
        ["BOU", [/punctuation|comma|semicolon|colon|apostrophe|dash|hyphen|period|boundar/i]],
        ["FSS", [/grammatically|verb tense|subject-verb|pronoun|modifier|plural|singular|agreement|form of the verb/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.conventions
    );
  }
  return DOMAIN_DEFAULT_SKILL[domainId] ?? "CID";
}

function classifyMathSkill(domainId, text) {
  if (domainId === "algebra") {
    return (
      firstMatch(text, [
        ["INE", [/inequal|greater than|less than|at least|at most/i]],
        ["SYS", [/system of|two linear equations|simultaneous/i]],
        ["LEQ", [/two variables|xy-plane|slope-intercept|y-intercept.*x-intercept/i]],
        ["LIF", [/linear function|slope of the line|rate of change|y\s*=.*x/i]],
        ["LIN", [/solve for|value of \$?x|equation/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.algebra
    );
  }
  if (domainId === "advanced") {
    return (
      firstMatch(text, [
        ["EQS", [/equivalent expression|equivalent to which|factor|expand|simplif/i]],
        ["NRE", [/quadratic|x\^2|polynomial|zeroes of|roots of|nonlinear equation/i]],
        ["NRM", [/function|f\(x\)|exponential|graph of|parabola/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.advanced
    );
  }
  if (domainId === "psda") {
    return (
      firstMatch(text, [
        ["PRO", [/probability|odds|likelihood|randomly selected/i]],
        ["PER", [/percent/i]],
        ["RAT", [/ratio|rate|proportion|per hour|per minute|miles per/i]],
        ["TVA", [/scatter|line of best fit|two-variable|best-fit line|linear model|regression/i]],
        ["EVA", [/evaluate the (claim|conclusion|argument)|statistical claim|unsupported claim|overgeneral/i]],
        ["IEE", [/margin of error|sample|survey|poll|statistic|population parameter/i]],
        ["OIA", [/mean|median|mode|standard deviation|range|data set|histogram|bar graph/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.psda
    );
  }
  if (domainId === "geometry") {
    return (
      firstMatch(text, [
        ["RIG", [/trigonometry|sin\(|cos\(|tan\(|right triangle/i]],
        ["CIR", [/circle|radius|circumference|diameter|arc/i]],
        ["ARE", [/area|volume|square (cm|units)|cubic/i]],
        ["LIN_G", [/triangle|angle|parallel|perpendicular|polygon|quadrilateral/i]],
      ]) ?? DOMAIN_DEFAULT_SKILL.geometry
    );
  }
  return DOMAIN_DEFAULT_SKILL[domainId] ?? "LIN";
}

/**
 * @param {{ domain?: string | null, question?: { question?: string, paragraph?: string | null } }} item
 * @param {"english" | "math"} section
 */
export function classifyOpenSatItem(item, section) {
  const domainLabel =
    item.domain ??
    (section === "math" ? "Algebra" : "Information and Ideas");
  const domainId = DOMAIN_LABEL_TO_ID[domainLabel];
  if (!domainId) {
    return {
      domainId: section === "math" ? "algebra" : "information",
      domainLabel,
      skillId: section === "math" ? "LIN" : "CID",
      skillLabel: skillLabelForId(section === "math" ? "LIN" : "CID"),
    };
  }

  const text = normalizeText(
    item.question?.question,
    item.question?.paragraph,
  );
  const skillId =
    section === "math"
      ? classifyMathSkill(domainId, text)
      : classifyRwSkill(domainId, text);
  const skillLabel = skillLabelForId(skillId) ?? skillId;

  return {
    domainId,
    domainLabel: domainLabelForId(domainId) ?? domainLabel,
    skillId,
    skillLabel,
  };
}
