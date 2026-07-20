# Quiz-from-Document Products — Intent UI After Upload

**Date:** 2026-07-20  
**Scope:** Public product patterns for turning an uploaded document (PDF, DOC/DOCX, PPT, images, pasted text, Drive links) into quizzes / practice / study packs. Products: **Quizizz AI**, **Wayground** (Quizizz rebrand), **Diffit**, **Brisk Teaching**, **Quizlet Magic Notes / Study Guides**, **Twee**, **Curipod**.  
**Goal:** Distill **post-upload intent UI** — what the user chooses *after* the file is in, before (or while) generation — for Scholaris Free Studying PDF → practice.  
**Method:** Vendor marketing, help centers, teacher reviews / demos (2024–2026). Live paid sessions were not exercised.  
**Out of scope:** App code, LLM vendor choice, storage schema, LMS grade sync, classroom live-game chrome.

---

## 0. Scholaris framing (why this doc exists)

Free Studying already has **upload → extract text → tutor**. The missing product beat is **upload → declare intent → get a study artifact** (quiz, flashcards, outline, comprehension set) without dumping the student into a blank chat.

**Design north star:** After upload, the UI asks *what job do you want this document to do?* — not *which AI model?* and not *start typing a prompt from scratch*.

**Primary steal:** A compact **intent sheet** (purpose + a few constraints) between file confirmation and generation. Review/edit comes next; delivery/export is last.

---

## 1. Shared funnel (all seven products)

Every product in this set converges on the same skeleton:

```
Source in → Intent / constraints → Generate → Review & edit → Use / export / assign
```

| Stage | What users see | What to steal for Scholaris |
|-------|----------------|-----------------------------|
| **Source in** | Drop zone, Drive, paste, URL, photo of worksheet | Keep PDF + paste; optional image OCR later |
| **Intent** | Question count, type, grade/level, standards, output format, “keep passage visible” | **This is the page** — purpose chips + 3–5 knobs |
| **Generate** | Progress / “working…” | Short wait with document title visible |
| **Review** | Editable question list; chat-to-refine (Wayground, Brisk) | Edit before “Start practice” |
| **Use** | Play quiz, flashcards, interactive lesson, Forms export | Map to Free Study practice / tutor — skip LMS assign unless needed |

**Anti-pattern to avoid:** Upload → immediate opaque generation with no knobs → surprise dump of 20 MCQs. Teachers and students both want **control before cost** (time, tokens, wrong difficulty).

---

## 2. Product snapshots (post-upload intent focus)

### 2.1 Quizizz AI → Wayground AI (same lineage)

**Positioning:** Classroom assessment platform. **Quizizz rebranded to Wayground**; AI create flows are continuous. Marketing still says “Quizizz AI” in older pages; product help is under Wayground.

**Inputs after Create → Assessment/Quiz → Generate with AI → Document**

- Upload: PDF, PPT/PPTX, DOC/DOCX, PNG, JPG (device or Drive); one file at a time.
- Also: prompt/text, public website URL, YouTube, curriculum (US math/science), mobile worksheet photos.
- Limits (help varies by article/tier): e.g. ~25–50 MB, ~30–100 pages; **first ~16k characters** processed; tables/images process worse than plain text.

**Intent UI (post-upload knobs)**

| Knob | Role |
|------|------|
| Number of questions | Size of the set |
| Subject | Domain bias |
| Grade | Difficulty / reading level |
| Language | Output language |
| Question types (on some import paths) | MC / etc. |
| **“Allow students to read this document while answering”** | Passage-comprehension mode vs closed-book quiz |
| Depth of knowledge (prompt / standards paths) | Cognitive demand |

**After generate:** Full editor (change type, options, media) → **Enhance with AI** (accessibility, engagement) → Publish / assign. Prompt path adds **Chat with AI** before “Use this quiz.”

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Explicit **passage-visible** toggle | Live game / meme / music classroom mode |
| Grade + count + language as default trio | Curriculum browser (US math/science district) |
| Review-then-publish gate | Chrome extension “any page → quiz” (nice later) |
| One-file honesty + text-length limits surfaced | Spreadsheet / Google Forms *import* (different job) |

**Intent pattern name:** *Assess this file* — teacher-facing constraints, then editable quiz deck.

---

### 2.2 Wayground (formerly Quizizz) — same product, clearer IA

Treat Wayground as the **canonical name** for Quizizz AI create flows in 2026.

**Extra surface worth noting**

- Home **Upload** shortcut → same generate preferences → Create resource.
- **Import worksheets/questions** path: extract *existing* questions from a doc vs invent new ones (two intents — “extract” vs “generate”).
- Differentiation story: one resource → reading supports, translations, simplified distractors (post-create Enhance more than pre-upload).

**Scholaris note:** Separating **“Make practice from this PDF”** vs **“Turn this worksheet into interactive items”** is a real intent fork; Wayground surfaces both.

---

### 2.3 Diffit

**Positioning:** Differentiation engine — **leveled reading + question pack**, not a live quiz game.

**Inputs:** Topic, PDF, pasted text, URL, YouTube transcript, vocab list, standards.

**Intent UI (before / with source)**

| Knob | Role |
|------|------|
| Grade / reading level | Core product — rewrite + question demand |
| Language | Multilingual access |
| Standards / literacy skills / DOK | Align MC + short answer |
| Length of passage | Shorten / lengthen after generate |
| Activity mix | Vocab, MC, short answer, open-ended, graphic organizers |

**After generate (resource set, not a bare quiz)**

- Adapted passage + summary bullets + key vocab + MC + short/open questions.
- Edit in place; export to Google Docs / Slides / Forms / Classroom / Microsoft / PDF (often paid one-click).

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Level-first** intent (grade before generate) | Full worksheet / graphic-organizer print pack |
| Bundled **vocab + questions + summary** as one study pack | Classroom one-click LMS export as P0 |
| Post-gen length / DOK tuning | “Literally Anything” topic generator as primary Free Study path |

**Intent pattern name:** *Adapt this reading* — quiz is one pane of a differentiated packet.

---

### 2.4 Brisk Teaching

**Positioning:** Browser extension / Classroom Intelligence — **quiz from whatever is on screen** (Doc, PDF tab, article, YouTube), then export to the tool teachers already use.

**Flow (intent-heavy)**

1. Open resource in Chrome/Edge (or upload in Brisk Next).
2. Open Brisk → Create → Quiz (or search “quiz”).
3. **Define output parameters:** grade, question type (MC / short / open), count, language, **delivery format**.
4. Optional focus prompt (“citing evidence,” “key themes”).
5. Short clarifying Q&A with Brisk → generate → chat refine.

**Delivery formats (the signature intent)**

Google Doc · Google Form · Word · Microsoft Form · Kahoot! · Nearpod · Canvas QTI (schools).

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Output destination as a first-class intent** (“I need Forms” vs “I need practice here”) | Seven LMS/game exports as Scholaris P0 |
| Grade + type + count + focus prompt | Extension-only “never leave the tab” (Scholaris is already in-app) |
| Chat refine after draft | District standards libraries as mandatory |

**Intent pattern name:** *Make a check-for-understanding for X format* — destination chip + pedagogy knobs.

For Scholaris Free Study: destination collapses to **Practice here** / **Flashcards** / **Ask Scho about misses** — same idea, fewer sinks.

---

### 2.5 Quizlet Magic Notes → Study Guides (+ Practice Tests)

**Positioning:** Student study OS. Magic Notes evolved into **Study Guides**: upload notes → multi-mode study pack.

**Inputs:** Paste (large char caps), PDF / DOCX / PPT, Google Drive, mobile photo of handwriting, audio (mobile).

**Intent UI — two moments**

**A. At upload (minimal)**  
Often: upload → **Start transforming** with little preconfiguration. Intent is deferred.

**B. After generate (strong)**  
Study guide hub with modes:

| Mode | Job |
|------|-----|
| Outline / summary | Orient |
| Flashcards | Memorize |
| Practice test / Test | Retrieve under exam pressure |
| Essay prompts (Magic Notes era) | Write |

Practice Test customization: question types (MC / written), length, time limit; smart grading for free response.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Post-gen mode switcher** (same upload → many study jobs) | Brain Beats / song gimmicks |
| Edit + highlight study guide before testing | Social “study guides from others” feed |
| Practice-test length/type sheet | Plus paywall framing |

**Intent pattern name:** *Study this material* — upload light, **intent tabs after** (or chips that can also appear before generate).

**Scholaris implication:** For students, Quizlet’s “generate everything, then pick mode” reduces decision anxiety. For exam prep, a **hybrid** is better: 2–3 purpose chips *before* generate (Quiz / Cards / Outline) + ability to unlock the other modes from the same artifact after.

---

### 2.6 Twee

**Positioning:** ESL/EFL teacher toolkit — **many single-purpose tools**, not one mega-uploader.

**Quiz-from-text tools (examples)**

- Create ABCD / multiple-choice questions for a text  
- Open questions for a text  
- True/false, audio/video question creator  
- Extract vocabulary from a text  

**Intent UI**

| Knob | Role |
|------|------|
| Paste text / URL / image of text | Source |
| **CEFR level (A1–C2)** or grade/age | Difficulty — product soul |
| Tool choice | Question format = intent |

Flow: fill fields → **Do the magic** → review → PDF / Word / interactive link / Forms-ish share.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Tool = intent** (MC vs open vs vocab) as explicit choice | 30+ ESL micro-tools as separate nav |
| CEFR / level as required | Full lesson-plan suite |
| Review + explanatory notes for distractors | Wait queues / credit meters as UX |

**Intent pattern name:** *Comprehension check at level L in format F*.

Scholaris can map CEFR → exam band / course difficulty without copying the ESL catalog.

---

### 2.7 Curipod

**Positioning:** Live interactive lessons (polls, draw, word clouds, AI feedback) — quiz-from-doc is a **lesson generator**, not a static quiz bank.

**Doc-related intents**

| Path | Post-upload intent |
|------|-------------------|
| **Curify my slides** | Upload PPT/PDF/Key → interactive lesson (polls, draws, short answers) |
| **PDF → comprehension** (Reading Comprehension generator) | Upload PDF → **grade** + **standard/objective** → interactive comprehension lesson |
| Topic / skill generators | Prompt + grade + objectives (no file) |

**After generate:** Slide editor → Start lesson → join code (classroom live).

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Grade + learning objective/standard next to upload | Live join-code classroom theater |
| Named generator (“comprehension from PDF”) as intent | Drawing prompts / brain-break slides as default |
| Review slides before “Start” | Full Curify of arbitrary textbook decks |

**Intent pattern name:** *Turn this PDF into a live check* — Scholaris strips “live” → *Turn this PDF into a practice set aligned to objective O*.

---

## 3. Cross-product comparison (intent knobs)

| Product | Primary audience | When intent is set | Signature knobs | Primary artifact |
|---------|------------------|--------------------|-----------------|------------------|
| Quizizz AI / Wayground | Teachers | **After upload, before generate** | Count, grade, subject, language, passage-visible | Editable assessment |
| Diffit | Teachers | **With / before source** | Reading level, standards, DOK, language | Leveled passage + question pack |
| Brisk | Teachers | **After source open, before generate** | Type, count, grade, **export format**, focus | Forms/Doc/Kahoot export |
| Quizlet Magic Notes / Study Guides | Students | **Light before; strong after** | Mode: outline / cards / test | Multi-mode study guide |
| Twee | ESL teachers | **Tool pick = intent** | CEFR, question format | Exercise sheet / interactive link |
| Curipod | Teachers (live) | **After upload** | Grade, standard/objective, generator type | Interactive lesson slides |

**Consensus knobs (appear in ≥3 products):** grade/level · question count · question format · language · (often) standards/objective.

**Differentiating knobs:** passage-visible (Wayground), export destination (Brisk), reading rewrite (Diffit), post-gen study mode (Quizlet), CEFR (Twee), live interactivity (Curipod).

---

## 4. Intent UI patterns (steal list for Free Studying)

### 4.1 Pattern A — Constraint sheet (Wayground / Brisk / Curipod)

**When:** File confirmed (name, page count, extract OK).  
**UI:** Bottom sheet or right rail — not a new route if possible.

```
[ Document: Unit 3 Notes.pdf  ·  12 pages  ·  Ready ]

What do you want?
  ( ) Practice quiz     ( ) Flashcards     ( ) Outline + key terms
  ( ) Comprehension with passage visible

Then:
  Difficulty   [ Course default ▾ ]   Questions [ 10 ▾ ]
  Types        [ MC ] [ Short ] [ Mixed ]
  Focus        [ optional: "definitions only" / paste objective ]

         [ Generate ]
```

**Why it wins:** Matches teacher mental model; prevents wrong-difficulty first draft.

### 4.2 Pattern B — Purpose chips, defer details (Quizlet-leaning)

**When:** Student anxiety about forms is high.  
**UI:** Three big chips → generate defaults → refine on results page.

Good as **secondary** path (“Quick practice”) with Advanced expanding Pattern A.

### 4.3 Pattern C — Tool menu as intent (Twee)

**When:** Many pedagogies share one upload.  
**UI:** “From this PDF…” menu: Quiz · Vocab extract · Open questions · Summary.

Maps cleanly to Scholaris Free Study modes without a kitchen-sink form.

### 4.4 Pattern D — Passage lock (Wayground)

Toggle: **Keep source readable while answering** vs closed-book. Critical for reading comprehension vs content mastery quizzes.

### 4.5 Pattern E — Destination / next step (Brisk → Scholaris)

After (or before) generate, one chip row:

- Start practice now  
- Save as flashcard set  
- Ask Scho about missed items (after attempt)

Avoid seven LMS exports in v1.

### 4.6 Pattern F — Review gate (universal)

Never auto-jump into scored mode. Show editable list (or at least expandable preview) with **Start** as explicit CTA. Chat-refine (“harder,” “more AP-style”) is a nice-to-have beside manual edit.

---

## 5. Recommended Scholaris Free Studying shape

**Context:** User is in PDF (or Notes) mode with an uploaded / extracted source.

### 5.1 Post-upload intent sheet (P0)

1. Confirm source (title, char/page estimate, warn if extract thin).  
2. **Intent chips (pick one primary):**
   - Practice quiz  
   - Flashcards  
   - Outline + vocab  
   - Passage quiz (source stays visible)  
3. **Constraints (always visible, defaults smart):**
   - Difficulty = current course / exam band  
   - Count = 8–12 default  
   - Types = Mixed (MC + short)  
4. Optional one-line focus / standard.  
5. Generate → review list → Start.

### 5.2 Post-gen hub (P1, Quizlet-inspired)

Same artifact unlocks sibling modes without re-upload (“Also make flashcards from this”).

### 5.3 Explicitly out of scope for v1

- Live classroom join codes (Curipod)  
- Kahoot/Nearpod/Forms export matrix (Brisk)  
- Full differentiated printable packet (Diffit)  
- 30 ESL micro-tools (Twee)  
- District curriculum browsers (Wayground)

---

## 6. Anti-patterns (observed or implied)

| Anti-pattern | Why it hurts | Better |
|--------------|--------------|--------|
| Generate with zero knobs | Wrong level, wasted wait | Pattern A sheet |
| Hide file limits until failure | Trust break | Show char/page budget on upload confirm |
| Jump straight into scored quiz | No trust in AI items | Review gate |
| 12-field form before first success | Abandonment | Defaults + Advanced |
| Mixing “extract existing questions” with “invent practice” without labeling | Confused output | Two intents, two labels |
| Teacher LMS assign as only success path | Students blocked | In-app practice first |

---

## 7. Sources (starting points)

- Wayground AI help: generate from documents / prompts / video — [help.wayground.com](https://help.wayground.com/support/solutions/articles/158000405091-wayground-ai-generate-assessments-from-prompts-documents-videos-more)  
- Wayground / Quizizz AI marketing — [wayground.com/quizizz-ai](https://wayground.com/quizizz-ai)  
- Diffit — [web.diffit.me](https://web.diffit.me/) · Edutopia / teacher walkthroughs  
- Brisk Quiz Generator — [briskteaching.com/ai-tools/quiz-generator](https://www.briskteaching.com/ai-tools/quiz-generator)  
- Quizlet Study Guides / Magic Notes — [quizlet.com/features/study-guides](https://quizlet.com/features/study-guides) · Help: Studying with Study Guides  
- Twee tools — [twee.com/tools](https://twee.com/tools) · MCQ-for-text tool pages  
- Curipod Curify / PDF comprehension — Curipod blog + teacher demos (e.g. PDF → comprehension + grade + objective)

---

## 8. One-line verdict

**Steal Wayground/Brisk’s pre-generate constraint sheet + Quizlet’s post-gen mode hub + Wayground’s passage-visible toggle; skip live-class and LMS export sprawl.** Intent UI after upload is a short purpose + difficulty + format decision — then review — then practice.
