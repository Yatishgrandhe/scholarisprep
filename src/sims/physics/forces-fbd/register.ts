import { registerSim } from "@/sims/catalog/registry";
import { forcesFbdManifestBase } from "./model";

registerSim({
  ...forcesFbdManifestBase,
  load: () => import("./ForcesFbdLab"),
});
