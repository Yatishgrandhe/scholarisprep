# Edu Platforms — Study Session UX & Practice from Content

**Date:** 2026-07-20  
**Scope:** Khan Academy, Brilliant.org, Quizlet, AnkiWeb/Anki, Duolingo — how a **study session** feels, and how **practice is generated or selected from content**.  
**Out of scope:** App implementation, Scholaris code, LMS admin/teacher dashboards (except where they reveal generation pipelines).

---

## Verdict (steal list for Free Studying)

| Pattern | Steal? | From |
|---------|--------|------|
| Bounded session with clear end + level-up summary | Yes | Khan, Duolingo, Quizlet Learn |
| Progressive scaffolding (hint steps → rationale after submit) | Yes | Khan |
| “Learn by doing” micro-interactions over lecture-then-quiz | Yes (STEM) | Brilliant |
| Upload notes/PDF → flashcards + practice test (editable) | Yes | Quizlet Magic Notes / Study Guides |
| Reveal-answer + self-grade ease buttons (Again/Hard/Good/Easy) | Yes (retention mode) | Anki |
| Sibling bury / don’t spam related cards in one sitting | Yes | Anki |
| Offline authoring + online personalization split | Yes (architecture) | Duolingo, Brilliant |
| Streaks / hearts / leagues as core product | Steal lightly | Duolingo — habit ok; don’t copy casino chrome |
| AI chat that *replaces* interactive practice | No | Brilliant explicitly rejected this |
| Raw LLM items live to learners with no review | No | All serious platforms gate correctness |

**Core product insight:** These five platforms split into two generation models that Scholaris must not conflate:

1. **Bank + selector** — expert (or human-reviewed) items exist; the session *sequences* them (Khan mastery, Duolingo Birdbrain, Anki scheduler, Brilliant practice sets).  
2. **Source → artifacts** — learner materials become study objects (Quizlet Magic Notes; Khanmigo question generator for teachers; AI→Anki tools outside Anki core).

Free Studying already has tutor chat + notes + PDF. The gap these products fill is a **bounded practice session** fed either by a bank or by **content-derived items the learner can edit before committing**.

---

## 1. Comparison matrix

| Dimension | Khan Academy | Brilliant | Quizlet | Anki / AnkiWeb | Duolingo |
|-----------|--------------|-----------|---------|----------------|----------|
| **Session length** | Exercise / quiz / challenge (fixed question count); Mastery Challenge = 6 Q / 3 skills, **12h** to finish | Lesson + practice sets; daily bite | Learn rounds, Match, Test, timed games; AI Practice Tests configurable | Until **daily due** queue empty (or stop) | ~3–5 min; ~8–10 micro-parts |
| **Primary verb** | Solve → Check → Hint | Manipulate → Click truth | Recall / match / write | Show answer → rate ease | Tap / type / speak → next |
| **Feedback timing** | Immediate check; step hints; post-submit rationales | Instant interactive feedback + celebration | Immediate in Learn; test score at end | Self-graded after reveal | Immediate; miss → resurface at lesson end |
| **Progress model** | Skill mastery ladder (Not Started → Mastered); Energy ≠ Mastery | XP, streaks, path/gameboard, Koji gaps | Familiarity / Learn progress; folders by exam | Intervals (SM-2 or **FSRS**); New / Learn / Review | Path units + built-in practice; streaks, XP, leagues |
| **Practice from content** | Mostly curated bank; **AI Q-gen** from video/article/exercise (teachers); Mastery Challenge = spaced pick from practiced skills | Author AI generates **interactive variants**; learners don’t upload notes | **Magic Notes / Study Guides / AI Practice Tests** from uploads | Manual notes → card templates; cloze/siblings; AI import is **ecosystem**, not AnkiWeb core | LLM **authoring** pipeline; Birdbrain **selects** at runtime |
| **Adaptation** | Blue “next” + mastery/spaced challenges | Koji tracks mastery gaps | Learn difficulty ramp + smart grading | Scheduler + desired retention | Birdbrain ~**80%** success target |

---

## 2. Study session UX (by platform)

### 2.1 Khan Academy — mastery exercise as the session

**Shape of a session**

```text
[ Activity card: N questions, optional peer time estimate ]
        ↓
[ Stem + widgets + Check ]  ↔  [ Hints (stepwise) ]
        ↓
[ Rationale if wrong / explanation ]
        ↓
[ Next item … → completion summary: skills leveled up/down ]
```

**UX properties**

1. **Pre-flight card** — before exercise/quiz/unit test/course challenge: question count; mixed assessments also show rough peer completion time. Sets expectation and reduces abandonment surprise.  
2. **Hints vs rationales** — hints *during* answering (often one per step); rationales *after* submit. Pedagogy guidance: try first if familiar; self-explain hints aloud.  
3. **Mastery is completion-gated** — levels/Mastery points update when the activity is finished; mid-activity “Start over” (after ≥2 misses/skips) keeps Energy from correct items but does **not** change Mastery.  
4. **Energy points ≠ ability** — effort currency (videos, practice, tasks); badges/avatars hang off behavior. Don’t confuse gamification with proficiency.  
5. **Mastery Challenge session** — always **6 questions / 3 skills** (2 each), personalized by recency + mastery; questions shuffled across skills; one challenge per 12h window; unfinished challenge resets after 12h. Spaced repetition without Anki-style reveal UI.  
6. **Blue button as coach** — course UI steers “what to do next”; session UX is embedded in a larger path, not a free-floating quiz drawer.

**Session anti-patterns Khan avoids**

- Infinite scroll of unrelated items with no skill summary.  
- Treating hints as the graded answer (learner still submits widgets).  
- Equating “points for watching” with “Mastered.”

Sources: [Mastery Challenges](https://support.khanacademy.org/hc/en-us/articles/360037127892-What-are-Mastery-Challenges-in-course-mastery), [Mastery levels](https://support.khanacademy.org/hc/en-us/articles/5548760867853--How-do-Khan-Academy-s-Mastery-levels-work), [Practice guidance](https://blog.khanacademy.org/how-should-people-practice-on-khan-academy/), [Start over / Energy](https://support.khanacademy.org/hc/en-us/articles/9815463103245-What-happens-to-my-Mastery-and-Energy-points-when-I-start-an-activity-over)

---

### 2.2 Brilliant.org — play the concept, then practice variants

**Shape of a session**

```text
[ Path / gameboard node ]
        ↓
[ Interactive lesson: drag, toggle, experiment → commit answer ]
        ↓
[ Celebration / XP ] → [ Practice set variants of same objective ]
        ↓
[ Koji: slow down / fill gaps / next recommendation ]
```

**UX properties**

1. **Mario, not chatbox** — Brilliant’s public AI stance: text tutors explain well but miss “feel the math.” Session unit is an **interactive puzzle**, not a Socratic paragraph. Wrong answers often unlock **interactive** explanations, not only prose.  
2. **Difficulty curve as design** — authors spend weeks on core game + levels; practice is many variations per concept (~20+ problems/concept in their internal math for course scale).  
3. **Motivation layers** — in-lesson celebration, XP, streaks, leagues; path shows freedom + direction (ustwo “Game Feel” redesign: level gameboard, companion, progress tooltips).  
4. **Koji tutor** — marketed as visual guidance + gap-aware practice curation; still grounded in interactive curriculum, not open-ended chat-only study.

**Session anti-patterns Brilliant rejects**

- Lecture video → multiple choice as the default loop.  
- Shipping AI-generated items without human design + correctness review (“one wrong problem shakes confidence”).

Sources: [Hand-crafted, machine-made](https://blog.brilliant.org/hand-crafted-machine-made/), [brilliant.org](https://brilliant.org/), [ustwo case study](https://ustwo.com/work/brilliant/)

---

### 2.3 Quizlet — modes over one content object

**Shape of a session**

Quizlet’s unit of content is a **set** (terms/definitions, Q/A, or diagram labels). The session is choosing a **mode**:

| Mode | Session feel |
|------|----------------|
| **Flashcards** | Classic flip; self-paced |
| **Learn** | Adaptive sequence; difficulty ramps; Write/Spell folded into Options; Progress + smart grading (Plus) |
| **Test** | Mixed question types; dress-rehearsal score |
| **Match / Blast / Blocks / Live** | Timed or multiplayer; high arousal, low depth |
| **AI Practice Test** | Configurable length, types, timer; exam simulation from notes/set |
| **Q-Chat** | Teach Me / Quiz Me / Apply — conversational wrapper on the set |

**UX properties**

1. **One corpus, many verbs** — same terms power recall, recognition, writing, games. Reduces “I built cards but don’t know how to study.”  
2. **Learn as the serious path** — personalized order from familiarity; progressive hardness; smart grading aims at *concepts* not exact string match. Free users get limited Learn rounds.  
3. **Milestone tagging** — organize sets by assignment/quiz/test so sessions are goal-scoped, not dump-all.  
4. **Home feed warm-ups** — short guided activity when time is scarce (habit micro-session).  
5. **Paywall shapes session depth** — Learn/Test/Practice Tests/Study Guides heavily Plus-gated; free tier still teaches the mode taxonomy.

Sources: [Studying on Quizlet](https://help.quizlet.com/hc/en-us/articles/360030841732-Studying-on-Quizlet), [AI study tools](https://quizlet.com/features/ai-study-tools), [2023 AI launch](https://www.prnewswire.com/news-releases/quizlet-launches-advanced-ai-powered-tools-for-next-gen-studying-301895290.html)

---

### 2.4 Anki / AnkiWeb — due queue as the session

**Shape of a session**

```text
[ Deck overview: New | Learning | To Review (+ buried grey) ]
        ↓ Study Now
[ Question only ] → Show Answer (Space) → [ Again | Hard | Good | Easy ]
        ↓
[ Next due card … until queues empty for the day ]
```

**UX properties**

1. **Overview before commitment** — counts by queue type; buries shown; Study Now is an explicit start.  
2. **Retrieval first** — front only; ~10s struggle heuristic then reveal. Grading is **self-report of recall quality**, not auto-score.  
3. **Interval transparency** — each button shows *when* the card returns; teaches the scheduler as part of UX.  
4. **Keyboard-native** — Space/Enter = Show / Good; 1–4 = ease. High throughput for large decks.  
5. **Siblings & burying** — related cards from one note (reverse, cloze siblings) can be auto-buried so one session doesn’t spoil the next. Learning cards are time-critical and not buried the same way.  
6. **Edit mid-study** — Edit returns to the card; flags/suspend/bury/reset for hygiene without leaving the loop.  
7. **Falling behind** — prioritizes longest-waiting reviews; delayed cards’ intervals account for delay (return from break is possible without wiping history).  
8. **AnkiWeb role** — browser client + sync hub; studying model matches desktop. Not a social content market like Quizlet’s search-first culture (shared decks exist, but product heart is *your* collection + scheduler).

**FSRS (modern scheduling UX)**

- Toggle in deck options; builds memory model from full history vs classic SM-2 last-rating heuristics.  
- **Desired retention** (often ~90%) is the main dial — higher retention ⇒ more reviews.  
- Optimize calibrates to the user’s history; learning steps ≥1 day discouraged with FSRS.

Sources: [Studying (Anki Manual)](https://docs.ankiweb.net/studying.html), [Deck options / FSRS](https://docs.ankiweb.net/deck-options.html)

---

### 2.5 Duolingo — micro-lesson path session

**Shape of a session**

```text
[ Path node / Practice Hub / hearts practice ]
        ↓
[ 8–10 parts × 10–20s each; format changes often ]
        ↓ on miss: hint + same concept resurfaces at end
        ↓
[ XP, streak, optional league climb; chests/gems ]
```

**UX properties**

1. **Atomic lesson** — variety of formats (match, construct, speak, listen) so no single screen drones; total ~3–5 minutes.  
2. **Path embeds practice** — home redesign built spaced review into the forward path so “practice” isn’t psychologically going backward. Units are smaller; stories/practice nodes interleaved.  
3. **Zone of proximal development** — adaptive sequencing: do well → harder items; miss → hint + end-of-lesson retry of same concept. Target success often cited ~**80%** (flow, not 50% frustration).  
4. **Hearts / Practice Hub** — softer exit for hard days (practice instead of new path) without breaking habit framing.  
5. **Habit systems** — streaks as primary DAU lever; XP, leagues, events (e.g. timed XP ramp) add spice. Portable lesson: **loss aversion + short win** beats long modules.  
6. **Birdbrain in-session** — proficiency updated after exercises; modern serving aims for low-latency next-item selection (reports of ~14ms-class selection in engineering writeups; treat exact numbers as secondary to the *pattern*: real-time θ update + item pick).

Sources: [Duolingo Method whitepaper](https://duolingo-papers.s3.amazonaws.com/reports/Duolingo_whitepaper_duolingo_method_2023.pdf), [Home screen redesign](https://blog.duolingo.com/new-duolingo-home-screen-design/), [LLM lesson creation](https://blog.duolingo.com/large-language-model-duolingo-lessons/)

---

## 3. Practice generation from content

### 3.1 Two pipelines (do not mix responsibilities)

```text
 AUTHOR-TIME                         RUN-TIME
───────────────                      ───────────────
 Source / brief                      Learner state
       ↓                                   ↓
 Generate candidates                 Select / sequence / space
       ↓                                   ↓
 Human review + edit                 Serve session items
       ↓                                   ↓
 Content store / deck                Feedback → update model
```

| Platform | Author-time | Run-time |
|----------|-------------|----------|
| **Khan** | Expert exercises; Khanmigo generates Qs from **page transcript + metadata + standards** (teacher tools) | Mastery / challenge selection from practiced skills; blue-button path |
| **Brilliant** | Designers + AI **implement** interactive puzzles & **variants** of a locked learning objective | Koji / product logic serves lessons + gap practice |
| **Quizlet** | User creates set **or** AI turns notes/PDF/slides → outline, cards, essay prompts, practice test | Learn adapts order/difficulty; games reshuffle same atoms |
| **Anki** | User (or import) writes notes → templates explode to cards | FSRS/SM-2 schedules which card is due |
| **Duolingo** | “Mad Libs” LLM prompts → batch exercises → expert edit → store | Birdbrain picks items for difficulty + review timing |

**Scholaris implication:** Tutor chat can *help author* items, but the **session runner** should select from a reviewed/edited bank (or learner-approved generated set), not invent high-stakes STEM answers on the fly without a check step.

---

### 3.2 Khan — grounded generation from library content

- **Teacher / Khanmigo Question Generator:** from videos, articles, exercises → MC or free-response + answer key; can paste standards for alignment; export paths (e.g. Google Forms, Blooket sets).  
- **Grounding trick:** prompt chains attach to a **selected content piece** (transcript, article text, existing problems, standards, prerequisites) so generation stays on-curriculum.  
- **Learner-facing practice** still mostly comes from the human-authored bank + mastery selection — AI gen is amplification for teachers, not the only practice path.

Sources: [AI generators for teachers](https://blog.khanacademy.org/ai-generators-for-teachers/), [Question generator](https://www.khanmigo.ai/question-generator), [Lesson-plan prompt engineering](https://blog.khanacademy.org/prompt-engineering-using-ai-for-effective-lesson-planning/)

---

### 3.3 Brilliant — AI as level compiler, not tutor transcript

- Authors specify puzzle type / objective; AI fills **game-engine configuration** (historically hard; quality jumped when representations became LLM-friendly).  
- Separate tool: **variants** of a blessed level for mastery practice, same learning objective.  
- Mandatory **multi-round human review** for design + correctness.  
- Explicit non-goal: chatbot that explains instead of interactive game.

Source: [Hand-crafted, machine-made](https://blog.brilliant.org/hand-crafted-machine-made/)

---

### 3.4 Quizlet — learner source → study artifacts

**Magic Notes / Study Guides pipeline (conceptual):**

```text
 Upload / paste notes, slides, PDF
        ↓
 Outline / key topics
        ↓
 Flashcards  +  Practice test items  +  Essay prompts (+ related resources)
        ↓
 Learner edits → commit to set → study in Learn / Test / games
```

- **Practice Tests** (AI) vs **Test** (from set): AI path simulates full exam (count, types, timer); domain note: help center lists sciences & humanities for Practice Tests.  
- **Q-Chat** consumes the set: explain, quiz, apply — generation is conversational, still anchored to terms.  
- Quality control = **editability** + user ownership more than Duolingo-style expert QA (higher hallucination risk; UX must make edit/delete cheap).

Sources: [Studying on Quizlet](https://help.quizlet.com/hc/en-us/articles/360030841732-Studying-on-Quizlet), [AI study tools](https://quizlet.com/features/ai-study-tools)

---

### 3.5 Anki — generation = note types, not LLM (in-core)

- **Note → N cards** via templates (Basic, Basic+reverse, Cloze, custom). This is deterministic “generation from content.”  
- Cloze deletions atomize a paragraph into multiple retrieval cues.  
- **AnkiWeb** syncs the collection; it does not (as a first-class product) turn PDFs into decks — that lives in add-ons / third-party AI→`.apkg` importers.  
- Session quality depends on **atomic cards**; bad generation (laundry-list backs) breaks FSRS usefulness.

Source: [Studying](https://docs.ankiweb.net/studying.html); ecosystem tools are secondary.

---

### 3.6 Duolingo — Mad Libs authoring + Birdbrain selection

**Authoring (LLM):**

1. Fixed rules per exercise type + variable slots (language, CEFR, grammar focus, theme).  
2. Model emits a **batch** (e.g. ~10 candidates).  
3. Learning designer picks/edits for naturalness and pedagogy.  
4. Quality gates / Birdbrain-side difficulty metrics can reject weak items.  
5. Scale play: shared base course + localization (“shared content”) multiplied catalog quickly — still human-reviewed.

**Serving (Birdbrain):**

- Estimates learner proficiency and item difficulty; chooses next exercise for flow (~80% P(correct) target in common descriptions).  
- Spaced review fused into personalization (half-life / unified models in later iterations — treat as “memory + selection one system”).  
- Multi-signal extensions in literature: response time, disengage risk — not correctness alone.

Sources: [How Duolingo uses AI to create lessons](https://blog.duolingo.com/large-language-model-duolingo-lessons/), [Duolingo Method whitepaper](https://duolingo-papers.s3.amazonaws.com/reports/Duolingo_whitepaper_duolingo_method_2023.pdf)

---

## 4. Session UX patterns worth copying

### 4.1 Bounded session contract

| Element | Good default (synthesis) |
|---------|---------------------------|
| Start | Explicit “Study / Practice” with count or time estimate |
| Body | One item at a time; format variety if >5 items |
| Help | Progressive hints before answer dump |
| End | Skill/card summary: up / down / same; next action |
| Escape | Pause / practice-lite path without wiping progress rules |

### 4.2 Feedback ladder

```text
 Attempt → (optional step hint) → Submit/Reveal → Correctness or self-grade
        → Short rationale / interactive fix → Queue update → Next
```

- Auto-grade when answers are structured (Khan, Duolingo, Quizlet).  
- Self-grade when the task is free recall (Anki).  
- Interactive fix when the domain is conceptual STEM (Brilliant).

### 4.3 Content → practice checklist (product)

1. **Ingest** learner or library source (notes, PDF, transcript, skill tag).  
2. **Generate candidates** with explicit item schema (type, answer, explanation, skill id).  
3. **Human or learner review** — edit/delete before first graded use.  
4. **Store** as first-class study objects (cards / items), not chat bubbles.  
5. **Session select** by familiarity, due date, or mastery gap — not random dump.  
6. **Close loop** — results update mastery / intervals / Learn weights.

---

## 5. Anti-patterns (across the five)

1. **Chat substitutes for practice** — Brilliant’s tested failure mode; explanations ≠ intuition.  
2. **Ungrounded generation** — items not tied to source → hallucination and standard drift (Khan’s fix: bind to page content + standards).  
3. **No edit step** after AI flashcards (Quizlet users need ownership; Anki power users rewrite constantly).  
4. **Spoiling siblings** — showing cloze₁ and cloze₂ the same day without bury.  
5. **Mastery from energy** — points for watching ≠ proficiency.  
6. **Endless session with no due/end** — burnout; Duolingo/Anki both give a natural stop (lesson end / daily queue).  
7. **Practice feels like punishment** — Duolingo path fix: review is forward progress on the map.  
8. **Casino chrome without pedagogy** — streaks help habits; hearts/leagues are optional seasoning, not the study model.

---

## 6. Scholaris Free Studying mapping (research only)

| Free Studying asset | Closest platform analog | Session opportunity |
|---------------------|-------------------------|---------------------|
| Tutor chat + sectioned replies | Khanmigo / Q-Chat | Keep Socratic help **beside** practice, not instead of it |
| Notes + R2 images | Quizlet Magic Notes source | Notes → editable cards/quiz → Learn-like round |
| PDF excerpt / score-report text | Quizlet upload / Khan transcript grounding | Passage-bound items + cite span |
| Whiteboard OCR → Ask Scho | Khan scratchpad + tutor | Ink → optional **item draft**, not only chat |
| STEM labs predict→run→compare | Brilliant interactive lesson | Lab completion unlocks **3–5 transfer items** |
| Existing question bank / exams | Khan exercises + Duolingo item bank | Mastery Challenge–style mixed 6-pack from weak skills |

**Recommended session archetype for Scholaris (conceptual):**

```text
 Prepare: pick source (note | PDF span | skill | lab)
 Author:  generate N items → learner edits → Save set
 Practice: bounded round (e.g. 5–10) with hints + end summary
 Retain:  optional Anki-like ease or spaced “due” for saved cards
 Tutor:   “Explain this miss” opens Scho with item + source grounding
```

---

## 7. Sources (primary)

- Khan Academy Help: Mastery Challenges, Mastery levels, Energy/Start over; blogs on practice hints, Khanmigo generators, lesson-plan prompting.  
- Brilliant: [Hand-crafted, machine-made](https://blog.brilliant.org/hand-crafted-machine-made/); product pages; ustwo Game Feel case study.  
- Quizlet Help: Studying on Quizlet; AI study tools marketing; 2023 Magic Notes PR.  
- Anki Manual: Studying; Deck options / FSRS.  
- Duolingo: Method whitepaper (2023); home path redesign; LLM lesson-creation blog; engineering writeups on Birdbrain (treat latency/architecture figures as illustrative).

---

## 8. One-line takeaways

| Platform | One line |
|----------|----------|
| **Khan** | Fixed-length mastery sessions + step hints; AI practice gen is **content-grounded** and teacher-mediated. |
| **Brilliant** | Session = interactive puzzle; AI generates **engine levels/variants**, humans own the “aha.” |
| **Quizlet** | Upload → editable study objects → many session modes on one set. |
| **AnkiWeb** | Due-queue session; reveal + ease; templates expand notes to cards; scheduler is the product. |
| **Duolingo** | Micro-lesson with format variety; LLMs author offline; Birdbrain personalizes online. |
