# Whiteboard Studio — Product & Engineering Contract

**Status:** Frozen for multi-agent delivery  
**Route:** `/dashboard/whiteboard`  
**Product name:** Whiteboard Studio (immersive, Stitch-like full-page)  
**Date:** 2026-07-20

---

## 1. Product intent

Scholaris Whiteboard Studio is a **full-page immersive study surface**: ink-first canvas, floating chrome, and an interactive AI chat dock (text + voice) with OCR → Ask Scho. It is **not** a Free Studying mode tab and **not** a Miro/Excalidraw clone.

### Differentiators (Scholaris, not Miro)

| Miro / generic board | Scholaris Whiteboard Studio |
| --- | --- |
| Infinite sticky notes, frames, collab cursors | Single study canvas; tutoring is the job |
| Object toolbar sprawl | Floating minimal tools (pen / eraser / ink / width / undo / clear) |
| Comments threads on shapes | Chat dock: text + voice ↔ tutor, grounded on board OCR |
| Templates & frames | Paper + cobalt instrument chrome; empty-state invite to draw |
| Multiplayer presence | Solo learner + Scho co-pilot |

**Stitch-like** means: edge-to-edge studio, canvas dominates the viewport, chrome floats over the board, no mode-tab strip, chat is a dock not a sidebar takeover.

---

## 2. Route & IA (non-negotiable)

| Rule | Detail |
| --- | --- |
| URL | `/dashboard/whiteboard` only |
| Free Studying tabs | **None** on this page — do not mount `FreeStudyHub`, do not show Tutor / Whiteboard / PDF / Voice / Notes / Sims tabs |
| Dashboard shell | Keep global dashboard nav (sidebar / mobile tab bar). Studio fills the **main content** region full-bleed within that shell |
| Free Studying hub | Remains at `/dashboard/free-study`. Hub may deep-link here later; this contract does **not** edit Free Study CSS/hub |
| Nav (deferred) | Other agents may add sidebar/nav entry; route owner does not require it for v1 shell |

**Ownership boundary:** Do **not** edit `FreeStudyHub.tsx`, `free-study.module.css`, or Free Studying mode wiring for this feature.

---

## 3. Layout composition (first viewport)

```
┌─────────────────────────────────────────────────────────────┐
│ [Dashboard chrome — sidebar / topbar outside studio]        │
│ ┌─────────────────────────────────────────────────────────┐ │
│ │  WHITEBOARD STUDIO (full main pane)                     │ │
│ │                                                         │ │
│ │   ┌─ floating tools (minimal) ─┐                        │ │
│ │   │ pen · eraser · colors · w · undo · clear │           │ │
│ │   └────────────────────────────┘                        │ │
│ │                                                         │ │
│ │              ██ CANVAS PRIMARY ██                       │ │
│ │              (full bleed ink surface)                   │ │
│ │                                                         │ │
│ │   ┌─ OCR strip / Read handwriting · Ask ─────────────┐  │ │
│ │   └──────────────────────────────────────────────────┘  │ │
│ │                                                         │ │
│ │   ┌─ AI chat dock (text + voice) ────────────────────┐  │ │
│ │   │ messages · input · mic · TTS play                │  │ │
│ │   └──────────────────────────────────────────────────┘  │ │
│ └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

### Hierarchy

1. **Canvas** — primary visual plane; fills available space; pointer/touch capture for ink.
2. **Floating tools** — compact overlay; no card grid; no mode tabs.
3. **OCR ask strip** — Read handwriting → editable text → Ask Scho (auto-OCR if needed).
4. **AI chat dock** — interactive: stream tutor replies, text send, voice in (STT), voice out (Kokoro TTS). Collapsible; never replaces the canvas as the main plane.

---

## 4. Interaction contract

### 4.1 Canvas / ink

- Pointer Events + `touch-action: none` + pointer capture.
- Tools: pen, eraser (`destination-out`), colors, stroke widths, undo (stroke snapshots), clear.
- ResizeObserver + devicePixelRatio-aware canvas.
- Prefer coalesced pointer events; pressure fallback when available.
- Empty state: short invite to draw (no Miro-style template gallery).

### 4.2 OCR → Ask

- Snapshot board → OCR → editable text field → **Ask Scho** injects into chat dock (tutor stream).
- Auto-OCR before Ask if text empty / stale.
- Surface OCR model progress / errors inline (no silent fail).
- Reuse Free Studying OCR primitives from `@/lib/free-study/ocr` where possible; **UI lives under whiteboard components**, not Free Study CSS.

### 4.3 AI chat dock (text + voice)

- Text chat via existing tutor stream hooks / API patterns.
- Voice in: local STT (same stack as Free Studying voice).
- Voice out: Kokoro TTS (ORT WASM configured; do not regress CSP).
- Dock is interactive (send, stop, replay TTS), not a static panel.
- Board context / OCR text may be attached to tutor payloads (telemetry-aware).

---

## 5. Visual language

- Cobalt OnePrep-ish instrument chrome (Scholaris tokens), not purple / not warm-cream terracotta Studi clone.
- Full-bleed board background; floating controls with hairlines, not heavy card stacks.
- Motion: restrained (dock open/close, tool active state) — presence, not noise.
- Mobile: tools + dock must remain usable; canvas still primary.

---

## 6. Route shell (this agent)

| File | Role |
| --- | --- |
| `src/app/dashboard/whiteboard/page.tsx` | Client/server page rendering `<WhiteboardStudio />` |
| `src/app/dashboard/whiteboard/layout.tsx` | Metadata + thin layout wrapper (no Free Study tabs) |
| `docs/research/whiteboard/CONTRACT.md` | This contract |

Shell imports `@/components/whiteboard/WhiteboardStudio` (stub acceptable until component agents land).

---

## 7. Component file map (other agents own)

Implement under `src/components/whiteboard/` with dedicated CSS module(s). Do not put Studio UI into `free-study.module.css`.

| Path | Owner agent | Responsibility |
| --- | --- | --- |
| `src/components/whiteboard/WhiteboardStudio.tsx` | Studio shell | Root client composition: canvas region + tools + OCR strip + chat dock; full-page studio layout |
| `src/components/whiteboard/WhiteboardCanvas.tsx` | Ink / canvas | Drawing surface, pointer pipeline, undo stack, snapshot export for OCR |
| `src/components/whiteboard/WhiteboardToolbar.tsx` | Tools chrome | Floating minimal tools (pen/eraser/colors/widths/undo/clear) |
| `src/components/whiteboard/WhiteboardOcrAsk.tsx` | OCR ask | Read handwriting, editable OCR text, Ask Scho CTA + progress/errors |
| `src/components/whiteboard/WhiteboardChatDock.tsx` | Chat dock | Interactive AI dock: message list, text input, STT mic, TTS play, stream state |
| `src/components/whiteboard/whiteboard.module.css` | Studio styles | Studio-only styles (full-bleed, floating chrome, dock) — **not** Free Study CSS |
| `src/components/whiteboard/index.ts` | Barrel (optional) | Re-exports for clean imports |

### Shared libraries (reuse; do not fork carelessly)

| Path | Use |
| --- | --- |
| `src/lib/free-study/ocr.ts` | OCR runner / PSM |
| `src/hooks/useTutorStream.ts` | Tutor SSE stream |
| `src/hooks/useKokoroTts.ts` | TTS playback |
| `src/lib/free-study/configureKokoroOrt.ts` | ORT wasmPaths |
| `src/lib/free-study/stt.ts` / speech helpers | Voice input |
| `src/lib/ai/telemetryPayload.ts` | Tutor telemetry payloads |

### Explicit non-owners / do-not-touch

- `src/components/free-study/FreeStudyHub.tsx`
- `src/components/free-study/free-study.module.css`
- `src/components/free-study/FreeStudyWhiteboard.tsx` (legacy hub whiteboard — leave; Studio is the new immersive product)

---

## 8. Acceptance checklist

- [ ] `/dashboard/whiteboard` renders full-page Studio without Free Studying mode tabs
- [ ] Canvas is the primary surface; tools float; chat is a dock
- [ ] Pen / eraser / colors / widths / undo / clear work on pointer + touch
- [ ] OCR → editable text → Ask Scho lands in chat dock
- [ ] Chat dock supports text send + voice in/out
- [ ] No Miro-like frames/sticky-note IA
- [ ] No edits to Free Study hub CSS/hub for this feature
- [ ] `npm run build` succeeds once Studio stub/components land

---

## 9. Out of scope (v1)

- Real-time multiplayer / presence
- Sticky notes, connectors, infinite zoom frames marketplace
- Replacing Free Studying hub whiteboard tab (hub may deep-link later)
- Nav entry (optional follow-up)
- Server-side board persistence (local session OK for v1 unless another agent adds notes/R2)

---

## 10. Agent handoff

1. **Route/docs agent (done):** contract + `page.tsx` / `layout.tsx`.
2. **Studio shell agent:** replace stub `WhiteboardStudio` with composition.
3. **Canvas / toolbar / OCR / chat agents:** fill file map rows; share props via Studio root.
4. **Nav agent (optional):** add Whiteboard to `navConfig` / mobile tabs pointing at `/dashboard/whiteboard`.
