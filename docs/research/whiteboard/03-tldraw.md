# tldraw UX Research

**Date:** 2026-07-20  
**Scope:** Pointer model, floating UI, mobile/touch, AI extensions  
**Sources:** Official docs ([tldraw.dev](https://tldraw.dev)), API reference, starter-kit READMEs, GitHub issues/examples. No product/app code.

---

## 1. Product posture (why UX feels this way)

tldraw is an **infinite-canvas editor SDK**, not a thin drawing widget. UX is organized around:

1. A single **active tool** (state machine) that owns all pointer/keyboard response.
2. A reactive **InputsManager** that normalizes mouse/touch/pen into one pointer model.
3. A **camera** (`x`, `y`, `z`) that maps screen ↔ page space for every hit-test and stroke.
4. A **slot-based floating UI** that adapts by breakpoint and pointer coarseness.
5. Optional **AI kits** that treat the canvas as output, context, workflow graph, or agent workspace.

Implication for tutoring boards: copy the *interaction contracts* (pen mode, coarse drag thresholds, contextual chrome, export-for-LLM), not the full Miro-style chrome.

---

## 2. Pointer model

### 2.1 Event pipeline

Documented flow when an input event fires:

1. Browser fires a native DOM event.
2. Editor UI layer captures it and builds a typed info object (`TLPointerEventInfo`, `TLPinchEventInfo`, `TLWheelEventInfo`, `TLKeyboardEventInfo`, `TLClickEventInfo`).
3. For pointer / pinch / wheel: `InputsManager.updateFromEvent(...)`.
4. Pointer events also go through **ClickManager** (double-click detection, overflow suppression).
5. Event is dispatched into the tool state machine via `root.handleEvent(...)`.
6. Active tool + active child state handle (or ignore) the event.

**UX lesson:** tools never talk to raw `MouseEvent` / `TouchEvent` directly. Everything is normalized first, then routed through one statechart. That keeps pen, finger, and mouse behavior coherent.

### 2.2 Coordinate spaces

| Space | Meaning |
|-------|---------|
| **Screen** | Pixels relative to the canvas container origin |
| **Page** | Infinite-canvas coords after camera transform |

Per space, InputsManager keeps **current**, **previous**, and **origin** points:

- **Current / previous** → deltas for drag, pan, stroke segments.
- **Origin** → where the last `pointer_down` (or pinch start) happened; used to decide “click vs drag.”

Screen→page conversion (conceptual):

```
pageX = screenX / camera.z - camera.x
pageY = screenY / camera.z - camera.y
```

Public helpers: `editor.screenToPage`, `editor.pageToScreen`, plus `editor.inputs.getCurrentPagePoint()` etc.

Pointer positions also carry a **z** channel (pressure / hover distance). Default **0.5** when the device does not report pressure.

### 2.3 Interaction flags (the “gesture vocabulary”)

| Flag | Meaning |
|------|---------|
| `isPointing` | Primary button/contact is down |
| `isDragging` | Moved past drag threshold while pointing |
| `isPinching` | Two-finger pinch active |
| `isPanning` / `isSpacebarPanning` | Camera pan in progress |
| `isEditing` | In-place text (or similar) edit |
| `isPen` | Current contact classified as stylus |

**Velocity** is computed on animation ticks (not every pointer event), smoothed, and clamped near zero to avoid jitter. Tools use it to distinguish precise slow moves from flicks.

### 2.4 Drag thresholds (fine vs coarse)

From default `TldrawOptions` (values are **squared** distances to avoid `sqrt` in hot paths):

| Option | Default | Approx. linear | Role |
|--------|---------|----------------|------|
| `dragDistanceSquared` | 16 | ~4px | Mouse / fine pointer → drag |
| `coarseDragDistanceSquared` | 36 | ~6px | Touch → drag |
| `uiDragDistanceSquared` | 16 | ~4px | Dragging UI chrome (fine) |
| `uiCoarseDragDistanceSquared` | 625 | ~25px | Dragging UI chrome (touch) |

**UX rationale (explicit in source comments):** accidental toolbar drags on mobile are common, so the UI coarse threshold is much larger than canvas drag.

Hit-testing also expands for touch:

| Option | Default | Role |
|--------|---------|------|
| `handleRadius` | 12 | Selection handles (fine) |
| `coarseHandleRadius` | 20 | Selection handles (touch) |
| `coarsePointerWidth` | 12 | Expanded pointer “width” for coarse hit tests |
| `hitTestMargin` | 8 | Extra margin around shapes |
| `longPressDurationMs` | 500 | Long-press recognition |

### 2.5 Tools as hierarchical state machines

Tools are `StateNode` trees, not free-form listeners.

- Root owns tools: select, hand, draw, eraser, geo, text, …
- Each tool is typically a **branch** with children for phases (`idle` → `pointing` → `drawing` / `translating` / `resizing` / …).
- Active path example: `select.translating`.
- Event handlers: `onPointerDown`, `onPointerMove`, `onPointerUp`, `onKeyDown`, `onTick`, …
- Parents can handle shared shortcuts; children specialize pointer phases.
- **Event target** is resolved *before* tools (`canvas` | `shape` | `handle` | `selection`), so tools branch on “what was under the finger,” not re-implement hit testing.

**Pointing intermediate state pattern:** on move, if `inputs.getIsDragging()` then transition to the real action state; on up without drag, treat as click/cancel. This is the core “don’t commit until drag threshold” UX.

**Tool lock (`isToolLocked`):** after creating a shape, stay in draw/geo instead of bouncing back to select—critical for rapid sketching / tutoring annotation.

**Coalesced events:** `StateNode.useCoalescedEvents` (default `false`) opts a tool into the browser’s coalesced pointer-move samples for higher-fidelity ink.

### 2.6 Pen vs touch vs mouse

- `editor.inputs.getIsPen()` drives **pen mode**.
- Instance flag `isPenMode`: when stylus is detected, **non-pen input is ignored** so palm/finger does not scribble while writing.
- Many styli report as `'mouse'`; tldraw applies **heuristics** + pressure to reclassify them.
- Pen mode is **session-ephemeral** (does not persist across reloads). Users can get stuck if a drawing tablet falsely triggers it; community workaround: `sideEffects.registerBeforeChangeHandler('instance', …)` to block `isPenMode` flips ([issue #5259](https://github.com/tldraw/tldraw/issues/5259)). HelperButtons expose **“Exit pen mode”** on touch devices.

### 2.7 Camera as part of the pointer model

Camera is `{ x, y, z }`. User navigation inputs:

- Wheel / trackpad (`wheelBehavior`: `'pan' | 'zoom' | 'none'`)
- Spacebar pan, right-click drag pan (both toggleable)
- Pinch (mobile)
- Hand tool drag
- Keyboard zoom shortcuts + **quick zoom (`z`)**: overview with viewport brush, release to dive in

Programmatic moves support animation; **user pan/zoom cancels camera animations** (user always wins).

`slideCamera` provides **momentum / kinetic** continuation after a flick—mobile-feeling physics on an infinite canvas.

Constraints (`TLCameraConstraints`) support bounded “annotator” experiences (fit-min/max, contain/inside/outside/fixed)—useful when the board should feel like a worksheet, not Figma.

---

## 3. Floating UI

### 3.1 Layout zones (desktop mental model)

```
┌─────────────────────────────────────────────────────────┐
│ Top: MenuPanel | TopPanel (empty) | Share + StylePanel │
├────────────┬──────────────────────────┬─────────────────┤
│            │         Canvas           │                 │
├────────────┴──────────────────────────┴─────────────────┤
│ Bottom: NavigationPanel | Toolbar | HelpMenu            │
└─────────────────────────────────────────────────────────┘
```

- **TopPanel**: empty by default—intended for product chrome (title, sync, tutor CTA).
- **StylePanel**: top-right on desktop; **modal overlay on mobile**.
- **Toolbar**: primary tools + tool options + tool-lock control.
- **HelperButtons**: contextual—“Back to content” when camera is far from shapes; “Exit pen mode” on touch.

### 3.2 Slot architecture

UI is a registry of named slots (`TLUiComponents`). Each slot can be:

- Default component
- Custom React replacement
- `null` (hidden)

Important floating / overlay slots:

| Slot | Role |
|------|------|
| `Toolbar` | Main tool dock |
| `RichTextToolbar` | Floating rich-text controls while editing text |
| `ImageToolbar` / `VideoToolbar` | Media-specific floating bars |
| `StylePanel` | Color, fill, dash, size, opacity |
| `NavigationPanel` | Zoom + minimap |
| `HelperButtons` | Situational chrome |
| `ContextMenu` / `ActionsMenu` / `HelpMenu` | Menus |
| `Dialogs` / `Toasts` | Modal / ephemeral feedback |
| Canvas overlay: `InFrontOfTheCanvas` | Custom floating UI **above shapes, below chrome** |

`hideUi` removes all default chrome **and** keyboard shortcuts; editor APIs remain controllable programmatically.

### 3.3 Contextual floating toolbars

Primitive: `TldrawUiContextualToolbar`.

- Positioned from `getSelectionBounds()` (often `getSelectionRotatedScreenBounds()` with height collapsed so the bar sits above the selection).
- Example pattern: show only in `select.idle`; hide while transforming.
- Uses shared styles (`getSharedStyles`) so mixed selections show “no highlight” for conflicting values.
- Render via `InFrontOfTheCanvas` so it floats on content without fighting the main dock.

Also: dedicated rich-text / image / video toolbars as first-class floating UIs for edit modes.

### 3.4 Actions & tools indirection

UI does not call editor methods ad hoc from every button. Providers map:

- **Actions** → copy/paste/delete/align/… with labels, icons, `kbd`
- **Tools** → toolbar entries with `onSelect` → `setCurrentTool`

Same action is reachable from toolbar, menu, context menu, and keyboard—**one behavior, many affordances**.

`overrides` mutates those maps (add/remove tools, remap shortcuts, translations). `onUiEvent` observes UI-originated interactions only (not raw Editor API calls).

### 3.5 Reactivity & focus mode

- Hooks: `useEditor`, `useValue`, `useReactor`, `useTools`, `useActions`, `useRelevantStyles`, `useBreakpoint`.
- Style panel contents follow selection via `useRelevantStyles`—no manual subscription plumbing.
- **`isFocusMode`**: minimize chrome to canvas (presentation / distraction-free study).
- Breakpoints drive which floating pieces become modals vs docks (see §4).

### 3.6 Design principles distilled

1. **Canvas is sacred**—chrome hugs edges; contextual bars attach to selection, not the viewport center.
2. **Progressive disclosure**—style panel / mobile modal only when styles matter; helper buttons only when state warrants them.
3. **Replace by slot, don’t fork**—product apps override `Toolbar` / `TopPanel` instead of reimplementing camera + tools.
4. **Layering contract**—`InFrontOfTheCanvas` < default UI chrome, so custom tutor buttons don’t steal the dock’s z-order accidentally.

---

## 4. Mobile & touch UX

### 4.1 Breakpoints (documented layout bands)

| Band | Width | Behavior (summary) |
|------|-------|--------------------|
| MOBILE | &lt; 640px | Compact layout; **toolbar hides while editing text** (keyboard space) |
| TABLET_SM | 640–840px | Simplified controls |
| TABLET | 840–1023px | Fuller tablet layout |
| DESKTOP | ≥ 1024px | Full chrome; style panel docked |

Hook: `useBreakpoint` → numeric index mapped to `PORTRAIT_BREAKPOINT.*`.

### 4.2 Coarse pointer detection (hybrid devices)

Two layers:

1. **`tlenvReactive.isCoarsePointer`** — media query `(any-pointer: coarse)` **plus** per-`pointerdown` `pointerType !== 'mouse'` (capture phase, because tldraw stops propagation). Updates mid-session on touchscreen laptops.
2. **Instance `isCoarsePointer`** — editor-facing flag for UI sizing / hit targets.

Firefox desktop special case: coarse reporting is unreliable with touchscreens present but unused → **force fine pointer** to avoid jumpy UI.

Static `tlenv` covers platform/browser (iOS, Android, Safari, Cmd vs Ctrl) for labels and shortcuts.

### 4.3 Mobile-specific behaviors

| Behavior | Detail |
|----------|--------|
| Style panel | Becomes a **modal**, not a side dock |
| Toolbar vs keyboard | Auto-hide toolbar during text edit |
| Helper: Exit pen mode | Surfaces when palm rejection locks out touch |
| Helper: Back to content | Recovers users lost on infinite canvas |
| Larger hit targets | Coarse handle radius / pointer width / UI drag threshold |
| Pinch + momentum | Native multi-touch camera gestures + `slideCamera` friction |
| Hover | `isHoveringCanvas` is `null` when hover is unsupported |
| Safe areas | `insets` track top/right/bottom/left safe-area booleans |
| DPR | `devicePixelRatio` tracked in instance state for crisp rendering |

### 4.4 Touch + stylus tutoring implications

- Prefer **draw + eraser + select** as the mobile tool core; hide rarely used geo tools behind overflow.
- Expect **pen mode** on tablets with stylus; always expose an obvious exit (tldraw’s HelperButtons pattern).
- Use a **larger UI drag threshold** than canvas ink threshold so students don’t tear the toolbar while sketching.
- When the on-screen keyboard opens, reclaim vertical space (tldraw hides the bottom toolbar)—any custom tutor dock should do the same.
- For OCR / “read handwriting” flows, export via `editor.toImage` / `getSvgString` after a settled camera (see AI §5.5).

---

## 5. AI extensions

tldraw documents **three integration patterns** plus **four starter kits**.

### 5.1 Pattern A — Canvas as output

LLM produces images, HTML, embeds → place as shapes (`image` + assets, `embed`, or custom preview `ShapeUtil` with sandboxed iframe).

Canonical “make real” loop: user sketches UI → model generates HTML → preview shape sits beside the sketch.

### 5.2 Pattern B — Visual workflows

Shapes = nodes; bindings = edges; execution engine resolves DAG order. AI becomes a **node type** (prompt in → text/image out), like ComfyUI-on-canvas.

**Workflow kit:** ports, smart bindings, connection tools, dependency runner.

### 5.3 Pattern C — AI agents (full read/write)

**Agent kit** (`npm create tldraw@latest -- --template agent`):

**UI:** chat panel on the **right**; canvas remains the workspace. Users message the agent, attach context, and watch history.

**What the default agent can do:**

- Create / update / delete shapes  
- Draw freehand strokes  
- Higher-level layout: rotate, resize, align, distribute, stack, reorder  
- Narrate thinking + user-facing messages  
- Maintain a **todo list** for multi-step work  
- **Move its own viewport** to inspect regions  
- Count shapes matching expressions  
- Schedule follow-up reviews  
- Call external APIs  

**How it “sees” (PromptPartUtil):**

- User message, selection, recent user actions  
- Screenshot of agent viewport  
- Simplified structured shapes in view  
- Clusters **outside** viewport (awareness without dumping everything)  
- Session history + lints on shapes  
- Optional extra context: specific shapes, bounds, positions  

**How it “acts” (AgentActionUtil):** typed streaming actions, validated/sanitized (fix bad IDs, unique IDs, normalize coords), applied incrementally so the canvas updates live.

**Modes:** e.g. `working` (full canvas) vs narrower critique/planning modes with different `parts` + `actions` arrays (`AgentModeDefinitions`).

**Managers:** chat history, model selection, context shapes, todos, mode transitions—composition over monolith.

**API:** `agent.prompt(...)`, `agent.request(...)` (single turn), `cancel()`, `reset()`. Providers: Anthropic (recommended), OpenAI, Google via worker abstraction (Cloudflare Worker in the template).

### 5.4 Chat kit — canvas as annotation context

**Chat kit** (`--template chat`): integrate tldraw into an **existing** chat (Vercel `useChat`).

UX loop:

1. Open **whiteboard modal** from chat.  
2. First image upload → place on canvas, center camera, enter **`select.crop`**.  
3. User annotates / draws.  
4. Export **PNG for the LLM** + save a **tldraw snapshot** so the user can reopen and continue editing without flattening shapes.

Explicitly pitched for **educational platforms** (sketch math, diagrams, visual help)—closest kit to a Free Studying “Ask tutor about this board” flow.

### 5.5 Branching chat kit — conversation as a graph

Messages are **nodes** (`NodeShapeUtil`); links are **bindings** (`ConnectionBindingUtil`). Drag ports to branch dialogue. When sending, the system **walks ancestors** to assemble context. Streams AI replies into nodes. Backend: Cloudflare Workers + Vercel AI SDK.

UX metaphor: conversation trees as spatial objects—useful for tutoring “what-if” forks, less for single-board scratch work.

### 5.6 Reading the canvas for any LLM (without the agent kit)

Documented export paths:

```
editor.getSvgString(shapes)
editor.toImage(shapes, { format: 'png' })
```

Structured extract:

```
shapes.map(shape => ({
  id, type,
  text: editor.getShapeUtil(shape).getText(shape),
  bounds: editor.getShapePageBounds(shape),
}))
```

**Best practice from docs:** send **both** screenshot and structured text/bounds—vision for layout, structure for exact labels.

### 5.7 AI UX principles from the kits

| Principle | Manifestation |
|-----------|----------------|
| Dual context | Pixels + shape graph |
| Streaming visibility | Actions apply as they complete; users watch the agent work |
| Scoped viewport | Agent looks at a region; user can constrain with `bounds` |
| Human override | User keeps full editor control; agent is a participant |
| Modal vs docked chat | Chat kit = modal whiteboard; Agent kit = persistent side chat |
| Snapshot fidelity | Keep editable snapshot, not only raster, for round-trips |
| Sanitization | Never trust raw LLM geometry/IDs |

---

## 6. Cross-cutting UX checklist (for a study whiteboard inspired by tldraw)

**Pointer**

- [ ] One normalized pointer pipeline (screen/page, origin, drag threshold).  
- [ ] Separate fine vs coarse drag thresholds; much larger for UI chrome.  
- [ ] Pen mode / palm rejection with an obvious exit.  
- [ ] Tool state machine with idle → pointing → act; don’t commit ink on tiny jitter.  
- [ ] Optional coalesced points for handwriting quality.  
- [ ] Tool lock for continuous annotation.

**Floating UI**

- [ ] Edge docks + selection-attached contextual bars; keep canvas center clear.  
- [ ] Hide or modalize style controls on small screens.  
- [ ] Hide bottom tools when the virtual keyboard is up.  
- [ ] Situational helpers (lost camera, pen mode) instead of permanent clutter.  
- [ ] Product actions live in TopPanel / custom slots, not over content.

**Mobile**

- [ ] React to coarse pointer mid-session on hybrid devices.  
- [ ] Enlarge handles and hit margins for fingers.  
- [ ] Pinch-zoom + pan; cancel programmatic camera when the user takes over.  
- [ ] Respect safe-area insets.

**AI**

- [ ] Prefer “export PNG + structured text + optional snapshot” over full agent unless the product needs autonomous drawing.  
- [ ] If agentic: stream actions, show thinking/todos, bound the agent’s viewport.  
- [ ] Keep human editing primary; AI is a co-pilot on the same canvas.

---

## 7. Key references

| Topic | URL |
|-------|-----|
| Input handling | https://tldraw.dev/sdk-features/input-handling |
| Tools / StateNode | https://tldraw.dev/sdk-features/tools |
| Camera | https://tldraw.dev/sdk-features/camera |
| UI components | https://tldraw.dev/sdk-features/ui-components |
| Instance state | https://tldraw.dev/sdk-features/instance-state |
| Options (thresholds) | https://tldraw.dev/sdk-features/options |
| Environment / coarse pointer | https://tldraw.dev/sdk-features/environment |
| Contextual toolbar example | https://tldraw.dev/examples/contextual-toolbar |
| AI overview | https://tldraw.dev/docs/ai |
| Agent starter kit | https://tldraw.dev/starter-kits/agent |
| Chat starter kit | https://tldraw.dev/starter-kits/chat |
| Branching chat | https://tldraw.dev/starter-kits/branching-chat |
| InputsManager API | https://tldraw.dev/reference/editor/InputsManager |

---

## 8. Bottom line for Scholaris

tldraw’s UX strength is not “lots of tools”—it is a **disciplined pointer → tool-state → camera** loop, **edge-floating chrome** that collapses on mobile, and **AI patterns that export or act on the same canvas** without replacing human ink. For Free Studying, the highest-leverage borrows are: pen/coarse thresholds, contextual helpers, keyboard-safe tool docking, and Chat-kit-style annotate → PNG (+ snapshot) → tutor—not a full agent side panel unless the product roadmap explicitly wants autonomous diagramming.
