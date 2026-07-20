/**
 * Server-side WebP resize pipeline for Free Studying note images.
 * Master: long edge ≤ 2048, q≈80. Variants: thumb 320 · card 800 · full 1600–2048.
 */

import sharp from "sharp";

export type ImageVariantBuffers = {
  master: Buffer;
  thumb: Buffer;
  card: Buffer;
  full: Buffer;
  width: number;
  height: number;
  masterBytes: number;
};

async function encodeVariant(
  input: Buffer,
  maxEdge: number,
  quality: number,
): Promise<{ buffer: Buffer; width: number; height: number }> {
  const pipeline = sharp(input)
    .rotate()
    .resize({
      width: maxEdge,
      height: maxEdge,
      fit: "inside",
      withoutEnlargement: true,
    })
    .webp({ quality, effort: 4 });

  const { data, info } = await pipeline.toBuffer({ resolveWithObject: true });
  return {
    buffer: data,
    width: info.width,
    height: info.height,
  };
}

/**
 * Build master + display variants from an uploaded image buffer.
 * Prefer q=85 for handwriting-heavy photos (pass handwriting=true).
 */
export async function buildNoteImageVariants(
  input: Buffer,
  options?: { handwriting?: boolean },
): Promise<ImageVariantBuffers> {
  const quality = options?.handwriting ? 85 : 80;
  const master = await encodeVariant(input, 2048, quality);
  const full = await encodeVariant(master.buffer, 1600, quality);
  const card = await encodeVariant(master.buffer, 800, quality);
  const thumb = await encodeVariant(master.buffer, 320, Math.min(quality, 78));

  return {
    master: master.buffer,
    full: full.buffer,
    card: card.buffer,
    thumb: thumb.buffer,
    width: master.width,
    height: master.height,
    masterBytes: master.buffer.byteLength,
  };
}
