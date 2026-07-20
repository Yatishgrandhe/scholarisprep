/**
 * Exam formula / command-term reference sheets for practice ExamShell.
 * Outlines seeded from `scripts/data/course-research/*.blueprint.json`
 * (`reference_sheet` / `reference_sheet_outline`), expanded for usable study cues.
 * Not official College Board / IB booklets.
 */

export type ReferenceSheetItem = {
  title: string;
  body: string;
};

export type ReferenceSheet = {
  examType: string;
  title: string;
  note: string;
  items: ReferenceSheetItem[];
};

const SAT_SHEET: ReferenceSheet = {
  examType: "SAT",
  title: "Reference sheet",
  note: "SAT Math reference — common formulas and facts. Not an official College Board sheet.",
  items: [
    { title: "Quadratic formula", body: "x = (−b ± √(b² − 4ac)) / 2a" },
    { title: "Slope", body: "m = (y₂ − y₁) / (x₂ − x₁)" },
    { title: "Distance", body: "d = √((x₂ − x₁)² + (y₂ − y₁)²)" },
    { title: "Midpoint", body: "((x₁ + x₂) / 2, (y₁ + y₂) / 2)" },
    { title: "Circle area", body: "A = πr²" },
    { title: "Circle circumference", body: "C = 2πr" },
    { title: "Pythagorean theorem", body: "a² + b² = c²" },
    {
      title: "Special right triangles",
      body: "30-60-90: x, x√3, 2x · 45-45-90: x, x, x√2",
    },
  ],
};

const AP_CALC: ReferenceSheet = {
  examType: "AP_CALCULUS",
  title: "AP Calculus formula outline",
  note: "Study outline aligned to Calc AB/BC CED themes. Not an official AP formula sheet.",
  items: [
    {
      title: "Derivative rules",
      body: "Power, product, quotient, chain; d/dx[sin u]=cos u·u′, d/dx[e^u]=e^u·u′, d/dx[ln u]=u′/u",
    },
    {
      title: "Integral basics",
      body: "∫xⁿ dx = xⁿ⁺¹/(n+1)+C (n≠−1); ∫e^u u′ dx = e^u; FTC: d/dx ∫ₐˣ f = f(x)",
    },
    {
      title: "Theorem reminders",
      body: "MVT / Rolle; IVT; Extreme Value; average value (1/(b−a))∫ₐᵇ f",
    },
    {
      title: "Applications",
      body: "Related rates; optimization; particle v=s′, a=v′; accumulation ∫ rate",
    },
    {
      title: "BC extras",
      body: "Integration by parts; partial fractions; series / Taylor; polar / parametric arc length cues",
    },
  ],
};

const AP_STATS: ReferenceSheet = {
  examType: "AP_STATISTICS",
  title: "AP Statistics formula outline",
  note: "Conceptual formula map from course research blueprint. Not an official AP sheet.",
  items: [
    {
      title: "Descriptive",
      body: "Mean, SD, z = (x − μ)/σ; residual = y − ŷ",
    },
    {
      title: "Probability",
      body: "Complement, addition, multiplication; binomial / geometric mean–variance cues",
    },
    {
      title: "Sampling",
      body: "SE for p̂ and x̄; CLT intuition for sample means",
    },
    {
      title: "Inference templates",
      body: "Interval = estimate ± critical·SE; test statistic = (estimate − null)/SE",
    },
    {
      title: "Chi-square / regression",
      body: "χ² = Σ(O−E)²/E; regression slope SE structure (conceptual)",
    },
  ],
};

const AP_PRECALC: ReferenceSheet = {
  examType: "AP_PRECALCULUS",
  title: "AP Precalculus formula outline",
  note: "Outline from course research. Not an official AP sheet.",
  items: [
    {
      title: "Polynomial / rational",
      body: "Factor–zero relationships; vertical / horizontal / slant asymptote cues",
    },
    {
      title: "Exp / log",
      body: "Inverse pair; change-of-base; growth/decay A·bᵗ",
    },
    {
      title: "Trig",
      body: "Unit-circle values; sinusoid A sin(B(θ−C))+D; basic identities",
    },
    {
      title: "Polar / parametric",
      body: "(r,θ) ↔ (x,y); parametric derivative intuition",
    },
    {
      title: "Vectors / matrices",
      body: "Components, magnitude, 2×2 multiply sketch",
    },
  ],
};

const AP_PHYSICS: ReferenceSheet = {
  examType: "AP_PHYSICS",
  title: "AP Physics equation & lab reminders",
  note: "Symbol / relation checklist. Prefer the official AP Physics equation sheet on exam day.",
  items: [
    {
      title: "Kinematics / dynamics",
      body: "v = v₀ + at; Δx = v₀t + ½at²; v² = v₀² + 2aΔx; ΣF = ma; F_f ≤ μN",
    },
    {
      title: "Energy / momentum",
      body: "K = ½mv²; U_g = mgh; W = F·d; p = mv; J = Δp = FΔt",
    },
    {
      title: "Rotation / waves (as applicable)",
      body: "τ = rF⊥; Iα; ω, α analogs; v = fλ; T = 1/f",
    },
    {
      title: "Circuits / fields (as applicable)",
      body: "V = IR; P = IV; series/parallel R; E = F/q; V = Ed (uniform)",
    },
    {
      title: "Lab checklist",
      body: "IV/DV, controls, uncertainty / percent error, linearization of graphs",
    },
  ],
};

const AP_CHEM: ReferenceSheet = {
  examType: "AP_CHEMISTRY",
  title: "AP Chemistry equations / constants outline",
  note: "From course research blueprint. Not the official AP Chemistry equations sheet.",
  items: [
    {
      title: "Gas / thermo",
      body: "PV = nRT; q = mcΔT; ΔH, ΔS, ΔG relationships (conceptual)",
    },
    {
      title: "Equilibrium",
      body: "K expressions; K_w; K_a/K_b; Henderson–Hasselbalch form",
    },
    {
      title: "Kinetics",
      body: "Rate-law forms; half-life cues for first-order",
    },
    {
      title: "Electrochemistry",
      body: "Cell potential relation to ΔG and K (outline)",
    },
    {
      title: "Constants",
      body: "R, Faraday (symbol-level), K_w at 25 °C",
    },
  ],
};

const AP_BIO: ReferenceSheet = {
  examType: "AP_BIOLOGY",
  title: "AP Biology formulas / constants outline",
  note: "From course research. Not an official AP Biology sheet.",
  items: [
    {
      title: "Statistics cues",
      body: "Mean, SD, SE; χ² = Σ(O−E)²/E",
    },
    {
      title: "Genetics",
      body: "Hardy–Weinberg p² + 2pq + q² = 1; p + q = 1",
    },
    {
      title: "Water potential",
      body: "Ψ = Ψ_s + Ψ_p (solute / pressure terms)",
    },
    {
      title: "Rates / conversions",
      body: "Surface-area relationships; metric conversions",
    },
    {
      title: "Energy / pH",
      body: "pH / H⁺ scale; primary productivity energy-flow sketch",
    },
  ],
};

const IB_MATH_AA: ReferenceSheet = {
  examType: "IB_MATH_AA",
  title: "IB Math AA formula booklet map",
  note: "Study map of booklet themes (AA SL/HL). Use the official IB formula booklet in exams.",
  items: [
    {
      title: "Formula booklet map",
      body: "Prioritize algebra, functions, trig, calculus sections you will annotate before Paper 1/2",
    },
    {
      title: "Derivative / integral basics",
      body: "Power/chain/product; definite integrals; area between curves",
    },
    {
      title: "Trig identities",
      body: "sin²+cos²=1; double-angle; compound-angle cues",
    },
    {
      title: "HL extras",
      body: "Complex numbers; vectors; Maclaurin / series (HL)",
    },
    {
      title: "Command terms",
      body: "Calculate / Find / Show that / Hence / Determine — match method depth to the verb",
    },
  ],
};

const IB_MATH_AI: ReferenceSheet = {
  examType: "IB_MATH_AI",
  title: "IB Math AI formula booklet map",
  note: "AI SL/HL study map. Use the official IB formula booklet in exams.",
  items: [
    {
      title: "Formula booklet AI",
      body: "Statistics, financial math, functions, and modeling tables — know where each lives",
    },
    {
      title: "Regression checklist",
      body: "Scatter → model choice → residuals / r / r² interpretation",
    },
    {
      title: "Hypothesis test flow",
      body: "H₀/H₁ → test → p-value → conclusion in context",
    },
    {
      title: "HL extras",
      body: "Matrices / transitions; graph theory basics; DE modeling (HL)",
    },
    {
      title: "Command terms",
      body: "Comment / Compare / Suggest / Justify — write in context, not only numbers",
    },
  ],
};

const IB_PHYSICS: ReferenceSheet = {
  examType: "IB_PHYSICS",
  title: "IB Physics data booklet cues",
  note: "Theme map for Physics SL/HL. Prefer the official IB data booklet.",
  items: [
    {
      title: "Kinematics",
      body: "SUVAT set; graphs of s–t / v–t / a–t",
    },
    {
      title: "Circuits",
      body: "Ohm; series/parallel; Kirchhoff loop/junction cues",
    },
    {
      title: "Waves",
      body: "v = fλ; intensity; superposition / interference path difference",
    },
    {
      title: "HL extras",
      body: "Field equations; quantum relations; SHM energy (HL)",
    },
    {
      title: "Command terms",
      body: "Define / Outline / Explain / Deduce — match definition vs derivation depth",
    },
  ],
};

const IB_CHEM: ReferenceSheet = {
  examType: "IB_CHEMISTRY",
  title: "IB Chemistry data booklet cues",
  note: "Theme map for Chemistry SL/HL. Prefer the official IB data booklet.",
  items: [
    {
      title: "Periodic trends",
      body: "Atomic radius, IE, electronegativity — direction and why",
    },
    {
      title: "Activity / ions",
      body: "Activity series; common ions and charge cues",
    },
    {
      title: "Equilibrium / acid–base",
      body: "K_c / K_a / K_b / pH; buffer qualitative behavior",
    },
    {
      title: "HL extras",
      body: "Born–Haber; mechanism arrows; buffer calculations (HL)",
    },
    {
      title: "Command terms",
      body: "State / Describe / Explain / Deduce — use equations where “calculate” appears",
    },
  ],
};

const IB_BIO: ReferenceSheet = {
  examType: "IB_BIOLOGY",
  title: "IB Biology reference cues",
  note: "Theme map for Biology SL/HL. Prefer official IB materials where provided.",
  items: [
    {
      title: "Cell / organelles",
      body: "Organelle map; membrane transport cues",
    },
    {
      title: "Gas exchange / pathways",
      body: "Breathing / circulation pathways; cladogram reading",
    },
    {
      title: "Stats",
      body: "Means, error bars; χ² critical-value idea",
    },
    {
      title: "HL extras",
      body: "Metabolism pathways; kidney / muscle HL detail",
    },
    {
      title: "Command terms",
      body: "List / Outline / Explain / Evaluate — diagrams earn marks when labeled",
    },
  ],
};

/** exam_type → sheet (aliases share a sheet). */
const SHEETS_BY_EXAM: Record<string, ReferenceSheet> = {
  SAT: SAT_SHEET,
  PSAT: SAT_SHEET,
  ACT: {
    ...SAT_SHEET,
    examType: "ACT",
    title: "ACT Math reference",
    note: "Common ACT Math formulas. Not an official ACT sheet.",
  },
  AP_CALCULUS_AB: { ...AP_CALC, examType: "AP_CALCULUS_AB" },
  AP_CALCULUS_BC: { ...AP_CALC, examType: "AP_CALCULUS_BC", title: "AP Calculus BC formula outline" },
  AP_STATISTICS: AP_STATS,
  AP_PRECALCULUS: AP_PRECALC,
  AP_PHYSICS: { ...AP_PHYSICS, examType: "AP_PHYSICS" },
  AP_PHYSICS_1: { ...AP_PHYSICS, examType: "AP_PHYSICS_1", title: "AP Physics 1 equation & lab reminders" },
  AP_PHYSICS_2: { ...AP_PHYSICS, examType: "AP_PHYSICS_2", title: "AP Physics 2 equation & lab reminders" },
  AP_PHYSICS_C_MECHANICS: {
    ...AP_PHYSICS,
    examType: "AP_PHYSICS_C_MECHANICS",
    title: "AP Physics C: Mechanics equation & lab reminders",
  },
  AP_PHYSICS_C_EM: {
    ...AP_PHYSICS,
    examType: "AP_PHYSICS_C_EM",
    title: "AP Physics C: E&M equation & lab reminders",
  },
  AP_CHEMISTRY: AP_CHEM,
  AP_BIOLOGY: AP_BIO,
  AP_ENVIRONMENTAL_SCIENCE: {
    examType: "AP_ENVIRONMENTAL_SCIENCE",
    title: "APES quantitative outline",
    note: "From course research. Not an official APES sheet.",
    items: [
      { title: "Dimensional analysis", body: "Metric prefixes; unit cancel through conversions" },
      { title: "Percent change / Rule of 70", body: "Percent change; doubling time ≈ 70/r" },
      { title: "Productivity", body: "GPP / NPP relationship sketch" },
      { title: "Population / toxicity cues", body: "Density, carrying capacity, LD₅₀ conceptual" },
    ],
  },
  IB_MATH_AA_SL: { ...IB_MATH_AA, examType: "IB_MATH_AA_SL" },
  IB_MATH_AA_HL: { ...IB_MATH_AA, examType: "IB_MATH_AA_HL", title: "IB Math AA HL formula booklet map" },
  IB_MATH_AI_SL: { ...IB_MATH_AI, examType: "IB_MATH_AI_SL" },
  IB_MATH_AI_HL: { ...IB_MATH_AI, examType: "IB_MATH_AI_HL", title: "IB Math AI HL formula booklet map" },
  IB_PHYSICS_SL: { ...IB_PHYSICS, examType: "IB_PHYSICS_SL" },
  IB_PHYSICS_HL: { ...IB_PHYSICS, examType: "IB_PHYSICS_HL", title: "IB Physics HL data booklet cues" },
  IB_CHEMISTRY_SL: { ...IB_CHEM, examType: "IB_CHEMISTRY_SL" },
  IB_CHEMISTRY_HL: { ...IB_CHEM, examType: "IB_CHEMISTRY_HL", title: "IB Chemistry HL data booklet cues" },
  IB_BIOLOGY_SL: { ...IB_BIO, examType: "IB_BIOLOGY_SL" },
  IB_BIOLOGY_HL: { ...IB_BIO, examType: "IB_BIOLOGY_HL", title: "IB Biology HL reference cues" },
};

/** True when this exam_type has a dedicated non-SAT formula / command-term sheet. */
export function hasReferenceSheet(examType: string | null | undefined): boolean {
  if (!examType) return false;
  const key = examType.toUpperCase();
  if (key === "SAT" || key === "PSAT" || key === "ACT") return true;
  return Object.prototype.hasOwnProperty.call(SHEETS_BY_EXAM, key);
}

/**
 * Whether ExamShell should show calculator + reference tools.
 * Math sections always; AP/IB STEM with a sheet even when section ≠ "math".
 */
export function showExamStemTools(
  section: "reading_writing" | "math",
  examType: string | null | undefined,
): boolean {
  if (section === "math") return true;
  if (!examType) return false;
  const key = examType.toUpperCase();
  if (key === "SAT" || key === "PSAT" || key === "ACT") return false;
  return hasReferenceSheet(key);
}

/** Resolve sheet content; falls back to SAT math formulas. */
export function getReferenceSheet(
  examType: string | null | undefined,
): ReferenceSheet {
  if (!examType) return SAT_SHEET;
  const key = examType.toUpperCase();
  return SHEETS_BY_EXAM[key] ?? SAT_SHEET;
}

/** Normalize blueprint `reference_sheet` / outline into items (for tooling / future loaders). */
export function itemsFromBlueprintReference(
  raw: unknown,
): ReferenceSheetItem[] | null {
  if (raw == null) return null;
  if (Array.isArray(raw)) {
    const items = raw
      .filter((x): x is string => typeof x === "string" && x.trim().length > 0)
      .map((line) => ({ title: line.split(":")[0]?.trim() || "Topic", body: line }));
    return items.length ? items : null;
  }
  if (typeof raw !== "object") return null;
  const obj = raw as Record<string, unknown>;
  if (obj.enabled === false) return null;
  const outline = obj.outline;
  if (Array.isArray(outline)) {
    return itemsFromBlueprintReference(outline);
  }
  const sections = obj.sections;
  if (Array.isArray(sections)) {
    return itemsFromBlueprintReference(sections);
  }
  return null;
}
