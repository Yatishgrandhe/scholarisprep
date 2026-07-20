# Google Stitch & Google AI Canvas UX — Immersive Write/Draw + Talk-to-AI

**Scope:** UI patterns for keeping a board primary while the user talks/types to an AI agent. Sources: Google Labs Stitch announcement (Mar 2026 “vibe design”), stitch.withgoogle.com walkthroughs, Gemini Canvas, Google AI Studio Build mode. Not a product teardown for code export/MCP.

---

## 1. Product frame

**Google Stitch** (`stitch.withgoogle.com`) is Google Labs’ AI-native **software design canvas**: infinite spatial workspace + design agent. The Mar 2026 redesign replaced an earlier **chat-first** generator with a **canvas-first** shell so screens, sketches, screenshots, URLs, and code snippets live as co-equal context on one surface.

**Related Google canvases** (same family of “artifact stays center” UX):

| Product | Primary surface | AI role |
| --- | --- | --- |
| **Stitch** | Infinite design canvas (UI frames) | Design agent + voice Live Mode |
| **Gemini Canvas** | Document / app / quiz artifact | Chat + “Create” transforms |
| **AI Studio Build** | Live preview (+ Code tab) | Left chat iterates the app |

Shared principle: **the artifact is the stage; conversation is instrumentation**, not the main viewport.

---

## 2. Full-bleed canvas

### Stitch: infinite room, not a chat transcript

- **Viewport = canvas.** Generated mobile/web frames, references, and notes sit spatially; pan/zoom explores the project instead of scrolling a message list.
- **Context is dropped onto the board.** Images, text blobs, code, competitor screenshots, PRDs land as canvas objects. The agent reasons across **what is visible / present**, not only the last prompt.
- **Diverge in space.** Multiple directions sit side-by-side; Agent Manager jumps you to the matching region when you pick a parallel task—spatial organization replaces tabbed chat threads.
- **Empty start is still canvas-sized.** Welcome is a large quiet field with a **bottom-anchored** composer (“Welcome to Stitch…”), not a centered chat card that shrinks the work area.

### Gemini Canvas / AI Studio parallel

- Gemini: select **Canvas** under the prompt bar → artifact opens as the working document; chat continues beside/around it.
- AI Studio Build: **right pane = live preview** (or Code); left pane = chat. The “board” is the running UI; chat never replaces the preview.

**Pattern takeaway:** Make the writable/drawable surface occupy **~all remaining height/width** after a thin chrome strip. Treat AI output as **objects on that surface** (frames, notes), not as the primary scroll container.

---

## 3. Minimal chrome

Stitch’s shell is deliberately sparse so attention stays on frames:

| Region | What lives there | What does *not* |
| --- | --- | --- |
| **Left edge** | Slim project sidebar (examples + your projects) | Dense tool palettes, property inspectors by default |
| **Bottom center** | Primary prompt/composer | Floating multi-panel dashboards |
| **Composer chrome** | App ↔ Web toggle; **+** (Upload files / Website URL); palette/design-system picker; model mode; Live Mode (voice) | Persistent right-rail “settings wall” |
| **Corners** | Theme toggle (light/dark, often bottom-right); Play / export when a flow exists | Always-on secondary marketing chrome |

**Progressive disclosure:** Design systems, model modes (e.g. Flash / Pro / Redesign / Ideate), and attach menus open from **icons on the composer**, not permanent side drawers. After generation, actions (regenerate, annotate, device preview, export, Play) attach to **selected frames** or a light top/action strip—not a permanent IDE ribbon.

**Gemini Canvas:** Mode chip under the prompt bar (`Canvas`); heavy transforms (`Create` → web page / infographic / quiz / audio) sit as **one control on the artifact chrome**, not a second app shell.

**Pattern takeaway:** One **persistent entry point for intent** (composer + voice). Everything else is **contextual to selection** or a **single-purpose overlay**.

---

## 4. AI chat docking

Stitch evolved **from chat-as-app → chat-as-docked instrument**:

1. **Bottom dock (default).** Prompt field sits on the lower edge of the canvas (walkthroughs describe bottom-left/bottom center). Eyes stay on frames above; typing feels like commanding the board, not leaving it.
2. **Agent ≠ transcript takeover.** The Design Agent tracks project evolution and canvas context; replies often **manifest as new/updated frames** (or critiques) rather than a full-height message column stealing the stage.
3. **Agent Manager as navigation, not chat history.** Parallel explorations are managed as **task/direction list** that teleports you on-canvas—history is spatial + agent-state, not only a left-rail Slack thread.
4. **Selection-scoped talk.** Direct edits (text/images) happen on-frame; follow-ups reference selection or deixis (“this screen,” “the logo I just uploaded”).

**AI Studio Build (explicit dual-pane):** Chat **docks left**, preview **dominates right**. Annotation mode: highlight a region of the UI → describe the change—chat is grounded to a **pointer on the artifact**.

**Gemini Canvas:** Artifact-first pane; conversation remains the **control channel** for refine/expand/tone, with preview/code toggles on the artifact header.

**Pattern takeaway for “talk while board stays primary”:** Prefer **bottom or narrow side dock ≤~25–30% width**, collapsible; never make the transcript the default full-bleed view once content exists. Bind prompts to **selection + canvas contents**.

---

## 5. How the user “talks” while the board stays primary

### Text while looking at the board

- Composer stays **pinned at the bottom**; canvas remains interactive (pan, select frames) above.
- Attachments via **+** (files, website URL) feed the same agent context without opening a separate “upload page.”
- Platform constraint (App vs Web) is a **toggle on the dock**, so mode switch doesn’t open a settings route.

### Voice = Live Mode on the canvas

Stitch’s **Start Live Mode (Preview)** sits next to send on the composer. Official patterns:

- **Speak to the canvas**, not to a separate voice app: “give me three menu options,” “show this screen in different palettes.”
- **Vision + deixis:** In voice mode the agent “sees” what you’re working on and what you click—“change **this** screen.”
- **Interview mode:** Agent asks clarifying questions; answers stay spoken while frames update live.
- **Critique as sounding board:** Real-time design feedback without leaving the spatial view.
- **Hands-free navigation:** e.g. “show the dashboard screen”—voice drives camera/focus, not only generation.
- **Queued speech:** Multiple spoken changes can be accepted and processed together so the board keeps updating without keyboard round-trips.

### Multimodal “write/draw” into the same primary surface

- **Sketch / wireframe / screenshot upload** (heavier modes) becomes canvas context; agent interprets layout into hi-fi frames **on the board**.
- **URL extract** pulls tokens/style onto the project without leaving the session.
- **Direct edit + AI:** Manual tweaks on frames; voice/text only when you want generative leaps—avoids “every change = new chat turn.”

### Instant Play without leaving immersion

- **Play** previews stitched flows in place; auto-links screens; can generate the **next logical screen from a click**—prototyping stays on/near the canvas rather than exporting to another tool first.

---

## 6. Concrete pattern checklist (portable)

Use these as design constraints for an immersive write/draw + AI board:

1. **Full-bleed stage** — Canvas/artifact fills the viewport; chrome is edge-thin.
2. **Bottom intent dock** — Text + attach + mode + mic in one strip; transcript optional/secondary.
3. **Spatial context > chat history** — Put references on the board; agent reads the board.
4. **Voice overlays the stage** — Mic on the dock; deixis via click/selection; updates appear on-canvas in real time.
5. **Parallel work as places** — Manager/list jumps to regions; don’t spawn competing full UIs.
6. **Selection-scoped commands** — “This,” annotations, highlight-then-ask (AI Studio).
7. **Progressive chrome** — Palettes, models, export appear when needed; hide when drawing/panning.
8. **Play in place** — Preview flows without abandoning the spatial workspace.

---

## 7. Relevance to tutoring / study whiteboards

Stitch is UI-design-specific, but the immersion model maps cleanly to **handwriting board + tutor**:

- Board = primary (ink stays full-bleed).
- Tutor = bottom dock + optional narrow history, not a chat takeover.
- Voice Live Mode ≈ talk-through-a-problem while pointing at strokes.
- Dropped photos/PDF crops ≈ Stitch’s upload-to-canvas context.
- “Play” ≈ run-through / check-work without leaving the board.

Avoid the pre-2026 Stitch mistake: **chat-as-home**. Once the user is “on the board,” every AI affordance should feel like a **docked co-pilot**, not a new destination.

---

## Sources

- [Design UI using AI with Stitch — Google Labs blog](https://blog.google/innovation-and-ai/models-and-research/google-labs/stitch-ai-ui-design/) (Mar 18, 2026)
- [Incrypted — Google Stitch complete guide](https://incrypted.com/en/google-stitch-ai-ui-design-guide/) (interface walkthrough)
- [o-mega — Google Stitch & AI design tools](https://o-mega.ai/articles/google-stitch-and-ai-design-tools-complete-guide)
- [Digital Citizen — What is Google Stitch](https://www.digitalcitizen.life/what-is-google-stitch-and-how-it-turns-text-into-app-designs/)
- [Gemini Canvas overview](https://gemini.google/overview/canvas/)
- [Google AI Studio Build mode](https://ai.google.dev/gemini-api/docs/aistudio-build-mode)
