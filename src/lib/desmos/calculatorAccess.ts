import type { CalculatorPolicy } from "@/lib/subjectContext";
import { isMathSection } from "@/lib/question/isMathSection";
import type { DesmosCalculatorType } from "./loadDesmos";

export type CalculatorLayout = {
  x: number;
  y: number;
  width: number;
  height: number;
  minimized: boolean;
};

export const DEFAULT_CALCULATOR_LAYOUT: CalculatorLayout = {
  x: 24,
  y: 80,
  width: 420,
  height: 520,
  minimized: false,
};

export function mapPolicyToCalculatorType(
  policy: CalculatorPolicy | undefined,
): DesmosCalculatorType {
  switch (policy) {
    case "scientific":
      return "scientific";
    case "graphing":
    case "always":
      return "graphing";
    case "none":
    default:
      return "graphing";
  }
}

/** Whether the calculator control should be available for this question. */
export function canUseCalculator(params: {
  calculatorAllowed?: boolean;
  section?: string | null;
  calculatorPolicy?: CalculatorPolicy;
  forceMathSection?: boolean;
}): boolean {
  const { calculatorAllowed, section, calculatorPolicy, forceMathSection } =
    params;

  if (calculatorAllowed === true) return true;
  if (calculatorPolicy === "always") return true;

  const math = forceMathSection || isMathSection(section);
  if (!math) return false;

  if (calculatorPolicy === "none") return false;
  return calculatorPolicy === "graphing" || calculatorPolicy === "scientific";
}

export function resolveCalculatorType(params: {
  calculatorAllowed?: boolean;
  section?: string | null;
  calculatorPolicy?: CalculatorPolicy;
}): DesmosCalculatorType {
  if (params.calculatorPolicy && params.calculatorPolicy !== "none") {
    return mapPolicyToCalculatorType(params.calculatorPolicy);
  }
  if (params.calculatorAllowed && isMathSection(params.section)) {
    return "graphing";
  }
  return mapPolicyToCalculatorType(params.calculatorPolicy);
}
