/**
 * Side-effect import hub for self-registering packs.
 * New subjects add one import line here only (not per-lab edits).
 */
import "@/sims/physics";

export { getSim, listSimIds, listSims, registerSim } from "./registry";
