# GoodNotes / Notability — Handwriting Board UX Research

**Date:** 2026-07-20  
**Scope:** Pen feel, tool chrome, and paper metaphor in Goodnotes and Notability, plus web / cross-platform analogs.  
**Method:** Vendor marketing and support docs (Goodnotes, Ginger Labs / Notability, MyScript Notes, Concepts, Microsoft OneNote for the web), comparative reviews (Paperlike, Work Tech Journal), and product pattern synthesis. No Scholaris app code changes in this note.  
**Audience:** Product / UX for Free Studying whiteboard — what “feels like writing” actually means in mature note apps.

---

## 0. Verdict in one page

Goodnotes and Notability win on **stylus-first ink**, not on infinite-canvas chrome. The product fantasy is: rest your palm, write at lecture speed, erase without hunting tools, and stay inside a **notebook / page** mental model (or a saved infinite board that still behaves like a document).

| Pillar | What users notice | Design implication |
|--------|-------------------|--------------------|
| **Pen feel** | Latency near zero; pressure/tilt change the stroke; palm ignored; gestures edit ink | Prioritize stroke fidelity + input routing over feature count |
| **Tool chrome** | Thin, customizable, often dockable; presets for color/width; tool switches via Pencil gestures | Chrome stays out of the writing zone; active tool owns a small contextual strip |
| **Paper metaphor** | Covers, templates, lined/grid/dot, fixed pages *or* named boards; zoom still feels like “this page” | Background + page bounds cue “notebook,” not “Miro workshop” |

Web analogs rarely match native ink quality. They succeed when they either (a) accept mouse-grade freehand as “draft diagram” (Excalidraw), or (b) reuse notebook IA with a Draw mode (OneNote web), or (c) treat ink as interactive content that converts (MyScript Notes / Nebo).

---

## 1. Products in scope

### 1.1 Goodnotes (Goodnotes Limited)

- **Positioning:** “Write like it’s paper. Edit like it’s digital.” Stylus-first capture, then Smart Ink organization (reflow, straighten, scribble-to-erase, circle-to-lasso).
- **Document types:** Notebooks (paged), PDF annotation, Text Documents, and **Whiteboard** (infinite canvas as a first-class document with multiple boards).
- **Platforms:** iPad-native heritage; Android / Windows / Web expanding; Apple Pencil Pro squeeze → floating palette; barrel roll for fountain-pen stroke variation.
- **Org metaphor:** Folders + notebooks + covers + Marketplace templates — archive of physical notebooks.

### 1.2 Notability (Ginger Labs)

- **Positioning:** Fast lecture notes; **audio recording synced to ink** is the historic differentiator.
- **Document types:** Notes under Subjects / Dividers (flatter than Goodnotes’ nested notebooks).
- **Ink focus:** “Highly responsive ink,” pressure width, palm detection, one-finger scroll while Pencil writes, auto-deselect eraser, Pencil double-tap actions (eraser / last tool / color / ink attributes).
- **Study-specific chrome:** **Tape** (cover → tap to reveal for self-quiz) — paper stationery metaphor applied to active recall.

### 1.3 Why both matter for Scholaris

Free Studying whiteboard is closer to **scratch work that becomes tutor input (OCR → Ask)** than to a lifelong notebook archive. Still, users’ muscle memory for “good handwriting board” was trained by these two apps. Ignoring their pen / chrome / paper patterns makes a web canvas feel like a toy.

---

## 2. Pen feel

### 2.1 What “pen feel” actually is

Users collapse several systems into one sensation:

1. **Latency** — tip position vs ink appearance (sub-~10 ms preferred; friction/texture can outweigh raw ms).
2. **Sampling & coalescing** — smooth curves under fast writing; no “polygon” strokes.
3. **Pressure → width** (and sometimes opacity) — fountain / brush vs constant ballpoint.
4. **Tilt / rotation** — pencil shading, fountain nib orientation (Pencil Pro barrel roll in Goodnotes).
5. **Palm rejection & hand rest** — Pencil vs finger roles; finger pans while tip writes.
6. **Prediction / prediction artifacts** — look-ahead ink that must not “swim” or overshoot.
7. **Friction (hardware)** — matte screen protectors / Paperlike; apps cannot fully fake this on glass.
8. **Haptics** — shape snap / move feedback (Notability on supported Pencil Pro + iPad Pro stacks).

Goodnotes marketing leans on **natural write + digital tidy**. Notability support leans on **tracking Pencil position as closely as possible** and explicit palm / scroll / eraser-return behaviors.

### 2.2 Ink styles as UX, not just brushes

| Style | Goodnotes | Typical user job |
|-------|-----------|------------------|
| Fountain | Pressure + tip sharpness | Everyday notes with variable line |
| Ball | No pressure variation; round ends | Consistent lecture writing |
| Brush | High pressure sensitivity | Lettering / emphasis |
| Pencil (separate tool) | Graphite / tilt shading | Sketch, shade, diagram |

Notability emphasizes fountain / ballpoint (+ brush in recent tutorials), dashed/dotted strokes, and highlighter that **sits behind ink** (layering rule users notice immediately).

**UX rule:** Named pen *identities* beat a single “stroke width” slider. Users pick a persona (“ball for notes”) then rarely open deep settings.

### 2.3 Editing ink without breaking flow

Gesture-first editing is part of pen feel because it avoids tool trips:

| Gesture / behavior | Goodnotes | Notability |
|--------------------|-----------|------------|
| Scribble to erase | First-class | Common pattern via erase / gestures |
| Circle to lasso | Circle → tap circle | Lasso / select workflows |
| Draw + hold → shape | Optional on Pen | Shape snap / haptics |
| Auto-return after erase | — | **Auto-deselect Eraser** (default on) |
| Pencil hardware | Squeeze → palette; barrel roll | Double-tap → eraser / last tool / palette |

**UX rule:** Eraser should feel temporary. Returning to the last pen after a stroke-erase is as important as erase quality.

### 2.4 Smart Ink vs raw ink

Goodnotes differentiates on **post-write intelligence** that still looks handwritten: spellcheck without restyling, reflow paragraphs, insert spaces, straighten/align. That is “edit like digital” layered on “write like paper.”

Notability differentiates on **time-linked capture** (tap ink → hear that moment of lecture). Different axis of “digital advantage,” same requirement: ink remains the primary object.

For a tutoring whiteboard, the analog of Smart Ink is not reflow — it is **reliable OCR / tutor handoff** while preserving the student’s marks as the source of truth until they convert.

### 2.5 Hardware honesty

Both apps are honest that full feel needs an active stylus (Apple Pencil / S Pen class). Finger / mouse writing is supported but is a fallback. USB-C Pencil without pressure is called out in Notability docs.

**Implication for web:** Promise “handwriting board,” not “Pencil replacement,” unless Pointer Events + pressure + palm policies are real on the user’s device.

---

## 3. Tool chrome

### 3.1 Shared chrome grammar

Both apps converge on a **handwriting toolbar** pattern:

1. **Primary tools in a compact strip** — Pen, Pencil, Highlighter, Eraser, Lasso, Shapes, Text, (Ruler / Tape / Laser as extras).
2. **Contextual accessory panel** when a tool is selected — color slots + width slots (presets, not continuous-only).
3. **Double-tap tool** → deep settings (pen style, pressure, eraser mode).
4. **Customization** — show/hide/reorder tools; dock floating menus to edges; undo/redo side preference (left vs right for handedness).
5. **Hardware shortcuts** — Pencil double-tap / squeeze so the toolbar can stay peripheral.

Goodnotes explicitly separates:

- Customizable toolbar for Notebooks & Whiteboards  
- Non-customizable Apple Pencil quick toolbar  
- Secondary popup UI (recent redesign) to keep the main canvas spacious  

Notability emphasizes a **moveable toolbox** and lecture-speed switching (auto-deselect eraser, double-tap actions).

### 3.2 Chrome that stays out of the way

Patterns that protect the writing field:

| Pattern | Why it works |
|---------|----------------|
| Preset color/width chips | One tap; no color-wheel every stroke |
| Docked vertical accessory | Writing hand stays on page; eyes glance to edge |
| Hide writing tools until needed | Full-bleed paper during long writing |
| Floating palette on squeeze | Zero travel for tool switch mid-thought |
| Laser pointer (presentation) | Temporary highlight without committing ink |

### 3.3 Eraser modes as chrome, not a single rubber

Users expect mode choice:

- **Stroke eraser** — remove whole strokes (fast cleanup)
- **Pixel / precision eraser** — partial removal
- **Object-aware erase** — tape, highlighter layers behave differently
- **Scribble erase** — stay in pen mode

Chrome should surface the mode once, then get out of the way.

### 3.4 What *not* to copy from collaboration whiteboards

Miro / FigJam / generic web boards optimize for:

- Fat object toolbars (sticky, frame, connector, stamp)
- Multiplayer cursors and frames
- Infinite zoom with no page metaphor

That chrome reads as **workshop facilitation**, not **notebook writing**. Goodnotes Whiteboard still keeps writing-tool primacy and document identity (saved boards, templates, minimap) — closer to “big paper” than to a sticky-note OS.

---

## 4. Paper metaphor

### 4.1 Notebook as container

**Goodnotes**

- Notebooks with **covers**, page templates, tabs/sections.
- Library as grid/list of notebooks and folders — digital bookshelf.
- Marketplace economy of planners, covers, paper packs — proves how strongly users buy the metaphor.
- PDF pages and handwritten pages can live in one notebook.

**Notability**

- **Subjects + Dividers** — closer to binders than leather journals.
- Paper packs (staff, engineering graph, etc.).
- **Tape** as physical stationery for studying.

Both treat a note as a **bounded artifact you return to**, not a ephemeral session canvas.

### 4.2 Page vs infinite board

| Model | Feel | Navigation | Best for |
|-------|------|------------|----------|
| **Fixed pages** | Turn / add page; lined paper cues | Page thumbnails, bookmarks | Lectures, homework sets |
| **Infinite whiteboard** | Pan/zoom; minimap | Minimap + pinch; multiple boards in one doc (Goodnotes) | Brainstorm, diagram sprawl |
| **Growing page** (Nebo documents) | Vertical scroll like a long sheet | Scroll | Linear notes that reflow |

Goodnotes now ships **both**: classic notebooks *and* Whiteboard documents (infinite canvas, multiple boards, templates, convert notebook → whiteboard). That split is useful product language: same ink engine, different paper geometry.

### 4.3 Visual paper cues that sell the metaphor

- Paper color (cream / white / dark)
- Ruling: blank, lined, grid, dot, music, engineering
- Soft page shadow / margin (subtle; avoid heavy “card” chrome)
- Cover art at the library level, not over the writing surface
- Zoom that still shows “I’m on a sheet” (page outline) vs pure vacuum

### 4.4 Study metaphors beyond blank paper

Notability **Tape** and Goodnotes study templates show that paper UX includes **rituals**: hide answer → reveal, Cornell layouts, planner weeks. For tutoring products, the closest rituals are: scratch → OCR → ask tutor; or hide worked solution while practicing.

---

## 5. Web and cross-platform analogs

Native iPad apps set the bar; web analogs map onto subsets of the three pillars.

| Analog | Pen feel | Tool chrome | Paper metaphor | Takeaway |
|--------|----------|-------------|----------------|----------|
| **OneNote (web)** | Stylus auto-ink in Edge/Chrome; finger needs “Draw with Touch”; Type tool exits ink | Ribbon **Draw** tab: pens, thickness, eraser, marquee | Notebooks / sections / pages | Closest **web notebook IA**; ink is secondary to typed notes |
| **MyScript Notes (Nebo)** | “Interactive ink”; felt / fountain / brush / highlighter | Conversion gestures (scratch-out, join) as primary chrome | Notebooks + documents + **boards** + PDFs | Best reference for **ink → structured content** |
| **Concepts** | Vector-hybrid brushes; infinite canvas; paper textures / grids | Deep brush libraries; layers | “Pencil and paper, only better” + artboards | Pro sketch feel; heavier than lecture notes |
| **Excalidraw** | Mouse freehand; intentional rough.js wobble | Minimal left toolbar; keyboard first | No paper — draft diagram aesthetic | Signals *provisional thinking*, not handwriting fidelity |
| **Apple Freeform** | Strong Pencil on Apple devices | Board objects + drawing | Infinite board with cards | Collaboration board with decent ink on Apple |
| **Microsoft Whiteboard** | Mixed; Teams-oriented | Collaboration chrome | Infinite board | Meeting whiteboard, not personal notebook |
| **Goodnotes Web / Android / Windows** | Improving toward parity; still chasing iPad | Same tool grammar where possible | Same library / notebook / whiteboard docs | Shows paper metaphor travels; pen feel is hardest to port |

### 5.1 Web-specific constraints (pattern level)

- **Pointer capture + `touch-action`** matter as much as brush shaders.
- Pressure/tilt often absent → offer **ball-like constant width** as default honesty, fountain as progressive enhancement.
- Browser chrome + OS gestures fight palm rejection — prefer explicit Pen vs Touch modes (OneNote’s pattern).
- Avoid promising Paperlike friction; use subtle paper texture only as *visual* cue, not fake haptics.

### 5.2 Aesthetic forks (do not confuse)

| Aesthetic | Example | User read |
|-----------|---------|-----------|
| Realistic ink on paper | Goodnotes / Notability | “My notebook” |
| Rough diagram | Excalidraw | “Safe to critique; draft” |
| Sticky / frame workshop | Miro / FigJam | “Facilitated meeting” |
| Vector sketchbook | Concepts | “Design exploration” |

A tutoring scratchpad should lean **realistic ink + quiet paper**, optionally export a rough diagram later — not the reverse.

---

## 6. Comparative snapshots

### 6.1 Goodnotes vs Notability (UX axes)

| Axis | Goodnotes | Notability |
|------|-----------|------------|
| Org metaphor | Notebooks / folders / covers | Subjects / dividers |
| Signature digital layer | Smart Ink (reflow, gestures, HWR) | Audio ↔ ink sync |
| Pen depth | Fountain / ball / brush + tip sharpness | Strong responsive ink; dashed/dotted; auto eraser return |
| Study stationery | Templates / Marketplace | Tape + paper packs |
| Infinite space | Whiteboard document + minimap | Historically page-centric notes |
| Chrome philosophy | Customizable writing tools + Pencil palette | Movable toolbox + lecture shortcuts |

### 6.2 Shared non-negotiables

1. Resting palm must not draw.  
2. Finger pans while stylus writes (when stylus present).  
3. Color/width are **presets** near the active tool.  
4. Eraser is a temporary visitor.  
5. Paper (or board) is a **saved document**, not a disposable layer.  
6. Gestures beat toolbar tourism for erase/select.

---

## 7. Implications for Scholaris Free Studying whiteboard

Research-only recommendations (no implementation in this doc):

### 7.1 Pen feel priorities

1. **Stroke quality first** — coalesced points, stable width, minimal lag; ball-pen default on mouse.  
2. **Pressure when available** — map to width; don’t invent fake pressure on mouse.  
3. **Palm / touch policy** — stylus draws; touch pans/scrolls; optional “draw with touch” toggle (OneNote pattern).  
4. **Eraser auto-return** — after erase stroke(s), restore last pen (Notability pattern).  
5. **OCR path is the “Smart Ink”** — keep handwriting as source until user converts / asks tutor.

### 7.2 Tool chrome priorities

1. Compact strip: Pen · Eraser · Color presets · Width presets · Undo · Clear.  
2. Contextual chips only for the active tool; hide advanced settings behind long-press / double-tap.  
3. Keep collaboration / sticky / frame tools out of v1 — they break notebook feel.  
4. Prefer edge-docked or top-thin chrome; maximize paper field on tablet.

### 7.3 Paper metaphor priorities

1. Visible **page or board** with quiet ruling option (dot/grid/lined/blank) — not empty void.  
2. Name the surface like a note (“Scratch 1”), not “Untitled board infinite.”  
3. If infinite pan/zoom exists, add a **minimap or reset view** (Goodnotes Whiteboard lesson).  
4. Empty state should invite writing (“Write the problem…”) with paper cues, not dashboard cards.

### 7.4 Explicit non-goals (from this research)

- Matching Apple Pencil Pro barrel-roll fidelity on the web.  
- Marketplace covers / planner ecosystems.  
- Audio-synced ink (unless Free Studying Voice mode later joins the same document).  
- Excalidraw rough aesthetic as the primary ink look (optional export style only).

---

## 8. Source map

| Source | Use |
|--------|-----|
| [Goodnotes — Stylus experience](https://www.goodnotes.com/features/tablet-stylus-experience) | Paper write / digital edit positioning; scribble erase; circle lasso |
| [Goodnotes — Using the Pen tool](https://support.goodnotes.com/hc/en-us/articles/7353756785679-Using-the-Pen-tool) | Fountain / ball / brush; tip sharpness; pressure; draw-and-hold shapes |
| [Goodnotes — Customize the toolbar](https://support.goodnotes.com/hc/en-us/articles/8900755183631-Customize-the-toolbar) | Docking, hide/reorder, undo side, Notebooks & Whiteboards |
| [Goodnotes — Whiteboard](https://support.goodnotes.com/hc/en-us/articles/13693350308751-Whiteboard) | Infinite canvas, multi-board, minimap, convert from notebook |
| [Goodnotes — Pencil Pro](https://support.goodnotes.com/hc/en-us/articles/9757771783823-Utilize-the-new-features-of-Apple-Pencil-Pro) | Squeeze palette; barrel roll fountain ink |
| [Notability — Writing with Apple Pencil](https://support.gingerlabs.com/hc/en-us/articles/218333197-Writing-with-Apple-Pencil) | Latency, pressure, palm, scroll, auto-deselect eraser, double-tap, hover, haptics |
| [Notability — Tape](https://support.gingerlabs.com/hc/en-us/articles/5554940885402-Tape) | Stationery metaphor for study |
| [Paperlike — Goodnotes vs Notability](https://paperlike.com/blogs/paperlikers-insights/app-review-goodnotes-vs-notability) | Tool parity, highlighter/eraser comparison, org UX |
| [MyScript Notes](https://www.nebo.app/) | Interactive ink; notebooks vs boards |
| [Concepts](https://concepts.app/) | Infinite vector sketch / paper textures |
| [OneNote for the web — Draw](https://support.microsoft.com/en-gb/office/write-notes-and-draw-in-onenote-for-the-web-88ac049d-08a9-427b-a363-1266f606b89b) | Draw with Touch; Type vs Pen mode |

---

## 9. Open questions (product)

1. Should Free Studying default to **paged scratch** or **single infinite board** for tutor handoff?  
2. Is ruling (dot/grid) worth v1, or only blank + subtle paper color?  
3. How much of Notability’s **auto-deselect eraser** vs Goodnotes’ **scribble-to-erase** should ship first on web?  
4. When OCR fails, do we lean Goodnotes-like “stay in ink and retry” or Nebo-like “force conversion gestures”?

---

*End of research note. No application code.*
