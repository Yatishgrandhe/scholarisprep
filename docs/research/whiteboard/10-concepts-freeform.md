# Concepts, Infinite Sketch Canvases & Freeform-Lite Patterns

**Date:** 2026-07-20  
**Scope:** UX/interaction patterns from [Concepts](https://concepts.app/en/) (infinite vector sketch), Apple Freeform (object board), and common infinite-whiteboard chrome patterns—especially **immersive full-page** and **hide chrome**.  
**Method:** Product manuals (Concepts Infinite Canvas / Workspace / Gestures), Apple Freeform support guides, Help Center UI-hide FAQs, and cross-app whiteboard shortcut conventions. No Scholaris app code changes.

**Audience:** Free Studying whiteboard / “sketch → OCR → Ask tutor” design—not Miro/FigJam collaboration clones.

---

## 1. Product archetypes (what to copy vs ignore)

| Archetype | Exemplar | Mental model | Scholaris relevance |
|-----------|----------|--------------|---------------------|
| **Infinite sketch** | Concepts | Stroke-first; editable vectors; stylus-native; paper that never ends | High — handwriting, diagrams, freehand problem work |
| **Object board** | Apple Freeform | Sticky / shape / image / text objects on a growable plane | Medium — light structure (labels, boxes); not the core tutoring loop |
| **Diagram whiteboard** | Excalidraw / Miro-class | Selection + shapes + connectors + sticky notes | Low for tutoring sketch; avoid feature bloat |
| **Freeform-lite** | Subset of Freeform | Infinite plane + pen + minimal insert tools + focus chrome | High — the right *product thinness* for a study board |

**Verdict:** Scholaris should feel like **Concepts for thinking + Freeform for calm chrome**, not a collaborative board suite.

---

## 2. Concepts — infinite sketch patterns

### 2.1 Infinite canvas (core contract)

From Concepts manuals:

- **No page edge** — pan/zoom/rotate freely; space expands with thought, not with “new page.”
- **Optional artboard** — movable, sized frame for export / composition only; canvas remains infinite underneath.
- **Vector clarity** — zoom stays sharp; users zoom into a formula or out to a mind-map without losing stroke fidelity.
- **Lost-on-canvas recovery:**
  - Double-tap zoom readout → return to canvas center.
  - Edge “pointers” to nearest off-screen strokes (iOS).
  - Explicit zoom/angle fields in a thin status strip.

**Implication:** Infinite feels liberating only if **recenter / fit content / zoom readout** exist. Without recovery, infinity becomes anxiety.

### 2.2 Navigation gestures (stylus-first)

| Action | Concepts convention | Notes |
|--------|---------------------|-------|
| Pan | Two-finger drag; Pan tool; **finger = pan** when stylus draws | Separates ink hand from nav hand |
| Zoom | Pinch; optional snap increments; editable zoom % | Snaps help “feel” standard scales |
| Rotate | Two-finger twist; optional snap; editable angle | Often disabled for study boards |
| Temporary pan | Hold **Space** (keyboard) | Universal across whiteboards |
| Undo / redo | Two-finger tap / three-finger tap; undo on tool UI | Gesture undo keeps tool hand on stylus |

**Finger vs stylus:** Concepts’ “Finger Action = Pan Canvas” is the single highest-leverage sketch UX for tablets—draw with pen, navigate with finger, no mode toggle.

### 2.3 Tool chrome: Wheel → Bar → Hidden

Concepts treats tools as **on-canvas furniture**, not a fixed app chrome bar:

1. **Tool Wheel** — up to 8 slots + size/opacity/smoothing ring + color center + undo/redo.
2. **Tool Bar** — same tools docked to an edge (drag wheel to edge / layout manager).
3. **Movable UI** — wheel, layers, precision, objects: tap-hold-drag to reposition; left/right-hand friendly.
4. **Density ladder:**
   - **Normal** — full menus + wheel on canvas.
   - **Compact** — icons only; sliders collapsed; wheel docked.
   - **Hidden** — all menus gone; tap residual Concepts affordance (or gesture) to restore.

Help Center: swipe menu tabs outward twice → compact → **fully hidden**; gesture shortcut can map to **Toggle Interface**.

**Implication for immersive study:** Prefer a **3-state chrome ladder** (full → compact → hidden) over a binary fullscreen flag. Hidden must leave a **single rediscovery affordance** (corner glyph / edge peep / Esc).

### 2.4 Status strip (HUD, not dashboard)

Concepts Status Bar is sparse instrumentation:

- Gallery / name / menu toggles / **zoom & angle** / import-export / settings.
- Measurement popup for precise zoom/rotation; selection dimensions when relevant.
- Menu toggles show/hide Layers, Precision, Objects—**chrome is opt-in per panel**.

Older Concepts manuals call this a **HUD**: collapse by swipe; restore by tap or “Toggle Interface.”

**Implication:** Zoom % and tool name belong in a **thin HUD**; account nav, course chrome, and tutor chat do **not**.

### 2.5 Edit-over-undo philosophy

Because strokes are vectors, Concepts pushes:

- Select / nudge / slice / recolor instead of endless undo.
- Undo still exists, but is not the only recovery path.

**Implication for OCR tutoring boards:** Raster stroke stacks + undo snapshots are fine for v1; do not promise Concepts-grade vector editability unless the stack supports it. Still: **eraser + undo + clear** must feel instant.

### 2.6 What *not* to lift from Concepts

- Infinite layers, object markets, COPIC wheels, real-world measurement, shape guides, PSD/SVG/DXF export pipelines.
- Full brush studio (tilt curves, barrel roll, hover previews)—nice-to-have later; not tutoring-critical.
- Subscription “Pro Store” chrome in the status bar.

---

## 3. Apple Freeform — “lite board” patterns

### 3.1 Product intent

Freeform is a **boundless brainstorming board**: stickies, shapes, drawings, media, connectors—solo or shared (up to ~100 collaborators). Canvas **grows with content**; no page layout anxiety.

For Scholaris, treat Freeform as a guide to **calm object + drawing coexistence** and **presentation focus**, not as a collab target.

### 3.2 Immersive viewing (official)

From Apple Freeform Mac guides:

| Goal | Pattern |
|------|---------|
| More board, less UI | **View → Hide Sidebar** |
| Immersive | **View → Enter Full Screen** |
| Zoom to work | Zoom controls; **Zoom to Selection**; **Zoom to Fit Content** |
| Pan | Space + drag; trackpad pinch/swipe |
| Alignment aid | Optional **dot grid**; Snap to Grid |
| Background | Default white; “colored workspace” via locked full-bleed rectangle (workaround, not a theme system) |

**Implication:** Immersion = **full screen + hide nav chrome + fit/selection zoom**, not adding more floating panels.

### 3.3 Tool model (lite subset worth copying)

Freeform toolbar insert model (conceptual):

- Drawing tools (Apple Pencil–first on iPad).
- Sticky notes, text, shapes, connectors/diagrams.
- Media / files / links.

**Freeform-lite for tutoring** should keep roughly:

| Keep | Defer / skip |
|------|----------------|
| Pen + eraser + color + width | 700-shape library |
| Optional text / sticky for labels | Full connector flowchart suite |
| Grid on/off | Tables, rich media galleries |
| Fit content / recenter | Multi-user cursors, share sheets as primary |

### 3.4 Drawing in Freeform

iPad Freeform: tap draw (or Pencil) → thickness, transparency, color; pinch to zoom while working. Drawing coexists with objects—selection vs ink is a mode, but chrome stays light.

**Implication:** One primary mode (**Ink**), with optional **Select/Pan**; avoid a Miro-style tool mega-palette.

---

## 4. Immersive full-page & hide-chrome patterns

### 4.1 Definition (for this research)

**Immersive full-page** means:

1. Board occupies the **entire viewport** (edge-to-edge), not an inset card.
2. App shell (sidebar, top bar, mode tabs, account chrome) is **gone or auto-hidden**.
3. Drawing surface is the hero; remaining UI is **transient HUD**.

This is distinct from browser fullscreen alone—**product chrome** must hide, not only OS chrome.

### 4.2 Pattern library

| Pattern | Behavior | Sources / analogs |
|---------|----------|-------------------|
| **Full-screen enter** | Dedicated control; hides title bars / OS task chrome where possible | Concepts Windows Full Screen; Freeform Enter Full Screen |
| **Hide sidebar** | Removes gallery / board list / app nav | Freeform View → Hide Sidebar |
| **Chrome density ladder** | Normal → Compact → Hidden | Concepts workspace modes |
| **Toggle Interface gesture** | Multi-finger tap or stylus button hides/shows HUD + tools | Concepts Gestures / stylus shortcuts |
| **Auto-reveal on edge** | Move pointer to top → chrome peeks; leave → hide | macOS fullscreen toolbar auto-hide (Preview-like) |
| **Presentation / focus mode** | F or dedicated key; often fullscreen + hide UI | Common whiteboard shortcut sets |
| **Single rediscovery glyph** | Tiny logo / peep tab when fully hidden | Concepts hidden mode |
| **Escape hatch** | Esc / same gesture restores chrome | Expected desktop convention |

### 4.3 Placement rules when chrome is visible

Borrowed from Concepts + Freeform calm layouts:

- **Top:** thin status only (title, zoom, exit immersive)—never primary nav.
- **Bottom or floating edge:** tool cluster (pen / eraser / color / width / undo).
- **Corners:** secondary actions (clear, export/snapshot, ask tutor)—prefer **one** primary CTA.
- **Never:** persistent dual sidebars + top tabs + floating property inspectors while sketching.

### 4.4 Show chrome on need (triggers)

Reveal chrome when the user:

- Taps the rediscovery affordance or presses Esc / Toggle Interface.
- Moves pointer to a **hot edge** (optional desktop).
- Opens a modal that needs chrome (export, OCR result, tutor ask)—then return to prior density.

**Anti-pattern:** chrome that reappears on every stroke end or every zoom—breaks immersion.

### 4.5 Mobile / tablet specifics

- Prefer **Finger = pan, Pencil = ink** (Concepts).
- Tool cluster should not sit under the palm writing zone (left-hand / right-hand flip).
- Compact mode by default on phone; Hidden after first stroke or via explicit “Focus.”
- Two-finger pan/zoom must not fight single-finger draw (`touch-action` / pointer capture—implementation detail; pattern only: **draw and navigate must not fight**).

---

## 5. Cross-app infinite sketch conventions (lite set)

Industry-standard shortcuts useful even for a Freeform-lite study board:

| Action | Common binding |
|--------|----------------|
| Pen | `P` |
| Eraser | `E` |
| Pan | `H` or Space+drag |
| Undo / Redo | Cmd/Ctrl+Z / Shift+Z |
| Zoom | Pinch, wheel, `+` / `-`, `0` reset |
| Fullscreen / focus | `F` |
| Grid | `G` (optional) |
| Shortcuts help | `?` |

**Gesture undo** (two-finger tap) is Concepts-strong and worth considering on iPad-class devices where keyboard is absent.

---

## 6. Infinite canvas pitfalls (and Freeform/Concepts mitigations)

| Pitfall | Mitigation |
|---------|------------|
| User lost in empty space | Recenter; fit content; edge hints to off-screen ink |
| Empty infinity feels cold | Soft paper texture / subtle grid (toggleable)—Freeform dots |
| Accidental pan while drawing | Stylus exclusivity + palm rejection; Space for intentional pan |
| Zoom thrash | Snap increments or “fit selection” |
| Chrome eats ink space | Hidden / compact ladder; movable tools |
| Export of “nowhere” | Optional artboard / crop to ink bounds / snapshot of viewport |
| Feature creep into Miro | Cap tool count; tutoring CTA > connectors |

---

## 7. Scholaris Free Studying — recommended pattern recipe

*Research recommendation only; not an implementation spec.*

### 7.1 Product thinness (“Freeform-lite + Concepts immersion”)

**In:**

- Full-page infinite (or large-feeling) ink canvas.
- Pen, eraser, colors, widths, undo, clear.
- Pan/zoom; recenter / fit ink.
- Immersive mode: hide dashboard sidebar + Free Study mode chrome.
- Compact tool HUD; Hidden mode with one peep control.
- Snapshot → OCR → editable text → Ask tutor (existing Scholaris loop).

**Out (for this surface):**

- Multiplayer cursors, sticky-note walls, shape connector graphs, infinite layers, asset markets.

### 7.2 Immersive states

| State | Shell chrome | Board HUD | Use |
|-------|--------------|-----------|-----|
| **Hub** | Visible (Free Study tabs) | Full tools | Entering / switching modes |
| **Sketch** | Compact or gone | Tools + zoom | Primary writing |
| **Focus** | Hidden | Minimal or none | Deep problem work |
| **Ask** | Partial (result / tutor sheet) | Dimmed or snapshot locked | OCR → tutor handoff |

Enter Focus via: explicit Focus control, `F`, or double-swipe chrome ladder. Exit via Esc / peep / Ask flow.

### 7.3 Visual hierarchy (chrome philosophy)

- Canvas is edge-to-edge; **no inset “whiteboard card.”**
- Tools float as **HUD**, not as a second app bar competing with dashboard top bar.
- One primary accent CTA: **Read handwriting** / **Ask Scho**—not a ribbon of export formats.
- Grid/paper is optional atmosphere, not a dashboard texture.

### 7.4 Success criteria (UX)

1. Within 2 seconds of entering Whiteboard, user can ink without hunting tools.
2. Focus mode yields **≥90% pixels for ink** (chrome ≤10%).
3. User can hide and restore chrome without leaving the board.
4. User never permanently “loses” work off-screen without a recenter/fit control.
5. Ask-tutor path works from Focus without permanently leaving immersive layout.

---

## 8. Source map

| Topic | Primary sources |
|-------|-----------------|
| Infinite canvas nav / artboard / stylus | [Concepts — The Infinite Canvas](https://concepts.app/en/manual/infinite-canvas) |
| Tool wheel, density ladder, HUD | [Concepts — Your Workspace](https://concepts.app/en/ios/manual/yourworkspace) |
| Hide / retrieve UI | [Concepts Help — Hide/retrieve UI](https://tophatch.helpshift.com/hc/en/3-concepts/faq/116-how-do-i-hide-retrieve-the-user-interface/) |
| Gestures / finger actions | [Concepts — Settings (iOS)](https://concepts.app/en/ios/manual/settings) |
| Product positioning | [Concepts homepage](https://concepts.app/en/) |
| Freeform immersive view / grid / zoom | [Apple — Change a Freeform board’s appearance](https://support.apple.com/guide/freeform/change-a-boards-appearance-frfm000074a4e/mac) |
| Freeform get-started / draw | [Apple — Freeform on iPad](https://support.apple.com/guide/ipad/get-started-with-freeform-ipad9c59637d/ipados) |
| Freeform boards / tools overview | [Apple — Create a Freeform board](https://support.apple.com/guide/freeform/create-a-board-frfm9474646a9/mac) |

---

## 9. One-line synthesis

**Ship a Concepts-style immersive sketch plane with Freeform-lite chrome: full-page ink, hide the shell, keep a thin recoverable HUD, and route the board into OCR → tutor—not into a collaboration suite.**
