# AI Chat Shells — Free Studying Hub Redesign Research

**Date:** 2026-07-20  
**Scope:** ChatGPT, Claude.ai, Perplexity, Google Gemini, Poe — shell layout, mode switching without fat top tabs, artifact + chat patterns.  
**Goal for Scholaris:** Concrete steal / skip list for redesigning Free Studying (`/dashboard/free-study`) away from the current multi-tab hub chrome.  
**Constraint:** Research only — **no app code** in this pass.  
**Related:** `docs/research/whiteboard/09-ai-canvas-chat.md` (Canvas/Artifacts deep dive); Whiteboard Studio already left the hub via full-page route.

**Sources (primary):** OpenAI Help (writing/code blocks), Anthropic / Claude interface tours + Artifacts manuals, Perplexity Help (Projects), Google Gemini Apps Help (Canvas), Poe Creator docs (Canvas apps), plus 2025–2026 product writeups (9to5Google Neural Expressive, The Verge Canvas sunset, Perplexity Spaces→Projects evolution).

---

## 0. One-line verdict

Winning shells keep **one conversation surface** and open **capability through the composer** (tools, sources, attach, voice) or a **side artifact pane** — not a fat row of peer “modes” that swap the whole page. Scholaris Free Studying should become **chat-primary + contextual tools**, with PDF / notes / voice / board as **attachments or docked artifacts**, not equal top tabs.

---

## 1. Scholaris baseline (what we’re redesigning against)

Current Free Studying hub (`FreeStudyHub`):

- Page header + subtitle.
- **Fat horizontal mode nav:** Tutor · PDF · Voice · Notes (+ Whiteboard button that navigates away).
- Split layout: left “tools” pane for the active mode, right chat thread.

That pattern matches an early “hub with tabs” IA. It fights the industry default: **modes are ephemeral intents on a shared chat**, not separate apps behind peer tabs.

Whiteboard already escaped correctly (full-page studio). PDF / Voice / Notes still compete with Tutor as peers — that is the redesign target.

---

## 2. Cross-product shell anatomy

| Region | ChatGPT | Claude.ai | Perplexity | Gemini | Poe |
|--------|---------|-----------|------------|--------|-----|
| **Left rail** | History / Projects / mode toggle (Chat·Work·Codex on desktop) | New chat, search, Projects, recents | Projects icon, library/history | Fullscreen drawer: New, Search, Library, Gems, Notebooks | Create, bots, history |
| **Center** | Chat thread *or* Work/Codex workspace | Chat (default) | Ask thread / answer card | Chat + greeting empty state | Chat with active bot |
| **Right / peer** | Optional context panel; legacy Canvas → **inline writing/code blocks** (GPT-5.5+) | **Artifacts** panel (durable) | Citations / related; not a classic artifact pane | **Canvas** panel (docs/apps/code) | **Canvas UI** for apps (chat left / canvas right) |
| **Composer** | Attach + tools; model/effort | Attach, web search, thinking, style | Sources / focus, Pro Search, attach | Pill + **+ tools sheet** (Canvas, Live, uploads…) | Bot picker / @mention, attach |
| **Mode chrome** | Sidebar / top **compact** Chat↔Work↔Codex — not 5 content tabs | Model + capability toggles in chrome/composer | Ask↔Computer **in-project toggle**; sources near input | Tools in **+ menu / Live inline** — Live no longer fullscreen mode jump | Bot switch / multi-bot @ — not content-mode tabs |

**Shared grammar:** sidebar = navigation & memory; center = talk; composer = capability entry; side panel = durable work product when needed.

---

## 3. Product-by-product notes

### 3.1 ChatGPT

**Layout**

- Classic web: left history/Projects, center chat, bottom composer.
- Desktop (mid-2026): unified app with **Chat / Work / Codex** as product *roles*, toggled from sidebar or compact switcher — still not a Tutor/PDF/Voice/Notes strip.
- Optional right **context** pane (files, memory, tasks) in Work-oriented layouts.

**Artifact pattern (important 2026 shift)**

- **Canvas (side panel)** is being **sunset** on GPT-5.5 Instant/Thinking; legacy models only for a limited time.
- Replacement: **writing blocks** and **code blocks** *inside* the thread — edit/preview/run without a persistent split pane.
- Implication: OpenAI is compressing “artifact” back into chat when the artifact is ephemeral draft/code. Durable workspaces move into **Work / Projects**, not a fifth top tab.

**Mode switching without fat tabs**

- Capability via composer tools + Projects context.
- Role switch (Chat vs Work) is **2–3 products**, not N content modalities.
- Voice / search / files are **session affordances**, not peer hub pages.

**Steal for Scholaris**

- Treat PDF / voice transcript / note as **context chips** on the composer, not page modes.
- Prefer **inline durable blocks** for short study artifacts (summary cards, formula sheets) when a full side panel is overkill.
- Keep “heavy” workspaces (Whiteboard Studio, STEM Labs) as **routes**, like ChatGPT Work/Codex — separate destinations, not tabs.

**Skip**

- Copying Chat/Work/Codex taxonomy (exam tutoring ≠ coding agent).
- Depending on auto-open Canvas (unreliable historically; now deprecated on flagship models).
- Renaming everything “Projects” without exam/course semantics.

---

### 3.2 Claude.ai

**Layout**

- **Three regions:** left sidebar · center chat · optional **right Artifacts** panel.
- Top of chat: **small model picker** (mid-conversation switch OK).
- Composer: paperclip, web search toggle, extended thinking, **style** — all compact, not a mode ribbon.

**Artifact + chat (still the clearest reference)**

- Substantial, self-contained output (≈15+ lines, revisable, standalone) → **right panel**.
- Short Q&A stays **inline**.
- Panel chrome: Preview ↔ Code, copy/download, **version ← →**, share/publish.
- Iterate in chat → artifact **updates in place**.

**Mode switching**

- No Tutor/PDF/Voice tabs. Upload PDF into the **same** chat; capability toggles are **binary chips** on the composer.
- **Projects** = persistent workspace + instructions + files (organizational mode), not a content-type tab.

**Steal for Scholaris**

- **Artifact-on-the-right when the student is iterating on a durable object** (notes draft, extracted PDF outline, practice plan). Chat stays left/center.
- Auto-open artifact only for substantial output; keep short tutor turns inline (matches sectioned replies without forcing a pane).
- Version arrows on study artifacts (undo bad rewrite of notes).
- Model/effort as **dropdown**, not a mode tab.

**Skip**

- Public Artifacts catalog / publish-to-world (privacy + exam integrity).
- Forcing every multimodal turn into a side panel (noise).
- Style presets as a primary nav item.

---

### 3.3 Perplexity

**Layout**

- Search-first center; answer with **citations** as first-class UI.
- **Projects** (evolved from Spaces/Collections): left-rail workspaces with custom instructions, files, shared threads.
- Inside a Project: unified thread list; **Ask ↔ Computer** via **in-project toggle** synced with global nav — still two roles, not five content tabs.

**Mode switching**

- **Sources / Focus** (Web, Academic, Social, Finance, attachments, connectors) live next to the **input** as a source picker — changes *retrieval*, not the shell.
- Default mode for a Project = **last-used** Ask vs Computer (sticky, not a permanent fat tab bar).

**Steal for Scholaris**

- **Source / context picker on the composer:** “This turn uses: PDF excerpt · Voice transcript · Note · Exam bank” — same shell, different grounding.
- Sticky last-used “study intent” (e.g. Socratic vs explain) without a full mode nav.
- Project-like **course/exam workspace** already maps to Scholaris exam type + conversation history — lean into that, don’t invent parallel tabs.

**Skip**

- Citation-heavy answer cards as the primary tutor UI (tutoring ≠ web search product).
- Team collaboration / contributor invites in v1 Free Studying.
- Computer-use / agent task mode until tutoring quality is solid.

---

### 3.4 Google Gemini

**Layout (Neural Expressive, I/O 2026)**

- Pill-shaped composer; gradient empty state; model dropdown top-left.
- Nav = **fullscreen drawer** (New, Search, Library, Gems, Notebooks) — not a permanent fat content tab strip.
- **Gemini Live** moved **inline** in the pill (waveform) — users no longer “switch apps” into a fullscreen voice mode.

**Tools without fat tabs**

- Mobile **+** opens a bottom sheet: uploads carousel, then **Tools** list (Guided learning, Deep research, **Canvas**, Create image/video/music, Personal Intelligence).
- Choosing Canvas / research is a **tool invocation**, not a hub peer equal to chat.

**Canvas (artifact)**

- Official Help: start via **Add files → Canvas** under the text box; chat left, Canvas panel right.
- Docs: direct edit + **Select & ask** / Suggest edits; length/tone chips; version prev/next; LaTeX; Create → Audio Overview / Quiz / Infographic / Web page.
- Apps: Code / console / recent changes; **Select & ask** at bottom-right of Canvas.
- Export to Docs/Slides/Colab; share links.

**Steal for Scholaris**

- **Composer “+” / Tools sheet** for PDF, Voice, Notes, Whiteboard, STEM Labs — collapses fat tabs into one overflow.
- **Inline voice** (mic in composer / dock) instead of a Voice *page*.
- Gemini’s **Select & ask** + quick chips (length/tone) → “Explain selection,” “Make AP-style,” “Socratic follow-up.”
- Quiz / Audio Overview as **transforms of an artifact**, not separate modes (maps to Kokoro TTS + practice generation).

**Skip**

- Vibrant “Neural Expressive” motion/color language (conflicts with Scholaris cobalt OnePrep shell).
- Spark / Daily Brief agent chrome.
- Gems marketplace patterns.
- Fullscreen nav drawer as the only way to find history (Scholaris already has dashboard sidebar).

---

### 3.5 Poe

**Layout**

- Multi-bot platform: left create/history, center chat with **bot identity** as the primary switch.
- **Multi-bot chat:** @mention / compare bots in one thread — modality is *which model*, not *which study tool*.
- **Canvas apps:** chat left · interactive Canvas right; toolbar: console, **fullscreen**, minimize Canvas. App can open chat again when calling bots from fullscreen.

**Steal for Scholaris**

- **Fullscreen / minimize artifact** (especially Whiteboard / PDF reader / notes editor) while keeping chat one click away.
- Optional “compare explanations” (e.g. Conceptual vs Test-Hacker) as **@-style chips**, not mode tabs — if multi-persona stays product-relevant.
- Clear rule: visual UI when the job is interactive; chat when the job is dialogue.

**Skip**

- Multi-vendor bot marketplace and points economy.
- Building a general Canvas-app creator inside Free Studying.
- Treating bot-switching as the main Free Studying IA (Scho is the tutor).

---

## 4. Mode switching without fat top tabs — pattern catalog

Patterns that replace `Tutor | PDF | Voice | Notes` ribbons:

| Pattern | Where seen | Mechanism | When to use in Free Studying |
|---------|------------|-----------|------------------------------|
| **A. Composer tools (+ sheet)** | Gemini | One + control → attach / Canvas / Live / research | Primary replacement for mode tabs |
| **B. Source / focus chips** | Perplexity | Dropdown next to input changes grounding | “Answer using PDF / note / transcript” |
| **C. Capability toggles** | Claude | Web search, thinking, style as small toggles | Socratic on/off, web, TTS play — not page swaps |
| **D. Sticky last-used role** | Perplexity Projects | Remember Ask vs Computer | Remember last attach type or reply style |
| **E. Sidebar product roles (≤3)** | ChatGPT desktop | Chat / Work / Codex | Only for true destinations: Free Study vs Whiteboard vs Labs |
| **F. Bot / persona @mention** | Poe | Switch intellect in-thread | Optional: strategy personas, not file modes |
| **G. Inline multimodal** | Gemini Live | Voice inside composer pill | Mic + Kokoro without Voice tab |
| **H. Route escape hatches** | All (esp. ChatGPT Work, Scholaris WB) | Full page for immersive craft | Whiteboard Studio, STEM Labs — already correct |

**Anti-pattern:** Five equal top tabs that each replace the left pane and reset mental model. That is a **dashboard**, not a chat shell.

---

## 5. Artifact + chat — decision matrix for Free Studying

| Student job | Prefer | Shell |
|-------------|--------|-------|
| Short Q&A, Socratic turns | Inline chat (+ sectioned reply cards) | ChatGPT writing-block spirit / Claude short replies |
| Long notes draft, study guide, outline from PDF | **Side artifact** (Claude / Gemini Canvas) | Chat left, notes/doc right |
| Code-like or quiz widget | Side artifact or inline interactive block | Claude HTML artifact / Gemini Canvas quiz |
| Handwriting / infinite board | **Full-page** primary surface + chat dock | Already: Whiteboard Studio (Cursor-like) |
| PDF read + ask | Docked reader **or** excerpt chip + chat — not a PDF-only page forever | Gemini Select&ask; Perplexity file-in-Project |
| Voice study | Mic in composer + transcript chip | Gemini Live inline — **not** Voice mode tab |
| STEM sim | Separate Labs route | Like ChatGPT Codex / Work destination |

**OpenAI lesson:** if the artifact is light, **inline blocks** beat a permanent split. If the artifact is the work (notes, board, PDF), **keep it visible** while chatting.

---

## 6. Concrete steal / skip for Scholaris Free Studying

### Steal (do these)

1. **Kill the fat mode tab bar** as the primary IA. Default to **one Tutor chat shell**.
2. **Composer “+” / Tools menu:** Upload PDF · Start voice · Open notes · Open Whiteboard · Open STEM Labs.
3. **Context chips** above or inside the composer showing active grounding (`PDF · 2.1k chars`, `Voice · listening`, `Note: Thermodynamics`). Click to clear or expand.
4. **Side artifact panel** for Notes (and optional PDF outline / extracted study guide) — Claude Artifacts layout: chat + durable pane + version restore.
5. **Select → Ask Scho** on PDF text / note selection / whiteboard OCR (Gemini Canvas + ChatGPT highlight pattern).
6. **Inline voice** (mic on composer; transcript streams into context) — Gemini Live pattern; retire Voice as a peer page.
7. **Route-level escapes only** for immersive craft: `/dashboard/whiteboard`, `/dashboard/labs` (already done) — ChatGPT Work/Codex style destinations.
8. **Sticky last attach / last reply style** per exam or conversation (Perplexity last-mode).
9. **Shortcut chips on artifacts:** shorter / AP-style / Socratic / “play with Kokoro” — Gemini length/tone + OpenAI canvas shortcuts.
10. **Fullscreen / minimize** for PDF or notes while tutoring (Poe Canvas toolbar).

### Skip (do not copy)

1. **Peer top tabs** for every modality (current hub) — industry moved on.
2. **ChatGPT Work/Codex naming and three-column agent chrome** — wrong job-to-be-done.
3. **Public share catalogs** (Claude Artifacts catalog, Poe app discover) for student exam work.
4. **Citation-first Perplexity answer layout** as the default tutor bubble.
5. **Auto-open side panel on every reply** — reserve for substantial / user-pinned artifacts.
6. **Multi-bot marketplace** (Poe) as Free Studying navigation.
7. **Gemini Neural Expressive** visual language (gradients, playful motion) over Scholaris cobalt shell.
8. **Relying on ChatGPT Canvas** as the north-star implementation — OpenAI is retiring the side Canvas on flagship models; prefer Claude/Gemini/Poe **durable pane** + optional **inline blocks**.
9. **Team collaboration / Project contributors** in v1.
10. **Putting Whiteboard back into hub tabs** — full-page studio is the right pattern.

---

## 7. Target IA sketch (research recommendation only)

```
┌─ Dashboard sidebar (existing) ─────────────────────────────┐
│ Free Studying                                              │
├────────────────────────────────────────────────────────────┤
│  [Exam/context]                    [model / effort ▾]      │
│                                                            │
│  ┌─ Chat (primary) ──────────┐  ┌─ Artifact (optional) ─┐ │
│  │ thread + sectioned replies│  │ Notes / PDF outline / │ │
│  │                           │  │ study guide versions  │ │
│  └───────────────────────────┘  └───────────────────────┘ │
│  [chips: PDF|Voice|Note]  [+] [mic] [──── composer ────]   │
└────────────────────────────────────────────────────────────┘
         │                              │
         ├─ + → PDF / Voice / Notes / Whiteboard route / Labs
         └─ heavy board stays /dashboard/whiteboard (docked chat)
```

**Success test:** Removing the top tab row, a new user still discovers PDF, voice, and notes within one session via **+** and chips — and never wonders which “app” they are in.

---

## 8. Source checklist

| Product | Layout / modes | Artifact pattern |
|---------|----------------|------------------|
| ChatGPT | Classic sidebar chat; desktop Chat·Work·Codex; Projects | Canvas → writing/code **blocks** (2026); Work for durable deliverables |
| Claude.ai | Sidebar · chat · Artifacts; composer toggles; Projects | Right Artifacts + versions + Preview/Code |
| Perplexity | Projects; Ask↔Computer toggle; sources on input | File/Project context; citation UI (not tutoring-primary) |
| Gemini | Pill composer; + tools; Live inline; Canvas tool | Chat + Canvas; Select & ask; Create→quiz/audio |
| Poe | Bot switch / @multi-bot; Canvas apps | Chat ‖ Canvas; fullscreen / minimize |

---

## 9. Handoff notes for implementers

- Do **not** expand Whiteboard back into Free Studying mode tabs.
- Prefer CSS Modules / existing free-study tokens; keep cobalt OnePrep language.
- Pair this doc with `09-ai-canvas-chat.md` for pane ratios, selection-to-prompt, and version UX detail.
- Next research candidates (if needed): mobile composer sheets, conversation-to-notes promotion, exam-scoped Projects analogy.
