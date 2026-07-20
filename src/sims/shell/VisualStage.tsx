"use client";

import { Suspense, useCallback, useMemo, useState, type ReactNode } from "react";
import { Canvas } from "@react-three/fiber";
import {
  AdaptiveDpr,
  ContactShadows,
  Environment,
  PerformanceMonitor,
} from "@react-three/drei";
import { ACESFilmicToneMapping } from "three";
import type { VisualTier } from "@/sims/contracts";
import styles from "./SimShell.module.css";

type Props = {
  children: ReactNode;
  /** Force a tier; otherwise PerformanceMonitor may step down. */
  initialTier?: VisualTier;
  className?: string;
  /** Called when WebGL context is lost — parent should fall back to 2D. */
  onContextLost?: () => void;
};

const TIER_ORDER: VisualTier[] = ["cinematic", "standard", "lite"];

function stageIndex(tier: VisualTier): number {
  return TIER_ORDER.indexOf(tier);
}

/**
 * Shared R3F staging: ACES + Environment + ContactShadows + PerformanceMonitor.
 * No scene-wide bloom by default. Labs only author domain meshes as children.
 */
export function VisualStage({
  children,
  initialTier = "standard",
  className,
  onContextLost,
}: Props) {
  const [tier, setTier] = useState<VisualTier>(initialTier);
  const prefersReduced =
    typeof window !== "undefined" &&
    window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  const effective: VisualTier = prefersReduced
    ? tier === "cinematic"
      ? "standard"
      : tier
    : tier;

  const onDecline = useCallback(() => {
    setTier((current) => {
      const i = stageIndex(current);
      return TIER_ORDER[Math.min(i + 1, TIER_ORDER.length - 1)]!;
    });
  }, []);

  const onIncline = useCallback(() => {
    setTier((current) => {
      const i = stageIndex(current);
      const floor = stageIndex(initialTier);
      return TIER_ORDER[Math.max(i - 1, floor)]!;
    });
  }, [initialTier]);

  const dpr = useMemo(() => {
    if (effective === "lite") return 1;
    if (effective === "standard") return [1, 1.5] as [number, number];
    return [1, 2] as [number, number];
  }, [effective]);

  return (
    <div className={`${styles.stage} ${className ?? ""}`}>
      <span className={styles.tierChip} aria-live="polite">
        {effective}
      </span>
      <Canvas
        className={styles.canvas}
        dpr={dpr}
        gl={{
          antialias: effective !== "lite",
          powerPreference: effective === "lite" ? "low-power" : "high-performance",
          toneMappingExposure: 1.05,
        }}
        onCreated={({ gl }) => {
          gl.toneMapping = ACESFilmicToneMapping;
          const canvas = gl.domElement;
          const handleLost = (e: Event) => {
            e.preventDefault();
            onContextLost?.();
          };
          canvas.addEventListener("webglcontextlost", handleLost, false);
        }}
        camera={{ position: [0, 1.4, 4.2], fov: 42, near: 0.1, far: 80 }}
        frameloop={effective === "lite" ? "demand" : "always"}
      >
        <color attach="background" args={["#0b1220"]} />
        <PerformanceMonitor
          onDecline={onDecline}
          onIncline={effective === "cinematic" ? undefined : onIncline}
        />
        <AdaptiveDpr pixelated={effective === "lite"} />
        <ambientLight intensity={effective === "lite" ? 0.55 : 0.28} />
        <directionalLight
          position={[4, 8, 3]}
          intensity={effective === "lite" ? 0.9 : 1.15}
          castShadow={false}
        />
        {effective === "lite" ? (
          <hemisphereLight args={["#dbeafe", "#1e293b", 0.45]} />
        ) : (
          <Suspense fallback={null}>
            <Environment preset="studio" environmentIntensity={0.55} />
          </Suspense>
        )}
        {children}
        {effective !== "lite" ? (
          <ContactShadows
            position={[0, -0.01, 0]}
            opacity={0.45}
            scale={12}
            blur={2.4}
            far={4}
          />
        ) : null}
      </Canvas>
    </div>
  );
}
