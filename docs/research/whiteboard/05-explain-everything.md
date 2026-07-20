# Explain Everything — Recording & Talk-While-Draw Patterns

**Date:** 2026-07-20  
**Scope:** Explain Everything (and peer education whiteboards) as sources of **recording / talk-while-draw** product patterns. Research only — no Scholaris implementation.

**Primary sources:** [Explain Everything](https://explaineverything.com/), [Whiteboard app overview](https://explaineverything.com/whiteboard-app/), [Introduction to Recording](https://help.explaineverything.com/hc/en-us/articles/360013332774-Introduction-to-Recording), [Edit recordings](https://help.explaineverything.com/hc/en-us/articles/360013808794-Edit-recordings), [Recording modes](https://help.explaineverything.com/hc/en-us/articles/360016119880-Adjust-your-recording-with-recording-modes), [Camera Frame](https://help.explaineverything.com/hc/en-us/articles/360015052300-Control-the-Camera-Frame), [Educreations](https://www.educreations.com/), [ShowMe](https://www.showme.com/), UW InterPro [Explain Everything basic guide](https://kb.wisc.edu/page.php?id=57724).

---

## 1. Product thesis

Explain Everything sits at the intersection of **interactive whiteboard** and **explainer-video studio**. The core education loop is:

1. Put content on an infinite (or multi-slide) canvas — blank, PDF/PPT import, images, clipart.
2. Hit **Record**, then **talk while you draw / move / zoom**.
3. Stop → a **Timeline** appears with separate visual and audio tracks.
4. Polish without a full re-take (mix / overwrite / insert, trim, split).
5. Export or share as a **video** (often cloud-rendered) for flipped class, tutoring follow-up, or LMS.

Competitors in the same “talk-while-draw” niche (Educreations, ShowMe) prove the pattern’s durability: **voice + ink + scrubbable playback** beats a static screenshot for teaching. Explain Everything’s differentiator is treating the recording as an **editable animation of object events**, not only a flattened pixel screencast.

---

## 2. Talk-while-draw: the interaction contract

### 2.1 Minimal happy path

| Step | UX | Why it matters |
|------|----|----------------|
| Prepare (optional) | Import slides/PDF or sketch layout first | Separates “content placement” from “performance” |
| Arm mic | Mic toggle; headphones recommended | Reduces pencil-tap noise and echo when canvas media also plays sound |
| Record | Single Record control in a bottom bar | Low cognitive load — record is always findable |
| Perform | Draw, erase, move objects, pan/zoom while speaking | Voice and visuals stay temporally coupled |
| Pause / stop | Stop reveals Timeline | Editing is gated until there is something to edit |
| Review | Playhead scrub + play | Teachers spot-check before sharing |
| Share | Video / web link / project | Async delivery to students |

**Pattern name:** *one-button capture of multimodal explanation.* The product never asks the user to “start audio” and “start screen” as separate apps.

### 2.2 Pedagogical jobs this pattern serves

- **Teacher → class (async):** flipped lessons, worked examples, “watch this before tomorrow.”
- **Teacher → student (1:1 feedback):** annotate a submitted PDF/problem while narrating corrections.
- **Student → teacher (formative):** student records their reasoning; teacher replays to find misconceptions (Educreations markets this explicitly).
- **Live tutoring:** same canvas + built-in voice chat; optional session recording for the student afterward.
- **Students as teachers:** peer tutorials / leadership tasks.

For exam-prep products, the closest analogs are: worked-example videos, mistake walkthroughs, and “explain your solution out loud” assignments.

### 2.3 Prepare vs perform

Explain Everything (and ShowMe power users) treat recording as **performance over prepared scenery**:

- Duplicate slides before recording so a bad take doesn’t destroy layout work.
- Add media first, then record commentary.
- You do **not** have to finish in one take — extend, mix, or overwrite later.

**Design implication:** separate *canvas authoring state* from *timeline performance state*. Clearing a recording should not necessarily wipe final slide content (EE: duplicate slide, then delete recording on the copy / remove recording while keeping end-state).

---

## 3. Capture model: object timeline vs pixel screencast

### 3.1 What Explain Everything actually records

Per product docs, recording captures:

- **Object creation and manipulation over time** — not a sequence of still frames.
- Position / content changes as they happen (including erase and page deletes).
- Playback **replays manipulations moment-by-moment**.
- Voice on an **independent audio track** (and separate tracks per participant / mix take when relevant).
- Canvas media sound (videos/audio objects) with **per-element volume**.

This is why Mix/Overwrite/Insert can feel seamless: new visual clips can be layered onto an existing performance without re-baking a raw video file on device.

### 3.2 Contrast with flat screencast (Loom-style)

| Dimension | Object / event recording (EE) | Pixel screencast |
|-----------|-------------------------------|------------------|
| Edit ink without re-recording voice | Natural (lock audio, mix visuals) | Hard (re-export video) |
| File size / re-render | Events → render later (often cloud) | Large video from the start |
| Precision edits | Clip-level on tracks | Time-range cut of baked frames |
| Browser limits | Some embedded web content won’t capture | Captures whatever pixels show |
| Implementation cost | High (animation engine) | Lower (MediaRecorder / OS capture) |

**Pattern takeaway:** “talk-while-draw” products that want **polish without full re-takes** eventually need event-based visual capture (stroke/object ops with timestamps), even if v1 exports via MediaRecorder.

### 3.3 Camera Frame (what gets recorded)

- A **Camera Frame** defines the exported/recorded viewport (default landscape, often 4:3; also 16:9 / custom).
- Zoom/pan usually drive the frame; frame can be **detached** so framing ≠ navigation.
- Precise camera mode records camera moves without tool distractions.
- Optional “always show camera frame” when aspect ratio ≠ device screen.

**Pattern:** infinite canvas + **explicit export viewport**. Learners navigate freely; the video story is framed.

---

## 4. Timeline UX patterns

### 4.1 Structure

After stop:

- **Upper track:** visual / “video” interactions (clips of canvas activity).
- **Lower track:** audio clips.
- **Playhead (red):** current time; scrub by scrolling/swiping timeline.
- **Timer control:** toggles timeline visibility once something exists.
- **Zoom timeline:** pinch or zoom levels for fine edits.
- **Per-track lock:** lock audio or video so Mix/Overwrite/clear won’t touch it.

### 4.2 Editing verbs (post-capture)

Documented editing operations map cleanly to a media-editor vocabulary:

| Verb | Behavior |
|------|----------|
| Clear selection | Remove motion/audio in a range (leave gap / empty) |
| Delete clip | Remove one clip |
| Delete all to end | Trim from playhead forward |
| Delete and compact | Remove range and join remaining (tighten pacing) |
| Split | Cut clip at playhead (esp. for audio cleanup) |
| Smooth | Soften object/zoom motion in a range (iOS/web; not Android) |
| Speed up | Time-lapse range (affects A/V together; limited platforms) |
| Fade in audio | Soften abrupt audio starts |

**Undo:** available only immediately after an edit on mobile — a constrained safety net, not a deep history UI.

### 4.3 Recording modes (re-take without starting over)

Default after first recording: choose mode from the recording bar (often labeled MIX):

| Mode | Intent | Timeline effect |
|------|--------|-----------------|
| **Mix** (default) | Separate voice vs animation takes; layer camera control | New clips alongside existing on unlocked tracks |
| **Overwrite** | Redo from a point | Replaces clips on unlocked tracks **after** playhead |
| **Insert** | Forgot a beat mid-timeline | Expands timeline at playhead; other parts stay (web editor lag) |

**Pattern name:** *non-destructive multi-take on a dual-track timeline.* Critical for teachers who flub a sentence but got the drawing right (lock video, re-record audio) or vice versa.

### 4.4 Slides as scenes

- Each slide has its **own independent timeline**.
- Export concatenates slides into one video.
- Continuous recording can span slide changes; advancing slides does not necessarily stop the take.
- Adding a slide ≈ new scene.

**Pattern:** multi-page deck + per-page performance tracks, joined at export.

---

## 5. Live vs async voice

Explain Everything supports two related but distinct voice modes:

1. **Recorded narration** — mic → audio track on timeline → exportable video.
2. **Built-in voice chat** — live collaboration over the same canvas without a separate Zoom call; sessions can themselves be recorded.

**Pattern split for product design:**

| Mode | Sync | Artifact | Primary user |
|------|------|----------|--------------|
| Talk-while-draw record | Async | Shareable video | Teacher / tutor / student creator |
| Voice chat + collab canvas | Sync | Live presence (+ optional recording) | Tutoring / classroom |
| Pixel screencast of another app | Async | Video of UI | General communication (Loom) |

Education whiteboards that only do live chat miss the flipped-classroom artifact; products that only do Loom-style capture miss ink-aware editing.

---

## 6. Peer pattern map (same problem space)

| Product | Talk-while-draw shape | Editing depth | Notes |
|---------|----------------------|---------------|-------|
| **Explain Everything** | Object timeline + mic + camera frame | Deep (mix/OVR/INS, clip ops) | Collaboration + LMS/LTI |
| **Educreations** | Record voice + iPad screen/annotations | Simpler than EE | Strong “replay student work” framing |
| **ShowMe** | Voice + draw lessons on iPad | Simpler; community share | Flipped-class staple; duplicate slides before re-record tip |
| **Loom / generic screencast** | Mic + pixels (+ optional facecam) | Video trim | Not ink-native; used *over* whiteboards |

Shared industry pattern regardless of brand:

> **Record button → multimodal performance → scrubbable A/V → share link.**

Depth of timeline editing is the main axis of differentiation.

---

## 7. Recording bar IA (reference layout)

From EE’s documented defaults (useful as a checklist, not a clone):

- **Bottom chrome:** Record, mic mute, camera-frame toggle, (after record) mode selector + timer/timeline.
- **Left/side:** zoom / camera navigation.
- **Creative tools** stay available while recording (draw, move, import) — recording does not enter a stripped “capture-only” mode.
- Timeline stays **collapsed until first stop**, then expands for edit — progressive disclosure.

Mic mute mid-recording is first-class (crossed-out mic = no audio capture).

---

## 8. Quality & production tips encoded in the product

Help content encodes production literacy into UX copy:

- Prefer **headset mic** (pen noise, echo with canvas A/V).
- Mute when not speaking if ambient noise is high.
- Use camera frame consciously for aspect ratio / focus.
- Prefer **compact deletes** to remove dead air.
- Use Mix for “draw first, narrate second” or “narrate first, animate second.”
- Cloud render offloads device cost for final MP4.

These are product features *and* teacher onboarding content.

---

## 9. Pattern catalog (concise)

Reusable patterns for any education whiteboard + voice feature:

1. **One-button multimodal record** — ink ops + mic share one Record control.
2. **Dual-track timeline** — visual events vs audio, independently lockable.
3. **Stop-reveals-editor** — timeline appears after first take.
4. **Mix / Overwrite / Insert** — multi-take without full restart.
5. **Prepare then perform** — authoring state survives recording deletion.
6. **Camera frame ≠ infinite canvas** — explicit export viewport / storytelling camera.
7. **Slides as scenes** — per-slide timelines, concatenated export.
8. **Live voice chat ≠ recorded narration** — support both jobs separately.
9. **Event capture > pixel capture** when polish/re-take matters.
10. **Share as video artifact** — primary education delivery unit for async.
11. **Headphones affordance** — reduce stylus/tap noise in guidance and defaults.
12. **Scrub to misconception** — playback as formative assessment of student reasoning.

---

## 10. Implications for Scholaris Free Studying (non-binding)

Scholaris already has a **draw → OCR → Ask tutor** whiteboard path and separate **voice / Kokoro TTS** surfaces. Explain Everything’s lesson is about a different job: **creating a time-synced explanation artifact**, not only capturing a static board for AI.

If Scholaris ever adds talk-while-draw recording, research suggests prioritizing:

| Priority | Pattern | Rationale |
|----------|---------|-------------|
| P0 | Record ink + mic with shared clock; playback scrub | Delivers the core teaching loop |
| P0 | Pause/stop + simple trim or “delete from here” | Teachers need one recovery path |
| P1 | Separate audio re-take (lock visuals) | Most common polish need |
| P1 | Export/share short video or in-app replay | Flipped / tutor follow-up |
| P2 | Full Mix/Insert object engine | High cost; EE’s moat |
| P2 | Multi-slide independent timelines | Needed for long lessons, not single worked examples |
| Defer | Live collab voice chat | Overlaps Zoom/Meet; different product |

**Do not confuse** with current Free Studying whiteboard goals (handwriting → OCR → Scho). Those optimize **AI help on a static snapshot**. EE patterns optimize **human explanation over time**. Both can coexist; they share ink tooling, not the same capture pipeline.

---

## 11. Open questions (research backlog)

- Exact stroke/event serialization format EE uses (proprietary; infer only from behavior).
- Web vs native feature parity for Insert / Smooth / Speed-up (docs already show gaps).
- How multi-participant audio tracks are mixed on export when collaborators are recorded.
- Accessibility of timeline editing (keyboard, screen reader) — not well documented publicly.
- Whether student-privacy policies treat recorded tutorials as FERPA-sensitive artifacts by default.

---

## 12. Source index

- https://explaineverything.com/
- https://explaineverything.com/whiteboard-app/
- https://explaineverything.com/education/
- https://help.explaineverything.com/hc/en-us/articles/360013332774-Introduction-to-Recording
- https://help.explaineverything.com/hc/en-us/articles/360013808794-Edit-recordings
- https://help.explaineverything.com/hc/en-us/articles/360016119880-Adjust-your-recording-with-recording-modes
- https://help.explaineverything.com/hc/en-us/articles/360015052300-Control-the-Camera-Frame
- https://help.explaineverything.com/hc/en-us/articles/4402096301330-A-quick-start-guide-to-Explain-Everything-Whiteboard
- https://kb.wisc.edu/page.php?id=57724
- https://www.educreations.com/
- https://www.showme.com/
