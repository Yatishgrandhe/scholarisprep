"use client";

import { useMemo, useState } from "react";
import { Check } from "@phosphor-icons/react";
import { useAuth } from "@/hooks/useAuth";
import { ensureFreshSession } from "@/lib/supabase/ensureSession";
import { getProfileAvatarInitial } from "@/lib/dashboard/userDisplay";
import styles from "./AvatarPicker.module.css";

// OnePrep-style preset avatars. We store the chosen avatar as a plain image URL
// on profiles.avatar_url, so no upload/storage infrastructure is required — the
// images are generated, deterministic, and rendered with a normal <img>.
const AVATAR_STYLES = [
  "fun-emoji",
  "bottts-neutral",
  "thumbs",
  "adventurer",
  "shapes",
  "icons",
] as const;

const SEEDS = [
  "Scho",
  "Comet",
  "Maple",
  "Pixel",
  "Nova",
  "Juno",
  "Echo",
  "Sage",
  "Atlas",
  "Wren",
  "Cleo",
  "Fox",
];

function avatarUrl(style: string, seed: string): string {
  return `https://api.dicebear.com/9.x/${style}/svg?seed=${encodeURIComponent(
    seed,
  )}&radius=50&backgroundColor=transparent`;
}

const PRESET_AVATARS: string[] = AVATAR_STYLES.flatMap((style) =>
  SEEDS.slice(0, 6).map((seed) => avatarUrl(style, seed)),
);

export function AvatarPicker() {
  const { user, supabase, displayAvatarUrl, displayEmail, refreshProfile } =
    useAuth();
  const [selected, setSelected] = useState<string | null>(displayAvatarUrl);
  const [saving, setSaving] = useState<string | null>(null);
  const [message, setMessage] = useState<{
    tone: "ok" | "error";
    text: string;
  } | null>(null);

  const initial = useMemo(
    () => getProfileAvatarInitial(displayEmail || null),
    [displayEmail],
  );

  const handleSelect = async (url: string) => {
    if (!user) return;
    setSelected(url);
    setSaving(url);
    setMessage(null);
    try {
      await ensureFreshSession(supabase);
      const { error } = await supabase
        .from("profiles")
        .update({ avatar_url: url })
        .eq("id", user.id);
      if (error) {
        setMessage({ tone: "error", text: "Could not save your avatar." });
        return;
      }
      await refreshProfile(user.id);
      setMessage({ tone: "ok", text: "Avatar updated." });
    } catch {
      setMessage({ tone: "error", text: "Could not save your avatar." });
    } finally {
      setSaving(null);
    }
  };

  const current = selected ?? displayAvatarUrl;

  return (
    <div className={styles.wrap}>
      <div className={styles.currentRow}>
        <div className={styles.current}>
          {current ? (
            // eslint-disable-next-line @next/next/no-img-element
            <img src={current} alt="Your avatar" className={styles.currentImg} />
          ) : (
            <span className={styles.currentInitial}>{initial}</span>
          )}
        </div>
        <div className={styles.currentMeta}>
          <p className={styles.currentTitle}>Choose an avatar</p>
          <p className={styles.currentSub}>
            Pick one to show across your dashboard.
          </p>
        </div>
      </div>

      <div className={styles.grid} role="radiogroup" aria-label="Avatar options">
        {PRESET_AVATARS.map((url) => {
          const isActive = current === url;
          return (
            <button
              key={url}
              type="button"
              role="radio"
              aria-checked={isActive}
              aria-label="Select avatar"
              className={`${styles.tile} ${isActive ? styles.tileActive : ""}`}
              onClick={() => handleSelect(url)}
              disabled={Boolean(saving)}
            >
              {/* eslint-disable-next-line @next/next/no-img-element */}
              <img src={url} alt="" className={styles.tileImg} loading="lazy" />
              {isActive ? (
                <span className={styles.tileCheck} aria-hidden>
                  <Check size={12} weight="bold" />
                </span>
              ) : null}
            </button>
          );
        })}
      </div>

      {message ? (
        <p
          className={`${styles.message} ${
            message.tone === "ok" ? styles.messageOk : styles.messageError
          }`}
        >
          {message.text}
        </p>
      ) : null}
    </div>
  );
}
