import { registerSim } from "@/sims/catalog/registry";
import { shmManifestBase } from "./model";

registerSim({
  ...shmManifestBase,
  load: () => import("./ShmLab"),
});
