# Excalidraw Whiteboard UX — Deep Research

**Scope:** Product/UX patterns only (tools, gestures, minimal chrome, export, tutoring takeaways).  
**Not in scope:** App implementation, npm embedding recipes, Scholaris code.  
**Sources:** [excalidraw.com](https://excalidraw.com/), [GitHub README](https://github.com/excalidraw/excalidraw), [developer docs](https://docs.excalidraw.com/), [Plus how-to / education](https://plus.excalidraw.com/), DeepWiki actions/toolbars, GitHub pen-mode / touch issues, MakeUseOf UX analysis, U of T iSchool guide.

---

## 1. Product thesis

Excalidraw is an **infinite, canvas-based whiteboard** whose primary design bet is a **hand-drawn (Rough.js) aesthetic** plus **near-zero chrome**. The sketch look is not decoration: it signals “working draft,” lowers perfectionism, and invites feedback. The free app is **local-first** (browser LocalStorage), **no account required**, with optional **E2EE real-time collaboration** and **read-only share links**.

For tutoring, the relevant frame is: *physical whiteboard speed + digital superpowers (undo, export, follow/laser, infinite space)* — not Miro-style boards of sticky notes and frames.

---

## 2. Toolset (what appears, what stays hidden)

### 2.1 Primary toolbar (`ShapesSwitcher`)

Centered horizontal strip — tools you can hit without opening menus:

| Tool | Shortcut | Role |
|------|----------|------|
| Hand (pan) | `H` | Explicit pan mode |
| Selection | `V` / `1` | Move, multi-select, transform |
| Rectangle | `R` / `2` | Boxes, cards, UI frames |
| Diamond | `D` / `3` | Flowchart decision nodes |
| Ellipse | `O` / `4` | Nodes, callouts |
| Arrow | `A` / `5` | Directed relationships; **binding + labels** |
| Line | `L` / `6` | Undirected connectors |
| Freedraw | `P` / `7` | Marker / handwriting |
| Text | `T` / `8` | Labels, notes |
| Image | `9` | Paste / place bitmaps |
| Eraser | `E` / `0` | Stroke erase |
| Frame | `F` | Slide/region grouping (esp. Plus / presentations) |
| Lasso | (toolbar) | Freeform selection |

Number keys `1`–`0` map tools in order — **muscle memory without looking**.

### 2.2 “Extra tools” dropdown (deliberately de-emphasized)

Kept out of the main strip so the default surface stays diagram-first:

- **Laser pointer** — presentation / live teaching; often gated to collab sessions
- **Mermaid → diagram** — text-to-diagram
- **AI / Magic frame** — generative assist (host can disable via `aiEnabled`)
- **Embeddable** — iframes / web embeds on canvas

**UX lesson:** power features live one click away; the cold start still looks like a blank board + one thin tool row.

### 2.3 Properties (contextual, not always-on)

Selecting an element reveals stroke / fill / width / style / sloppiness (roughness) / opacity / font / alignment / arrowheads / layers. Palette is **intentionally small presets**, not a full HSB studio.

Responsive modes:

- **full** — vertical property panel (wide desktop)
- **compact** — horizontal icon bar + popovers (narrow desktop / tablet)
- **mobile** — same idea, overflow into “…” when width is tight

### 2.4 Tool lock (`Q`)

Press `Q` to **keep the current tool** after drawing (instead of snapping back to selection). Critical for rapid flowcharting and for tutoring “write a string of equations / boxes without re-picking the tool.”

### 2.5 Diagram-specific intelligence

- **Arrow binding:** arrows snap to shapes and stay attached when shapes move; hold `Ctrl`/`Cmd` while placing/dragging an endpoint to **prevent binding**. Binding is also a preference toggle in newer builds.
- **Labeled arrows:** text on connectors without separate free-floating labels.
- **Flowchart keyboard loop (Plus docs):** `R` → `Enter` text → `Esc` → `Cmd/Ctrl+Arrow` spawn next node → `Tab` cycle shape (diamond/ellipse) → `Opt/Alt+Arrow` nudge → `Shift+1` zoom-to-fit.
- **Libraries:** drop-in community / custom sketch packs (icons, cloud shapes) without bloating the default toolbar.

---

## 3. Gestures & navigation

### 3.1 Desktop / trackpad / mouse

| Intent | Gesture |
|--------|---------|
| Pan | Hold **Space** + drag, or **middle mouse** drag, or Hand tool |
| Zoom | `Cmd/Ctrl` + `+` / `-`, wheel (with modifiers as configured), `Cmd/Ctrl+0` reset |
| Zoom to fit all | `Shift+1` |
| Zoom via drag (stylus-friendly) | Hold **`Z` + drag** (in/out by direction) — mirrors Space+pan for pen users without a wheel |
| Duplicate | `Cmd/Ctrl+D` |
| Undo / redo | Standard undo stack (`Cmd/Ctrl+Z`, redo variants) |
| Command palette | `Cmd/Ctrl+/` — discover actions without hunting menus |
| Help / shortcuts | `?` |
| Search in scene | `Cmd/Ctrl+F` |
| Links | `Cmd/Ctrl+K` |

On-canvas tip (live product copy): *“To move canvas, hold Scroll wheel or Space while dragging, or use the hand tool.”*

### 3.2 Touch

- **Two-finger pan / pinch-zoom** (core touch support since early PRs).
- **Pen mode (palm rejection):** when a pen/`pointerType === "pen"` is detected, a **pen-mode** control appears; while on, **touch is ignored** so palms don’t scribble or pan mid-stroke. Pinch-zoom is blocked in pen mode to avoid accidental scale jumps.
- Gaps called out by the project’s tablet meta-issue (still relevant for product design): no automatic finger=pan / pen=draw split; incomplete stylus eraser-button / double-tap; uneven iOS vs Android vs Windows behavior. Treat pen-mode as the **proven minimal fix**, not as “tablet OS parity.”

### 3.3 Collaboration / teaching gestures

- Live cursors + shared scene
- **Follow mode** — students track the teacher’s viewport
- **Laser pointer** — ephemeral highlight without permanently marking the board
- Read-only share links for async review

---

## 4. Minimal UI architecture

### 4.1 What “minimal” actually means here

1. **Canvas dominates** — first paint is nearly empty; chrome is thin and edge-docked.
2. **One primary tool strip** — shapes you use every session; rare tools behind overflow.
3. **Properties appear on selection** — no permanent inspector eating the board.
4. **Hamburger for secondary** — export, collab, theme, clear, load/save, language.
5. **No forced onboarding carousel** — shortcuts discoverable via `?` and command palette.
6. **Form-factor adaptation** — same actions, denser packing on phone (`getFormFactor` / docked sidebar breakpoint).

### 4.2 View modes that protect focus

| Mode | Behavior | Tutoring use |
|------|----------|--------------|
| **Zen mode** | Hides UI chrome; distraction-free canvas | Student practice; teacher “just draw” |
| **View mode** | Read-only canvas | Handouts, solved examples, parent review |
| **Grid mode** | Optional alignment grid | Geometry / graphs when precision helps |

Embedders can also hide canvas actions (`clearCanvas`, load/save, export, theme) and tools (e.g. disable image) via `UIOptions` — product-level minimalism without forking the editor.

### 4.3 Aesthetic as UX (not branding)

Rough, wobbly strokes + Virgil-like handwriting fonts:

- Reduce perfectionism time-sinks
- Make diagrams feel **editable and discussable**
- Match the mental model of a classroom whiteboard

Tradeoff (acknowledged in reviews): formal client decks / compliance docs may need polished SVG elsewhere. For tutoring that tradeoff is usually a feature.

### 4.4 Trust & friction

- No login to start drawing
- Local autosave
- Collab E2EE when sharing
- Privacy narrative used heavily in education deployments (self-host / local-first)

---

## 5. Export & portability

### 5.1 User-facing formats

| Format | Purpose |
|--------|---------|
| **PNG** | Screenshots, tutor context images, OCR pipelines, chat attachments |
| **SVG** | Docs, crisp print, slide embed |
| **Clipboard** | PNG / SVG / JSON paste into other apps |
| **`.excalidraw` JSON** | Open, editable scene (versionable, re-openable) |
| **Share / read-only link** | Async handoff without file dance |
| **Plus:** PDF / PPTX, frames-as-slides | Lecture packaging |

### 5.2 Export knobs that matter for product design

From export utilities (`exportToBlob` / `exportToSvg` / `exportToCanvas` / `exportToClipboard`):

- `exportBackground` / `viewBackgroundColor`
- `exportScale` — retina / OCR-friendly higher resolution
- `exportPadding` — breathing room around content
- `exportWithDarkMode`
- **`exportEmbedScene`** — embed full scene JSON inside PNG/SVG so an image file can be **re-imported as an editable board** (larger files; huge for “send a picture that stays a whiteboard”)

### 5.3 Why export design is UX

Excalidraw treats export as a **first-class outcome of drawing**, not an afterthought. The open JSON format + embeddable scene means the board is both a **communication artifact** and a **durable document**.

---

## 6. Education / private tutoring patterns (from Excalidraw’s own positioning)

From Excalidraw+ education use-cases:

| Scenario | Features they lean on |
|----------|----------------------|
| Complex concepts | Infinite canvas, mindmaps/flowcharts, follow mode, laser |
| Collaborative diagramming | Real-time multiplayer, share links |
| Live / online lectures | Follow + laser; Plus: frames/slides, voice hangouts, embeds |
| Assignments | Export-to-link, multi-scene workspaces |
| Private tutoring | Shared board, notes + linked illustrations, progress on one canvas |

Free vs Plus split is instructive: **core teaching loop works free** (draw, collab, laser/follow on free canvas); persistence, comments, slide frames, voice are upsells — not prerequisites for the UX philosophy.

---

## 7. What tutoring apps should steal

Prioritized for Scholaris-class free-study / tutor whiteboards (patterns, not “embed Excalidraw”):

### Must-steal (high leverage)

1. **Sketch aesthetic or equivalent “draft signal”** — imperfect strokes reduce fear and invite correction. Tutoring is revision, not graphic design.
2. **Blank board + thin tool strip** — no dashboard chrome on first paint; tools ≤ one row; secondary actions in a menu.
3. **Number / letter shortcuts for tools** — especially pen, eraser, text, rectangle, arrow; teach `?` once.
4. **Tool lock** — consecutive strokes without re-selecting the tool (equations, Feynman diagrams, multi-step algebra).
5. **Space/middle-drag pan + zoom-to-fit** — students get lost on infinite canvases; one “show everything” shortcut is mandatory.
6. **Contextual properties only** — colors/widths appear when something is selected; limited preset palette.
7. **PNG export as the tutor bridge** — high-`exportScale` snapshot → OCR / vision / “Ask tutor” is the tutoring-native path; treat export as part of the learning loop, not just download.
8. **Undo/redo + clear** — whiteboard trust fundamentals; clear should be confirmable but not buried.
9. **Pen mode / palm rejection** — if stylus is supported, ship an explicit toggle; don’t rely on OS heuristics alone.
10. **View / zen modes** — read-only worked examples; zen for focused practice.

### Should-steal (when scope allows)

11. **Arrow binding + labeled connectors** — science/math “cause → effect” and flowchart explanations.
12. **Command palette** — discoverability without thickening chrome.
13. **Laser / ephemeral pointer** — live tutoring without permanent ink pollution.
14. **Follow mode (viewport sync)** — “look here” without verbal coordinate hunting.
15. **Editable scene persistence** (JSON or embed-in-PNG) — reopen last night’s board; don’t strand students with flat bitmaps only.
16. **Libraries of exam-shaped snippets** — e.g. axes, unit circle, FBD person, titration curve stubs — drop-ins instead of redrawing scaffolding every time.
17. **No account to start drawing** — reduce activation friction for “quick scratch pad next to tutor.”

### Steal carefully / adapt

18. **Infinite canvas** — powerful for concept maps; scary without zoom-to-fit, frames, or a “page” metaphor for younger learners.
19. **Full collab E2EE** — excellent for privacy; heavy for a 1:1 AI tutor. Prefer shared snapshot → tutor over multiplayer unless human tutors are in-scope.
20. **Mermaid / AI diagram generation** — nice for structure; don’t let it replace handwriting practice when OCR/handwriting is the pedagogical goal.
21. **Frames-as-slides** — great for lesson packaging; overkill for scratch → ask-tutor.

### Explicitly do *not* copy blindly

- Enterprise sticky-note / workshop chrome (Miro-class density).
- Always-visible property sidebars on mobile.
- Huge color systems and stroke libraries before core draw/erase/pan works.
- Forcing polish / snap / UML correctness when the job is “explain this SAT problem in 30 seconds.”

---

## 8. Condensed interaction map (cheat sheet)

```
Draw fast     → pick tool (R/A/P/T…) → optional Q lock → stroke
Navigate      → Space+drag / Hand / two-finger; Shift+1 fit
Fix mistakes  → E eraser · undo · clear
Teach live    → laser · follow · share link
Finish        → PNG/SVG/clipboard · .excalidraw JSON · embed scene in image
Focus         → zen mode · view mode · pen mode (stylus)
Discover      → ? help · Cmd/Ctrl+/ palette
```

---

## 9. Source index

| Topic | Source |
|-------|--------|
| Feature list, open format, collab | [excalidraw/excalidraw README](https://github.com/excalidraw/excalidraw) |
| Live pan tip + tool strip | [excalidraw.com](https://excalidraw.com/) |
| Shortcuts / flowchart loop / command palette | [plus.excalidraw.com/how-to-start](https://plus.excalidraw.com/how-to-start) |
| Education: follow, laser, frames, tutoring | [plus.excalidraw.com/use-cases/education](https://plus.excalidraw.com/use-cases/education) |
| Tools, panels, shortcuts table | [DeepWiki Actions and Toolbars](https://deepwiki.com/excalidraw/excalidraw/4.2-actions-and-toolbars) |
| Zen / view / UIOptions | [Customization guide](https://excalidraw-excalidraw.mintlify.app/guides/customization) |
| Export APIs + embed scene | [Export utilities](https://docs.excalidraw.com/docs/@excalidraw/excalidraw/api/utils/export) |
| Pen mode / palm rejection | [PR #4657](https://github.com/excalidraw/excalidraw/pull/4657), [issue #4202](https://github.com/excalidraw/excalidraw/issues/4202) |
| Touch pan/zoom | [PR #788](https://github.com/excalidraw/excalidraw/pull/788) |
| Z+drag zoom | [PR #9481](https://github.com/excalidraw/excalidraw/pull/9481) |
| Tablet gaps | [Touch Device Support meta #9705](https://github.com/excalidraw/excalidraw/issues/9705) |
| Sketch aesthetic psychology | [MakeUseOf](https://www.makeuseof.com/making-diagrams-hand-drawn-style-tool/) |
| Ed privacy / local-first | [U of T iSchool Excalidraw guide](https://support.ischool.utoronto.ca/excalidraw-user-guide/) |

---

*Research note: Plus marketing and free editor diverge (slides, voice, comments). Steal the free-core interaction model first; treat Plus as a wishlist for live human tutoring polish.*
