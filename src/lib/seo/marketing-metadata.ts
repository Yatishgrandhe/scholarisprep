import type { Metadata } from "next";
import { getAppUrl } from "@/lib/env";

const SITE_NAME = "Scholaris";

type MarketingMetadataInput = {
  title: string;
  description: string;
  path: string;
};

export function createMarketingMetadata({
  title,
  description,
  path,
}: MarketingMetadataInput): Metadata {
  const baseUrl = getAppUrl();
  const normalizedPath = path.startsWith("/") ? path : `/${path}`;
  const url = normalizedPath === "/" ? baseUrl : `${baseUrl}${normalizedPath}`;
  const ogTitle = title === SITE_NAME ? title : `${title} | ${SITE_NAME}`;

  return {
    title,
    description,
    alternates: {
      canonical: url,
    },
    openGraph: {
      title: ogTitle,
      description,
      url,
      siteName: SITE_NAME,
      type: "website",
      locale: "en_US",
    },
    twitter: {
      card: "summary_large_image",
      title: ogTitle,
      description,
    },
  };
}
