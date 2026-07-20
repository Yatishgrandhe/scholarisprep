/** Precomputed SHM samples: x = A cos(ωt), a = −ω²x over one period. */

export type ShmPoint = {
  t: number;
  x: number;
  a: number;
};

export function buildShmSeries(
  omega = 1.4,
  amplitude = 1,
  samples = 96,
): ShmPoint[] {
  const points: ShmPoint[] = [];
  const period = (2 * Math.PI) / omega;
  for (let i = 0; i <= samples; i++) {
    const t = (i / samples) * period;
    const x = amplitude * Math.cos(omega * t);
    const a = -(omega * omega) * x;
    points.push({
      t: Number(t.toFixed(3)),
      x: Number(x.toFixed(4)),
      a: Number(a.toFixed(4)),
    });
  }
  return points;
}
