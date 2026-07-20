import "@/sims/catalog";
import { listSims } from "@/sims/catalog";
import type { SimManifestMeta } from "@/sims/contracts";
import { SimsCatalog } from "@/components/sims/SimsCatalog";

function toMeta(sim: ReturnType<typeof listSims>[number]): SimManifestMeta {
  const { load: _load, ...meta } = sim;
  return meta;
}

/** Catalog content inside LabsShell (layout owns chrome + metadata). */
export default function StemLabsCatalogPage() {
  const sims = listSims().map(toMeta);
  return <SimsCatalog sims={sims} />;
}
