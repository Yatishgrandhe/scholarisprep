# Free Studying Redesign — Product & Engineering Contract

**Status:** Frozen for multi-agent delivery  
**Hub route:** `/dashboard/free-study`  
**Product name:** Free Studying (Scholaris multimodal study home)  
**Date:** 2026-07-20  
**Sibling research:** `01`–`09` in this folder + `docs/research/whiteboard/*`  
**Scope of this agent:** This markdown only — **no app implementation**.

---

## 0. Master inspiration list (≥25)

Named products and sites synthesized from sibling Free Studying research tracks, Whiteboard Studio research, and a few Scholaris-adjacent extras. Steal patterns; do **not** clone skins.

| # | Product / site | Track | Steal for Scholaris | Skip |
| --- | --- | --- | --- | --- |
| 1 | **ChatGPT** | AI shells / voice | Composer-first home; tools as secondary; Voice as overlay not a mode page | Fat GPT “mode” product switches; purple glow chrome |
| 2 | **Claude.ai** | AI shells / canvas | Artifact beside chat; calm density; Projects as destinations | Artifact-as-only-surface for PDF quiz |
| 3 | **Perplexity** | AI shells | Focused ask + sources strip; sparse top chrome | Infinite cite clutter in tutor replies |
| 4 | **Google Gemini** | AI shells / Live | Live/voice as contextual rail; Canvas dual pane | Material purple / “Gemini gradient” identity |
| 5 | **Poe** | AI shells | Bot/destination picker as cards or list, not a fat tab strip | Marketplace bot sprawl |
| 6 | **Khan Academy** | Edu / mobile / tutoring | Lesson → practice loop; scratchpad beside help; quiet learner chrome | LMS course tree as Free Study IA |
| 7 | **Brilliant.org** | Edu platforms | Single primary CTA per screen; interactive problem focus | Gamified streak chrome in hub |
| 8 | **Quizlet** | Edu / quiz-from-doc | Flashcards + Learn as clear intents after content | Magic Notes as the whole product |
| 9 | **AnkiWeb** | Edu platforms | Spaced-rep honesty; card deck as artifact | Power-user deck UI in first viewport |
| 10 | **Duolingo** | Edu platforms | Session clarity (one job); audio optional | Streak/heart economy in Free Study |
| 11 | **Kami** | PDF ask / annotate | Selection → action; classroom PDF as study surface | LMS gradebook / full annotation suite |
| 12 | **Adobe Acrobat (web)** | PDF ask | Reliable extract + highlight; document primary | Redline / enterprise share chrome |
| 13 | **Hypothesis** | PDF ask | Annotation anchored to text spans | Social/public annotation layers |
| 14 | **LiquidText** | PDF ask | Excerpt → synthesis surface (board/notes) | Complex multi-doc canvas for v1 |
| 15 | **ChatPDF** | PDF ask | Upload → ask immediately | Opaque “chat the blob” without extract preview |
| 16 | **Humata** | PDF ask | Doc Q&A grounded on extract | Black-box binary upload to LLM |
| 17 | **NotebookLM** | PDF ask | Source grounding + study intents (guide/FAQ) | Podcast-factory as primary Free Study job |
| 18 | **Notion** | Notes shells | Calm editor; slash intents; page as destination | Database/workspace sprawl in hub |
| 19 | **Obsidian** (app / Publish) | Notes shells | Local-first writing calm; link-later | Graph view as hub chrome |
| 20 | **Apple Notes** (web analogs) | Notes shells | List + editor; image attach without ceremony | iCloud-only metaphors |
| 21 | **OneNote** | Notes shells | Ink + text coexistence; section list | Ribbon toolbars |
| 22 | **Craft** | Notes shells | Typography-forward calm documents | Marketing card grids |
| 23 | **Reflect.app** | Notes shells | Daily notes + AI assist as side action | Backlink-first onboarding |
| 24 | **Mem.ai** | Notes shells | Capture → ask; AI as layer | Auto-organize noise |
| 25 | **Photomath** | Photo → ask | Camera/image → readable math/text → steps | Answer-only without explanation |
| 26 | **Wolfram\|Alpha** | Photo → ask | Structured readable input before compute | Pro UI density for teens |
| 27 | **Symbolab** | Photo → ask | Step reveal after parse | Ad-heavy solver chrome |
| 28 | **Socratic by Google** (legacy) | Photo → ask | Snap → explain in plain language | Discontinued product UI fossils |
| 29 | **Gauth** (math solvers) | Photo → ask | Mobile capture → tutor chat | Marketplace tutor upsell |
| 30 | **Linear.app** | Product chrome | Destination nav without mode pills; dense calm | Issue-tracker IA |
| 31 | **Arc browser** | Product chrome | Spaces as destinations; peek/split | Browser chrome metaphors |
| 32 | **Framer** | Product chrome | Canvas + inspector; expressive type | Marketing-site kitsch |
| 33 | **Figma** | Product chrome | Tool rail floating; file as primary | Multiplayer presence |
| 34 | **Vercel dashboard** | Product chrome | Project cards as destinations; sparse top | DevOps density |
| 35 | **Stripe dashboard** | Product chrome | Section nav + focused work surface | Finance tables |
| 36 | **Raycast** | Product chrome | Command/intent palette over tab strips | Launcher-only IA |
| 37 | **Quizizz AI** | Quiz-from-doc | Generate practice from uploaded material | Classroom live-game chrome |
| 38 | **Wayground** | Quiz-from-doc | Intent after content (quiz/assign) | Teacher roster flows |
| 39 | **Diffit** | Quiz-from-doc | Level/adapt content intents | Full curriculum authoring |
| 40 | **Brisk Teaching** | Quiz-from-doc | Side actions on doc (quiz/questions) | Extension-only UX |
| 41 | **Quizlet Magic Notes** | Quiz-from-doc | Notes → flashcards/quiz intents | Magic branding / purple AI |
| 42 | **Twee** | Quiz-from-doc | Prompted generation intents | ESL-only templates |
| 43 | **Curipod** | Quiz-from-doc | Slide/lesson from source | Live classroom polling |
| 44 | **ChatGPT Voice** | Voice + study | Push-to-talk beside text; not a separate app | Voice-only takeover of hub |
| 45 | **Gemini Live** | Voice + study | Continuous listen as opt-in rail | Always-on mic default |
| 46 | **Elsa Speak** | Voice + study | Pronunciation as secondary loop | Language-app gamification |
| 47 | **Speechify** | Voice + study | Listen-while-read beside PDF/text | Speed-reader product identity |
| 48 | **NaturalReader** | Voice + study | TTS of extracted text | Desktop-reader chrome |
| 49 | **Forest / Focus** | Mobile study | One primary CTA; thumb-zone calm | Tree gamification |
| 50 | **Goodnotes** | Mobile / whiteboard | Pen feel; quiet paper; tool dock | Notebook marketplace |
| 51 | **Notability** | Mobile / whiteboard | Audio + notes coexistence | Recording-first IA |
| 52 | **Concepts** | Mobile / whiteboard | Immersive canvas; chrome collapses | Infinite tool wheel |
| 53 | **Google Stitch** | Whiteboard (sibling) | Full-bleed studio; bottom intent dock | Agent Manager as Free Study home |
| 54 | **Excalidraw** | Whiteboard (sibling) | Minimal tools; zen chrome | Sticky/frame culture |
| 55 | **tldraw** | Whiteboard (sibling) | Floating UI slots; pen mode | Full whiteboard SDK clone |
| 56 | **Explain Everything** | Whiteboard (sibling) | Talk-while-draw (voice + ink) | Full lesson recorder |
| 57 | **Miro / FigJam** | Whiteboard (sibling) | (Reference only) structure jobs | Multiplayer facilitation — **skip hard** |
| 58 | **Cursor** (IDE side-chat / Canvases) | AI canvas (sibling) | Artifact primary + chat dock | IDE chrome in Free Study |

**Count:** 58 named products (≫25). Build agents should prefer rows tagged **Steal**; treat **Skip** as anti-patterns.

---

## 1. Product intent

Free Studying is Scholaris’s **multimodal study home**: learners pick a **destination** (Tutor, Whiteboard Studio, PDF studio, Voice, Notes), then work with Scho via **text telemetry** (OCR / PDF extract / transcript / note excerpt) through the existing cloud Mistral tutor API.

It is **not**:

- A fat horizontal **mode-button strip** as primary IA (current `styles.tabs` anti-pattern)
- A Miro / ChatPDF / purple-AI clone
- A binary-upload pipe that sends PDF/image bytes to Mistral

### Differentiators

| Generic AI study hub | Scholaris Free Studying |
| --- | --- |
| Top “Tutor \| PDF \| Voice \| …” pill strip | Destination cards / rail + deep routes |
| Upload PDF → model sees file blob | Extract readable text → `pdf_excerpt` telemetry |
| Instant chat with no intent | Post-upload **intent chooser** (quiz primary) |
| Purple / cream+terracotta “AI SaaS” | Cobalt Scholaris instrument chrome |
| Whiteboard as another hub tab | Full-page **Whiteboard Studio** at `/dashboard/whiteboard` |

---

## 2. Route & IA (non-negotiable)

| Destination | Route / entry | Notes |
| --- | --- | --- |
| **Free Studying home** | `/dashboard/free-study` | Destination chooser + Tutor default work surface |
| **Tutor** | `/dashboard/free-study` (tutor surface) or `?dest=tutor` | Composer + sectioned Scho replies; optional attachments via telemetry |
| **Whiteboard Studio** | `/dashboard/whiteboard` | Full-page immersive; **no** Free Study mode tabs — see `docs/research/whiteboard/CONTRACT.md` |
| **PDF studio** | `/dashboard/free-study?dest=pdf` (or nested `/dashboard/free-study/pdf` if route agent adds it) | Upload → extract → intent chooser → result surface |
| **Voice** | `/dashboard/free-study?dest=voice` | STT rail + transcript telemetry; TTS (Kokoro) on replies — does not dominate reading/PDF |
| **Notes** | `/dashboard/free-study?dest=notes` | Calm list + editor; image attach → OCR text → ask |

### IA rules

1. **No hated fat top mode-button strip as primary IA.** Do not revive a full-width row of equal Tutor/PDF/Voice/Notes pills as the first thing users see.
2. **Destinations, not modes:** Home presents **destination cards or a compact destination rail** (Linear / Vercel / Raycast energy). Active destination may show a **small** secondary indicator (segment, breadcrumb, or side rail) — never a heavy tab strip.
3. **Whiteboard** always `router.push('/dashboard/whiteboard')` — never an in-hub whiteboard pane.
4. **STEM Labs** stay at `/dashboard/labs` (out of Free Study primary destinations). Optional light link only.
5. Deep links must restore destination without flashing the old tab strip.

---

## 3. Layout composition (hub first viewport)

```
┌─────────────────────────────────────────────────────────────┐
│ Dashboard shell (sidebar / topbar / mobile tabs)            │
│ ┌─────────────────────────────────────────────────────────┐ │
│ │  FREE STUDYING                                          │ │
│ │  title + one short line                                 │ │
│ │                                                         │ │
│ │  ┌────┐ ┌────┐ ┌────┐ ┌────┐ ┌────┐                    │ │
│ │  │Tutor│ │ WB │ │PDF │ │Voice│ │Notes│  ← destinations │ │
│ │  └────┘ └────┘ └────┘ └────┘ └────┘    (not fat tabs)  │ │
│ │                                                         │ │
│ │  ██ Active destination work surface ██                  │ │
│ │  (tutor composer / PDF flow / voice / notes)            │ │
│ └─────────────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────────────┘
```

**Whiteboard** leaves this shell for full-page Studio (dashboard chrome may hide per whiteboard contract).

### Hierarchy

1. Brand / product signal: **Free Studying** (not drowned by a huge generic H1).
2. Destination entry (cards or compact rail).
3. One work surface for the active destination.
4. Scho replies (sectioned) + optional voice-out — secondary to the artifact when PDF/notes are primary.

---

## 4. PDF / image → text → Mistral (non-negotiable)

### 4.1 Rule

**PDF and images MUST extract readable text (client and/or server) before any tutor call.**  
Send **plain text** (and optional short metadata) via existing Free Study telemetry — **never raw PDF/image binaries** to Mistral.

### 4.2 Telemetry mapping (reuse)

Use `FreeStudyTelemetry` in `src/lib/ai/telemetryPayload.ts` + `/api/ai/tutor` SSE path:

| Channel | Field | How text is produced |
| --- | --- | --- |
| PDF | `pdf_excerpt` | Client `extractPdfTextClient` (`src/lib/pdf/extractText.ts`) and/or server extract; clip per `normalizeTelemetry` (PDF ≤ ~6k) |
| Whiteboard / image | `ocr_text` | `src/lib/free-study/ocr.ts` (Tesseract) — readable text only |
| Voice | `transcript` | `src/lib/free-study/stt.ts` |
| Notes | `note_excerpt` | Note body snippet (+ OCR of attached images → text first) |
| Source tag | `source` | `"tutor" \| "pdf" \| "voice" \| "notes" \| "whiteboard"` |

### 4.3 UX obligations

- Show extract progress / failure inline (no silent empty ask).
- Preview extracted text (editable) before Ask / Generate quiz.
- If extract empty (scanned PDF), offer **OCR pass** → still text-only to API.
- Do not base64-embed PDFs/images into tutor payloads.

---

## 5. Post-PDF-upload intent chooser

After successful extract, show an **intent chooser** before streaming tutor output:

| Intent | Primary? | Behavior |
| --- | --- | --- |
| **Generate quiz** | **Yes — visual primary** | Prompt + `pdf_excerpt` → quiz-style sectioned reply (or structured quiz UI if a later agent adds it) |
| **Ask tutor** | Secondary | Open composer / send grounded ask with excerpt |
| **Summarize** | Secondary | Summarize excerpt |
| **Flashcards** | Secondary | Flashcard-oriented generation from excerpt |

### Intent UI rules (from quiz-from-doc + PDF research)

- Chooser appears **after** extract preview, not before upload.
- Quiz is the **emphasized** CTA (size/order/cobalt fill); others are quieter.
- User can change intent without re-uploading.
- Intent choice may set `source: "pdf"` and a prompt prefix; still **text telemetry only**.

---

## 6. Visual language (unique custom CSS)

### Direction: Cobalt Scholaris (not purple slop)

| Do | Don’t |
| --- | --- |
| Cobalt accent `#2563eb` / `--cobalt` + cool slate ink | Purple-to-indigo AI gradients |
| Cool paper / slate washes; subtle grain OK | Warm cream `#F4F1EA` + terracotta Studi clone |
| Hairline borders, OnePrep-ish instrument chrome | Neo-brutalist 2px + hard offset shadows |
| DM Serif (display sparingly) + Plus Jakarta / existing UI sans | Inter/Roboto default “AI landing” look |
| Motion: destination enter, intent reveal, stream — 2–3 intentional | Glow orbs, pill clusters, emoji rows |

Align tokens with Whiteboard Studio (`--cobalt`, cool desk/paper) so Free Study and Studio feel like one product family without copying Studio’s full-bleed atmosphere into the hub.

### CSS ownership

- Redesign styles live in Free Study CSS modules (see file map). Prefer **new** module files over stuffing every destination into one mega-sheet if agents split work.
- Do not restyle dashboard shell globally for this feature.

---

## 7. Destination contracts (brief)

### 7.1 Tutor

- Composer-first work surface; conversation list optional/collapsible.
- Sectioned replies via `FreeStudySectionedReply`.
- Attachments only as **text telemetry** (paste excerpt, optional image→OCR).

### 7.2 Whiteboard Studio

- Owned by `docs/research/whiteboard/CONTRACT.md`.
- Hub entry: destination card/rail → `/dashboard/whiteboard` only.

### 7.3 PDF studio

- Upload → extract → preview → **intent chooser** → stream/result.
- Document/excerpt remains visible beside or above chat when asking (Kami/NotebookLM energy, lighter).

### 7.4 Voice

- Mic + transcript beside tutor/PDF — **does not replace** reading surfaces.
- Kokoro TTS on assistant replies (existing ORT WASM path); SpeechSynthesis is not the product voice.
- Push-to-talk / explicit start; no always-on Live by default.

### 7.5 Notes

- Calm list + editor; autosave existing notes API.
- Image attach → OCR text → optional Ask Scho with `note_excerpt`.
- No Notion database chrome.

---

## 8. Component file map (build agents)

Implement under `src/components/free-study/` unless noted. **This contract agent does not create these files.**

| Path | Owner agent | Responsibility |
| --- | --- | --- |
| `docs/research/free-study/00-CONTRACT.md` | Architect (this doc) | Frozen IA + telemetry + visual + file map |
| `docs/research/free-study/01-ai-chat-shells.md` | Research | ChatGPT / Claude / Perplexity / Gemini / Poe |
| `docs/research/free-study/02-edu-platforms.md` | Research | Khan / Brilliant / Quizlet / Anki / Duolingo |
| `docs/research/free-study/03-pdf-ask-quiz.md` | Research | Kami / Acrobat / Hypothesis / LiquidText / ChatPDF / Humata / NotebookLM |
| `docs/research/free-study/04-notes-shells.md` | Research | Notion / Obsidian / Notes / OneNote / Craft / Reflect / Mem |
| `docs/research/free-study/05-photo-math-ask.md` | Research | Photomath / Wolfram / Symbolab / Socratic / Gauth |
| `docs/research/free-study/06-product-chrome.md` | Research | Linear / Arc / Framer / Figma / Vercel / Stripe / Raycast |
| `docs/research/free-study/07-quiz-from-doc.md` | Research | Quizizz / Wayground / Diffit / Brisk / Magic Notes / Twee / Curipod |
| `docs/research/free-study/08-voice-study.md` | Research | ChatGPT Voice / Gemini Live / Elsa / Speechify / NaturalReader |
| `docs/research/free-study/09-mobile-study.md` | Research | Khan app / Forest / Goodnotes / Notability / Concepts |
| `src/components/free-study/FreeStudyHub.tsx` | Hub shell | Root composition: destination nav + active surface; **remove fat tab strip as primary IA** |
| `src/components/free-study/FreeStudyDestinations.tsx` | Hub IA | Destination cards/rail (Tutor, Whiteboard→route, PDF, Voice, Notes) |
| `src/components/free-study/FreeStudyTutorPane.tsx` | Tutor | Composer, messages, sectioned reply, telemetry ask |
| `src/components/free-study/FreeStudyPdfStudio.tsx` | PDF studio | Upload, extract progress, text preview, wires intent chooser |
| `src/components/free-study/FreeStudyPdfIntentChooser.tsx` | PDF intents | Ask tutor / **Generate quiz (primary)** / Summarize / Flashcards |
| `src/components/free-study/FreeStudyVoicePane.tsx` | Voice | Mic, transcript, listen state; does not own TTS engine |
| `src/components/free-study/FreeStudyNotesPane.tsx` | Notes | List + editor + image attach → OCR → ask |
| `src/components/free-study/FreeStudySectionedReply.tsx` | Shared (exists) | Keep; reuse across destinations |
| `src/components/free-study/free-study.module.css` | Hub styles | Cobalt redesign; kill fat-tab primary look |
| `src/components/free-study/pdf-studio.module.css` | PDF styles | Extract + intent chooser layout (optional split) |
| `src/components/free-study/destinations.module.css` | Dest styles | Destination cards/rail only (optional split) |
| `src/app/dashboard/free-study/page.tsx` | Route | Pass `dest` searchParam into hub if added |
| `src/components/whiteboard/*` | Whiteboard agents | Immersive Studio — **do not** re-embed in hub |

### Shared libraries (reuse; do not fork carelessly)

| Path | Use |
| --- | --- |
| `src/lib/pdf/extractText.ts` | PDF → plain text |
| `src/lib/free-study/ocr.ts` | Image / handwriting → text |
| `src/lib/free-study/stt.ts` / `speechText.ts` | Voice in |
| `src/lib/free-study/configureKokoroOrt.ts` | TTS wasmPaths |
| `src/lib/ai/telemetryPayload.ts` | Normalize/clip telemetry |
| `src/hooks/useTutorStream.ts` | Tutor SSE |
| `src/hooks/useKokoroTts.ts` | Voice out |
| `src/hooks/useLocalTelemetryModels.ts` | OCR/STT readiness |
| `src/app/api/ai/tutor/route.ts` | Existing Mistral tutor API |

### Explicit non-goals / do-not-touch (unless owner agent)

- Sending raw PDF/image bytes to Mistral
- Reintroducing primary fat mode-tab strip
- Editing Whiteboard Studio to become a hub tab
- Purple / cream+terracotta visual reset of dashboard shell
- STEM Labs relocation back into Free Study primary destinations

---

## 9. Acceptance checklist

- [ ] Hub primary IA = destinations (cards/rail), **not** fat top mode-button strip
- [ ] Destinations reachable: Tutor, Whiteboard Studio (`/dashboard/whiteboard`), PDF studio, Voice, Notes
- [ ] PDF/image path extracts readable text; tutor payloads use telemetry text fields only
- [ ] After PDF upload + extract: intent chooser with **Generate quiz** primary + Ask / Summarize / Flashcards
- [ ] Visual direction = cobalt Scholaris; no purple-AI / Studi terracotta clone
- [ ] Whiteboard remains full-page Studio per whiteboard CONTRACT
- [ ] `npm run build` succeeds after implementation agents land
- [ ] No binary PDF/image upload in tutor request bodies

---

## 10. Out of scope (v1 redesign)

- Real-time multiplayer study rooms
- Full Kami/Acrobat annotation suite
- NotebookLM-style audio overview podcast factory
- Replacing Mistral with another cloud LLM
- In-browser LLM for tutoring (telemetry local + Mistral cloud stays)
- Merging STEM Labs back into Free Study tabs

---

## 11. Agent handoff

1. **Architect (this doc):** contract + master inspiration list — **done**.
2. **Research agents:** fill `01`–`09` (steal/skip detail); do not contradict §2–§6.
3. **Hub shell agent:** redesign `FreeStudyHub` + destinations component; delete primary fat tabs.
4. **PDF studio agent:** extract UX + `FreeStudyPdfIntentChooser` (quiz primary).
5. **Tutor / Voice / Notes pane agents:** split panes per file map; keep telemetry contract.
6. **Visual CSS agent:** cobalt modules; align with whiteboard tokens without purple slop.
7. **Whiteboard agents:** continue under `docs/research/whiteboard/CONTRACT.md` only.

---

## 12. One-line summary for implementers

**Destinations over mode pills; extract text then choose intent (quiz first); cobalt Scholaris; Whiteboard is its own full-page Studio; Mistral only ever sees text telemetry.**
