/** Quick RK4 smoke — no build required. */
function rk4Step(f, t, y, dt) {
  const n = y.length;
  const k1 = new Float64Array(n);
  const k2 = new Float64Array(n);
  const k3 = new Float64Array(n);
  const k4 = new Float64Array(n);
  const tmp = new Float64Array(n);
  f(t, y, k1);
  for (let i = 0; i < n; i++) tmp[i] = y[i] + 0.5 * dt * k1[i];
  f(t + 0.5 * dt, tmp, k2);
  for (let i = 0; i < n; i++) tmp[i] = y[i] + 0.5 * dt * k2[i];
  f(t + 0.5 * dt, tmp, k3);
  for (let i = 0; i < n; i++) tmp[i] = y[i] + dt * k3[i];
  f(t + dt, tmp, k4);
  for (let i = 0; i < n; i++) {
    y[i] = y[i] + (dt / 6) * (k1[i] + 2 * k2[i] + 2 * k3[i] + k4[i]);
  }
}

const omega = 2;
const w2 = omega * omega;
const f = (_t, y, dydt) => {
  dydt[0] = y[1];
  dydt[1] = -w2 * y[0];
};

const y = new Float64Array([1, 0]);
const dt = 1 / 120;
const tEnd = (2 * Math.PI) / omega;
let t = 0;
while (t < tEnd - 1e-15) {
  const step = Math.min(dt, tEnd - t);
  rk4Step(f, t, y, step);
  t += step;
}

if (Math.abs(y[0] - 1) > 2e-3) {
  console.error("fail x", y[0]);
  process.exit(1);
}
if (Math.abs(y[1]) > 2e-2) {
  console.error("fail v", y[1]);
  process.exit(1);
}
console.log("ode rk4 smoke ok", { x: y[0], v: y[1] });
