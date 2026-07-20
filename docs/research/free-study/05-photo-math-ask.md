# Photo → Math/Text → Explanation UX

**Date:** 2026-07-20  
**Scope:** Camera/image homework solvers — Photomath, Wolfram|Alpha (math OCR), Symbolab, Socratic by Google (legacy), Gauth (ex-Gauthmath), and category peers. Focus: **capture → readable math/text → explanation**.  
**Out of scope:** App code, OCR engine choice, CAS implementation, paywall implementation.

---

## 0. Verdict (what to steal)

The category shares one pipeline. Winners differ on **where they put friction and pedagogy**:

| Stage | Steal | Skip / be careful |
|-------|--------|-------------------|
| **Capture** | Camera-first or one-tap camera; resizable viewfinder; crop-to-one-problem | Auto-fire without confirm on multi-line worksheets |
| **Readable** | Always show recognized text/math; **edit before solve** (pencil / math keyboard) | Silent OCR → answer with no human check |
| **Explain** | Answer + **gated steps**; alternate methods; concept cards (Socratic) | Dump final answer only; walls of undifferentiated text |
| **Escalate** | Optional “ask tutor / live help” after steps (Gauth) | Human tutor as the *default* path for every snap |

**Scholaris mapping (conceptual):** photo/whiteboard snapshot → OCR → **editable transcript** → Ask Scho / tutor explanation — same spine as Photomath’s edit-before-trust, Wolfram’s mark-then-edit, Socratic’s crop-then-resources.

---

## 1. Shared pipeline (canonical)

Every serious product implements a variant of:

```text
[1 Capture]  camera live / gallery / screenshot
      ↓
[2 Isolate]  viewfinder resize · crop handles · circle/stroke mark
      ↓
[3 Recognize] OCR / math vision → structured expression or plain text
      ↓
[4 Confirm]  editable math/text + keyboard (critical trust step)
      ↓
[5 Solve]    CAS / solver / LLM / expert routing
      ↓
[6 Explain]  answer card → show steps / hints / concepts / graphs
      ↓
[7 Follow-up] alternate methods · tutor chat · live expert · related topics
```

**Design law:** Stages 2–4 are UX, not “AI magic.” Bad isolate or uneditable OCR destroys trust faster than a weak solver.

**Latency contract (from Photomath help + Socratic user testing):** users abandon if nothing useful appears in ~2–3s. Show progress; prefer a fast first card (answer or top resource) then stream/load deeper steps.

---

## 2. Product archetypes

| Archetype | Examples | Primary job | Camera role |
|-----------|----------|-------------|-------------|
| **A. Camera-native solver** | Photomath, Gauth | Point → worked solution | Default home screen |
| **B. Query engine + photo input** | Wolfram\|Alpha | Typed NL/math query; photo is Pro input path | Icon beside query bar |
| **C. Calculator suite + snap** | Symbolab | Topic calculators + keyboard; camera shortcuts typing | Icon near input |
| **D. Concept / resource router** | Socratic (legacy) | Identify concepts → explainers, video, web | Camera-first; crop then Go |
| **E. Solver + escalate** | Gauth | AI steps first; live AI tutor / human expert when stuck | Camera-first + tutor handoff |

Scholaris Free Studying is closest to **A + D hybrid**: capture (photo or board ink) → readable text → **tutor explanation** (not a pure CAS answer dump).

---

## 3. Photomath — camera-native gold standard

**Sources:** [Photomath 101](https://photomath.com/articles/photomath-101-get-math-with-photomath/), [Google Help: scan & edit](https://support.google.com/photomath/answer/14333327), [Overview](https://support.google.com/photomath/answer/14328660)

### 3.1 Capture chrome

- App opens into **camera with a white-edged rectangular viewfinder**.
- User **tap-hold corner → drag** to resize until the frame covers the whole problem.
- Guidance: steady hold, neat handwriting, clean lens, good light; if no result in 2–3s → unsupported problem or recognition failure.
- Fallback: **math keyboard** for fully manual entry (never camera-only).

### 3.2 Readable + edit

- After scan, problem appears with a **pencil / edit** control next to the solution.
- Edit opens a **calculator / structured editor** so users fix OCR mistakes before trusting steps.
- This is the category’s best **trust pattern**: recognition is provisional until the student confirms.

### 3.3 Explanation UX

- **Solution card(s)** slide up from the bottom (answer visible; process is the product story).
- Often **multiple cards** = alternate methods or explanation styles.
- Primary CTA: **“Show Solving Steps”** — progressive disclosure, not a wall of algebra on first paint.
- Plus tier: animated tutorials, deeper hints / third-level steps, textbook-aligned explanations.

### 3.4 Architecture note (UX-relevant)

Photomath moved recognition/solving toward **cloud neural nets + expert systems**. UX implication: always plan for **networked** snap→steps, offline arithmetic only as a bonus (Wolfram does local arithmetic; Photomath does not claim full offline solve).

### 3.5 Steal list

1. Resizable viewfinder before capture.  
2. Bottom solution sheet with answer first, steps on demand.  
3. Mandatory-feeling **edit recognized problem**.  
4. Multiple method cards when CAS allows.  
5. Explicit “why this step” copy, not just symbol rewriting.

---

## 4. Wolfram|Alpha — mark, edit, then query

**Sources:** [Wolfram Blog: iOS Math OCR (2022)](https://blog.wolfram.com/2022/09/07/wolframalpha-ios-and-math-ocr/), [Enhanced step-by-step on mobile (2019)](https://blog.wolfram.com/2019/07/17/enhanced-step-by-step-solutions-now-on-mobile-announcing-wolframalpha-2-0-for-ios/), [Mobile products](https://products.wolframalpha.com/mobile)

### 4.1 Photo as input (not the whole product)

- Core mental model remains **query bar** (NL + math).
- Camera / gallery is a **Pro** path that *produces a query*, then runs the normal Wolfram results UI.
- Older “Image as Input” (send whole photo for image analysis) still exists; math OCR is a dedicated **equation → Wolfram input** path.

### 4.2 Isolate pattern (distinctive)

1. Frame equation in viewfinder.  
2. **Mark** the equation: finger/Pencil **circle** or **line from end to end**.  
3. Adjust framing.  
4. **Edit recognized equation** before submit.  
5. Full Wolfram pods + **step-by-step** (Next step / Show all steps / optional **hints**).

Marking is stronger than a fixed rectangle when the page has many formulas; it teaches “which object am I asking about?”

### 4.3 Step pedagogy (pre-dates generative tutors)

- Steps live behind a **Step-by-step** affordance (not auto-expanded).
- **Next step** vs **Show all steps** — paced vs skim.
- Pro: **hints** so the student can try before reveal.

### 4.4 Steal list

1. Circle/stroke selection when multi-equation pages are common.  
2. Photo → editable Wolfram-style input string (transparent intermediate).  
3. Paced steps + hints (aligns with Socratic tutoring ethics).  
4. Keep typed query as peer of camera (accessibility + OCR failure recovery).

---

## 5. Symbolab — keyboard-primary, camera as accelerator

**Sources:** Play Store / App Store listings; product reviews describing camera + math keyboard.

### 5.1 IA

- Home is **type or snap**, but product identity is **hundreds of topic calculators** (integral, derivative, matrix, ODE, …).
- Camera icon sits **near the input** — shortcut to avoid typing TeX-like structures.
- Recognition feeds the same solver pipeline as typed input; free tier = basic steps; subscription = deeper steps/explanations.

### 5.2 After solve

- Step list + often a **graph** of the function/integral (visual reinforcement).
- Auto-detect problem type (derivative vs equation vs …) and route to the right calculator UX.

### 5.3 Steal list

1. Treat camera as **input method**, not a separate mode tab.  
2. Pair steps with a **graph / visual** when the domain allows.  
3. Domain-specific keyboards after OCR (fix π, ∫, matrices without fighting QWERTY).

---

## 6. Socratic by Google — legacy “X-ray the concepts” pattern

**Status:** Standalone Socratic app is legacy; patterns live on in **Google Lens / homework** experiences. Still the best reference for **explanation-as-resources**, not only CAS steps.

**Sources:** [Google blog: Socratic](https://blog.google/products-and-platforms/products/education/socratic-by-google/), [Emerging EdTech user testing](https://emergingedtech.com/2016/08/socratic-digital-tutor-ai-app-guided-by-student-testing/), [ZDNet how-to](https://www.zdnet.com/article/how-google-socratic-can-help-you-with-your-homework/)

### 6.1 Capture → crop → Go

- Launch feels like **camera app**: yellow framing box, shutter.
- Post-capture: **crop tool with four corner handles** — isolate **one** question (critical for worksheets).
- Explicit **Go** — user commits after crop (reduces accidental multi-question OCR).
- Alternate inputs: **type** and **voice** (multi-modal ask).

### 6.2 Results = concept cards, not only the answer

Pipeline metaphor from Google: take problem **X**, “X-ray” it → **underlying concepts** → surface:

- First-party explainers / mini-lessons  
- Videos  
- Definitions  
- Curated web results  
- Step-style answer cards where appropriate  

Subject guides (1000+ topics) for browse/review without a photo.

### 6.3 UX lessons from their user testing (portable)

| Observation | Fix they made |
|-------------|----------------|
| Students photographed **screens** (online homework) | Invested in reading screen captures |
| Users didn’t swipe past first result | Made **pagination / more results** obvious |
| Slow results → quit | Faster first paint; prioritize visible card |

### 6.4 Steal list

1. **Crop-to-one-problem + Go** before expensive solve.  
2. Results as **swipable explanation cards** (steps, video, concept, web).  
3. Concept identification even when a closed-form solve isn’t the goal (word problems, science, history).  
4. Voice ask as sibling of camera.

---

## 7. Gauth (ex-Gauthmath) — snap, steps, then escalate

**Sources:** [Gauth about](https://www.gauthmath.com/aboutus), [download / feature pages](https://www.gauthmath.com/download), App Store listing, comparative reviews vs Photomath.

### 7.1 Core loop

```text
Camera crop → AI recognition → step-by-step solution
        ↓ (if stuck / want more)
AI Live Tutor (voice + virtual whiteboard)  and/or  24/7 human expert
```

- Started math-first (Gauthmath); 2024 rebrand **Gauth** = multi-subject homework companion.
- Same category spine as Photomath, with **stronger escalation** and chat tutor.

### 7.2 Explanation & pedagogy tradeoff

Comparative reviews (2025–2026): Photomath leans harder into **teach via named methods / animations**; Gauth leans **fast answer + steps + ask more in chat**, which can encourage “grab and go” unless the product gates the final answer.

### 7.3 Extra surfaces (beyond photo→steps)

- Smart Study Converter: notes / photos / audio / links → quizzes & flashcards.  
- Writing / reading / focus toolbox (broader study OS).

Useful as inspiration for Free Studying hub modes; **not** required for a P0 photo-ask.

### 7.4 Steal list

1. Clear **escalation ladder**: auto-steps → conversational tutor → human (optional).  
2. Multi-subject camera (math + science text) if OCR is general.  
3. Keep human/live tutor **optional and late** so the product doesn’t feel like a paid marketplace first.

---

## 8. Cross-cutting UX patterns

### 8.1 Isolate UI patterns (choose by context)

| Pattern | Best when | Used by |
|---------|-----------|---------|
| Resizable live viewfinder | Single equation, continuous aim | Photomath |
| Post-shot crop handles + Go | Worksheets, multi-question pages | Socratic |
| Circle / stroke mark | Dense textbook pages | Wolfram math OCR |
| Full-page then AI multi-detect | Homework dumps (riskier) | Some AI solvers |

**Recommendation for tutoring products:** prefer **crop/mark + confirm** over silent full-page multi-solve (cheating optics + wrong-problem risk).

### 8.2 Readable intermediate (non-negotiable)

Always expose:

1. Thumbnail of the crop.  
2. Recognized **math (rendered) + plain editable text/TeX-like**.  
3. Edit / retry scan / type instead.  
4. Only then **Ask / Solve / Explain**.

Silent OCR → answer is the #1 trust and academic-integrity failure mode.

### 8.3 Explanation presentation patterns

| Pattern | Behavior | Pedagogy |
|---------|----------|----------|
| **Answer + Show steps** | Photomath, Wolfram, Symbolab | Skimmable; steps opt-in |
| **Next step / hints** | Wolfram | Productive struggle |
| **Method cards** | Photomath | Multiple valid paths |
| **Concept + media cards** | Socratic | Transfer beyond this item |
| **Steps + chat deepen** | Gauth | Clarifying questions |
| **Graph alongside steps** | Symbolab, Wolfram pods | Dual coding |

### 8.4 Failure & empty states

- No detection in N seconds → tip sheet (light, focus, crop tighter, type it).  
- Low confidence → show best guess + “Is this right?” edit.  
- Unsupported topic → still offer concept search / tutor ask with the raw text.  
- Network error → keep the crop + text locally so the user doesn’t re-shoot.

### 8.5 Integrity & learning ethics (product UX)

- Prefer **process-first** CTAs (“Show steps”, “Explain”, “Hint”) over “Get answer”.  
- Optional: hide final boxed answer until first step expand (stronger for school products).  
- Avoid one-tap “solve entire worksheet.”  
- Log that the student **edited** OCR (signals engagement).

---

## 9. Comparison matrix (UX only)

| Dimension | Photomath | Wolfram\|Alpha | Symbolab | Socratic (legacy) | Gauth |
|-----------|-----------|---------------|----------|-------------------|-------|
| Camera home | Yes | No (icon) | Near input | Yes | Yes |
| Isolate | Resize finder | Circle/line mark | Crop/snap | Crop + Go | Crop |
| Edit OCR | Strong (pencil) | Strong (pre-query) | Keyboard fix | Implicit via re-ask | Edit/retry |
| Output center | Method + steps | Pods + paced steps | Calculator steps + graph | Concept/resource cards | Steps + tutor escalate |
| Typed fallback | Math keyboard | Core product | Core product | Type + voice | Type + chat |
| Escalate | Plus content | Pro features | Pro steps | Deeper web/video | AI live + humans |

---

## 10. Scholaris Free Studying implications

Framed for existing Free Studying / whiteboard OCR→Ask Scho direction — **research only**:

### 10.1 Recommended flow

```text
Capture (camera | gallery | board PNG)
  → Crop / focus region (Socratic/Wolfram)
  → Recognize
  → Editable transcript (Photomath pencil)   ← user must be able to fix
  → Primary CTA: “Ask Scho” / “Explain”
  → Sectioned reply: answer · steps · concepts · follow-ups
  → Optional: voice ask, graph/sim spark, escalate depth
```

### 10.2 What not to clone

- Pure CAS answer dump without tutor dialogue (if product promise is tutoring).  
- Marketplace-first live tutors for every snap.  
- Photomath Plus animation complexity as P0.  
- Full Symbolab calculator IA (500 tools) inside Free Studying.

### 10.3 Portable checklist

- [ ] One-problem isolate before OCR.  
- [ ] Show & edit recognized math/text.  
- [ ] Typed / keyboard fallback.  
- [ ] Answer not the only first paint — steps or explain CTA.  
- [ ] Paced reveal or hints option.  
- [ ] Failure tips in &lt;3s.  
- [ ] Multi-result / multi-method discoverability if more than one card.  
- [ ] Voice as sibling input (Socratic).  
- [ ] Board snapshot uses same pipeline as camera photo.

---

## 11. Sources (primary)

- Photomath: help center (scan/edit, overview); Photomath 101 article/Medium.  
- Wolfram: “Wolfram\|Alpha, iOS and Math OCR” (2022); “Enhanced Step-by-Step… iOS 2.0” (2019); wolframalpha.com/mobile.  
- Symbolab: store listings + documented camera + keyboard workflows.  
- Socratic: Google Education blog (2019); Emerging EdTech user-testing writeup (2016); ZDNet walkthrough.  
- Gauth: gauthmath.com about/download; App Store feature list; Photomath vs Gauth comparative reviews (2025–2026).

---

## 12. One-line summary

**Best photo-math UX is not “AI sees homework” — it is isolate → show readable math → let the student correct it → then explain with gated steps (and optional tutor deepen).**
