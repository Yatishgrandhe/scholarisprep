# AI Canvas + Side Chat — Product Pattern Research

**Date:** 2026-07-20  
**Scope:** ChatGPT Canvas, Claude Artifacts, Gemini Canvas, and Cursor-style primary-artifact + side-chat layouts.  
**Goal for Scholaris:** Design guidance for “talk with the tutor while the work stays center” (whiteboard / notes / doc / sim) — **research only; no app code in this pass.**  
**Sources:** OpenAI Canvas launch post (2024-10), Anthropic Claude Help Center Artifacts, Google Gemini Canvas blog (2025-03) + Gemini Enterprise Canvas docs, Cursor Canvases docs/blog (Cursor 3.1), secondary UX pattern writeups.

---

## 0. One-line verdict

The industry converged on the same shell: **durable primary surface (center/right) + conversational control channel (side/left)**. Chat is for intent and critique; the artifact is for reading, editing, previewing, and versioning. Scholaris Free Studying should treat whiteboard / OCR text / notes / PDF / sim as that primary artifact—not bury them in chat bubbles.

---

## 1. Shared pattern (all four products)

| Layer | Role | Stays put when… |
|-------|------|-----------------|
| **Artifact / canvas** | Document, code, preview, dashboard, interactive app | User sends the next chat turn |
| **Chat / agent** | Prompt, critique, targeted edit requests, shortcuts | Artifact updates in place |
| **Selection → prompt** | Highlight a region; ask AI about *that* slice | Rest of artifact unchanged |
| **Versions** | Step back/forward; sometimes show diffs | Bad rewrite is recoverable |
| **Export / share** | Copy, download, Docs, publish URL | Work leaves the chat silo |

### Mental model

```
┌─────────────────────────────────────────────────────────┐
│  [Primary artifact — document / code / preview / board] │
│  User can read, edit, highlight, accept suggestions     │
├──────────────────────┬──────────────────────────────────┤
│  Chat (narrow)       │  OR chat left + artifact right   │
│  Iterate in natural  │  Artifact dominates viewport     │
│  language            │  (~50–65% width on desktop)      │
└──────────────────────┴──────────────────────────────────┘
```

**Cursor IDE variant (classic):** file/editor is primary center; AI chat docks as a **side panel**.  
**Cursor Canvases variant:** interactive React artifact docks as a **peer pane** next to chat (Agents Window), not as another chat bubble.

---

## 2. ChatGPT Canvas (OpenAI)

### 2.1 What it is

A **split-view collaborative editor** for writing and coding. Chat stays on one side; a persistent document/code pane opens beside it. Introduced Oct 2024 as the first major ChatGPT visual-shell update since launch; later rolled out broadly (Free included by early 2025 / GA through 2026 guides).

### 2.2 Layout & trigger

- **Layout:** Chat + right-side canvas panel; document/code anchored while conversation continues.
- **Auto-open:** Model detects long-form writing or coding tasks.
- **Manual open:** Prompt includes “use canvas” / “open in canvas,” or pick Canvas from tools/composer.
- **Trained behaviors (launch research):** when to open canvas, targeted edit vs full rewrite, inline critique. Writing trigger accuracy ~83% vs prompted baseline; coding deliberately biased against over-triggering power users.

### 2.3 Interaction loop

1. Draft lands **in the canvas**, not only as a scrolling chat message.
2. User **edits directly** in the pane.
3. User **highlights** a section → ChatGPT focuses edits there (copy-editor / code-reviewer metaphor).
4. **Shortcuts** (writing): suggest edits, adjust length, change reading level, final polish, add emojis.
5. **Shortcuts** (coding): review code, add logs, add comments, fix bugs, port language.
6. **Version history:** back/forward; “Show changes” style red/green diffs in later guides.
7. **Export:** copy, PDF/download, Google Docs (plan-dependent), share URLs in some tiers.

### 2.4 What Scholaris should steal

| Pattern | Why it fits tutoring |
|---------|----------------------|
| Selection-scoped asks | “Explain this paragraph / this equation / this stroke region” without regenerating the whole board |
| Shortcut chips | Length / reading level / “make it AP-style” mapped to exam modes |
| Version restore | Student undoes a bad tutor rewrite of their notes |
| Auto vs explicit open | Auto for long drafts; never steal focus on short Q&A |

### 2.5 Limits / caveats

- Still **doc/code-centric**, not a freeform whiteboard.
- Autodetect can be inconsistent → always offer an explicit “Open canvas / Open board with tutor” control.
- Very long single documents degrade edit locality → split artifacts (sections, pages).

---

## 3. Claude Artifacts (Anthropic)

### 3.1 What it is

A **dedicated window to the right of chat** for substantial, standalone content the user will iterate on or reuse. Criteria (Help Center): typically **> ~15 lines**, self-contained, complex enough to stand alone, likely to be edited/referenced later.

### 3.2 Content types (render differently)

| Type | Preview behavior |
|------|------------------|
| Markdown / plain documents | Formatted doc; in-place edit + “Edit with Claude” on highlight |
| Code snippets | Code view |
| Single-page HTML | Live preview |
| SVG / diagrams / Mermaid | Visual render |
| Interactive React | Runnable mini-app in sandbox |
| (Evolved) AI-powered artifacts | App can call Claude; usage on *viewer’s* plan |
| MCP-connected / persistent storage | External tools + up to ~20 MB text storage per published artifact |

### 3.3 Layout & workflow

- **Chat left, artifact right** when created.
- **Preview vs Code** tabs for non-document types.
- **Version selector** at bottom of preview; iterate without losing prior designs.
- **Multiple artifacts** per conversation; slider/controls to switch which one Claude updates.
- **Sidebar Artifacts space:** browse, remix, organize — but conversation artifacts appear there after **Publish**.
- **Error recovery:** “Try fixing with Claude” copies error into a new message.
- **Capability gate:** Artifacts tied to **Code execution and file creation** in Settings → Capabilities.

### 3.4 What Scholaris should steal

| Pattern | Why it fits tutoring |
|---------|----------------------|
| **Self-contained trigger rule** | Only promote OCR text, worked solution, diagram, or sim panel when it’s a real work object—not every tutor sentence |
| Preview / source dual view | Whiteboard strokes vs OCR text; sim scene vs telemetry JSON |
| Multi-artifact switcher | Notes + whiteboard + practice item in one tutoring session |
| Publish / share later | Optional “share this worked solution” without forcing it day one |
| Fix-with-AI on error | OCR fail / sim load fail → one-click tutor diagnosis |

### 3.5 Limits / caveats

- Over-15-line heuristic is imperfect (long lists may not open; short rich UIs may deserve a panel).
- Artifact is **right panel**, chat remains primary for conversation—good for chat-first apps; tutoring boards may want **artifact-first** (see §5).
- Sandboxed React apps are powerful but a different product surface than an exam whiteboard.

---

## 4. Gemini Canvas (Google)

### 4.1 What it is

An **interactive space** in the Gemini app (launched ~Mar 2025) to create/refine **documents and code** beside chat, with real-time updates. Also appears in **Gemini Enterprise** as documents + **slides**, with admin controls and regional limits.

### 4.2 Layout & trigger

- Select **Canvas** in the prompt bar (web) or **+ → Canvas** (mobile).
- Side-by-side chat + canvas; changes appear live.
- Enterprise docs: direct Markdown edits auto-save; **Change length / Change tone** sliders; highlight → “Ask Gemini” near selection **or** main prompt; undo/redo version arrows.
- **Code path:** generate HTML/React (and other prototypes), **preview** in canvas, iterate via chat; share creations.
- **Export:** one-click **Google Docs** (consumer); Enterprise may push further into Workspace flows.
- **Mobile:** consumer Canvas entry exists; Enterprise Canvas called out as **web-only** in Cloud docs (preview caveats).

### 4.3 What Scholaris should steal

| Pattern | Why it fits tutoring |
|---------|----------------------|
| Explicit mode chip (“Canvas”) | Same as Free Studying mode tabs: Whiteboard / Notes / PDF as first-class |
| Global sliders + local highlight | “Simpler explanation” globally vs “fix this step” locally |
| Live preview for interactive builds | STEM lab + tutor chat without leaving the shell |
| Docs export | “Save to notes” / download PDF of session artifact |

### 4.4 Limits / caveats

- Versioning reported flaky in early third-party reviews → treat undo stack as product-critical, not cosmetic.
- Enterprise preview: region + admin enablement constraints (less relevant to consumer Scholaris, useful for school deployments later).
- Slides surface is Google-specific; Scholaris analog is **sectioned tutor reply / worksheet pages**, not PowerPoint.

---

## 5. Cursor-like: side chat + primary artifact

Two related Cursor patterns matter for Scholaris—not only “chatbots with a right panel.”

### 5.1 Classic IDE: primary work center, AI on the side

| Column | Typical content |
|--------|-----------------|
| Left | Files / nav (optional) |
| **Center (primary)** | Editor — the source of truth |
| Right (or docked) | Agent / Chat — context-aware of selection, open files, diffs |

**UX principle (co-pilot pattern writeups):** hierarchical nav + **content column** + **LLM column**. Cursor popularized putting LLM on the **right** so the code stays visually primary. Mobile analogs split top/bottom with adjustable %.

**Implication for Scholaris:** Whiteboard / PDF / notes / sim should occupy **center stage**. Tutor chat is a **docked companion**, not the homepage of the mode. This matches “interactive talk-with-AI while content stays center” better than chat-left / artifact-right when the artifact *is* the study activity.

### 5.2 Cursor Canvases (Agents Window peer pane)

From Cursor docs/blog (3.1):

- Agent creates an **interactive artifact** (dashboard, charts, tables, custom UI from first-party React components) that renders **next to chat**.
- Card in chat → open canvas; reopen from canvas list without re-running.
- Lives alongside terminal, browser, source control as a **durable peer tool**, not a markdown dump in the transcript.
- Iterate: prompt changes, rerun queries, tweak source; skills package consistent layouts.
- Share: publish live snapshot link (paid/team; privacy-mode dependent).

**Implication:** When the tutor’s answer is **structured** (worked solution steps, misconception checklist, lab predict–run–compare board, OCR correction table), prefer a **canvas pane** over another wall of chat markdown.

### 5.3 Cursor vs consumer canvases (comparison)

| Dimension | ChatGPT / Gemini Canvas | Claude Artifacts | Cursor IDE + Canvases |
|-----------|-------------------------|------------------|------------------------|
| Primary object | Doc/code in panel | Previewable standalone content | **Repo files** or **agent canvas UI** |
| Chat role | Co-editor | Co-builder | Co-pilot / agent controller |
| Selection | Highlight → edit | Highlight → Edit with Claude | Editor selection → chat context |
| Interactivity | Moderate (preview) | High (React/HTML sandbox) | High (components, diffs, tools) |
| Durability | Per conversation + versions | Versions + publish library | Workspace canvas list + skills |
| Best metaphor | Google Docs + chat | CodePen + chat | VS Code + agent |

---

## 6. Cross-product comparison matrix

| Concern | ChatGPT Canvas | Claude Artifacts | Gemini Canvas | Cursor pattern |
|---------|----------------|------------------|---------------|----------------|
| Split view | Yes | Yes | Yes | Yes (IDE or Agents) |
| Direct user edit | Yes | Docs yes; code via tabs | Yes | Yes |
| Selection-scoped AI | Yes | Yes (“Edit with Claude”) | Yes (“Ask Gemini”) | Yes (editor ↔ chat) |
| Shortcuts / sliders | Writing & coding menus | Fewer global sliders; chat-led | Length/tone sliders | Skills, commands, agent tools |
| Live interactive preview | Code-oriented | Strong (HTML/React) | HTML/React prototypes | Canvas components + browser tool |
| Versioning | Explicit history + diffs | Version selector | Undo/redo versions | Git + canvas reopen / revert |
| Multi-artifact | Weaker / one doc focus | First-class switcher | Weaker | Tabs + canvas list |
| Share/export | Copy, PDF, Docs, share URL | Publish, remix, AI apps | Docs, share prototypes | Publish canvas snapshot |
| Trigger discipline | Trained open/don’t-open | ~15-line standalone heuristic | Explicit Canvas chip + intent | Agent judgment + user ask |

---

## 7. Design principles for Scholaris (“content stays center”)

### 7.1 Recommended shell (Free Studying)

```
┌──────────────────────────────────────────────┬──────────────────┐
│                                              │  Tutor chat      │
│   PRIMARY ARTIFACT (~55–70% width)           │  (docked)        │
│   Whiteboard | OCR text | Notes | PDF | Sim  │  Stream + chips  │
│                                              │  Cite selection  │
│   Toolbar: pen / OCR / Ask Scho / export     │                  │
└──────────────────────────────────────────────┴──────────────────┘
Mobile: artifact full-bleed; chat as bottom sheet or secondary tab.
```

Prefer **artifact-center + chat-right** (Cursor IDE) over **chat-center + artifact-right** (Claude default) when the student is *studying on* a board/doc/sim.

### 7.2 Interaction contract

1. **Chat never replaces the artifact.** Replies update the center surface or annotate it; full rewrites only when asked or when artifact is empty.
2. **Selection is context.** Highlight strokes / text / sim readout → “Ask Scho about selection” (ChatGPT/Claude/Gemini pattern).
3. **Shortcuts as chips**, not buried prompts: Simplify, Exam-style, Show steps, Check my work, Fix OCR.
4. **Versions:** keep last N tutor-applied states (especially OCR→text and “rewrite my notes”).
5. **Dual view when useful:** Board ↔ Text (OCR); Sim scene ↔ Data/telemetry; Solution ↔ Rubric.
6. **Trigger rules:** open/focus artifact panel for substantial work objects; keep short Socratic Q&A in chat-only to avoid UI thrash (OpenAI’s non-trigger lesson).
7. **Multi-artifact sessions:** allow Notes + Whiteboard + one practice item without dumping everything into one scroll (Claude switcher).
8. **Export path:** copy text, PNG of board, save to Free Study notes — Docs-equivalent for Scholaris.

### 7.3 Anti-patterns

| Avoid | Why |
|-------|-----|
| Putting the whole worked solution only inside a chat bubble | Scrolls away; can’t edit; loses “primary artifact” |
| Auto-opening a huge panel on every tutor sentence | Same as Canvas over-trigger; breaks tutoring flow |
| Chat and artifact showing divergent truth with no sync indicator | Student edits board while tutor argues about stale OCR |
| Modal chat covering the board | Violates “content stays center” |
| Infinite version history with no diff | Students won’t recover; show simple undo + “what changed” |

### 7.4 Mapping to Free Studying modes

| Mode | Primary artifact | Side chat does… |
|------|------------------|-----------------|
| Whiteboard | Canvas strokes (+ OCR text layer) | Explain selection, check work, suggest next step |
| Tutor | Optional: sectioned answer canvas when long | Default chat; promote to canvas when ≥ threshold |
| Notes | Note editor | Rewrite selection, quiz me on this note |
| PDF | Document viewer + highlights | Explain highlight, generate study questions |
| Voice | Transcript + key formulas panel | Same as tutor with speech I/O |
| Sims / STEM Labs | Sim stage + controls/readouts | Predict–compare debrief grounded in SimTelemetry |

---

## 8. Implementation notes (guidance only — not this pass)

- **Layout:** CSS grid/flex split with persisted width; mobile bottom sheet for chat (`min` touch targets).
- **State:** `artifactId`, `version`, `selectionRange` (text) or `selectionBounds` (board), `chatThreadId` — chat messages reference artifact version.
- **Model I/O:** system prompt includes artifact summary + selection excerpt; tool/schema for `patch_artifact` vs `replace_artifact` (OpenAI targeted-edit vs rewrite).
- **Streaming:** stream chat text; apply artifact patches transactionally (avoid half-written docs).
- **A11y:** artifact is main landmark; chat is complementary; shortcuts keyboard-reachable.
- **Telemetry:** log open_canvas, selection_ask, version_restore, export — compare to tutor-only sessions.

---

## 9. Sources (primary)

1. OpenAI — [Introducing canvas](https://openai.com/index/introducing-canvas/) (2024-10-03)  
2. Anthropic — [What are artifacts and how do I use them?](https://support.claude.com/en/articles/9487310-what-are-artifacts-and-how-do-i-use-them) (Claude Help Center)  
3. Anthropic — [Turn ideas into interactive AI-powered apps](https://www.anthropic.com/news/build-artifacts) (Artifacts hub / AI-powered apps)  
4. Google — [New Gemini features: Canvas and Audio Overview](https://blog.google/products-and-platforms/products/gemini/gemini-collaboration-features/) (2025-03-18)  
5. Google Cloud — [Create and edit documents and slides in Canvas](https://docs.cloud.google.com/gemini/enterprise/docs/assistant-canvas) (Gemini Enterprise)  
6. Cursor — [Canvases](https://cursor.com/docs/agent/tools/canvas) · [Interact with agent-created visualizations](https://cursor.com/blog/canvas)  
7. Cursor — [Agents Window](https://cursor.com/docs/agent/agents-window)  
8. Pattern context — co-pilot multi-column UX (nav + content + LLM); agent UX catalogs describing side-panel artifacts vs inline chat dumps  

---

## 10. Bottom line for Scholaris

Ship the **Cursor-primary + consumer-canvas interactions** hybrid:

1. **Center = study artifact** (whiteboard first for this research track).  
2. **Side = Scho chat** that can see selection and patch the center.  
3. Steal **highlight-to-ask**, **version restore**, **shortcut chips**, and **preview/source** from ChatGPT / Claude / Gemini.  
4. Steal **durable peer pane** (not chat-buried markdown) from Cursor Canvases for long structured tutor outputs and lab debriefs.

No app code in this document; next research/engineering passes can turn §7 into UI specs and component contracts.
