# Khan Academy / Tutoring-Session Whiteboard Patterns

**Date:** 2026-07-20  
**Scope:** Draw + tutor-chat patterns from Khan Academy (scratchpad, Khanmigo, GPT-4o tutoring demos) and closely related multimodal tutoring research.  
**Out of scope:** App implementation, library choice (Excalidraw/tldraw), OCR engine details.

---

## 1. Two product layers (do not conflate)

Khan’s “whiteboard + tutor” story is really **two stacked patterns**:

| Layer | What it is | Who draws | Who “sees” the board | Status |
|-------|------------|-----------|----------------------|--------|
| **A. Exercise scratchpad** | In-problem drawing surface for work / annotation | Student only | Historically: mostly local (handwriting → answer recognition on some inputs); not a live AI vision loop | Shipped for years (strongest on iPad / tablet) |
| **B. Multimodal tutoring session** | Live tutor that reasons over **voice + screen/board vision + Socratic chat** while the student works on a problem | Student (and sometimes parent/demo) | Tutor model “looks” at the problem surface / annotations | **Demo / beta** in OpenAI × Khan Academy GPT-4o films and later 60 Minutes–style vision+voice segments; Sal Khan noted (May 2024) that *this level* of tutoring was **not yet released** on the iPad app at demo time |

**Design implication:** A tutoring whiteboard product should decide whether the board is (1) a **private workpad** that is *explicitly sent* to the tutor, or (2) a **shared session surface** the tutor can observe continuously. Khan’s mass product is closer to (1) + chat; the viral demos advertise (2).

---

## 2. Pattern A — Khan exercise scratchpad (draw beside the problem)

### 2.1 Placement & chrome

From Khan Academy iPad marketing and community support threads:

- Scratchpad lives **inside the practice / mastery item**, not as a separate “whiteboard app.”
- Entry: compact control (historically a colorful icon, often bottom-left) that expands a **thin tool rail** (colors, eraser, undo/redo; tools have changed across app versions).
- Scope: available on **practice / mission problems**, not on videos or articles.
- Purpose copy: “show your work,” “jot thoughts,” then enter the answer for recognition where supported.

### 2.2 Interaction model

```text
[ Problem stem + figure ]     ← fixed content
[ Scratchpad overlay/pane ]   ← student ink (ephemeral work)
[ Answer widgets / Check ]    ← structured submission
[ Hints (step-by-step) ]      ← separate from free drawing
```

Key properties:

1. **Problem stays primary.** Drawing is scaffolding for the student’s cognition, not a replacement for the item UI.
2. **Hints are gated and sequential**, not free-form tutor turns over the ink.
3. **Ink ≠ submission** by default. The graded path is still the answer widgets; the pad is for productive struggle.
4. **Platform asymmetry.** Scratchpad is tablet-first; phone/Android support has historically been weaker or absent — a reminder that tutoring boards need an honest mobile tier (draw vs photo-upload).

### 2.3 Pedagogy fit (ICAP / constructive)

Khan’s learning-science framing (CLO Kristen DiCerbo): move learners from passive → active → **constructive** → interactive. Scratchpad is the constructive layer (student produces diagrams/steps). Khanmigo later supplies the **interactive** layer (dialogue). A good tutoring board product keeps that order: **student marks first**, tutor talk second.

Sources: [iPad interactive app blog](https://blog.khanacademy.org/khan-academy-now-on-your-ipad-more-interactive/), [scratchpad support thread](https://support.khanacademy.org/hc/en-us/community/posts/360002763931-Scratch-pad-on-mobile-site-and-app), [How we built AI tutoring tools](https://blog.khanacademy.org/how-we-built-ai-tutoring-tools/)

---

## 3. Pattern B — Tutoring session: draw + Socratic chat (+ optional voice/vision)

### 3.1 Khanmigo chat pedagogy (shipped text/voice tutor)

Regardless of whiteboard vision, Khanmigo’s **session contract** is consistent and should drive board+chat UX:

| Principle | Product behavior |
|-----------|------------------|
| **Socratic, not answer-dumping** | Asks questions / nudges; refuses “just give me the answer” |
| **Goldilocks support** | Help at the edge of ability: one step or question at a time |
| **Step-level feedback** | Comment on *process*, not only final correctness |
| **Content grounding** | Tied to Khan library + learner account context |
| **Tone + guardrails** | Encouraging; redirects off-topic; moderation + adult alerts |
| **Economy of language** | Iterate away repetitive questions (user feedback drove prompt rewrites) |
| **Voice as accessibility** | Speak in / read out replies (“You talk, Khanmigo types”) — hands free while working |

Sources: [Khanmigo learners](https://www.khanmigo.ai/learners), [7-step prompt engineering](https://blog.khanacademy.org/khan-academys-7-step-approach-to-prompt-engineering-for-khanmigo/), [Harnessing GPT-4](https://blog.khanacademy.org/harnessing-ai-so-that-all-students-benefit-a-nonprofit-approach-for-equal-access/)

### 3.2 GPT-4o “math tutoring on Khan Academy” demo (canonical multimodal session)

**Setup (OpenAI launch demos, May 2024):** Sal Khan + son Imran on a Khan Academy **iPad problem** (right triangle / trig). GPT-4o tutors **by voice**, can **see the screen**, and is explicitly instructed: *don’t give the answer; ask questions and nudge.*

Observed interaction loop:

```mermaid
sequenceDiagram
  participant S as Student (voice + pointing/ink)
  participant B as Problem surface / scratch
  participant T as Tutor (voice + vision)

  S->>T: "Help with this problem" (+ parent meta-prompt)
  T->>B: Looks at triangle / labels
  T->>S: Socratic question (identify sides)
  S->>B: Points / names sides (may be wrong)
  T->>S: Affirm + correct misconception + next micro-question
  S->>T: States formula / ratio
  T->>S: Praise process; check understanding (not dump answer)
```

**UI / session patterns worth copying:**

1. **Shared visual referent.** Tutor and student talk about *the same triangle on screen* (“this side AC,” “angle alpha”) — deixis over a board/figure, not abstract chat alone.
2. **Micro-turns.** One conceptual move per turn (label hypotenuse → opposite → recall sine → plug values).
3. **Misconception repair without shame.** Wrong guess → soft correction + re-prompt (“You’re close… AC is adjacent…”).
4. **Parent/teacher meta-prompt.** Session opens with constraints (“don’t give the answer”) — product equivalent: sticky pedagogy system prompt + optional “hint strength.”
5. **Look-on-demand latency.** Community reverse-engineering notes speech sometimes *slows* when the model “looks” — treat vision as a **deliberate capture**, not free continuous video unless cost/latency allow.
6. **Honest maturity label.** Demo ≠ GA. Product copy should separate “send board snapshot to tutor” (shippable) from “always-watching realtime coach” (aspirational / expensive).

Sources: [GPT-4o math tutoring demo (YouTube)](https://www.youtube.com/watch?v=IvXZCocyU_M), [Sal LinkedIn disclosure](https://www.linkedin.com/posts/khanacademy_new-gpt-4o-omni-tutoring-demo-my-new-book-activity-7195860319435411457-v9NY), [OpenAI community thread](https://community.openai.com/t/khan-academy-gpt-4o-math-tutor-demo-how-to/746530)

### 3.3 Later “vision + voice watches you work” demos

Public commentary on 60 Minutes–era Khanmigo segments describes a beta where the model **watches work in real time** and gives verbal feedback — including **vision errors** (e.g., misreading triangle height). Takeaways:

- Continuous vision feels magical but **must verify geometric claims** (RAG / symbolic check / student confirmation).
- Messy classroom diagrams ≠ high-contrast demo ink — vision UX needs tolerance for rough student drawings.
- Over-cheerful voice feedback can feel patronizing; tone calibration matters as much as accuracy.

Sources: [Unpacking a Khanmigo video](https://ashleytan.wordpress.com/2024/12/17/unpacking-a-khanmigo-video/), [Dan Meyer on 60 Minutes](https://danmeyer.substack.com/p/five-interesting-moments-from-the)

---

## 4. Composite layout patterns (draw + tutor chat)

Industry and research converge on a small set of **session layouts**. Khan products mix these; demos emphasize #2/#3.

### 4.1 Split session (recommended default for web tutors)

```text
┌────────────────────────────┬──────────────────────┐
│  Problem / figure (pinned) │  Tutor chat           │
│  + drawing canvas          │  (Socratic turns)     │
│  tools: pen eraser undo    │  [Send board] [Speak] │
└────────────────────────────┴──────────────────────┘
```

- Left = **constructive workspace**; right = **interactive dialogue**.
- Primary CTA is **Send board / Ask tutor**, not auto-upload every stroke (cost, privacy, cognitive interrupt).

### 4.2 Stacked mobile (Khan tablet reality)

```text
┌────────────────────────────┐
│ Problem (collapsed header) │
├────────────────────────────┤
│ Full-bleed scratchpad      │
├────────────────────────────┤
│ Chat sheet / voice bar     │
└────────────────────────────┘
```

- Drawing gets the large surface; chat becomes a sheet or voice-first channel so hands stay on the stylus.

### 4.3 Whiteboard-above-chat (clone pattern from OpenAI×Khan-inspired OSS)

Open-source “AI math tutor” clones inspired by the demo often:

- Toggle ✏️ in chat header → whiteboard **above** the thread.
- Tools: freehand + shapes + math symbols.
- Explicit **Review** (local check) then **Send** (vision API).

Useful as a **progressive disclosure** pattern: chat-first users opt into the board.

### 4.4 Shared dual-ink board (research frontier, not classic Khan GA)

Systems like **Interactive Sketchpad**, **MathBoard**, **Professor KIA**:

- Tutor may **write back** on the board (diagrams, strokes, LaTeX→handwriting).
- Student annotates tutor diagrams; snapshots re-enter the model.
- Requires clear **layer ownership** (student ink vs tutor ink) so vision doesn’t confuse the tutor’s own strokes with the learner’s work.

---

## 5. Session state machine (draw + tutor)

A practical state model distilled from Khan pedagogy + multimodal demos:

| State | Student | Tutor | Board |
|-------|---------|-------|-------|
| **Orient** | Opens problem | Restates goal; asks first micro-question | Shows stem/figure; pad empty or with problem overlay |
| **Work** | Draws / calculates | Idle or quiet encouragement | Ink accumulates; **not** every stroke uploaded |
| **Share** | Taps Send / “look” / voice “check this” | Vision ingest of snapshot (+ optional OCR text) | Freeze or badge “sent @ t” |
| **Nudge** | Answers tutor question | One hint / question; may highlight conceptually | Optional tutor overlay (advanced) |
| **Repair** | Revises ink | Addresses misconception | Student edits; re-Share |
| **Check** | Proposes answer | Confirms process; still avoids spoon-feeding if policy says so | Snapshot archived to thread |
| **Close** | Next problem / summary | Recap skills practiced | Clear or save page |

**Non-negotiables from Khan learning science:**

- Prefer **one nudge per turn**.
- Prefer **process feedback** over binary grade of the whole board.
- Prefer **student construction** before tutor generation of full solutions.

---

## 6. How the tutor “sees” the board (technical pattern menu)

OpenAI community speculation + research systems suggest these **ingestion modes** (increasing cost/complexity):

| Mode | Mechanism | Pros | Cons | Fit |
|------|-----------|------|------|-----|
| **1. Explicit snapshot** | PNG/JPEG of canvas on user action | Cheap, private, clear intent | Extra tap | Best default (Scholaris-like OCR→Ask) |
| **2. Stroke / vector log** | Send path data + timestamps | Editable, compact, replay | Harder for vision models; need rasterize | Undo/analytics |
| **3. Event-triggered frames** | Capture on pen-up / pause / “look” | Feels live without video | Still bursty | Near-demo UX |
| **4. Continuous video / screen share** | Stream to realtime multimodal API | Closest to GPT-4o films | Cost, latency, privacy, errors | Premium / demo |
| **5. Hybrid: OCR text + image** | Raster → text layer + image for diagrams | Better math chat grounding | OCR fails on diagrams | Exam-prep tutors |
| **6. Code-generated tutor diagrams** | Model emits matplotlib/etc.; board shows result | Accurate geometry when code is right | Wrong code → wrong diagram confuses learners | Interactive Sketchpad style |

**Khan demo realism:** Likely **vision over frames of the app surface**, not a public “whiteboard video API.” Product teams should not wait on continuous video to ship a useful draw+tutor loop — **Mode 1 + Socratic chat** is the durable pattern.

---

## 7. Adjacent research (same UX family as the Khan demos)

### 7.1 Interactive Sketchpad (2025)

- Loop: LMM hint (text) + **code-generated diagram** → student whiteboard annotation → **Send Screenshot** → next hint.
- Fine-tuned / prompted to **one subtle hint at a time**, not the answer.
- UI split: chatbot + interactive whiteboard; visualizations appear as **pages** on the board.
- Limitation: bad generated diagrams mislead both student and model → need diagram verification.

Source: [arXiv:2503.16434](https://arxiv.org/pdf/2503.16434)

### 7.2 MathBoard / verbal ↔ board sync

- Generates **speech and board writing in sync** (tutor talks while writing steps).
- Important for “human tutor feel,” but harder than snapshot-Ask; needs stroke animation + barge-in.

### 7.3 Professor KIA–class systems

- Voice duplex + board vision + **animated tutor handwriting**.
- Explicitly **separate student vs AI stroke layers**; filter AI strokes out of vision payloads.

These validate Khan’s demo direction while clarifying engineering: **layering, explicit send, and Socratic prompts** matter more than fancy pens.

---

## 8. Anti-patterns (seen in demos / clones / commentary)

1. **Answer-giving chat beside a blank board** — defeats productive struggle; Khan’s brand differentiator is refusal to spoon-feed.
2. **Auto-streaming every stroke to the model** — cost, context bloat, and interruption of student thought.
3. **Treating vision as infallible** — public demos already misread figures; always allow student correction.
4. **Whiteboard as Miro clone** — infinite canvas collaboration chrome distracts from **one problem, one session**.
5. **Patronizing TTS** — “Great job!” on every micro-move feels fake; prefer specific process praise.
6. **Phone-sized ink without fallback** — if scratchpad fails on small screens, offer **photo of paper** into the same Ask-tutor pipeline.
7. **Tutor ink mixed into student vision** without filtering — model “grades” its own writing.

---

## 9. Checklist: Khan-like tutoring whiteboard (draw + chat)

Use this as a product/UX acceptance bar:

- [ ] Problem (or clear goal) remains visible while drawing  
- [ ] Pen / eraser / undo (redo if possible); low tool clutter  
- [ ] Explicit **Ask tutor / Send board** (default), not silent continuous upload  
- [ ] Tutor responses are **Socratic, one step**, process-aware  
- [ ] Board snapshot (and optional OCR text) attaches to the chat turn  
- [ ] Voice optional: talk while stylus is busy; TTS for replies  
- [ ] Misconception repair tone: correct without humiliation  
- [ ] Mobile: stacked layout or photo fallback  
- [ ] Clear label if vision is beta / may misread diagrams  
- [ ] Session archive: which board image belonged to which tutor turn  

---

## 10. Scholaris mapping (research only)

Relative to Free Studying’s whiteboard direction (student ink → snapshot → OCR → Ask Scho):

| Khan / research pattern | Scholaris-aligned choice |
|-------------------------|---------------------------|
| Scratchpad beside problem | Whiteboard mode as **workpad**, not a separate social board |
| Khanmigo Socratic chat | Existing Scho pedagogy / sectioned tutor replies |
| GPT-4o “look” | **Explicit** Read handwriting / Ask tutor (Mode 1), not always-on camera |
| Voice while working | Kokoro TTS + STT as hands-free channel |
| Step-level feedback | Prefer tutor prompts that reference **student work text/image**, not generic lectures |
| Demo dual-ink tutor writing | Defer; text + optional generated figure is enough for v1 |

**Bottom line:** Khan’s durable pattern is **student constructive ink + Socratic tutor dialogue over a shared visual referent**, with vision as a **deliberate look**. The viral realtime omni demos are the north star, not the minimum shippable unit.

---

## Sources

1. DiCerbo, K. — [How We Built AI Tutoring Tools](https://blog.khanacademy.org/how-we-built-ai-tutoring-tools/)  
2. de Angulo, D. — [Khan Academy’s Approach to Prompt Engineering for Khanmigo](https://blog.khanacademy.org/khan-academys-7-step-approach-to-prompt-engineering-for-khanmigo/)  
3. Khan, S. — [Harnessing GPT-4…](https://blog.khanacademy.org/harnessing-ai-so-that-all-students-benefit-a-nonprofit-approach-for-equal-access/)  
4. Khan Academy — [iPad interactive / scratchpad](https://blog.khanacademy.org/khan-academy-now-on-your-ipad-more-interactive/)  
5. Khan support community — [Scratch pad on mobile](https://support.khanacademy.org/hc/en-us/community/posts/360002763931-Scratch-pad-on-mobile-site-and-app)  
6. OpenAI / Khan — [GPT-4o math tutoring demo](https://www.youtube.com/watch?v=IvXZCocyU_M)  
7. Sal Khan — LinkedIn note that iPad-level omni tutoring was not yet released at demo time  
8. OpenAI Community — [How does the whiteboard sync work?](https://community.openai.com/t/khan-academy-gpt-4o-math-tutor-demo-how-to/746530)  
9. Khanmigo product — [Learners](https://www.khanmigo.ai/learners)  
10. Chen et al. — [Interactive Sketchpad](https://arxiv.org/pdf/2503.16434)  
11. Tan, A. — [Unpacking a Khanmigo video](https://ashleytan.wordpress.com/2024/12/17/unpacking-a-khanmigo-video/)  
12. Meyer, D. — [Five Interesting Moments From the Khanmigo Segment on 60 Minutes](https://danmeyer.substack.com/p/five-interesting-moments-from-the)  
