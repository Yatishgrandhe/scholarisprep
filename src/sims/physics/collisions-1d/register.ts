import { registerSim } from "@/sims/catalog/registry";
import { collisionsManifestBase } from "./model";

registerSim({
  ...collisionsManifestBase,
  load: () => import("./CollisionsLab"),
});
