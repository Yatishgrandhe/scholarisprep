import { registerSim } from "@/sims/catalog/registry";
import { workEnergyManifestBase } from "./model";

registerSim({
  ...workEnergyManifestBase,
  load: () => import("./WorkEnergyLab"),
});
