# PDF → Ask / Quiz Flows — Intent After Extract

**Date:** 2026-07-20  
**Scope:** Upload → text extract/index → **intent picker** (quiz / summarize / tutor / flashcards) across Kami, Adobe Acrobat web (+ Student Spaces), Hypothesis, LiquidText, ChatPDF, Humata, and NotebookLM (Gemini Notebook).  
**Goal:** Distill patterns for Scholaris **Free Studying PDF mode** when the user has a document and must choose *what to do next* with extracted text — not annotation chrome (see `docs/research/whiteboard/08-pdf-annotation.md`).  
**Method:** Public product pages, help centers, education blogs, and secondary reviews. Live paid sessions were not exercised.  
**Out of scope:** App code, pdf.js vs server OCR choice, storage schema, LMS gradebook wiring.

---

## 0. Scholaris framing

Free Studying PDF today is roughly: **upload → client extract → paste/excerpt into tutor**. The industry split this into two product families:

| Family | After extract, the UI asks… | Primary surface |
|--------|-----------------------------|-----------------|
| **Chat-with-PDF** (ChatPDF, Humata, Acrobat AI Assistant) | “What do you want to *ask*?” — free chat + suggested prompts | Side-by-side PDF ‖ chat |
| **Study Studio** (NotebookLM / Gemini Notebook, Acrobat Student Spaces, ChatPDF flashcards SKU) | “What do you want to *make*?” — quiz / flashcards / guide / audio | Source list + **Studio / Study Tools** rail |
| **Annotate / synthesize** (Kami, Hypothesis, LiquidText) | “What do you want to *do on the page*?” — markup, social thread, or excerpt-to-workspace | Document stage (± side workspace) |

**Design north star for Scholaris:** After extract succeeds, show a **small, explicit intent picker** (Quiz · Summarize · Tutor · Flashcards) before dumping the user into an empty chat. Keep chat as the escape hatch; treat structured study tools as first-class outputs with **citation back to pages**.

---

## 1. Canonical pipeline (all products, abstracted)

```
┌──────────┐   ┌─────────────────┐   ┌──────────────────┐   ┌─────────────────┐
│ Upload / │ → │ Extract / index │ → │ Intent surface   │ → │ Grounded output │
│ paste /  │   │ (text layer,    │   │ (chips, Studio,  │   │ (chat answer,   │
│ Drive    │   │  OCR, chunks,   │   │  Understand,     │   │  quiz, cards,   │
│ link     │   │  embeddings)    │   │  suggested Qs)   │   │  summary…)      │
└──────────┘   └─────────────────┘   └──────────────────┘   └─────────────────┘
                                         ↑
                              User can skip → free chat
```

**Stage notes**

1. **Upload** — drag/drop is universal; serious study hubs also take Drive/Docs/Slides/URL/YouTube (NotebookLM, Acrobat Spaces). Zero-signup upload (ChatPDF free tier) maximizes first-run completion.
2. **Extract** — native text PDFs index fast; scans need OCR (ChatPDF, Humata Team, Acrobat). Failures should surface *before* intent (“Scanned PDF — run OCR?”), not as a useless chat.
3. **Intent** — two UI grammars dominate (see §3).
4. **Output** — winners always **cite** page/passage; study tools then open a **focus mode** (quiz submit → score; flashcard reveal → next).

---

## 2. Product snapshots (PDF+ask / study-intent lens)

### 2.1 Kami — Understand + Questions AI (classroom)

**Positioning:** Instructional document surface (annotation → LMS). AI is bolted onto *selected text / existing worksheets*, not a consumer chat-with-PDF funnel.

**Upload → extract**

- Teacher/student opens PDF (or converts Drive docs) inside Kami; text layer assumed for highlight/select.
- Accessibility / Companion path: select web or doc text → **Understand** tools operate on selection or broader scope.

**Intent surface (closest to a picker)**

| Intent | Kami affordance | Who |
|--------|-----------------|-----|
| Summarize | Understand → **Summarize** | Learner / teacher |
| Tutor / explain | Understand → **Explain**; **Adjust** (re-level complexity) | Learner |
| Translate | Understand → **Translate** (100+ langs) | Learner |
| Quiz / assess | **Questions AI** — convert existing doc *or* generate questions from text/diagrams; set DoK / difficulty / hints | Teacher (primary) |
| Flashcards | Not a first-class consumer flashcard deck | — |

**Flow shape**

1. Open resource → select passage (or whole pages for Questions AI).  
2. Pick **Understand** verb *or* launch Questions AI wizard (pages → edit generated items → assign).  
3. Students answer **on the document** (annotation + auto-grade), not in a detached chat.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Selection-scoped Summarize / Explain before whole-doc AI | LMS Class View / auto-grade OS |
| Explicit “question generation” as a distinct intent from chat | Teacher-only DoK wizards as the only quiz UX |
| Re-level / translate as accessibility intents adjacent to summarize | Full multimedia comment / video feedback |

Kami proves **intent verbs on selection** beat “open chat and invent a prompt” for K–12. Scholaris can steal the **Understand chip row**; quiz should remain student-facing (self-check), not teacher-assign-first.

---

### 2.2 Adobe Acrobat web — AI Assistant + Student Spaces

**Positioning:** Two related shells on the same extract layer.

#### A. PDF AI / AI Assistant (chat-first)

**Upload → extract**

1. Drag PDF / DOC / RTF (online tool converts non-PDF → PDF).  
2. Server processes (limits ~100 MB / ~600 pages on marketed free AI tools).  
3. Chat panel opens; files deleted unless signed in to save.

**Intent surface**

- Free-form chat: “ask questions, request summaries, get insights.”  
- Parallel **verb landing pages**: Chat with PDF, Summary Generator, PDF AI — same family, different entry marketing.  
- **Generative summary**: one-click outline with headings, section links, bullets (structured summarize intent).  
- Logged-in **PDF Spaces**: multi-doc (up to ~10); AI surfaces **key takeaways + areas to get started** after upload (auto-intent bootstrap).

**Education prompts (marketed)** — generate quiz questions, flashcards, study plan — via chat, not always as hard buttons on the free online tool.

#### B. Student Spaces (Beta) — true study intent picker

**Upload → extract**

1. Create Student Space → upload notes/docs (marketed: up to ~100 files, ≤600 pages each).  
2. Sources ground the Space.

**Intent surface (Overview / Study Tools)**

| Intent | Tool | Post-generate UX |
|--------|------|------------------|
| Flashcards | Overview → **Flashcards** | Focus mode; Show answer / Space; tutor chat per card |
| Quiz | Overview → **Quiz** | Answer → Submit → score; source markers → jump to doc |
| Summarize / guide | Study guide / Study packet | Structured review artifact |
| Tutor | AI Assistant in Space | Cited Q&A |
| Other | Mind map, podcast, presentation, video summary | Multimedia study |

Alternate entry: homepage → pick **Flashcards** or **Quiz** *first*, then describe topic in chat (intent before sources — topic-first path).

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Overview page intent grid** after sources ready | Full Adobe Express presentation / video pipeline |
| Quiz + flashcards with **source markers** and focus mode | Group Spaces collaboration as v1 |
| Dual path: sources→tools *or* tool→topic | Premium podcast/video as required for PDF mode |
| Generative summary as one-click structured outline | Redline / e-sign chrome |

Acrobat is the closest **commercial blueprint** for Scholaris: extract once → **pick Quiz / Flashcards / Guide / Tutor** → interactive artifact with citations.

---

### 2.3 Hypothesis — social annotation (anti–AI-shortcut)

**Positioning:** LMS-native highlight + discussion *on* the reading. Explicit brand stance: learning = engage with text + peers, **not** summarize-via-AI.

**Upload → extract**

- Instructor attaches PDF/URL/JSTOR/VitalSource/YouTube transcript via LTI.  
- PDF must have selectable text (OCR outside Hypothesis if scanned).  
- Client loads document + sidebar; no “chat with PDF” index for LLM Q&A.

**Intent surface**

| Intent | Hypothesis affordance |
|--------|------------------------|
| Summarize / quiz / flashcards / tutor | **Absent** as product AI intents |
| Annotate | Select → Annotate \| Highlight |
| Discuss | Threaded replies on cards; tags; @peers |
| Private study | “Only me” annotations as personal notes |
| Grade | Instructor auto-grade by annotation count (LMS) |

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Private highlight / quote as *input* to later Ask Scho | Building social LMS annotation as the PDF mode |
| Eye icon / declutter before AI | Treating peer threads as the quiz |
| OCR prerequisite messaging | Hypothesis LTI / SpeedGrader |

Hypothesis is a **negative control**: if Scholaris only offers open chat after upload, students will use AI as a reading skip. Pair intent picker with **selection-first Ask** and optional “I read this page” friction — don’t clone Hypothesis social, but respect its pedagogical warning.

---

### 2.4 LiquidText — extract-to-workspace (human synthesis)

**Positioning:** Active reading research product: document pane ‖ infinite workspace; excerpts stay linked to source. Not an LLM quiz factory.

**Upload → extract**

- Import PDF / Office / web into a **project**; native text + user ink.  
- “Excerpt anything” = user-driven extract of passages/images to workspace (provenance via tap-back).

**Intent surface**

| Intent | LiquidText affordance |
|--------|------------------------|
| Summarize | Human: pinch-collapse highlights / search hits; organize excerpts |
| Tutor / quiz / flashcards | **Not built-in AI intents** |
| Synthesize | Drag excerpts, InkLinks, spatial groups / mind-map-like layout |

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| User chooses *what* text becomes study fodder (excerpt before AI) | Multitouch pinch as required web UX |
| Provenance tether excerpt ↔ page | Full LiquidText canvas as PDF mode |

For Scholaris: **optional “Send selection to intent”** — Quiz/Summarize/Tutor/Flashcards run on *excerpt or whole doc*, with LiquidText-style backlink. Prefer selection default for long PDFs.

---

### 2.5 ChatPDF — frictionless chat + suggested Qs (+ flashcards SKU)

**Positioning:** Consumer “ChatGPT for PDFs”; free tier, often no signup for first chat.

**Upload → extract**

1. Drop PDF (also Word/PPT/MD/TXT marketed).  
2. Cloud maps/indexes content (OCR called out on mobile).  
3. Side-by-side PDF ‖ chat; citations scroll to source.

**Intent surface**

- On load: **auto brief summary + 2–3 suggested questions** (classic ZDNet-era pattern; still the product’s orientation UX).  
- Free chat for summarize / explain / MCQ help (“answer multiple choice faster”).  
- Separate **AI Flashcards** product path: upload → generate Q–A cards → practice (spaced difficulty) → export Anki/Quizlet/CSV.  
- Multi-file folders for compare questions.

**No hard “Quiz | Flashcards | Tutor” grid on the main chat landing** — intents are mostly **suggested prompts + free text**, with flashcards as a sibling funnel.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Auto summary + suggested questions as *soft* intent | Zero-citation chat |
| Side-by-side + clickable citations | Multi-folder knowledge base as v1 |
| Dedicated flashcards export path | Unlimited free OCR as expectation |

ChatPDF shows the **minimum viable picker**: if you only ship chat, still emit **Summarize + 3 chips** after extract so the user never faces a blank composer.

---

### 2.6 Humata — knowledge-base chat (summarize by asking)

**Positioning:** “ChatGPT for your files” / team knowledge base; citations + multi-doc; API Ask endpoint (SSE).

**Upload → extract**

1. Upload PDF/DOC/PPT (Team: OCR for scans).  
2. Index into workspace / folders.  
3. Ask unlimited questions (plan-gated pages/answers on free).

**Intent surface**

- Primarily **open chat** (“Summarize findings,” “Compare docs”).  
- Marketing emphasizes summarize / compare / search — **not** a Study Studio of quiz/flashcards.  
- Chat settings (grounded / balanced / creative) = answer *style*, not study *format*.  
- Enterprise: embed chatbot on docs; reports.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| Citation-backed answers + multi-doc ask | Team permissions / embed widget |
| Explicit “grounded” mode default for study | Creative mode as default for exams |
| OCR as paid/advanced gate with clear messaging | Building Humata-style company KB |

Humata validates **chat-only** for research teams; for Scholaris students, chat alone under-serves quiz/flashcards — borrow citations + grounded default, add Studio intents Adobe/NotebookLM-style.

---

### 2.7 NotebookLM / Gemini Notebook — Studio as intent picker

**Positioning:** Source-grounded research/study notebook (rebranded Gemini Notebook ~July 2026). Answers only from uploaded sources + inline citations.

**Upload → extract**

1. Create notebook → Add source: PDF, Docs, Slides, web, YouTube transcript, audio, pasted text, Markdown, etc.  
2. Free tier: large per-source word caps; dozens of sources per notebook (limits change over time).  
3. Sources panel lists corpus; chat is grounded.

**Intent surface — Studio panel (hard picker)**

| Intent | Studio / tool | Notes |
|--------|---------------|-------|
| Summarize | Chat + briefing/report generators; Audio Overview | Audio = multimodal summarize |
| Tutor / explain | Chat grounded Q&A; Explain affordances | Citations mandatory |
| Flashcards | Studio → Flashcards | Practice with progress (2026 updates) |
| Quiz | Studio → Quiz | MCQ / short answer practice; daily caps by tier |
| Other | Mind map, study guide, data table, video overview | Study guide ≈ key terms + sample quiz + essay Qs |

**Flow shape**

1. Sources ready → optional auto orientation.  
2. User opens **Studio** → clicks Flashcards / Quiz / Guide / Audio (intent = structured artifact).  
3. Or stays in chat for free-form tutor.  
4. Artifacts remain in notebook; citations jump to source passages.

**Takeaways**

| Keep | Skip / defer |
|------|----------------|
| **Studio rail = intent picker** after sources indexed | YouTube/audio ingestion in PDF-only mode |
| Flashcards + Quiz as peer tools to chat | Public notebook gallery as core |
| Study guide bundling terms + quiz + essay prompts | Mind map / video as P0 |
| Strict grounding + “not in sources” honesty | Multi-hundred-source research OS |

NotebookLM is the **clearest pedagogy match** for Free Studying: upload sources → pick study format. Scholaris should mirror Studio’s **Quiz / Flashcards / Summary / Tutor** quartet even if implementations are thinner.

---

## 3. Intent picker patterns (cross-product)

### Pattern A — Soft chips (chat-first)

**Who:** ChatPDF, Humata, Acrobat AI Assistant (basic).

```
[ PDF preview ]     [ Auto-summary ]
                    [ Suggested Q1 ] [ Q2 ] [ Q3 ]
                    [ ____________ Ask anything ]
```

- Pros: zero decision anxiety; works for research Q&A.  
- Cons: quiz/flashcards buried in prompt literacy; weak exam prep loop.

### Pattern B — Hard Studio grid (artifact-first)

**Who:** NotebookLM Studio, Acrobat Student Spaces Overview, ChatPDF flashcards landing, Kami Questions AI (teacher).

```
Sources ready ✓
┌────────────┬────────────┬────────────┬────────────┐
│ Summarize  │ Tutor      │ Quiz       │ Flashcards │
└────────────┴────────────┴────────────┴────────────┘
+ free chat always available
```

- Pros: matches learner goals; outputs are scorable/reviewable.  
- Cons: needs generation UX, citation UX, and empty/error states per tool.

### Pattern C — Selection-scoped verbs

**Who:** Kami Understand; LiquidText excerpt; Acrobat/Hypothesis select→act.

```
User selects passage → [ Summarize | Explain | Ask tutor | Make cards | Quiz me ]
```

- Pros: better grounding, less hallucination, works on long textbooks.  
- Cons: must teach selection; whole-doc still needed for “quiz the chapter.”

### Pattern D — Topic-first (intent before upload)

**Who:** Acrobat Student Spaces (Flashcards/Quiz from homepage → chat topic).

- Useful when user has no file yet; weaker for “this exact PDF.” Scholaris PDF mode can defer this.

**Recommendation for Scholaris Free Studying PDF:** **B + C** — after extract, show Studio grid on **whole doc**; if text is selected, prefer selection-scoped chips. Keep Pattern A suggested questions inside Tutor intent.

---

## 4. Intent-by-intent comparison

| Intent | Best references | Output shape | Citation need |
|--------|-----------------|--------------|---------------|
| **Summarize** | Acrobat Generative summary; ChatPDF auto-summary; Kami Summarize; NotebookLM briefing/Audio | Outline / bullets / short abstract; optional audio | Section links or page refs |
| **Tutor** | Acrobat AI Assistant; NotebookLM chat; Humata Ask; ChatPDF chat | Dialog; explain / Socratic; “not in doc” honesty | Inline → scroll PDF |
| **Quiz** | Student Spaces Quiz; NotebookLM Quiz; Kami Questions AI | Interactive items → submit → score → review | Per-item source marker |
| **Flashcards** | Student Spaces; NotebookLM; ChatPDF AI Flashcards | Card stack; reveal; optional spaced ratings; export | Optional back-of-card source |

**Anti-pattern:** Generating a quiz as a markdown blob inside chat with no submit/score loop (weak vs Student Spaces / NotebookLM).

---

## 5. Extract quality gates (before intent)

| Gate | Why | Who surfaces it |
|------|-----|-----------------|
| Text layer present? | Highlight/select/AI need it | Hypothesis docs; all chat-PDF tools |
| OCR offered for scans? | Avoid empty index | ChatPDF, Humata Team, Acrobat |
| Page / size limits | Fail early with upgrade path | ChatPDF free, Humata free pages, Acrobat limits |
| Multi-source vs single | Intent copy changes (“this PDF” vs “these sources”) | NotebookLM, Spaces, Humata, ChatPDF folders |
| Grounding mode | Study vs creative rewrite | Humata chat settings; NotebookLM always grounded |

Scholaris should **disable or dim Quiz/Flashcards** until extract yields enough text; show “Scanned or empty PDF” with OCR path.

---

## 6. Scholaris mapping (PDF mode only — design, not code)

### Target flow

1. **Upload** PDF (and later: paste text).  
2. **Extract** client-side (existing pdf.js path) → show page count + char/token estimate.  
3. **Intent picker** (hard grid):  
   - **Summarize** — structured outline into tutor thread or notes pane.  
   - **Tutor** — open Scho chat with doc context + soft suggested questions.  
   - **Quiz** — generate N items → answer UI → score → cite pages.  
   - **Flashcards** — deck → reveal → optional save to notes.  
4. **Selection override:** highlight in viewer → same four intents scoped to quote (Kami/LiquidText).  
5. **Always:** citations / page jumps; “answer not in PDF” when grounded.

### Steal / skip matrix

| Steal | From | Skip |
|-------|------|------|
| Studio grid after sources ready | NotebookLM, Student Spaces | LMS social annotation (Hypothesis) |
| Auto-summary + 3 suggested Qs inside Tutor | ChatPDF | Enterprise embed chat (Humata) |
| Quiz/flashcard focus mode + source markers | Student Spaces | Teacher Questions AI assign/grade (Kami) |
| Selection → Understand verbs | Kami | Full LiquidText infinite canvas |
| Grounded-only default | NotebookLM, Humata | Creative rewrite as default |
| Excerpt-before-AI for long docs | LiquidText | Pinch-collapse multitouch as P0 |

### Relationship to annotation research

`08-pdf-annotation.md` covers **markup ‖ board**. This doc covers **extract ‖ study intent**. Same PDF viewer can host both: selection menu = Highlight · Send to board · **Ask / Quiz / Cards / Summarize**.

---

## 7. Sources (primary)

- Kami: [kamiapp.com](https://www.kamiapp.com/), Companion Understand tools, Questions AI / School plan feature tables  
- Adobe: [PDF AI](https://www.adobe.com/acrobat/online/pdf-ai), [Student Spaces](https://www.adobe.com/acrobat/student-spaces.html), HelpX flashcards/quizzes (updated 2026-04)  
- Hypothesis: [web.hypothes.is](https://web.hypothes.is/), university LMS guides (OCR + social annotation)  
- LiquidText: [liquidtext.net](https://www.liquidtext.net/), CHI-derived product deep dives / reviews  
- ChatPDF: [chatpdf.com](https://www.chatpdf.com/), [AI Flashcards](https://www.chatpdf.com/ai-flashcards), ZDNet early-flow writeup (auto summary + suggested Qs)  
- Humata: [humata.ai](https://www.humata.ai/), Ask API docs (cited SSE answers)  
- NotebookLM / Gemini Notebook: [notebooklm.google](https://notebooklm.google/), [Google for Education NotebookLM](https://edu.google.com/intl/ALL_us/ai-notebooklm/), Studio guides (flashcards/quiz/study guide)

---

## 8. One-line verdict

**Chat-with-PDF products** teach upload → index → soft prompts; **study hubs** (NotebookLM Studio, Acrobat Student Spaces) teach upload → index → **hard intent picker** (quiz/flashcards/summary/tutor) with citation-backed interactive artifacts. Scholaris Free Studying PDF should ship the **hard picker + selection-scoped verbs**, using chat as the Tutor lane—not the only lane.
