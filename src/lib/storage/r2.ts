/**
 * Cloudflare R2 (S3-compatible) helpers for Free Studying note images.
 * Graceful when R2_* env is missing — callers should surface a clear message.
 */

import {
  GetObjectCommand,
  PutObjectCommand,
  S3Client,
} from "@aws-sdk/client-s3";
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";

export type R2Config = {
  accountId: string;
  accessKeyId: string;
  secretAccessKey: string;
  bucketName: string;
  endpoint: string;
};

function readEnv(name: string): string | undefined {
  const value = process.env[name]?.trim();
  return value && value.length > 0 ? value : undefined;
}

export function getR2Config(): R2Config | null {
  const accountId = readEnv("R2_ACCOUNT_ID");
  const accessKeyId = readEnv("R2_ACCESS_KEY_ID");
  const secretAccessKey = readEnv("R2_SECRET_ACCESS_KEY");
  const bucketName = readEnv("R2_BUCKET_NAME");
  if (!accountId || !accessKeyId || !secretAccessKey || !bucketName) {
    return null;
  }
  return {
    accountId,
    accessKeyId,
    secretAccessKey,
    bucketName,
    endpoint: `https://${accountId}.r2.cloudflarestorage.com`,
  };
}

export function isR2Configured(): boolean {
  return getR2Config() !== null;
}

let cachedClient: S3Client | null = null;

export function getR2Client(): S3Client | null {
  const config = getR2Config();
  if (!config) return null;
  if (cachedClient) return cachedClient;
  cachedClient = new S3Client({
    region: "auto",
    endpoint: config.endpoint,
    credentials: {
      accessKeyId: config.accessKeyId,
      secretAccessKey: config.secretAccessKey,
    },
  });
  return cachedClient;
}

export const R2_NOT_CONFIGURED =
  "Image storage is not configured. Set R2_ACCOUNT_ID, R2_ACCESS_KEY_ID, R2_SECRET_ACCESS_KEY, and R2_BUCKET_NAME.";

export async function createR2UploadUrl(opts: {
  objectKey: string;
  contentType: string;
  expiresInSeconds?: number;
}): Promise<{ url: string; bucket: string } | { error: string }> {
  const config = getR2Config();
  const client = getR2Client();
  if (!config || !client) return { error: R2_NOT_CONFIGURED };

  const command = new PutObjectCommand({
    Bucket: config.bucketName,
    Key: opts.objectKey,
    ContentType: opts.contentType,
  });
  const url = await getSignedUrl(client, command, {
    expiresIn: opts.expiresInSeconds ?? 90,
  });
  return { url, bucket: config.bucketName };
}

export async function createR2DownloadUrl(opts: {
  objectKey: string;
  expiresInSeconds?: number;
}): Promise<{ url: string } | { error: string }> {
  const config = getR2Config();
  const client = getR2Client();
  if (!config || !client) return { error: R2_NOT_CONFIGURED };

  const command = new GetObjectCommand({
    Bucket: config.bucketName,
    Key: opts.objectKey,
  });
  const url = await getSignedUrl(client, command, {
    expiresIn: opts.expiresInSeconds ?? 600,
  });
  return { url };
}

export type NoteImageVariant = "master" | "thumb" | "card" | "full";

export function noteImageObjectKey(
  userId: string,
  noteId: string,
  assetId: string,
  variant: NoteImageVariant,
): string {
  return `notes/${userId}/${noteId}/${assetId}-${variant}.webp`;
}
