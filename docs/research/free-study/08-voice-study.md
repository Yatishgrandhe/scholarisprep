# Voice + Study — Companion Patterns Beside Reading / PDF

**Date:** 2026-07-20  
**Scope:** Product patterns from ChatGPT Voice (incl. GPT‑Live), Gemini Live, ELSA Speak–class speech coaching, Speechify, and NaturalReader.  
**Goal:** Distill how voice should sit **beside** reading / PDF / tutor text in Scholaris Free Studying — useful, interruptible, never the whole viewport.  
**Method:** Public product pages, help centers, API docs, and secondary UX writeups. Live paid product sessions were not exercised.  
**Out of scope:** App code, STT/TTS library choice, Realtime/WebSocket implementation, pricing tables.

---

## 0. Scholaris framing (why this doc exists)

Free Studying already separates modes:

| Mode | Affordance today |
|------|------------------|
| **PDF** | Upload → client extract → excerpt into tutor |
| **Voice** | Mic → transcript → Ask Scho; Kokoro TTS on replies |
| **Tutor / Notes** | Text chat; notes rail |

The risk is treating Voice as a **full-screen conversation takeover** (ChatGPT/Gemini Live default) when the study job is usually **read a source + talk about a slice**. TTS apps (Speechify / NaturalReader) solve the opposite: **document stays primary**, audio is a playback layer. ELSA solves a third job: **practice speaking with scored feedback**, not document Q&A.

**Design north star:** Voice is a *companion channel* over a durable study surface (PDF page, notes, tutor reply). Audio never replaces the source pane; it rides along, pauses easily, and leaves a text trail.

---

## 1. One-line verdict

Steal **document-primary + synced listen** from Speechify/NaturalReader, **barge-in + wait-while-thinking** from ChatGPT/Gemini Live, and **optional scored practice loops** from ELSA — but do **not** ship Live as a fullscreen orb that hides the PDF. Scholaris Voice should default to **mic/TTS docked to the reading surface**, with full duplex only as an opt-in “Talk through this” session.

---

## 2. Job map (three different products wearing “voice”)

| Job | Who owns it best | Primary surface | Failure if dominant |
|-----|------------------|-----------------|---------------------|
| **A. Listen while reading** | Speechify, NaturalReader | Document + word/sentence highlight | Eyes lose place; can’t cite page |
| **B. Talk about what I’m studying** | ChatGPT Voice, Gemini Live | Conversation (optionally + screen/camera) | Source disappears; hard to re-read |
| **C. Practice speaking / oral exam** | ELSA Speak–class | Prompt + color feedback + score | Feels like language class, not homework |

Scholaris Free Studying needs **A + B** daily; **C** only for oral-response / language / interview prep lanes. Mixing C’s scoring chrome into every PDF listen session will dominate and feel like ELSA, not Scho.

---

## 3. Product snapshots

### 3.1 ChatGPT Voice (+ GPT‑Live)

**Positioning:** Hands-free conversation with ChatGPT — learn, brainstorm, language practice, interview prep. Entry: tap voice icon (often bottom-right); pick a voice; talk; later **review the conversation** as text.

**Interaction grammar (study-relevant)**

- Full-duplex / natural turn-taking (GPT‑Live: listen and speak at once; barge-in; “mhmm” acknowledgments).
- **Wait while thinking** instead of cutting the user off mid-pause.
- Background-noise focus; remastered voices; latency modes (Instant vs slower “think more”).
- Legacy Advanced Voice still carries **voice + video / screen** in some surfaces; GPT‑Live launch notes deferred video/screen at first.
- Study pattern in the wild: upload PDF/docs in text chat, then switch to voice to discuss — **files live in chat**, not a persistent reader beside the orb.

**What this teaches Scholaris**

| Keep | Skip / defer |
|------|----------------|
| Barge-in + pause tolerance | Fullscreen voice orb as default study UI |
| Post-session transcript review | Celebrity / persona voice theater |
| Explicit “review conversation” as study artifact | Voice-only as sole history (no text trail) |
| Language / interview practice as *opt-in* mode | Always-on affective companion chrome |

**Dominance risk:** Voice becomes the product; PDF is a one-shot upload then invisible. For Free Studying, that breaks provenance (“which paragraph did Scho just explain?”).

---

### 3.2 Gemini Live (product + Live API)

**Positioning:** Persistent real-time multimodal session — continuous audio, optional camera / **screen share**, barge-in, transcripts, tools (Search, function calling). Education called out as “AI mentors / learner companions.”

**Technical shape (Live API, public docs)**

- Stateful WebSocket; streaming PCM in/out; images ≈ **≤1 FPS** JPEG with audio.
- **Audio transcriptions** of user + model (critical for study permanence).
- **Proactive audio** controls: when the model may speak vs stay quiet.
- Context compression needed for long sessions (audio tokens accumulate ~25/s).
- Interrupt → client must **flush playback buffer** immediately (`interrupted: true`).

**Screen-share study pattern**

- Share a tab/window (PDF viewer, notes, problem set) → speak deixis (“this paragraph,” “the graph on the right”).
- Model “looks over the shoulder”; document stays on screen — closer to companion than ChatGPT’s chat-upload default.
- Cost / privacy / fatigue: continuous vision is heavy; best as **explicit share**, not always-on.

**What this teaches Scholaris**

| Keep | Skip / defer |
|------|----------------|
| Deixis over a visible PDF (“explain what’s selected / on screen”) | Always-streaming screen to the model |
| Transcripts as first-class study notes | Proactive chatter while student is silently reading |
| Hard interrupt → stop TTS instantly | 15+ min unscoped Live sessions without compression plan |
| Optional camera for handwritten work | Replacing PDF text extract with vision-only |

**Dominance risk:** Live session chrome (waveform, “Live” pill, permission banners) covering the page. Keep share indicators thin; keep the document ≥60% of the viewport.

---

### 3.3 ELSA Speak–like (pronunciation / conversation coaching)

**Positioning:** AI English speaking coach — role-play, phoneme-level feedback, color-coded accuracy, Speech Analyzer–style dashboards (pronunciation, fluency, grammar, estimated test bands).

**Feedback grammar**

1. User speaks a prompt / free turn.  
2. Immediate **color map** on words/sounds (green / warn / red).  
3. Optional mouth/phoneme guides; % scores; grammar tips in conversation modes.  
4. Session history with score rings → compare over time.

**What this teaches Scholaris**

| Keep | Skip / defer |
|------|----------------|
| Low-anxiety “practice aloud” lane | Phoneme mouth animations in PDF mode |
| Color feedback **after** a practice turn | Scoring every casual Ask Scho utterance |
| Constrained role-play goals (oral FRQ, interview) | Making Voice mode feel like IELTS prep by default |
| Record → review transcript | Leaderboards / gamified streaks as core chrome |

**Dominance risk:** Score rings and phoneme UI steal attention from content comprehension. Use ELSA patterns only in an explicit **Practice speaking** submode, never as the PDF listen HUD.

---

### 3.4 Speechify

**Positioning:** Listen to PDFs, books, web articles with **lifelike TTS**, **synced text highlighting**, speed (up to ~4.5×), OCR for scans, library sync, plus AI summarize / Q&A / podcast-style transforms layered on the same document.

**Companion grammar (the gold standard for “beside reading”)**

1. Document remains the stage.  
2. Playback controls are a **thin transport bar** (play/pause, speed, voice).  
3. **Word/sentence highlight** follows audio → dual channel encoding.  
4. Bookmark / jump / resume across devices.  
5. AI chat and summaries are **adjacent tools**, not a mode that hides the page.

**What this teaches Scholaris**

| Keep | Skip / defer |
|------|----------------|
| Synced highlight while Kokoro (or any TTS) reads selection or page | Celebrity voice marketplace as product identity |
| Speed + pause as primary controls | “Convert whole textbook to podcast” as default |
| Listen + optional Ask about **this PDF / selection** | Replacing Scholaris tutor with a generic doc chatbot |
| OCR path for scanned PDFs | Offline MP3 export as v1 requirement |

**Dominance risk (Speechify’s own creep):** Voice AI assistant + podcast + note-taker can pull focus from reading. Scholaris should keep **Listen** and **Ask Scho** as two clear verbs, not one overloaded “Voice AI productivity” surface.

---

### 3.5 NaturalReader

**Positioning:** Classic accessibility / study TTS — web, mobile, Chrome extension; word highlighting, autoscroll, return-to-text, dyslexia-friendly display, OCR/camera scanner, text filters (skip headers/footers/citations), annotations while listening, ReadAI (recap, chat, quizzes, snapshot region).

**Companion grammar (precision details)**

- **Click-to-read:** start audio from a tap in the document.  
- **Return to text** if the user scrolled away during playback.  
- Highlight style: word vs sentence vs off.  
- **Text filter** so TTS doesn’t read page chrome.  
- Annotations + bookmarks in a **sidebar** while audio continues.  
- Hotkeys: space play/pause; arrows skip.

**What this teaches Scholaris**

| Keep | Skip / defer |
|------|----------------|
| Click-to-read from selection / caret | Multi-reader alternate voices novelty |
| Return-to-playback-position control | Voice cloning |
| Skip headers/footers/citations in listen mode | Full quiz/podcast suite inside Voice mode |
| Highlight color + sentence vs word toggle | Smartwatch MP3 pipelines |
| Pause → context menu: Read / Copy / Highlight / Ask | EDU shared library LMS |

**Dominance risk:** Immersive Reader / caption-only views that **hide the original PDF layout**. Prefer highlight-on-page over stripping the document into a caption stream unless the user opts into focus mode.

---

## 4. Layout patterns: companion vs takeover

### 4.1 Anti-pattern — Voice takeover

```
┌─────────────────────────────────────┐
│         Animated orb / waveform     │
│         (PDF gone or tiny chip)     │
│         “Listening…”                │
└─────────────────────────────────────┘
```

Fine for walking / hands-free brainstorming. **Wrong default** for homework with a PDF open.

### 4.2 Preferred — Document primary + voice dock

```
┌──────────────────────────────┬──────────────┐
│  PDF / notes / tutor reply   │  Chat / Ask  │
│  (synced listen highlight)   │  Scho (opt)  │
├──────────────────────────────┴──────────────┤
│  ▶︎ 1.2×  ·  Mic  ·  “Listening…”  · Stop    │  ← thin dock
└─────────────────────────────────────────────┘
```

- Document ≥ ~55–65% width on desktop.  
- Dock height ≤ ~64–88px; expand only for transcript.  
- Transcript is a **drawer**, not a second main column, unless the student is in Voice-primary practice.

### 4.3 Gemini-style deixis (opt-in)

Keep the same shell; add a **Share this tab / Look at selection** toggle. Prefer **selection + excerpt** over continuous frames when possible (cheaper, clearer provenance, less creepy).

### 4.4 ELSA-style practice (opt-in sheet)

Modal or bottom sheet over the study surface: prompt → record → color feedback → dismiss back to PDF. Do not replace the Free Studying mode tab with a permanent score HUD.

---

## 5. Interaction principles (voice beside study)

1. **Source stays visible.** If voice starts, do not navigate away from PDF/notes; overlay/dock only.  
2. **Selection scopes audio and ask.** “Play selection,” “Ask about selection,” not whole 80-page PDF by default.  
3. **Every spoken turn leaves text.** STT transcript + tutor reply remain editable study artifacts (ChatGPT “review conversation,” Live API transcriptions).  
4. **Barge-in kills TTS immediately.** No talking over the student (Gemini interrupt buffer rule).  
5. **Silence is a feature.** While the student reads, do not proactive-narrate (Gemini “proactive audio” off by default for study).  
6. **Dual-channel for listen mode.** Synced highlight (Speechify/NaturalReader) beats voice-alone for retention and citation.  
7. **Transport > personality.** Play/pause/speed/return-to-text before voice personas.  
8. **Practice scoring is opt-in.** ELSA grammar only when the goal is oral performance.  
9. **One voice job per moment.** Don’t listen-to-PDF and run full-duplex Live tutor at full volume simultaneously without an explicit mix policy (duck TTS when mic opens).  
10. **Accessibility first.** Captions, dyslexia-friendly options, and keyboard play/pause are part of the companion story — not bolted on later.

---

## 6. Competitive steal-list for Free Studying

### P0 — Companion listen + talk (ship mental model)

| Pattern | Source | Scholaris mapping |
|---------|--------|-------------------|
| Synced highlight on play | Speechify / NaturalReader | Kokoro (or TTS) plays selection/page; highlight walks the text |
| Thin transport dock | Both TTS apps | Play · pause · speed · stop under PDF/tutor |
| Click / selection to start | NaturalReader | “Read from here” / “Play selection” |
| Return to playback locus | NaturalReader | Jump back if user scrolled |
| Mic → transcript → Ask | ChatGPT review + current Voice pane | Keep; don’t fullscreen |
| Instant stop on barge-in | Gemini Live / GPT‑Live | Stop Kokoro when mic opens or user interrupts |
| Selection-scoped Ask | Canvas/PDF research + Speechify AI chat | Ask Scho gets excerpt + page, not whole file |

### P1 — Multimodal without domination

| Pattern | Source | Scholaris mapping |
|---------|--------|-------------------|
| Look at selection / peek frame | Gemini Live (light) | Optional vision on Ask, not continuous share |
| Screen share opt-in | Gemini Live | “Share PDF tab” for deixis sessions |
| Wait on pause | GPT‑Live | Don’t cut students mid-thought in Voice Ask |
| Text filters for TTS | NaturalReader | Skip running headers/footers in listen |

### P2 — Practice lane

| Pattern | Source | Scholaris mapping |
|---------|--------|-------------------|
| Role-play + color feedback | ELSA | Oral FRQ / language practice sheet |
| Session score history | ELSA Speech Analyzer | Optional; separate from PDF listen |

### Explicitly do not steal

- Fullscreen orb as the default Free Studying Voice experience.  
- Always-on affective companion / proactive chatter during silent reading.  
- Phoneme coaching chrome on every mic use.  
- Celebrity voices / podcast factory as the study identity.  
- Replacing PDF layout with caption-only immersive mode without an exit.

---

## 7. Mode composition inside Free Studying

Recommended product verbs (not necessarily separate nav modes):

| Verb | Primary surface | Voice role |
|------|-----------------|------------|
| **Read** | PDF | Optional synced TTS |
| **Ask** | Tutor / selection | Mic dictation + optional spoken reply |
| **Talk through** | PDF ‖ thin Live dock | Full duplex; transcript drawer |
| **Practice aloud** | Sheet over content | ELSA-like feedback; dismissible |

Today’s hub **Voice** tab can remain the place to configure mic/Kokoro and review transcripts, but **listen-while-PDF** should live *inside* PDF (and tutor replies), or Voice becomes a silo that competes with reading.

---

## 8. Anti-patterns checklist

- [ ] Voice session replaces the PDF viewer  
- [ ] No transcript after a spoken tutoring turn  
- [ ] TTS continues after the user starts speaking  
- [ ] Model speaks unsolicited while the student is scrolling  
- [ ] Whole-document context stuffed into every voice ask  
- [ ] Pronunciation scores shown during ordinary Q&A  
- [ ] Dual audio tracks (TTS + Live) fighting without ducking  
- [ ] Huge waveform / avatar covering >20% of the first viewport  
- [ ] “Review conversation” only available after ending a modal that discarded the doc  

---

## 9. Open questions for later design passes

1. Should PDF listen use the same Kokoro pipeline as “Play with Kokoro” on tutor replies, or a lighter streaming TTS for long pages?  
2. When chat is open, is the dock **below PDF**, **below chat**, or a shared bottom rail?  
3. Is “Talk through this page” a toggle on PDF, or a jump to Voice mode with PDF peek (cf. whiteboard PDF peek)?  
4. How do we label provenance in transcripts: page + quote + timestamp?  
5. Mobile: bottom sheet transport vs mode-tab Voice — which keeps the page readable with one thumb?  
6. Do we ever enable continuous screen frames, or stay selection/OCR-only for v1 privacy and cost?

---

## 10. Sources (public)

- OpenAI: [ChatGPT Voice](https://chatgpt.com/features/voice/); [Introducing GPT‑Live](https://openai.com/index/introducing-gpt-live)  
- Google: [Gemini Live API overview](https://ai.google.dev/gemini-api/docs/live-api); Live API best practices; secondary Gemini Live screen-share writeups (I/O / product blogs)  
- ELSA Speak: product / efficacy / feedback blog / Speech Analyzer preview  
- Speechify: product home, text reader, PDF listen / audiobook guides  
- NaturalReader: webapp / EDU pages; Help Center feature inventory (highlight, autoscroll, return-to-text, filters, ReadAI)  
- Adjacent research note: `docs/research/whiteboard/08-pdf-annotation.md` (PDF ‖ board; voice comments deferred to Voice mode)  
- Adjacent pattern: `docs/research/whiteboard/09-ai-canvas-chat.md` (artifact primary + side chat)

---

## 11. One-page checklist for implementers (design only)

- [ ] PDF/notes remain visible when voice starts (dock, not route replace)  
- [ ] Play selection / from caret before “read whole file”  
- [ ] Synced word or sentence highlight during listen  
- [ ] Space (or clear control) play/pause; speed control present  
- [ ] Return-to-playback-position if user scrolled away  
- [ ] Mic open → duck/stop TTS immediately  
- [ ] Every voice tutoring turn produces editable transcript text  
- [ ] Ask Scho defaults to selection (± short window), not full PDF  
- [ ] Proactive model speech off while user is silently reading  
- [ ] ELSA-like scoring only behind an explicit Practice action  
- [ ] Live/screen share opt-in, thin indicator, easy stop  
- [ ] Do not ship fullscreen orb as the Free Studying Voice default  

**Mental model one-liner:** *Speechify/NaturalReader listen layer + ChatGPT/Gemini barge-in manners + ELSA practice as a sheet — document stays the stage.*
