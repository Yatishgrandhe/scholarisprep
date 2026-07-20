# GetStudi vs Scholaris — AI Chat UX Research

**Date:** 2026-07-17  
**Scope:** Compare [getstudi.com](https://getstudi.com) (Studi) AI tutoring UX with Scholaris Scho / Course Tutor.  
**Method:** Public marketing site, pricing page, homepage demo transcript, and authenticated-route discovery (`/chat` → Clerk sign-in). Live in-app chat was **not** exercised (early access + auth wall).

---

## 1. GetStudi (Studi) — Product Summary

Studi positions itself as a **Socratic one-on-one tutor**, not an answer bot. Core promise: *"Learn it like you invented it."*

### 1.1 Chat flow (from marketing + demo)

| Stage | Behavior |
|-------|----------|
| Entry | User arrives confused; no course enrollment required |
| Turn-taking | **One sharp question at a time** — not a lecture, not a quiz deck |
| Fact vs insight | Gives missing facts when needed; withholds final answers when the student is one question from the insight |
| Visual escalation | When words stall, generates a **Spark** inline (interactive artifact) |
| Mastery check | After the "aha," assigns a **fresh problem** to prove retention |
| End state | Understanding feels self-derived, not memorized |

Homepage demo (free-fall misconception):

1. Student: "Heavy things fall faster…"
2. Studi: Thought experiment — tape marble to bowling ball; faster or slower?
3. Student: Conflicted reasoning
4. Studi: Drops to **Interactive Scene Spark** (simulation) — objects land together

### 1.2 Sparks (interactive artifacts)

Generated **live per question**, not from templates. Marketing shows four Spark types:

| Spark type | Purpose |
|------------|---------|
| **Interactive Scene** | Physics sims, manipulable visual models |
| **Live Graph** | Plots / functions the student can explore |
| **Adaptive Quiz** | Check understanding in-flow |
| **Flashcards** | Drill after a concept lands |

Pro tier adds higher **Code Spark** run allowance (CS-oriented interactive code).

### 1.3 Course / subject switching

- **No course catalog** — "No courses to enroll in, no playlists to binge."
- Cross-subject by design: CS, math, physics, biology, history, languages in one chat mental model.
- Pro plan: "Designed for frequent study **across subjects**" (capacity, not separate course shells).

### 1.4 Suggested prompts

Not visible without auth. Pricing/onboarding imply:

- **Guided preview** — fixed small number of starter chats (3 text chats).
- Optional **learner questionnaire** after waitlist signup (personalization signal; details behind auth).

### 1.5 History

- Chat lives at `https://www.getstudi.com/chat` (Clerk auth at `accounts.getstudi.com`).
- Preview tier: **3 conversations** to experience flow.
- Paid tiers: ongoing history implied; no public docs on search, rename, or export.

### 1.6 File upload

- **Starter plan+:** "File uploads for learning from your own material."
- Not available on guided preview.

### 1.7 Voice

- **No public mention** of speech input or read-aloud on marketing or pricing pages.

### 1.8 Progress tracking

- In-chat progress tracking is **not marketed explicitly**.
- Retention loop is behavioral: mastery problem after each concept — not a dashboard %.
- Optional questionnaire likely seeds learner profile (inferred).

### 1.9 Onboarding

| Step | Detail |
|------|--------|
| Waitlist | Single email; no credit card |
| Guided preview | Free tutoring sample (3 chats) |
| Questionnaire | Optional; can defer until after waitlist |
| Monetization | Guided preview → Starter → Pro (Clerk billing) |

Plans (from `/pricing`):

| Plan | Highlights |
|------|------------|
| Guided preview | 3 text chats, question-led flow, no payment |
| Starter | Full text tutoring, **file uploads**, Sparks (monthly AI cap) |
| Pro | Higher AI + Code Spark capacity, cross-subject heavy use |

### 1.10 Differentiation vs ChatGPT (their words)

- ChatGPT **answers**; Studi **teaches** via questions + Sparks.
- Holds back only when the student is close to self-discovery.

---

## 2. Scholaris — Current Tutor Stack

### 2.1 Surfaces

| Surface | Path / component | Context |
|---------|------------------|---------|
| **Ask Scho / Course Tutor** | `/dashboard/tutor`, `/dashboard/tutor/[conversationId]` | `context_type: general`, scoped by `exam_type` |
| **Scho side panel** | `SchoSidePanel` on practice/exam | `context_type: question` + full question payload |
| **Lesson tutor** | Course lesson sheet (`TutorChat`) | `context_type: lesson`, `context_id: lessonId` |
| **Explanation tab** | `ExplanationSidePanel` → seeds Ask tab | Pre-written step-by-step + "Ask Scho" handoff |

Nav labels (`lib/tutor/routes.ts`): AP/IB → **"Course Tutor"**; SAT/ACT → **"Ask Scho"**.

### 2.2 Chat flow

- SSE streaming via `POST /api/ai/tutor` (`useTutorStream` / inline fetch).
- System prompt (`SCHO_TUTOR_BASE`): warm tutor, **never give final answer immediately**, hints then steps, KaTeX markdown.
- Tooling: **`web_search`** (LangChain) with live UI status note.
- Stop sequences prevent Scho from simulating the student's side of the dialogue.
- History: last **8 messages** sent to model; full thread stored in Supabase.

### 2.3 Course switching

- **SubjectSwitcher** sets global `activeExamType`; tutor conversations filtered by `exam_type`.
- Deep link: `/dashboard/tutor?exam_type=AP_CALCULUS_AB`.
- AP/IB **course preload** injected from `scripts/data/tutor-preload/{exam_type}.json` (units, command terms, misconceptions, paper rules, calculator policy).
- **Performance preload:** diagnostic scores, weak/strong topics, recent accuracy — Scho must not re-ask for these.

### 2.4 Suggested prompts

- `lib/tutor/suggestions.ts` — exam-aware chips (SAT/ACT vs AP/IB wording).
- Embedded `TutorChat`: optional `suggestedPrompts[]` (fills input, hidden after first message).
- `SchoSidePanel`: fixed trio — "Why is this answer correct?", "Walk me through step by step", "What's the key concept here?"

### 2.5 History

- Tables: `tutor_conversations`, `tutor_messages` (RLS per user).
- Sidebar: list, new chat, delete; general chats only on main tutor page (`context_type` null or `general`).
- Contextual chats (question/lesson) stored separately — do not clutter general list.

### 2.6 File upload

- **Not supported** in tutor chat.
- PDF upload exists elsewhere (study plan score report) — not wired to Scho.

### 2.7 Voice

- **Not implemented** in tutor surfaces.

### 2.8 Progress tracking

| Signal | Where |
|--------|-------|
| Lesson completion % | Course player (`markLessonComplete`) |
| Diagnostic weak topics | Injected into tutor prompt |
| Practice session accuracy | `getTutorPerformanceData` |
| In-chat mastery loop | **Not structured** — relies on prompt ("Quiz me…" suggestions) |

### 2.9 Onboarding

- Full Scholaris onboarding (exam selection, diagnostic, study plan).
- **BYOK:** user Mistral API key required (`resolveAiClient`); graceful message if missing.
- AI key setup page: `/onboarding/ai-key`.

### 2.10 Related `/api/ai/*` routes (not full chat)

| Route | Role |
|-------|------|
| `tutor` | Main streaming tutor |
| `explain-question` | One-shot explanation |
| `grade-frq` | FRQ scoring |
| `generate-diagnostic` | Onboarding diagnostic |
| `generate-study-plan` | Planner |
| `generate-recommendations` | Post-session tips |
| `remix` | Question variants |

---

## 3. Feature Parity Matrix

| Feature | GetStudi | Scholaris | Gap to build |
|---------|:--------:|:---------:|--------------|
| Socratic one-question-at-a-time | ✅ Core UX | ⚠️ Prompt intent; can still multi-paragraph explain | **Enforce turn contract** (single question default, shorter max tokens for "probe" mode) |
| Interactive Sparks (sim/graph/quiz/cards) | ✅ Core differentiator | ❌ | **Major** — inline artifacts in chat |
| Post-aha mastery problem | ✅ | ⚠️ Ad hoc via "Quiz me" chips | **Structured mastery step** after concept resolution |
| Course/subject scoping | ❌ (subject-agnostic) | ✅ `exam_type` + preload JSON | Scholaris **ahead** for per-course bots |
| Course unit / lesson context | ❌ | ✅ lesson + question context | Extend **unit-level** prompts + preload slices |
| Exam switcher in product | N/A (flat) | ✅ SubjectSwitcher | — |
| Conversation history | ✅ (tier-limited preview) | ✅ Full persist + sidebar | Add **search/rename** optional |
| Suggested starter prompts | ⚠️ Unknown in-app | ✅ Exam + question chips | Add **lesson/unit-specific** chips |
| File upload in chat | ✅ Starter+ | ❌ | **Course material ingest** (syllabus, worksheet PDF) |
| Voice input/output | ❌ Public | ❌ | Low priority unless differentiated |
| Side panel + explanation tab | ❌ | ✅ SchoSidePanel | Scholaris **unique** strength |
| Question-aware context | ⚠️ | ✅ Full MCQ/FRQ payload | — |
| Web search in tutor | ❓ | ✅ `web_search` tool | — |
| Performance-aware tutoring | ⚠️ Questionnaire | ✅ Diagnostic + weak topics in prompt | Surface **in UI** ("focusing on Unit 3") |
| Lesson progress % | ❌ | ✅ Course player | Tie progress into tutor greetings |
| Streaming responses | ✅ Assumed | ✅ SSE | — |
| Auth / billing model | Clerk subscription | BYOK Mistral | Product decision, not UX parity |
| Code/interactive CS teaching | ✅ Code Spark (Pro) | ❌ | Spark variant for AP CSP / IB CS |
| Desmos / calculator coaching | ⚠️ Live Graph Spark | ✅ Extensive Desmos rules in prompt | **Embed Desmos** as lightweight Spark |
| FRQ grading integration | ❌ | ✅ `/api/ai/grade-frq` | Link tutor → practice FRQ loop |

**Legend:** ✅ shipped / strong · ⚠️ partial · ❌ missing · ❓ unknown

---

## 4. Architectural Notes (Scholaris)

```
User → TutorChat / tutor page / SchoSidePanel
         ↓
    POST /api/ai/tutor
         ↓
    buildTutorPrompt(examType, coursePreload, performanceData, questionContext)
         ↓
    streamWithTools(Mistral + web_search)
         ↓
    tutor_messages + tutor_conversations (Supabase)
```

Context dimensions already modeled:

- `exam_type` — course/exam family
- `context_type` + `context_id` — general | lesson | question | exam_prep
- Request body `context` — live question fields for side panel

**Implication:** Per-course chatbots are mostly a **UX + prompt + artifact** problem, not a new backend primitive.

---

## 5. Gaps to Build (Grouped)

### P0 — Course tutor parity with Studi teaching loop

1. **Socratic turn mode** — Default AP/IB Course Tutor to one probing question + optional "Reveal hint" escalation (mirror Studi's "one sharp question").
2. **Mastery check step** — After Scho detects resolution (or user taps "I get it"), generate one inline practice item (MCQ or short FRQ) before moving on.
3. **Lesson/unit suggested prompts** — Derive chips from current lesson title, course unit, or `tutor-preload` units — not only generic exam chips.

### P1 — Studi differentiators adapted for courses

4. **Spark-lite embeds** — Phase 1 without full codegen:
   - Desmos graph for AP/IB math/physics
   - Simple chart/table for economics/history timelines
   - Inline 3-question adaptive check (reuse question bank)
5. **File upload → course context** — Attach PDF/image to a Course Tutor thread; extract text server-side; append to session context (Studi Starter parity).

### P2 — Polish & retention

6. **In-chat progress cues** — "You've completed 4/12 lessons; weak area: Unit 2 FRQs" in greeting bar.
7. **Conversation organization** — Search, pin, or group by unit; optional merge of lesson threads under course.
8. **Flashcard Spark** — Pull from vocab deck or generate 5 cards from current topic.

### P3 — Nice to have

9. Voice input (Web Speech API) in `TutorChatInput`.
10. Code Spark sandbox for AP CSA / IB CS (Pro-tier equivalent).

---

## 6. Prioritized Feature List — Per-Course AI Chatbots

Ordered for **Scholaris AP/IB Course Tutor** (highest impact first):

| Priority | Feature | Rationale | Effort |
|:--------:|---------|-----------|--------|
| **P0** | Unit/lesson-aware suggested prompts | Zero-auth win; matches Studi's "bring confusion" with course-specific entry points | S |
| **P0** | Strict Socratic single-question mode (Course Tutor) | Core Studi differentiation; prompt + `maxTokens` + UI "Ask one question" contract | M |
| **P0** | Mastery check after concept (inline mini-quiz) | Closes Studi's "prove you own it" loop; reuse question generator | M |
| **P1** | Desmos / graph Spark embed in chat | STEM courses; Scholaris already has Desmos playbook in prompts | M |
| **P1** | Course material file upload (PDF/image) | Studi Starter parity; high value for AP/IB worksheets | L |
| **P1** | Surface weak topics + lesson progress in tutor chrome | Scholaris has data; Studi lacks this — competitive advantage | S |
| **P2** | Adaptive 3-question Spark (from bank) | Studi Adaptive Quiz parity without codegen | M |
| **P2** | Unit-scoped conversation list / filters | Keeps Course Tutor usable across long AP courses | M |
| **P2** | Flashcard Spark from vocab/topic | Studi flashcard Spark; fits language AP/IB | M |
| **P3** | Full interactive Scene Spark (sim codegen) | Studi physics sims; highest build cost | XL |
| **P3** | Code Spark for CS courses | Pro-tier Studi feature | XL |
| **P3** | Voice input | Neither product markets it today | S |

**Scholaris advantages to preserve (do not regress):**

- Per-exam course preload (109+ JSON files)
- Question/lesson contextual side panel
- Performance-aware prompts (no re-asking scores)
- Web search for current policies/dates
- FRQ grading pipeline integration

---

## 7. References

- [getstudi.com](https://getstudi.com) — homepage, demo transcript, FAQ copy
- [getstudi.com/pricing](https://www.getstudi.com/pricing) — plans, file upload, Spark caps
- [getstudi.com/chat](https://www.getstudi.com/chat) — redirects to Clerk sign-in
- Scholaris: `src/app/dashboard/tutor/`, `src/components/exam/SchoSidePanel.tsx`, `src/app/api/ai/tutor/route.ts`, `src/lib/tutor/*`, `src/lib/promptBuilder.ts`, `src/lib/aiPrompts.ts`

---

## 8. Research Limitations

- GetStudi in-app UX (composer controls, history UI, Spark renderer, questionnaire fields) was **not** observed — product is early access behind authentication.
- Do not confuse with **Studi: AI Homework Assistant** (Jetkite mobile app on App Store) — different product (Gemini homework helper, scan & solve).
- This document reflects **public** GetStudi positioning as of 2026-07-17.
