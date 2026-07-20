# Notes Shells — Calm Writing Surfaces & Image → AI

**Date:** 2026-07-20  
**Scope:** Notion, Obsidian (app + Publish), Apple Notes web analogs (Bear / iA Writer / Calmly-class), OneNote (+ Copilot), Craft, Reflect.app, Mem.ai.  
**Lens:** (1) calm writing surfaces — chrome that stays out of the way; (2) image attach → AI — how photos, screenshots, and scans enter the note and become searchable / askable.  
**Goal for Scholaris Free Studying Notes:** Design guidance only — **research; no app code in this pass.**  
**Sources:** Product help centers and changelogs (Notion AI analyze PDFs/images; Obsidian Publish docs; Craft Media / Write; Mem Help editor; Reflect changelog OCR/GPT-4o; Microsoft OneNote OCR + Copilot multimodal blog Apr 2026); community plugins (Obsidian Copilot vision); secondary UX roundups (iA Writer / Bear focus modes).

---

## 0. One-line verdict

The winners for study notes are **page-primary, low-chrome editors** where media is a first-class block, and AI either **reads the page as-is** (OneNote Copilot, Notion attach-and-ask) or **indexes OCR so search/chat can use image text** (Reflect). Mem is the cautionary tale: attach works; **vision awareness does not**. Scholaris should ship attach → OCR/vision → editable text → Ask Scho — never “pretty image that the tutor cannot see.”

---

## 1. Shared pattern map

| Layer | Calm writing job | Image → AI job |
|-------|------------------|----------------|
| **Primary surface** | Narrow/readable column or soft paper; title + body dominate | Image sits *in* the note, not only in a chat composer |
| **Chrome ladder** | Slash / `+` / selection toolbar; hide sidebar on focus | Insert via drag-drop, `/image`, camera, paste |
| **AI entry** | Selection → palette / side chat; optional Clean Up | Attach-and-ask **or** page-grounded Copilot **or** OCR index |
| **Human checkpoint** | Accept / replace / insert AI output | Editable OCR / caption before tutor uses it |
| **Failure mode** | Dashboard chrome kills flow | Image attached but AI blind (Mem) |

### Mental model for Free Studying Notes

```
┌──────────────────────────────────────────────────────────┐
│  Note surface (calm) — title, body, inline images        │
│  Student writes; images live as blocks beside the text   │
├──────────────────────────────────────────┬───────────────┤
│  Attach photo / paste screenshot         │  Ask Scho     │
│  → OCR or vision → editable text         │  (side dock)  │
│  → optional caption / alt                │  grounded    │
└──────────────────────────────────────────┴───────────────┘
```

---

## 2. Notion

### 2.1 Calm surface

- **Block editor**, not a pure blank page: everything is a block (`/` menu, drag handles). Calm when the page is **empty-ish** (title + paragraphs); noisy when databases, synced blocks, and callouts pile up.
- **Readable default width** (~centered ~900px-class column) vs **Full width** (better for dashboards, worse for long prose on ultrawide). Serif / Default / Mono are per-page style toggles — Serif is the long-form reading cue.
- **Cover + icon** set atmosphere; they are branding, not the writing surface. For study notes, a quiet cover or none beats a busy Unsplash hero.

### 2.2 Image attach → AI

| Step | Behavior |
|------|----------|
| Insert | `/image`, `+` → Image, or drag-drop; Unsplash / URL / upload |
| Limits | Free plan ~5 MB/file; paid much higher; display vs “upload as file” split |
| AI on image | Notion AI **analyze PDFs and images** — attach and ask (summarize, extract, compare to another page) |
| Caption | Multimodal **Generate caption** on uploaded image blocks (PNG/JPG/GIF/WebP; not link embeds) |
| OCR agents | Community/custom agents (e.g. OCR Scanner) scan page images → callout text below |

**Pattern:** Media is in-document; AI is **prompt-over-attachment** or **block-scoped caption**, not automatic silent OCR for every paste.

### 2.3 Steal / skip for Scholaris

| Steal | Skip |
|-------|------|
| Slash insert + drag-drop as primary affordances | Database/gallery-first notes chrome |
| Attach file → ask tutor with follow-ups | Cover/icon theater as required UI |
| Editable AI caption under image | Unlimited template marketplace noise |

---

## 3. Obsidian — app + Publish

### 3.1 Calm surface (app)

- **Markdown-first**, local vault: the writing surface is a plain note; chrome is panes (file tree, graph, outline) the user can collapse.
- Community **focus / zen** themes and readable-line-length habits mirror Publish’s “readable line length centers content.”
- Calm comes from **hiding panes**, not from a proprietary paper metaphor. Power users rebuild Notion-like density with plugins — that density is optional, not default.

### 3.2 Publish (web shell)

Obsidian Publish is a **read-oriented site shell** over the same Markdown:

| Toggle | Effect on calm |
|--------|----------------|
| Readable line length | Constrains measure; centers content |
| Navigation / search / TOC / graph / backlinks | Each adds chrome; turn off for essay-like calm |
| Stacked notes | Horizontal stack on link click — spatial, not minimal |
| Theme + light/dark toggle | Visitor comfort without author chrome |

**Implication:** Publish proves that **narrow column + optional TOC** is enough for web reading. Scholaris notes need an *edit* surface, but Publish’s “readable line length on, graph off” is a good default for study review mode.

### 3.3 Image attach → AI (app plugins)

Core Obsidian stores images as vault files / embeds (`![[…]]` / `![](…)`). Vision is **plugin-layer**:

- **Copilot (community):** vision checkbox → send image(s) to a vision-capable model; reads embeds in notes; chat context menu; Project Mode = folder/tag scoped context (NotebookLM-inside-vault).
- **Smart Connections:** local embeddings for related notes — not image OCR; pairs well with Copilot for “find what I wrote” while Copilot does vision.
- Publish itself does **not** run AI over visitor images; AI stays in the authoring app.

**Pattern:** Local files + explicit “send image to model” — strong privacy story, weak “paste photo and it Just Knows” unless the user installs Copilot-class tooling.

### 3.4 Steal / skip

| Steal | Skip |
|-------|------|
| Readable measure; hide secondary panes by default | Graph-as-default chrome |
| Explicit vision attach to chat | Assuming every student configures plugins |
| Markdown export / ownership mindset | Publish-only (read) as the notes editor |

---

## 4. Apple Notes — web analogs

Apple Notes itself is native (no full-fidelity web twin). Web/cross-platform **calm analogs**:

| Product | Calm writing cue | Image → AI |
|---------|------------------|------------|
| **iA Writer** | Focus Mode dims all but current sentence/paragraph; typewriter feel; minimal toolbar | Images as plain-text embeds in preview; **not** an AI vision product |
| **Bear** | Focus hides sidebar; elegant typography; tag org | Media in notes; AI not the core loop (Apple-only; limited/no web) |
| **Calmly Writer / Just Write class** | Browser empty page, no account friction | Usually none |
| **UpNote / similar** | Quiet list + editor | Attach common; AI varies by tier |

### Design takeaways (without shipping Apple Notes)

1. **Focus dimming** (iA) is the strongest portable calm trick for long study writes — cheaper than a full “zen theme.”
2. **Instant blank page** > onboarding wizard. Apple Notes’ win is open-and-type.
3. Image attach for study must outgrow Apple Notes’ “pretty scrapbook”: photos of worksheets need an **extract → edit → ask** path those analogs rarely provide.

---

## 5. OneNote (+ Copilot)

### 5.1 Calm surface

- **Infinite freeform page** (click anywhere) + notebooks/sections — powerful for tablet ink; on web it can feel **busy** (ribbon, section hierarchy, printouts).
- **Immersive Reader** is a separate calm *reading* mode (line focus, spacing, read-aloud) — good a11y parallel, not the editing shell.
- Calmest use for study: one section, one page, Draw/Type, hide unnecessary ribbons — still heavier than Craft/Bear.

### 5.2 Image attach → AI (two eras)

**Classic OCR (built-in):**

- Insert picture / printout → right-click **Copy Text from Picture** (or all printout pages).
- Latency can be seconds to hours for heavy pages; quality depends on image clarity — always human-proof.

**Copilot multimodal (rolling out ~2026):**

- Copilot reasons over **typed text + ink + images + tables + tags** on the page.
- Ask in natural language: e.g. main points from a pasted whiteboard photo; inked homework questions.
- Images must be **pasted pictures**, not mere links; tables should be real OneNote tables.

**Pattern:** Best-in-class for Scholaris tutoring analogy — **page is the context**. No separate “upload to chat” required if Copilot is on; classic OCR remains the explicit extract path.

### 5.3 Steal / skip

| Steal | Skip |
|-------|------|
| Page-grounded AI (image + ink + text together) | Notebook/section taxonomy as mandatory UI |
| Explicit Copy Text from Picture as fallback | Ribbon density; Immersive Reader as the editor |
| Human review after OCR | Assuming Copilot availability for all students |

---

## 6. Craft

### 6.1 Calm surface

- Premium **block documents** with strong typography, covers, and automatic media layout — closer to a beautiful book page than a wiki.
- Cross-device Apple-first sync + web; offline writing.
- AI stays **in-doc** (summarize, translate, custom prompts) with optional **on-device** models (Llama / DeepSeek) — assist without leaving the page.
- Whiteboards exist as a sibling creative surface (not required for notes calm).

### 6.2 Image attach → AI

| Affordance | Role |
|------------|------|
| Slash / `+` / drag-drop / camera / library / Unsplash | Insert media |
| Auto layout | Side-by-side similar images; gallery viewer for full quality |
| Image Playground (Apple Intelligence devices) | **Generate** images from prompts (Animation / Illustration / Sketch) — create, not OCR |
| Craft AI | Text-centric assist on the document; not marketed as “vision over every pasted worksheet” |

**Pattern:** Best-in-class **calm visual notes**; image→AI is skewed toward **generation and polish**, not study OCR. Scholaris should copy Craft’s **quiet insert + beautiful inline media**, then add Reflect/OneNote-style **read the image**.

### 6.3 Steal / skip

| Steal | Skip |
|-------|------|
| Media auto-layout; full-quality lightbox | Cover/style systems as required |
| In-doc AI that doesn’t hijack the shell | Image Playground as the primary study path |
| Block move/group for outline thinking | Whiteboard chrome inside Notes mode |

---

## 7. Reflect.app

### 7.1 Calm surface

- Opens into **Daily Notes** — low ceremony capture.
- Rich text + slash for headers, lists, backlinks, images; `@` to embed notes.
- Networked notes (backlinks) without forcing a graph UI on every keystroke.
- End-to-end encryption positioned as a trust feature for personal thought.

### 7.2 Image attach → AI (strong OCR story)

Reflect’s changelog is explicit:

1. Drag-drop / insert images (and PDFs).
2. **OCR extracts text** from images and PDFs → **search index**.
3. Indexed text becomes available to **AI chat / Chat with results**.
4. Offline image save/view; sync when online.
5. Separate AI palette: highlight → **⌘J / Ctrl+J** (or magic stars) → prompts (rewrite, takeaways, grammar) → **review then replace / insert / copy**.
6. Voice notes via Whisper; GPT-4o for faster assistant + larger context.

**Pattern:** The study-notes gold standard for Scholaris — **attach → OCR → searchable → chat-grounded**, plus **selection AI with accept gate**.

### 7.3 Steal / skip

| Steal | Skip |
|-------|------|
| OCR into search + AI context by default | Daily-note-only IA (exams need titled study notes) |
| ⌘J palette with replace/insert/copy | E2E encryption complexity for v1 |
| Chat with filtered search results | Requiring backlinks literacy on day one |

---

## 8. Mem.ai

### 8.1 Calm surface

- AI-first workspace: capture, **Clean Up** (rough → polished in one click), templates, voice mode.
- Slash menu; editor aimed at speed over page aesthetics.
- Strength is **synthesis across notes** (draft from memory of your corpus), not paper beauty.

### 8.2 Image attach → AI (explicit gap)

From Mem Help (Note Editor):

- Attach via drag-drop, `/image`, or file insert (`@`).
- **Mem Search, Chat, and Copilot are not yet aware of the contents of attached images or files.**

**Pattern:** This is the anti-pattern to document in Scholaris QA:

> If the UI lets students paste a worksheet photo but Scho cannot read it, the feature is a lie.

Mem still wins on **Clean Up** as a calm writing assist (text-only). Do not copy attach-without-vision.

### 8.3 Steal / skip

| Steal | Skip |
|-------|------|
| One-click Clean Up for messy capture | Blind attachments |
| Voice → note | Positioning “AI notes” while vision is stubbed |

---

## 9. Cross-product comparison

| Product | Calm writing | Image in note | Image → AI | Best metaphor |
|---------|--------------|---------------|------------|---------------|
| **Notion** | Medium (blocks; width/font help) | Excellent | Attach-and-ask + captions | Wiki page + AI |
| **Obsidian app** | High if panes hidden | File embeds | Plugin vision (Copilot) | Local Markdown |
| **Obsidian Publish** | High (readable line) | Published assets | None (read site) | Public essay |
| **Apple analogs** | Highest (Focus Mode) | Varies | Weak / none | Typewriter |
| **OneNote** | Low–medium (ribbon/freeform) | Excellent | OCR + page Copilot | Paper notebook |
| **Craft** | Very high | Excellent layout | Gen + text AI; weak OCR story | Beautiful doc |
| **Reflect** | High (daily capture) | Good | **OCR → search → chat** | Thought partner |
| **Mem** | Medium (AI chrome) | Good | **Blind** (documented) | Memory search |

### Image → AI maturity ladder (for Scholaris)

1. **Blind attach** — Mem today. Avoid.
2. **Manual OCR extract** — OneNote Copy Text; Notion OCR agents. Good fallback.
3. **Caption / describe** — Notion Generate caption. Useful, not enough for homework photos.
4. **OCR indexed for search + chat** — Reflect. Target for Free Studying.
5. **Page-grounded multimodal** — OneNote Copilot (ink + image + text). North star when board + notes share a session.

---

## 10. Calm writing surface checklist

Portable rules distilled from the calm half of this set (iA / Bear / Craft / Publish / Reflect):

1. **Open to type** — no mode picker between the student and the first character.
2. **Readable measure** — constrain line length; don’t default Full width for prose.
3. **Chrome ladder** — sidebar optional; slash/`+` for structure; selection toolbar only when text is selected.
4. **Focus option** — dim surrounding text or hide nav (even a soft CSS dim beats a dashboard).
5. **Typography over widgets** — one good body face + clear hierarchy; avoid pill clusters and stat strips in the editor.
6. **AI as overlay** — palette or side dock; never replace the note with a chat transcript.
7. **Accept gate** — replace / insert / copy (Reflect) beats silent rewrite of the student’s words.

---

## 11. Image attach → AI checklist

1. **Same surface** — image lives in the note body (Notion/Craft/OneNote), not only in the tutor composer.
2. **Three insert paths** — drag-drop, paste, `/image` (plus camera on mobile).
3. **Always process** — OCR and/or vision on attach or on “Ask about this image”; never Mem-blind.
4. **Editable intermediate** — show extracted text; student corrects before Ask Scho (aligns with Free Studying whiteboard OCR → edit → ask).
5. **Ground the tutor** — send OCR text and/or image bytes in telemetry; cite “from your photo” in the reply.
6. **Fallback** — if vision fails, keep the image + offer retry / manual type.
7. **Size/type honesty** — clear limits (Notion-style) and formats; don’t silently drop HEIC/PDF pages.
8. **Alt / caption optional** — accessibility + study labels; don’t force Unsplash theater.

---

## 12. Scholaris Free Studying — recommended recipe

**Surface:** Craft calm + iA focus option + Publish readable measure.  
**AI chrome:** Reflect ⌘J-style selection actions + side Ask Scho dock (not Notion database chrome).  
**Images:** Reflect OCR index + OneNote “page is context” ambition; explicit edit step from whiteboard research.  
**Hard no:** Mem-style attach without model awareness; Miro/Notion dashboard density inside Notes mode.

### Minimal IA for Notes mode

| Element | Role |
|---------|------|
| Title + body column | Primary artifact |
| Inline image blocks | Evidence (worksheet photo, diagram) |
| OCR strip (editable) | Bridge to tutor |
| Ask Scho dock | Side channel; grounded on note + OCR |
| Clean Up / rewrite chips | Optional Reflect/Mem text assist on selection |

### Session loop (target)

1. Student opens note → types or pastes.
2. Drops photo of homework / board.
3. System OCR (or vision) → editable text appears under/ beside image.
4. Student taps **Ask Scho** (whole note, selection, or this image).
5. Reply stays in dock; note remains primary; student can insert takeaways.

---

## 13. Anti-patterns

| Anti-pattern | Why it fails | Seen in |
|--------------|--------------|---------|
| Attach without vision | Student trusts AI; AI invents from title only | Mem (documented) |
| Chat swallows the note | Loses durable artifact | Early ChatGPT-only flows |
| Full-width prose on ultrawide | Unreadable measure | Notion Full width misuse |
| Graph / DB as default notes home | Anxiety, not calm | Notion / Obsidian over-config |
| Auto-rewrite without accept | Destroys student’s voice | Aggressive Clean Up defaults |
| Link-only “images” | Copilot/vision can’t see | OneNote link vs paste caveat |
| Cover-first empty notes | Branding > writing | Notion/Craft misuse |

---

## 14. Open questions for implementers

1. OCR client-side (existing Free Studying Tesseract path) vs server vision for homework photos — latency, privacy, BYOK?
2. Persist image assets in `free_study_note_assets` (R2) with OCR text columns — mirror Reflect index?
3. Should Notes mode share the whiteboard’s “editable OCR → Ask Scho” component, or a lighter inline variant?
4. Focus Mode: dim previous paragraphs (iA) vs hide chrome only (Bear) for exam-stress sessions?
5. When both PDF mode and Notes mode exist, is “photo of page” Notes or PDF-peek?

---

## 15. Source anchors (non-exhaustive)

- Notion Help: images/files; Notion AI “Analyze PDFs and Images”; caption / OCR agent templates  
- Obsidian Publish: customize site / readable line length / chrome toggles; Copilot plugin vision notes  
- Craft Help: Media, Image Playground; craft.do/write AI positioning  
- Mem Help: Note Editor — attach vs Search/Chat/Copilot awareness caveat  
- Reflect: changelog OCR for images/PDFs; AI palette ⌘J; GPT-4o update  
- Microsoft: OneNote Copy Text from Picture; Copilot understands images/tables/tags/ink (2026)  
- iA Writer / Bear: Focus Mode as calm-writing reference for Apple Notes analogs  

---

*End of research note. No application code was changed in this pass.*
