import { registerSim } from "@/sims/catalog/registry";
import { projectileManifestBase } from "./model";

registerSim({
  ...projectileManifestBase,
  load: () => import("./ProjectileLab"),
});
