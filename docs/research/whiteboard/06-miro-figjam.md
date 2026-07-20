# Miro / FigJam Education Board UX — Steal vs Skip for Tutoring

**Date:** 2026-07-20  
**Scope:** Education-oriented UX patterns in Miro and FigJam (classroom / workshop boards), evaluated for **1:1 tutoring** and Scholaris Free Studying (student + Scho AI tutor), not multiplayer classrooms.  
**Constraint:** Research only — no product implementation guidance beyond UX recommendations.

---

## Executive verdict

Miro and FigJam are **facilitation platforms** optimized for many humans on one infinite canvas. Scholaris tutoring is **problem-solving + explanation**: one learner, one tutor (human or Scho), handwriting/diagrams as evidence, OCR → Ask tutor as the primary “wow.”

**Steal the job patterns** (focus, structure, low-friction ink, clear “what am I working on?”), not the **collaboration OS** (cursors, voting, breakouts, stamps, widgets, slide decks).

| Product job | Miro / FigJam | Scholaris tutoring board |
| --- | --- | --- |
| Primary user | Facilitator + N participants | Learner (+ optional AI tutor) |
| Success metric | Engagement, consensus, co-creation | Correct reasoning, solved problem, tutor-usable snapshot |
| Canvas metaphor | Workshop / lesson map | Scratchpad / exam booklet page |
| Social layer | Required | Usually noise |

---

## What each product optimizes for

### Miro (education plan + classroom patterns)

Miro’s education story is a **structured lesson board**:

- **Frames** as lesson sections / “slides” with a frames panel, numbering, and Present mode.
- **Interactive Presentation Mode**: follow-presenter, lightbox around the active frame, click-to-zoom, reactions / raise hand, activity apps (timer, voting, breakout frames), presenter handoff.
- **Sticky notes**, shapes, connectors, comments, Kanban-style layouts for responses and group zones.
- **Attention tools**: “bring everyone to me,” follow-me, named cursors, laser-like pointing during present.
- **Templates** for workshops and teaching; multimedia embeds; AI sidekicks/flows (limited on Education).
- Known tradeoffs for learning: **steep toolbar**, board bloat, cognitive overload without frames; pen is present but the product center of gravity is **objects + facilitation**, not handwriting-first tutoring.

### FigJam (Figma for Education / Jamboard successor pitch)

FigJam’s education story is a **playful participation board**:

- Infinite canvas with **dot-grid** journal feel; pan/zoom like a map.
- **Sections** as “pages” for groups or activity zones.
- **Sticky notes + stamps/emotes** as the participation primitive (quiet students contribute asynchronously).
- **Ink**: marker + highlighter that can stick to objects; annotate diagrams/PDFs/images; free-draw.
- **Shapes + connectors** for organizers, timelines, flow charts.
- **Widgets** (polls, voice memo, photo booth, timers) and **Community templates** (KWL, Think-Pair-Share, Frayer, icebreakers).
- **Spotlight**, voting, music, version history — meeting/classroom facilitation.
- Tradeoffs for tutoring: excellent for **English / planning / sorting activities**; weaker as a **math/handwriting** surface; ink exists but stickies/widgets dominate the marketed classroom flow.

### Shared DNA (both products)

1. Infinite canvas + zoom/pan navigation  
2. Soft “page” boundaries (frames / sections) to fight chaos  
3. Sticky notes as atomic student voice  
4. Real-time multiplayer presence  
5. Facilitation chrome (timer, vote, reactions)  
6. Huge template libraries for facilitators  
7. Present / spotlight / follow-the-leader attention control  

Those are excellent for **classrooms and workshops**. Most of them are the wrong center of gravity for **tutoring**.

---

## Steal — patterns worth adapting for tutoring

Steal **intent**, not Miro/FigJam chrome. Prefer a thin Scholaris-native expression.

### 1. Bounded workspaces (“frames / sections”) without workshop UI

**What they do:** Frames (Miro) and sections (FigJam) chunk an infinite canvas so learners are not lost in a sea of objects. Educators number frames for reading order and Present mode.

**Why steal for tutoring:** Cognitive load. A blank infinite board feels like “where do I start?” Bounded regions answer: *problem*, *work*, *check*, *notes*. Accessibility research on Miro boards explicitly recommends frames to reduce overload.

**Tutoring shape:**

- Soft regions or page-like canvases (e.g. “Attempt,” “Scratch,” “Final”) — not a Frames sidebar with slide reordering.
- Optional “fit this region” / reset view after zoom chaos.
- Skip presentation ordering, lightbox decks, and presenter notes.

### 2. Attention / focus — without follow-me multiplayer

**What they do:** Follow presenter, spotlight, lightbox, laser pointer, “bring everyone to me.”

**Why steal:** Tutoring needs a shared focal point when a human tutor is live, or when Scho highlights a step. The *problem* is attention; the *solution* need not be multiplayer cursors.

**Tutoring shape:**

- Zoom-to-selection / “show me this stroke cluster.”
- Temporary highlight/laser that the learner (or tutor) controls.
- For AI: highlight the region that OCR/tutor is discussing.
- Skip named cursors, audience join modals, handoff/takeover.

### 3. Ink-first annotation over objects (FigJam’s better lesson)

**What they do:** FigJam markets marker/highlighter on diagrams, PDFs, and images; free-draw for concepts. Miro has pen but leans object/sticky-heavy.

**Why steal:** Exam tutoring is mostly **write and mark up**, not rearrange sticky hexagons. Annotation of a pasted diagram or problem image is high value for AP/IB science and math.

**Tutoring shape:**

- Pen, eraser, color, width as the primary toolbar (Scholaris already aligned).
- Import/paste problem image → draw on top.
- Highlighter that is “ink,” not a separate object type unless needed.
- Skip stamps, sticker packs, photo booth widgets.

### 4. Low-friction capture of thinking (sticky-note *job*, not sticky-note *UI*)

**What they do:** Stickies lower the bar for “put something down”; color codes people or themes; voting clusters ideas.

**Why steal:** Quiet / uncertain students benefit from atomic, movable thoughts. Tutoring equivalent is **step cards** or short text chips the learner can reorder into a solution path — especially for FRQs and essay planning.

**Tutoring shape:**

- Optional “step” or “claim” chips for structured reasoning (claim → evidence → warrant).
- Color for *role* (assumption / equation / conclusion), not for *which classmate*.
- Skip anonymous class voting, stamp celebrations, sticky voting sessions.

### 5. Connectors for causal / sequential structure (sparingly)

**What they do:** Lines that stay attached when objects move; end styles; text on connectors.

**Why steal:** Concept maps, force chains, proof outlines, and “if → then” tutoring diagrams benefit from sticky connections.

**Tutoring shape:**

- Simple arrow tool between a few nodes — not a full flowchart/UML kit.
- Prefer freehand arrows for speed during live problem solving; promote to connectors only if persistence matters.
- Skip smart flowchart libraries and enterprise diagram packs.

### 6. Clear empty-state + “start here” affordance

**What they do:** Templates, preset sticky pads, titled sections with directions — so students are never staring at a blank workshop void.

**Why steal:** Blank canvas abandonment is real. Tutoring needs a lighter version: one prompt, not 200 Community templates.

**Tutoring shape:**

- Empty state: “Write the problem or paste it — then Ask Scho.”
- One optional scaffold (e.g. “Show work” grid / lined area), not Frayer + KWL + debate packs.
- Skip community template browsers and icebreaker sticker packs.

### 7. Export / snapshot as a first-class outcome

**What they do:** Export frames as images/PDF; Talktrack-style async walkthroughs on Miro.

**Why steal:** Tutoring’s durable artifact is the **worked solution**, not the live board session. Scholaris’s OCR → Ask tutor path is already this idea done right.

**Tutoring shape:**

- PNG/region snapshot → OCR → editable text → tutor context (keep).
- Optional “save attempt” to notes.
- Skip Talktrack video recording, Miro Slides PDF decks, and presentation export as the primary loop.

### 8. Hide chrome while working

**What they do:** Presentation mode hides menus; FigJam keeps a small toolbar; Miro lets facilitators restrict participant tools.

**Why steal:** Drawing with a dense left rail of 30 tools breaks flow. Tutoring wants **ink + undo + clear + Ask tutor**.

**Tutoring shape:**

- Compact tool strip; progressive disclosure for rare tools.
- Full-screen / distraction-free mode for tablet + stylus.
- Skip participant tool gating (no multiplayer roles).

### 9. Soft structure for multi-step problems (Miro “weekly board” idea, solo)

**What they do:** Educators grow a board over a term: frames per week, progress visible in one place.

**Why steal for tutoring (solo):** A session can accumulate attempts — wrong path left visible, new attempt beside it — so the learner *sees* progress and misconceptions.

**Tutoring shape:**

- Keep previous attempts visible (dimmed) rather than forcing a single wipe.
- Undo/clear scoped carefully so “clear” does not erase learning history by accident.
- Skip class-wide evolving semester boards and group private frames.

---

## Skip — patterns that fight tutoring UX

### 1. Real-time multiplayer presence as default

Named cursors, live avatars, “who’s here,” follow-me, raise hand, reactions.

**Why skip:** 1:1 tutoring (and AI tutoring) does not need social awareness chrome. Presence is distracting on small screens and expensive to build/maintain. If live human co-browsing is ever needed, treat it as a rare mode — not the product identity.

### 2. Classroom facilitation suite

Timers, voting, breakout frames, polls, music, stamps, emotes, Photo Booth, Voice Memo widgets.

**Why skip:** Those optimize for equity of voice in a *group*. Solo tutoring equity is “can I write the work and get feedback,” not “did I stamp the icebreaker.”

**Exception (narrow):** A simple optional countdown for timed SAT practice could live *outside* the board (exam chrome), not as a FigJam widget.

### 3. Sticky-note brainstorm culture as the default interaction

KWL charts, Think-Pair-Share pads, preset sticky walls, color-per-student.

**Why skip:** Exam tutoring is not ideation workshop. Stickies push users into **typing short slogans** instead of **writing equations and diagrams**. FigJam is explicitly stronger for English/planning than math handwriting.

### 4. Presentation / slides hybrid (Miro Slides, Present mode, lightbox decks)

**Why skip:** Tutors do not “present a deck” to one learner sitting beside them on the same problem. Slide metaphor fights the scratchpad metaphor. Building frames-as-slides + Present + handoff is a large product with little tutoring ROI.

### 5. Infinite canvas without guardrails as the hero pitch

**Why skip (as marketing/UX center):** Infinite canvas is useful *technically*; as a *hero*, it encourages sprawl. Tutoring prefers **one problem in view**. Use infinite space as overflow, not identity.

### 6. Enterprise / classroom object zoo

Kanban, Azure/Asana cards, tables, code blocks, advanced UML, 5,000+ templates, AI Sidekick flows.

**Why skip:** Overwhelm is the #1 Miro complaint. Every extra object type competes with pen latency and OCR quality. Scholaris should stay closer to **Excalidraw/tldraw simplicity** than Miro depth.

### 7. Template marketplace / Community as onboarding

**Why skip for v1 tutoring:** Facilitator templates assume a teacher preparing a lesson for 30 kids. A learner opening Free Studying needs zero setup. Templates also create inconsistent board states that break OCR and tutor prompts.

### 8. Comment threads as the feedback channel

**Why skip as primary:** Tutoring feedback should be **conversational** (Scho chat / voice), tied to a snapshot — not Miro-style comment pins on objects. Comments duplicate the tutor pane and fragment context.

### 9. “Fun” engagement layer (stamps, confetti, music)

**Why skip:** Fine for K–12 classroom energy; clashes with cobalt exam-prep seriousness and adds clutter. Celebrate via tutor copy or progress in the hub, not board stickers.

### 10. Guest / edu license / Chromebook fleet admin stories

**Why skip for product UX:** Important for school procurement; irrelevant to Scholaris BYOK learner UX. Do not shape the board IA around Classroom admin.

---

## Steal vs skip matrix (quick reference)

| Pattern | Miro | FigJam | For Scholaris tutoring |
| --- | --- | --- | --- |
| Pen / marker / highlighter | Yes | Strong edu pitch | **Steal** (primary) |
| Frames / sections | Core | Sections | **Steal** (light bounds) |
| Follow / spotlight / laser | Strong | Spotlight | **Steal** (solo focus only) |
| Sticky notes | Core | Core | **Steal job** / **skip default UI** |
| Shapes + connectors | Deep | Lighter | **Steal thin**; skip libraries |
| Templates | Huge | Classroom packs | **Skip** (maybe 1 scaffold) |
| Voting / timer / breakouts | Activity apps | Widgets | **Skip** |
| Stamps / emotes / stickers | — | Core edu | **Skip** |
| Present / Slides | Core | — | **Skip** |
| Multiplayer cursors | Default | Default | **Skip** (default) |
| Widgets (poll, voice, photo) | Apps | Widgets | **Skip** |
| Export / snapshot | Frames/PDF | — | **Steal** → OCR/tutor |
| Comments | Threaded | Comments | **Skip** as primary feedback |
| Minimap / deep zoom chrome | Strong | Simpler | Optional later; not v1 |

---

## Implications for Scholaris Free Studying

Aligned with the shipped direction (handwriting board → OCR → Ask Scho — **not a Miro clone**):

1. **Keep the board a scratchpad**, not a workshop OS.  
2. **Invest in ink quality, undo, clear, empty state, snapshot→OCR→tutor** — these are tutoring-native equivalents of Miro/FigJam’s best *jobs*.  
3. **Borrow structure, not social**: soft regions, focus/zoom, optional step chips, image annotate.  
4. **Do not compete on template/facilitation surface area** with Miro Education or FigJam Classroom — that war is lost on scope and wrong for exam prep.  
5. If a human tutor co-view is ever added, gate it behind an explicit **Live session** mode; never make presence the default Free Studying whiteboard.

### Anti-goals (explicit)

- Do not add sticky walls, stamps, voting, or Present mode to look “like FigJam.”  
- Do not grow a left-rail tool zoo to look “like Miro.”  
- Do not let infinite-canvas aesthetics override “one problem, clear ask.”  

### North-star sentence

> A tutoring whiteboard succeeds when the learner can **show their work** and the tutor (Scho) can **see the same work** — not when thirty classmates can vote on sticky notes.

---

## Sources (selected)

- Miro Help: Education plan; Interactive Presentation Mode; Miro Slides  
- Classroom walkthroughs: Miro frames, stickies, voting, Present for teaching  
- Figma Education / FigJam classroom: stickies, stamps, sections, ink, widgets, templates; Jamboard alternative positioning  
- Educator comparisons (2025–2026): Miro depth vs FigJam simplicity; tutoring reviews noting Miro/FigJam overkill for basic equation tutoring and weak math tooling  
- Accessibility notes: Miro frames to reduce cognitive overload; hide collaborator cursors when distracting  

---

## One-line takeaway

**Steal focus + structure + ink + snapshot; skip multiplayer facilitation, stickies-as-culture, and slide/workshop chrome.**
