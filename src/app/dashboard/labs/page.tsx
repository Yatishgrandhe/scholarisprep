import type { Metadata } from "next";
import "@/sims/catalog";
import { listSims } from "@/sims/catalog";
import type { SimManifestMeta } from "@/sims/contracts";
import { SimsCatalog } from "@/components/sims/SimsCatalog";

export const metadata: Metadata = {
  title: "STEM Labs",
};

function toMeta(sim: ReturnType<typeof listSims>[number]): SimManifestMeta {
  const { load: _load, ...meta } = sim;
  return meta;
}

export default function StemLabsCatalogPage() {
  const sims = listSims().map(toMeta);
  return <SimsCatalog sims={sims} />;
}
