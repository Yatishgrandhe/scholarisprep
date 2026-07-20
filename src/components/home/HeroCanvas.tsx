"use client";

import { useMemo, useRef } from "react";
import { Canvas, useFrame } from "@react-three/fiber";
import * as THREE from "three";

const PARTICLE_COUNT = 500;
const FIELD_RADIUS = 6;

function seededRandom(seed: number) {
  let state = seed;
  return () => {
    state = (state * 1664525 + 1013904223) % 4294967296;
    return state / 4294967296;
  };
}

function KnowledgeField() {
  const pointsRef = useRef<THREE.Points>(null);
  const linesRef = useRef<THREE.LineSegments>(null);

  const { positions, linePositions } = useMemo(() => {
    const rand = seededRandom(42);
    const pos = new Float32Array(PARTICLE_COUNT * 3);
    const nodes: THREE.Vector3[] = [];

    for (let i = 0; i < PARTICLE_COUNT; i++) {
      // Spherical shell distribution for an orbit-like cloud.
      const theta = rand() * Math.PI * 2;
      const phi = Math.acos(2 * rand() - 1);
      const r = FIELD_RADIUS * (0.55 + 0.45 * rand());
      const x = r * Math.sin(phi) * Math.cos(theta);
      const y = r * Math.sin(phi) * Math.sin(theta) * 0.6;
      const z = r * Math.cos(phi);
      pos[i * 3] = x;
      pos[i * 3 + 1] = y;
      pos[i * 3 + 2] = z;
      if (i < 80) nodes.push(new THREE.Vector3(x, y, z));
    }

    // Connect nearby "knowledge graph" nodes.
    const lines: number[] = [];
    for (let i = 0; i < nodes.length; i++) {
      for (let j = i + 1; j < nodes.length; j++) {
        if (nodes[i]!.distanceTo(nodes[j]!) < 2.2) {
          lines.push(
            nodes[i]!.x, nodes[i]!.y, nodes[i]!.z,
            nodes[j]!.x, nodes[j]!.y, nodes[j]!.z,
          );
        }
      }
    }

    return {
      positions: pos,
      linePositions: new Float32Array(lines),
    };
  }, []);

  useFrame(({ clock, pointer }) => {
    const t = clock.getElapsedTime();
    const targetX = pointer.x * 0.12;
    const targetY = pointer.y * 0.08;

    if (pointsRef.current) {
      pointsRef.current.rotation.y = t * 0.04 + targetX;
      pointsRef.current.rotation.x =
        Math.sin(t * 0.1) * 0.05 - targetY;
    }
    if (linesRef.current) {
      linesRef.current.rotation.y = t * 0.04 + targetX;
      linesRef.current.rotation.x =
        Math.sin(t * 0.1) * 0.05 - targetY;
    }
  });

  return (
    <group>
      <points ref={pointsRef}>
        <bufferGeometry>
          <bufferAttribute
            attach="attributes-position"
            args={[positions, 3]}
          />
        </bufferGeometry>
        <pointsMaterial
          size={0.045}
          color="#5b8def"
          transparent
          opacity={0.85}
          sizeAttenuation
          depthWrite={false}
        />
      </points>
      <lineSegments ref={linesRef}>
        <bufferGeometry>
          <bufferAttribute
            attach="attributes-position"
            args={[linePositions, 3]}
          />
        </bufferGeometry>
        <lineBasicMaterial
          color="#7dd3fc"
          transparent
          opacity={0.18}
          depthWrite={false}
        />
      </lineSegments>
    </group>
  );
}

/**
 * Marketing-only WebGL background: a slowly orbiting knowledge-graph
 * particle field. Never imported on practice or dashboard routes.
 */
export default function HeroCanvas() {
  return (
    <Canvas
      camera={{ position: [0, 0, 9], fov: 50 }}
      dpr={[1, 1.75]}
      gl={{ antialias: true, alpha: true, powerPreference: "low-power" }}
      style={{ position: "absolute", inset: 0, pointerEvents: "none" }}
      aria-hidden
    >
      <KnowledgeField />
    </Canvas>
  );
}
