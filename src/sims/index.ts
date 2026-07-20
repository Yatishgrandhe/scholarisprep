/**
 * Scholaris STEM Lab — public entrypoints.
 * Packs self-register under src/sims/<subject>/; do not list lab IDs here.
 */
export * from "./contracts";
export * from "./kernel";
export * from "./shell";
export { getSim, listSimIds, listSims, registerSim } from "./catalog";
