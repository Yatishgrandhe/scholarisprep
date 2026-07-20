"use client";

import { useSyncExternalStore } from "react";
import type { SimKernel } from "@/sims/kernel";
import type { KernelSnapshot } from "@/sims/kernel";

const EMPTY: KernelSnapshot = {
  params: {},
  prediction: null,
  outcome: null,
  residual: null,
  running: false,
  time: 0,
  fidelity: "ideal",
};

export function useSimKernel(kernel: SimKernel): KernelSnapshot {
  return useSyncExternalStore(
    (onStoreChange) => kernel.subscribe(onStoreChange),
    () => kernel.getSnapshot(),
    () => EMPTY,
  );
}
