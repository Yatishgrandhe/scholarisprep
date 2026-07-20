import { registerSim } from "@/sims/catalog/registry";
import { ucmManifestBase } from "./model";

registerSim({
  ...ucmManifestBase,
  load: () => import("./UcmLab"),
});
