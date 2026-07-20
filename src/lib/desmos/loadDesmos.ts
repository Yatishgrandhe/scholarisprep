/**
 * Desmos calculator loader (rebuilt from scratch).
 *
 * Loads the official Desmos calculator API <script> exactly once and exposes
 * typed factories for the graphing / scientific / four-function calculators the
 * Digital SAT offers. The loader is idempotent and safe to call from several
 * components at the same time — concurrent callers share one in-flight promise.
 */

const DESMOS_API_VERSION = "1.11";
const SCRIPT_ID = "desmos-calculator-api";

/**
 * Desmos's publicly documented demo API key (https://www.desmos.com/api).
 * Used as a fallback so the calculator works out of the box in every
 * environment. For production you should register your domain and set
 * NEXT_PUBLIC_DESMOS_API_KEY to your own free key (the demo key is rate limited
 * and intended for evaluation only).
 */
const DESMOS_DEMO_API_KEY = "dcb31709b452b1cf9dc26972add0fda6";

export type DesmosCalculatorType = "graphing" | "scientific" | "four_function";

export type DesmosCalculatorInstance = {
  destroy: () => void;
  resize: () => void;
};

type DesmosFactory = (
  element: HTMLElement,
  options?: Record<string, unknown>,
) => DesmosCalculatorInstance;

export type DesmosApi = {
  GraphingCalculator: DesmosFactory;
  ScientificCalculator: DesmosFactory;
  FourFunctionCalculator: DesmosFactory;
};

declare global {
  interface Window {
    Desmos?: DesmosApi;
  }
}

let warnedAboutDemoKey = false;

/** Resolve the API key: the configured key, or the public demo key as fallback. */
export function getDesmosApiKey(): string {
  const configured = process.env.NEXT_PUBLIC_DESMOS_API_KEY?.trim();
  if (configured) return configured;
  if (!warnedAboutDemoKey && typeof console !== "undefined") {
    warnedAboutDemoKey = true;
    console.warn(
      "[Desmos] NEXT_PUBLIC_DESMOS_API_KEY is not set — using the public demo key. " +
        "Register a free key at https://www.desmos.com/api for production use.",
    );
  }
  return DESMOS_DEMO_API_KEY;
}

/**
 * The calculator is always usable because we fall back to the demo key. Kept as
 * a function so callers can still branch on it if a stricter policy is wanted.
 */
export function isDesmosConfigured(): boolean {
  return true;
}

let loadPromise: Promise<DesmosApi> | null = null;

/** Load (or reuse) the Desmos API script and resolve with the global `Desmos`. */
export function loadDesmosApi(): Promise<DesmosApi> {
  if (typeof window === "undefined") {
    return Promise.reject(new Error("Desmos can only load in the browser"));
  }
  if (window.Desmos) return Promise.resolve(window.Desmos);
  if (loadPromise) return loadPromise;

  loadPromise = new Promise<DesmosApi>((resolve, reject) => {
    const settle = () => {
      if (window.Desmos) resolve(window.Desmos);
      else reject(new Error("Desmos API loaded but did not initialize"));
    };
    const fail = (message: string) => {
      // Allow a later retry by clearing the cached promise.
      loadPromise = null;
      reject(new Error(message));
    };

    const existing = document.getElementById(
      SCRIPT_ID,
    ) as HTMLScriptElement | null;
    if (existing) {
      existing.addEventListener("load", settle);
      existing.addEventListener("error", () =>
        fail("Failed to load the Desmos API script"),
      );
      return;
    }

    const script = document.createElement("script");
    script.id = SCRIPT_ID;
    script.async = true;
    script.src = `https://www.desmos.com/api/v${DESMOS_API_VERSION}/calculator.js?apiKey=${encodeURIComponent(
      getDesmosApiKey(),
    )}`;
    script.onload = settle;
    script.onerror = () => fail("Failed to load the Desmos API script");
    document.head.appendChild(script);
  });

  return loadPromise;
}

const GRAPHING_OPTIONS: Record<string, unknown> = {
  expressions: true,
  settingsMenu: true,
  zoomButtons: true,
  expressionsTopbar: true,
  keypad: true,
  graphpaper: true,
  border: false,
  fontSize: 16,
  autosize: true,
};

const SCIENTIFIC_OPTIONS: Record<string, unknown> = {
  settingsMenu: false,
  border: false,
  fontSize: 16,
  autosize: true,
};

const FOUR_FUNCTION_OPTIONS: Record<string, unknown> = {
  border: false,
  fontSize: 16,
  autosize: true,
};

export function getDesmosOptionsForType(
  type: DesmosCalculatorType,
): Record<string, unknown> {
  if (type === "scientific") return SCIENTIFIC_OPTIONS;
  if (type === "four_function") return FOUR_FUNCTION_OPTIONS;
  return GRAPHING_OPTIONS;
}

/** Instantiate the requested calculator type on `element`. */
export function createDesmosCalculator(
  desmos: DesmosApi,
  element: HTMLElement,
  type: DesmosCalculatorType,
): DesmosCalculatorInstance {
  const options = getDesmosOptionsForType(type);
  if (type === "scientific") return desmos.ScientificCalculator(element, options);
  if (type === "four_function")
    return desmos.FourFunctionCalculator(element, options);
  return desmos.GraphingCalculator(element, options);
}

export function calculatorTypeLabel(type: DesmosCalculatorType): string {
  if (type === "scientific") return "Scientific Calculator";
  if (type === "four_function") return "Basic Calculator";
  return "Graphing Calculator";
}
