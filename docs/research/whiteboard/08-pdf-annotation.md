# PDF Annotation UIs — Patterns for Free Studying (PDF Adjacent to Board)

**Date:** 2026-07-20  
**Scope:** Annotation / active-reading UX from Kami, Acrobat on the web, Hypothesis, LiquidText-class tools, plus adjacent study apps (Flexcil, Shadow Reader–style split panes).  
**Goal:** Distill patterns useful for Scholaris **Free Studying PDF mode** when the document sits **beside a whiteboard / synthesis board** — not a full Kami/Acrobat clone.  
**Method:** Public product docs, help centers, marketing deep-dives, and published CHI research (LiquidText). Live paid product sessions were not exercised.  
**Out of scope:** App code, library choice (pdf.js vs others), storage schema, collaboration backends.

---

## 0. Scholaris framing (why this doc exists)

Today Free Studying roughly separates:

| Mode | Affordance |
|------|------------|
| **PDF** | Upload → client-side text extract → paste excerpt into tutor prompt |
| **Whiteboard** | Draw → OCR → Ask Scho |

The missing product shape is **read on PDF + think on board in one composition**: select a passage, keep provenance, work it out spatially (or with tutor), jump back to source. Annotation UIs already solve pieces of that loop; this note maps which pieces matter and which to skip.

**Design north star:** PDF is the *source pane*; the board (or notes rail) is the *synthesis pane*. Annotations are the *glue*, not the product.

---

## 1. Product snapshots

### 1.1 Kami — classroom markup workspace

**Positioning:** Started as PDF annotation; now a collaborative instructional surface (LMS hand-in, Class View, accessibility, AI grading on paid tiers).

**Core annotation surface**

- Persistent **tool rail**: highlight / underline / strikethrough, freehand draw, shapes, text boxes, equations, eraser, select.
- **Comment tool**: click page or selection → margin-anchored sticky; show/hide comments to declutter.
- **Color as semantics**: students/teachers color-code claim vs evidence, own notes vs feedback.
- **Multimodal comments**: typed, voice, video, screen capture — feedback as media, not only text.
- **Touch/stylus-first highlight** (“highlight anywhere”) for Chromebook / tablet classrooms.

**Layout habits**

- Document is the stage; tools are chrome around it.
- Collaboration and LMS workflow dominate product story more than personal synthesis.

**Takeaways for Free Studying**

| Keep | Skip / defer |
|------|----------------|
| Color-coded highlight + optional comment | Real-time multi-user Class View |
| Show/hide markup to protect reading flow | Audio/video comment recording (unless Voice mode already covers it) |
| Text box / freehand for “show work on the page” | LMS assign / submit / grade loops |
| Tool gating (subset of tools on by default) | Full shape/equation editor parity |

Kami is closest to **“worksheet on glass.”** For Scholaris, borrow the **lightweight markup vocabulary**, not the classroom OS.

---

### 1.2 Acrobat on the web — review / redline chrome

**Positioning:** Browser review workflow: mark up once, collect threaded comments, share without email attachments.

**Interaction grammar**

1. **Select text** → **context menu** (highlight, underline, strikethrough, color).
2. Or **Quick Actions toolbar** → drop sticky comment, insert text, replace text, freehand draw.
3. **Comments pane (right)** lists all markups; reply, react (emoji), edit, delete.
4. Selection ↔ pane **bidirectional focus**: open pane item ↔ jump/emphasize in document.

**Comment model**

- Sticky icon on page + full body in pane (classic Acrobat).
- Redlining metaphor: insert / replace / strike as *suggested edits*, not study notes.
- AI-assisted review and Read aloud appear as adjacent features, not the annotation core.

**Takeaways for Free Studying**

| Keep | Skip / defer |
|------|----------------|
| Select → contextual actions (low mode-switching) | Editorial redline (insert/replace for legal/doc review) |
| Right rail as annotation index | @mentions / shared review workflows |
| Color change on existing markup | Full desktop Acrobat feature parity |
| Freehand as “circle this figure” | Emoji reactions as primary feedback |

Acrobat’s strongest transferable pattern is **selection-first, list-second**: create in place, manage in a pane. That maps cleanly to “send this highlight to board / Ask Scho.”

---

### 1.3 Hypothesis — social / scholarly overlay

**Positioning:** Open web + PDF annotation as an **overlay** (client + service). HTML and PDF (via PDF.js) share one mental model.

**Architecture-relevant UX (even if we don’t copy the stack)**

- **Annotator** in the document: selection → floating **Annotate | Highlight** adder.
- **Sidebar** (iframe): cards for each annotation; hover card ↔ emphasize highlight; click highlight ↔ focus card.
- **Four annotation types** (education guides):
  1. **Highlight only** (often private)
  2. **Annotation** = highlight + body
  3. **Page note** = document-level, no selection
  4. **Reply** = thread on an existing card
- **Visibility**: Only me / group / public — critical for classrooms; less so for solo Free Studying, but “private by default” is the right default.
- **Anchoring**: W3C-style selectors so highlights survive reflow; PDFs get the same treatment once rendered to DOM via PDF.js.
- **Direct links** to a specific annotation (`hyp.is/…`) — deep-link to a focused quote.

**Layout habits**

- Sidebar can minimize / resize; reading stays primary.
- Research on social annotation (e.g. “Spotlights”) shows tension between **always-on sidebar** vs **on-demand** (Hypothesis/Perusall often open on highlight click). Dense classes need **attention cues** (instructor marks, unread) beyond plain yellow.

**Takeaways for Free Studying**

| Keep | Skip / defer |
|------|----------------|
| Select → Annotate vs Highlight-only | Public web / group social layer |
| Bidirectional highlight ↔ card focus | Full Hypothesis service / LMS LTI |
| Page-level notes vs passage notes | Public annotation discovery |
| Deep-link to a quote for tutor context | Markdown/KaTeX in every comment body (nice later) |
| Private-first highlights | Voting / reputation on comments |

Hypothesis is the best reference for **quote provenance + index pane**. For Scholaris, the “card” can be a **board clip** or **tutor context chip**, not a social thread.

---

### 1.4 LiquidText-class — active reading + workspace

**Positioning:** CHI 2011 research product → commercial iPad/Windows app. Thesis: don’t emulate paper’s limits; use digital flexibility for **active reading**.

**Canonical layout**

```
┌─────────────────────┬──────────────────────────────┐
│ Document pane       │ Infinite workspace           │
│ (PDF / slides)      │ (notes, excerpts, links)      │
│ + mini preview /    │ pan / zoom / rearrange         │
│   pinch collapse    │                              │
└─────────────────────┴──────────────────────────────┘
```

**Signature interactions**

- **Excerpt by drag**: select in document → pull into workspace → keeps **live link** back to source.
- **Pinch-to-collapse**: squeeze document so only highlighted (or search-hit) regions remain, with adjustable context — navigation by *salience*, not page number alone.
- **Write anywhere**: on document, on notes, on workspace.
- **Spatial hyperlinks**: draw / connect notes ↔ excerpts ↔ distant document regions; open linked regions together.
- **Fisheye lenses** (research / multitouch): locally magnify workspace without destroying global layout.
- **Multi-doc projects**: one workspace over many sources.

**Takeaways for Free Studying**

| Keep | Skip / defer |
|------|----------------|
| Document | synthesis split (PDF ‖ board) | Full infinite-canvas PDF editor |
| Drag (or “Send to board”) with **backlink** | Multitouch fisheye / 3-finger rotate vocabulary |
| Pinch / filter to “only my marks” | Real-time multi-user shared workspace |
| Bidirectional jump excerpt ↔ page | Full mind-map IDE |

LiquidText is the **closest conceptual match** to “PDF mode adjacent to board.” Kami/Acrobat annotate *on* the page; LiquidText **extracts thinking off the page** while preserving tether. Scholaris whiteboard already is that off-page surface — the gap is the **tether**.

---

### 1.5 Adjacent study apps (secondary references)

| Product | Pattern worth stealing |
|---------|------------------------|
| **Flexcil** | PDF + separate notebook in one session; gesture markup; sticky memos; multi-page view |
| **Shadow Reader / Shelf / Notedaisy** | Explicit **split-screen read ‖ write**; notes tethered to passage; optional canvas for cross-doc synthesis |
| **Sapientia-class research readers** | PDF ↔ parsed blocks in sync; Ask grounded in **block citations** |

These reinforce LiquidText’s split: **ingestion pane + synthesis pane**, with links as first-class objects.

---

## 2. Shared design patterns (cross-product)

### P1 — Selection-first creation

Almost every serious annotator creates from **text selection** (or region selection for images), not from opening a form first.

- Acrobat / Hypothesis: floating context actions.
- Kami: tools can be mode-based, but comment-on-selection still dominates feedback.

**Scholaris mapping:** Select passage → actions: *Highlight · Send to board · Ask Scho · Copy quote*. Prefer this over “enter annotate mode then hunt.”

### P2 — Dual representation (ink on page + list/card)

Markups exist as:

1. **In-document visuals** (highlights, icons, drawings)
2. **Structured list** (comments pane / sidebar cards / workspace excerpts)

Bidirectional focus is non-negotiable for trust (“where did this note come from?”).

**Scholaris mapping:** Board clip / tutor chip shows **page + short quote**; click → scroll PDF and pulse highlight.

### P3 — Highlight vs annotation vs page note

Three levels of commitment:

| Level | Cost | Use |
|-------|------|-----|
| Highlight-only | One gesture | Mark for later; private salience |
| Anchored note | Highlight + text | Question, paraphrase, misconception |
| Page / doc note | No selection | “Overall thesis / exam tip” |

**Scholaris mapping:** Highlight-only for scan; Send-to-board or Ask Scho for committed notes; optional doc-level “session goal” sticky.

### P4 — Color as lightweight ontology

Kami (and study practice) uses colors for **roles**, not decoration: evidence, definition, confuse-me, exam-likely.

**Scholaris mapping:** 3–4 named colors max (e.g. Key · Unclear · Practice · Quote-for-tutor). Avoid rainbow toolbars.

### P5 — Declutter / focus modes

- Kami: show/hide comments  
- LiquidText: pinch to highlights-only  
- Hypothesis: collapse sidebar  

Readers need a **clean reading state** without destroying marks.

**Scholaris mapping:** Toggle “Marks visible”; optional “Highlights only” strip view for review before a practice set.

### P6 — Provenance / anchoring

Hypothesis’s selector model and LiquidText’s excerpt links both answer: **does this note still point at the right words after zoom/reflow?**

**Scholaris mapping (product, not impl):** Every board/tutor artifact from PDF should store at least `{ page, quoteSnippet, charOffsetsOrSelector? }`. Prefer quote snippet + page even if selectors come later.

### P7 — On-page ink vs off-page synthesis

| On-page (Kami / Acrobat draw) | Off-page (LiquidText / Flexcil notebook) |
|-------------------------------|------------------------------------------|
| Circle a diagram, underline a formula | Derive, outline, FBD, tutor dialogue |
| Tied to PDF coordinates | Tied to session / board space |
| Clutters reading if overused | Scales with thinking |

**Scholaris mapping:** Allow **minimal** on-page ink (highlight + optional pen for figures). Push **worked reasoning** to the existing whiteboard. That matches current Free Studying strengths (OCR → Ask Scho).

### P8 — Tutor / AI as consumer of annotations

Modern adjacent products (Sapientia Ask, Acrobat AI review, Kami AI feedback) treat annotations as **context packets**.

**Scholaris mapping:** “Ask Scho about selection” should send: quote + surrounding sentence + page + optional board stroke OCR + user question. Prefer **grounded cite-back** (“as on p. 3…”) over dumping whole PDF text (today’s 6–8k excerpt cap is a start; selection is better).

---

## 3. Layout patterns for PDF ‖ board

### 3.1 Recommended compositions

**A. Side-by-side (default desktop)** — LiquidText / Shelf Studio

```
┌──────── PDF (55–65%) ────────┬──── Board (35–45%) ────┐
│ toolbar: hl · send · ask     │ pen / eraser / Ask Scho │
│ page nav · zoom · marks on/off│ clips from PDF as cards │
└──────────────────────────────┴─────────────────────────┘
```

**B. Stacked (narrow / mobile)** — PDF full-bleed; board as bottom sheet or mode flip with **shared clip tray**.

**C. PDF-primary + board drawer** — Acrobat/Hypothesis-like: board/clips as right drawer until user “pops” to side-by-side.

For Scholaris Free Studying hub chrome, **A** matches “adjacent to board”; **C** is a good progressive enhancement if space is tight with tutor chat also open.

### 3.2 Resize & focus

- Remember split ratio per session.
- When focusing a clip on the board, **auto-scroll PDF** and briefly emphasize highlight (Hypothesis hover pattern).
- When selecting in PDF, optionally **dim board** only if a modal action is open — don’t Wattpad-darken the reading surface by default (hurts study).

### 3.3 What sits in the “middle” (the glue UI)

Minimal chrome between panes:

1. **Clip tray** (vertical or bottom): last N excerpts with page badges  
2. **Primary actions** on selection (see P1)  
3. **Sync indicator**: “3 clips linked · 1 orphaned”

Avoid a third mega-pane (comments + board + chat) on one viewport. Prefer: PDF ‖ Board, with **Ask Scho** as overlay/sheet using current selection/clip.

---

## 4. Interaction recipes (study-specific)

### Recipe 1 — Close reading → board

1. Highlight definition (color: Key)  
2. **Send to board** → creates linked text card + optional blank space beside it for paraphrase  
3. Student writes paraphrase / example on board  
4. **Ask Scho** with clip + board OCR  

### Recipe 2 — Confusion triage

1. Color **Unclear** on passage  
2. Ask Scho immediately (no board)  
3. After explanation, student **sends corrected paraphrase** to board; original highlight stays as breadcrumb  

### Recipe 3 — Figure / diagram (scanned PDF)

1. Region select or freehand circle (on-page)  
2. Snapshot region → board as image card (LiquidText/Flexcil “pull graphic”)  
3. Annotate / FBD on board; OCR if handwriting  

### Recipe 4 — Exam review pass

1. **Highlights-only** filter  
2. Flip through salience map  
3. For each Key highlight, one practice prompt via Scho  

### Recipe 5 — Multi-source (defer)

LiquidText projects and Shadow-style canvases shine with many PDFs. Free Studying v1 should stay **one active PDF + one board**; multi-doc linking is P2.

---

## 5. Anti-patterns (do not copy blindly)

| Anti-pattern | Why it hurts Free Studying |
|--------------|----------------------------|
| Full redline / editorial suite | Wrong metaphor (editing docs ≠ learning) |
| Always-visible dense comment threads | Social annotation noise; solo study needs quiet |
| Rainbow toolbars with 20 markup types | Decision fatigue; Chromebook classrooms need subset |
| Annotations only on-page, no export to board | Reimplements whiteboard poorly; loses OCR/tutor loop |
| Dump entire PDF into LLM every turn | Cost, latency, weak grounding; selection + page wins |
| Infinite canvas *as* the PDF viewer | Harder reading, a11y, and print-faithful layout |
| Mandatory collaboration | Free Studying is personal-first; share later |
| Sticky notes that obscure text permanently | Prefer margin/sidebar or auto-collapse |

---

## 6. Accessibility & modality notes

- **Keyboard:** Hypothesis-style shortcuts for next/prev annotation; Acrobat pane focus order.
- **Screen readers:** Highlights need textual equivalents in the clip list (not only canvas color).
- **Read aloud:** Kami / Acrobat expose TTS on document text — aligns with Scholaris Kokoro path on *quotes*, not necessarily whole PDF.
- **Touch:** Selection handles + large hit targets for Send/Ask; avoid hover-only adders on tablets (Hypothesis adder is mouse-friendly — need press-and-hold or persistent bar on touch).
- **Scanned PDFs:** Text selection fails → region snapshot + OCR (whiteboard OCR pipeline already exists). Product should degrade gracefully: “Image page — lasso to board.”

---

## 7. Comparison matrix (what to emulate)

| Capability | Kami | Acrobat web | Hypothesis | LiquidText | Scholaris priority |
|------------|:----:|:-----------:|:----------:|:----------:|:------------------:|
| Select → highlight | ● | ● | ● | ● | **P0** |
| Select → comment/card | ● | ● | ● | ○ (excerpt) | **P0** as board clip |
| Comments list pane | ● | ● | ● | ○ | P1 (clip tray) |
| Bidirectional focus | ● | ● | ● | ● | **P0** |
| Freehand on page | ● | ● | ○ | ● | P1 (figures) |
| Off-page workspace | ○ | ○ | ○ | ● | **P0** (existing board) |
| Drag excerpt with link | ○ | ○ | ○ | ● | **P0** |
| Pinch / highlights-only | ○ | ○ | ○ | ● | P1 |
| Social / LMS | ● | ● | ● | ○ | Defer |
| Voice/video comment | ● | ○ | ○ | ○ | Defer (Voice mode) |
| AI on selection | ● | ● | ○ | ○ | **P0** (Ask Scho) |

● = strong · ○ = weak / absent

---

## 8. Recommended Free Studying PDF‖Board v1 surface

**In:**

1. PDF viewer with page nav, zoom, text selection (pdf.js-class).  
2. Selection bar: **Highlight · Send to board · Ask Scho**.  
3. 3–4 semantic highlight colors.  
4. Linked **clips** on the board (quote + page + jump-back).  
5. Marks visible toggle.  
6. Scanned-page fallback: lasso → image clip → optional OCR.  
7. Ask Scho context = selection (± short window) + optional active board region.

**Out (v1):**

- Threaded social replies, public annotations, LMS.  
- Full redline insert/replace.  
- Multimedia sticky comments.  
- Multi-PDF LiquidText projects.  
- Pinch-fisheye multitouch vocabulary.  
- Replacing the whiteboard with an in-PDF infinite canvas.

**Mental model one-liner:** *Hypothesis selection + Acrobat context actions + LiquidText split + Scholaris board/OCR/tutor.*

---

## 9. Open questions for later design passes

1. When tutor chat is open, is the layout PDF ‖ Board, PDF ‖ Chat, or a **tri-mode** with chat as sheet?  
2. Should “Send to board” create editable text only, or also a locked quote chip + free ink beside it?  
3. Do we persist annotations in `free_study_notes` / assets, or session-local until Save?  
4. How do IB/AP equation-heavy PDFs behave when selection breaks across MathML-like line art?  
5. Mobile: bottom sheet board vs mode tabs — which preserves the tether better?

---

## 10. Sources (public)

- Kami: product features / annotation blog / AVID digital tools overview  
- Adobe: Acrobat on the web — add/manage comments; redlining tools help  
- Hypothesis: “Overview of the Hypothesis System”; educator annotation guides; social-annotation spotlight research  
- LiquidText: commercial feature deep-dive; Tashman & Tan, CHI 2011 *LiquidText: A Flexible, Multitouch Document Environment*  
- Adjacent: Flexcil, Shadow Reader, Shelf Studio, Notedaisy marketing; Sapientia-style block readers  

---

## 11. One-page checklist for implementers (design only)

- [ ] PDF and board visible together on desktop (split)  
- [ ] Selection-first actions; no mandatory tool-mode maze  
- [ ] Every board clip from PDF can jump back to page + quote  
- [ ] Highlight-only vs committed clip distinguished  
- [ ] ≤4 semantic colors  
- [ ] Hide marks without deleting them  
- [ ] Ask Scho uses selection (not whole file) by default  
- [ ] Scanned pages: lasso path exists  
- [ ] Touch: Send/Ask reachable without hover  
- [ ] Do not build Kami-classroom or Acrobat-review OS in v1  
|
