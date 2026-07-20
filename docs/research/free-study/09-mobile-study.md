# Mobile-First Study Apps — Patterns for Free Studying

**Date:** 2026-07-20  
**Scope:** Mobile UX patterns from Khan Academy, Forest (and focus-timer peers), Goodnotes (iOS vs Web claims), Notability, and Concepts—framed around **thumb zones** and a **single primary CTA**.  
**Method:** Product sites, support manuals, design case studies, and comparative reviews. No Scholaris app code in this note.  
**Audience:** Free Studying / Whiteboard Studio mobile layout—phones in one hand, not iPad-desk posture.

---

## 0. Verdict in one page

Mature study apps win on phone when they do three things at once:

1. Put the **one job of the screen** in the **easy thumb zone** (bottom-center / bottom-right for right-handers).
2. Make that job a **single primary CTA**—filled, large, labeled with the verb users already intend (“Continue,” “Plant,” “Ask Scho”).
3. Push everything else (settings, history, “give up,” account) into **stretch / hard zones** or low visual weight so it cannot compete.

| App | Primary job on phone | Primary CTA (typical) | Thumb placement |
|-----|----------------------|----------------------|-----------------|
| **Khan Academy** | Resume learning / do next exercise | Continue / Resume / Check | Bottom tab + bottom action on lesson |
| **Forest** | Start / protect a focus session | **Plant** | Bottom-third, full-width commitment button |
| **Goodnotes (iPad)** | Write at lecture speed | Pen is the “CTA” (stylus) | Tools docked out of ink; Palm rests |
| **Goodnotes (Web/Android)** | Access / light edit synced notes | Open notebook / Write | Browser chrome steals zone; ink lag |
| **Notability** | Capture lecture (ink ± audio) | New note / Record | Top tool strip + content-first page |
| **Concepts** | Sketch without chrome fighting you | Tool Wheel (movable) | User places tools in *their* thumb zone |

**Scholaris implication:** Free Studying on ≤768px should feel like **Forest clarity + Khan “next action” + Concepts movable tools**—not a desktop dashboard squeezed down. One screen → one primary verb.

---

## 1. Thumb zones (shared grammar)

### 1.1 The three zones (one-handed phone)

Classic mobile ergonomics (Hoober / modern thumb-zone guides) map a portrait phone into:

| Zone | Reach (right thumb) | What belongs here |
|------|---------------------|-------------------|
| **Easy** | Bottom-center → bottom-right arc | Primary CTA, tab bar, send/check, Plant, Ask |
| **Stretch** | Mid-sides, bottom-left, upper-middle | Secondary tools, mode chips, undo |
| **Hard** | Top corners, top center | Brand, titles, status, rare settings, “destructive but rare” |

**Rules that study apps obey:**

- **T — Thumb Accessibility:** Primary actions live in Easy. If a critical action is in Hard, the flow is wrong—not the user.
- **I — Interaction model:** Taps in Easy; edge gestures for back/switcher; never put precision (drag targets, tiny color chips) in Hard.
- **Left-hand / ambidextrous:** Concepts (move Tool Wheel) and dockable Goodnotes/Notability strips are the gold standard; fixed top-left-only primaries fail lefties.

### 1.2 Safe areas and chrome tax

Phone study UIs also fight **system chrome**:

- Home indicator / gesture bar → pad bottom CTAs (~16–34px + hit target).
- Notch / Dynamic Island → do not put primary actions under status.
- Browser URL bar (PWA / Web Goodnotes) → eats the top **and** sometimes bottom when scrolling—native apps win here.

**Implication for Scholaris web:** On mobile Safari/Chrome, treat the **bottom 72–96px** as sacred (tab bar + one CTA). Do not stack a second fat action bar above the system keyboard without collapsing secondary chrome.

### 1.3 Touch targets

Study apps that feel “solid” use ≈**44×44 pt** minimum (Apple HIG) for primary controls; Forest’s Plant and Khan’s Check exceed that. Tiny icon-only tools in Hard zone are the common failure mode on note apps’ phone ports.

---

## 2. Single primary CTA

### 2.1 What “single primary” means

At any moment, the eye should find **one** filled, high-contrast control that advances the study loop:

| Context | One CTA | Everything else |
|---------|---------|-----------------|
| Home / hub | Resume last session or Start study | Library, profile, settings (icons) |
| Focus session | Stay / complete (implicit) | Give Up (ghost / low contrast) |
| Exercise | Check answer / Continue | Hint, skip (text links) |
| Notes capture | (Stylus) Write — or New note | Tools, share, search |
| Tutoring | Ask / Send | Mode tabs, history |

**Anti-pattern:** Two equal filled buttons (“Practice” + “Watch” + “Ask AI”) in the Easy zone. Users hesitate; completion rates drop.

### 2.2 Visual hierarchy tricks used in the wild

- **Filled vs outlined** — Forest: Plant filled; Give Up outlined and small.
- **Size** — Primary ≥ secondary by ~1.5–2× height/width.
- **Position** — Primary alone on the bottom row; secondary in top Hard zone.
- **Default duration / default path** — Forest defaults 30 min; Khan surfaces “Continue where you left off” over Explore.
- **Verb, not noun** — “Plant,” “Continue,” “Check,” “Ask Scho”—not “Session” or “Tutor.”

---

## 3. Khan Academy — learning-path mobile patterns

### 3.1 Product intent on phone

Khan’s mobile redesign work (learner dashboard / AI-native era case studies, plus long-running app IA) treats the phone as a **momentum device**: short spurts, clear next step, progress visible without a syllabus dump.

Observed / documented patterns:

- **Next-action over catalog** — Dashboard prioritizes personalized direction and “what to do now,” not the full library.
- **Thumb-friendly layouts** — Essential actions and progress in the Easy zone; reduced visual complexity vs desktop.
- **Resume affordance** — Redesign critiques and IA concepts put **Resume / Continue** in the tab bar or as a persistent sheet (Kindle / Spotify “now playing” metaphor)—one tap back into the lesson.
- **Lesson chrome** — Video + transcript + practice; transcript scrubbing designed for thumb; progression bar beats vague thumbnail grids.
- **Gamification as secondary** — Energy points / badges support streaks; they decorate progress, they are not the primary CTA.
- **Cross-device continuity** — Same learning path on phone/tablet/desktop so a bus ride session continues at the desk.

### 3.2 CTA pattern

| Screen | Primary | Secondary |
|--------|---------|-----------|
| Home | Continue / recommended skill | Search, courses |
| Exercise | Check | Hint, Why? |
| End of skill | Next / Mastery practice | Share, review |

**Steal for Scholaris:** Free Studying hub on mobile should answer **“What do I do in the next 30 seconds?”**—e.g. one **Continue with Scho** or **Open last whiteboard**—not six equal mode tiles fighting for the thumb.

### 3.3 What not to steal

- Full course tree as the first mobile paint.
- Equal-weight bottom tabs that bury Resume behind Explore (older IA smell).
- Dense multi-column dashboards that only work on tablet.

---

## 4. Forest / Focus — commitment-device mobile patterns

### 4.1 Forest core loop

Forest (SeekrTech) is a Pomodoro-style focus timer with a moral/visual commitment device:

1. **Plant** — Pick species + duration (default ~30 min).
2. **Focus** — Full-screen tree grows; leaving the app (Deep Focus) kills the tree.
3. **Earn** — Coins / forest record; optional real-tree charity bridge.

### 4.2 Why it is a masterclass in thumb + single CTA

| Pattern | Detail |
|---------|--------|
| **One verb** | Home ≈ tree preview + timer + **Plant**. That is the product. |
| **Easy-zone CTA** | Plant sits in the bottom third—natural thumb rest. |
| **Asymmetric friction** | Give Up is small, outlined, low-contrast—psychologically and ergonomically harder. |
| **Fullscreen focus** | During session, chrome collapses to tree + timer; no competing CTAs. |
| **Fast time-to-value** | Onboarding → first tree in ~60s; no account wall for first plant. |
| **Permissive discipline** | Allowlist for calls/camera reduces rage-quits vs hard blockers. |
| **Honest failure** | Dead trees remain in the forest—record, not shame UI. |

### 4.3 Focus-peer variants (same grammar)

Other focus apps (Focus Plant, Flora, native Focus modes) reuse:

- Big start button in Easy zone.
- Timer as the hero visual (not a settings form).
- Distraction cost framed as loss of progress, not a toast.

**Steal for Scholaris:** Study sessions (tutor, voice, whiteboard sprint) can use a **Forest-like start**: one **Start 25-min study** in Easy zone; pause/end as secondary. Do not put “Give up / abandon conversation” as a filled peer button next to Send.

### 4.4 What not to steal

- Guilt mechanics that conflict with accessibility or wellness positioning.
- Paywalled tree species as the only motivation layer for academic product.
- Blocking the entire OS when the user needs calculator / Desmos (exam context).

---

## 5. Goodnotes — iOS excellence vs Web claims

### 5.1 Official Web positioning (claims)

From [Goodnotes for Web](https://www.goodnotes.com/web) and Android/Windows/Web FAQs:

**Marketing claims**

- Handwriting on blank canvas; edit ink after writing.
- 50+ templates; notebooks, whiteboards, text docs, PDF annotation.
- Collaboration via share links; handwriting search / handwriting-to-text.
- Feature list includes AI, audio, meeting notes, live transcription, iCloud sync (as listed on the Web marketing page).

**Honest product caveats (same pages / support)**

- **Android, Windows, and Web ≠ Goodnotes 6 on iPad** — “does not offer the full range of features”; parity is “committed” / roadmap, not equal today.
- **iPad → Web sync** — Automatic full library sync to Web was historically delayed (“Not yet, but it’s coming soon” on Web FAQ); workarounds via Share Link / Goodnotes Cloud depending on plan.
- **Cloud / plan matrix** — Goodnotes Cloud needed for cross-ecosystem library; Special Edition / some Essential plans lack full Cloud; Study Sets / Timer called out as missing on Android/Windows/Web in Cloud docs.
- **Offline** — Recent docs editable offline; export/favorites/custom elements limited offline; preload incomplete → grey pages.
- **Free tier** — Cap (~3 notebooks), import size limits, watermarked exports.

### 5.2 What reviewers and latency tests add

Independent latency / Android reviews consistently report:

- **iPad + Apple Pencil** remains the reference “paper” feel (pressure, palm rejection, Smart Ink).
- **Web / Windows / Android** builds feel closer to a **web runtime**—higher perceived lag, missing iPad-only AI/ink niceties, “view and light edit” more than “primary capture device.”
- Users often **capture on iPad, review on phone/web**—a split that marketing “any device” language underplays.

### 5.3 Mobile UX implication

| Surface | Realistic job | Primary CTA |
|---------|---------------|-------------|
| iPad Goodnotes 6 | Lecture capture | Pen (implicit) + thin tool dock |
| iPhone Goodnotes | Review, quick markup, flashcards/study sets (where shipped) | Open last notebook |
| Web Goodnotes | Access, collaborate, light edit | Open / Share |

**Steal for Scholaris:** Be explicit about **capture vs review** quality on web mobile. Market OCR → Ask as “good enough scratch → tutor,” not “Goodnotes-class ink.” Put **Ask Scho** (or **Read handwriting**) as the single Easy-zone verb after ink exists; do not promise Pencil-native latency in the browser.

### 5.4 What not to steal

- Claiming cross-platform parity before ink and sync match.
- Marketplace / sticker economies as core study loops.
- Nested notebook IA as the first mobile hub screen.

---

## 6. Notability — lecture-capture mobile patterns

### 6.1 Differentiator

Notability (Ginger Labs) owns **ink + synced audio**: write while recording; scrub audio to the moment of a stroke. Subjects / Dividers organize notes flatter than Goodnotes’ nested notebooks.

### 6.2 Mobile / iPad interaction patterns

From Notability support (Pencil, gestures, editor settings):

| Pattern | Behavior |
|---------|----------|
| **Responsive ink** | Minimize tip-to-ink lag with Pencil |
| **Palm detection** | Rest hand; Pencil vs palm routing |
| **Finger scroll + Pencil write** | No mode fight during lecture |
| **Auto-deselect eraser** | Erase burst → return to pen (CTA stays “write”) |
| **Pencil double-tap / Pro haptics** | Tool switch without leaving Easy zone |
| **Tape** | Cover → tap to reveal (self-quiz stationery) |
| **Undo gestures** | 2-finger tap undo / 3-finger redo (configurable) |
| **New note** | Clear labeled control → immediate editor (short gulf of evaluation) |

### 6.3 Phone vs iPad

Notability is **Apple-ecosystem native** (iPad/iPhone/Mac). Phone use skews to **review, recording playback, light markup**; heavy handwriting remains iPad-primary—same split as Goodnotes, but without a broad Web/Android capture story (Cloud web viewing is secondary).

### 6.4 CTA / thumb takeaways

- The “primary CTA” during capture is **keep writing**—tool chrome must not steal the Easy zone from the page.
- **Record** is a strong secondary that still sits near the writing hand (toolbar), not behind three menus.
- **Tape** is a study-specific micro-CTA: reveal is the only action on that region.

**Steal for Scholaris:** Auto-return to pen after erase; finger-pan / stylus-ink split on coarse pointers; optional “cover for self-test” on notes. Keep audio-sync as P2 unless Free Studying Voice already owns that job.

### 6.5 What not to steal

- Subjects/Dividers taxonomy as mandatory first-run.
- Assuming Web parity for audio-ink scrubbing.
- Crowding the top tool strip until the page feels like a ribbon-heavy Office port.

---

## 7. Concepts — thumb-owned tool chrome

### 7.1 Product contract

Concepts is an **infinite vector sketch** app (iOS, Android, Windows, ChromeOS). Every stroke is editable; canvas has no page edge; optional artboards frame export only.

### 7.2 Mobile-first chrome innovations

From Concepts Workspace manuals:

| Pattern | Why it matters for thumbs |
|---------|---------------------------|
| **Tool Wheel** | Up to 8 tools + size/opacity + color + undo/redo—compact radial control |
| **Movable UI** | Tap-hold-drag Wheel, Layers, Precision, Objects to **user’s** Easy zone (left- or right-hand) |
| **Wheel ↔ Bar** | Drag to edge (iOS) or layout manager (Android/Windows) for docked strip |
| **Scale the Wheel** | Pinch to size for thumb comfort |
| **Density ladder** | Normal → Compact (icons) → **Hidden** (max canvas); swipe menus outward |
| **Finger = pan, stylus = ink** | Separates navigation from drawing without a mode CTA |
| **Status HUD** | Thin zoom/angle strip—not a dashboard |
| **Lost-canvas recovery** | Recenter / edge pointers so infinity does not panic |

### 7.3 Single primary “CTA” in Concepts

Concepts rarely shows a marketing-style button. The primary action is **draw**; the Wheel is the **instrument**, placed where the thumb already is. That is the infinite-canvas answer to Forest’s Plant: **make the tool the CTA, then get it out of the way (Hidden mode).**

**Steal for Scholaris whiteboard mobile:**

- Bottom-center or corner **compact tool cluster** (pen / eraser / undo)—movable or mirrored for left hand if feasible.
- **Hide chrome** while inking; one peep affordance to restore.
- Finger pan + pen ink; do not require a “Pan tool” tap in Hard zone.
- One Easy-zone study verb when leaving pure ink: **Ask Scho** (OCR path).

### 7.4 What not to steal

- Full COPIC libraries, infinite layers, AEC export formats.
- Assuming users will configure gestures before first value—ship sensible defaults (finger pan, 2-finger undo).

---

## 8. Cross-app pattern matrix

| Concern | Khan | Forest | Goodnotes | Notability | Concepts |
|---------|------|--------|-----------|------------|----------|
| Easy-zone primary | Continue / Check | Plant | Pen + dock | Pen + Record | Tool Wheel |
| Hard-zone content | Titles, XP | Stats, coins | Notebook meta | Subjects list | Gallery / status |
| Session focus | Lesson sheet | Fullscreen tree | Page/notebook | Note editor | Hidden chrome |
| Failure / exit | Leave skill | Give Up (costly) | Close notebook | Close note | Leave drawing |
| Phone role | Practice spurts | Focus anywhere | Review > capture | Review + audio | Sketch (tablet skew) |
| Web story | Strong | Extension / sync | Explicitly partial | Weak / Cloud | Cross-platform sketch |

---

## 9. Scholaris Free Studying — portable checklist

### 9.1 Layout (≤768px)

1. **One primary CTA** in the Easy zone per mode screen (Continue / Ask Scho / Start focus / New note).
2. Mode switching as **secondary** (segmented control or sheet)—not six equal tiles in the first viewport.
3. Bottom safe-area padding; primary control ≥44px tall; full-width or thumb-right placement.
4. Destructive / abandon actions: ghost style, Hard or Stretch zone, never peer to primary.
5. Keyboard open: collapse secondary chrome; keep Send/Ask pinned above keyboard.

### 9.2 Per-mode CTA suggestions (product, not implementation)

| Mode | Primary CTA | Park elsewhere |
|------|-------------|----------------|
| Tutor | Send / Ask | History, model settings |
| Whiteboard | Ask Scho (after ink) or Pen active | PDF peek, full settings |
| PDF | Highlight → Ask | Full annotate suite |
| Voice | Hold to talk / Done | Transcript export |
| Notes | New / Save | Folder taxonomy |
| Focus (if added) | Plant-style Start | Tag pickers |

### 9.3 Honesty about ink on web mobile

Mirror Goodnotes’ own caveat language: **browser ink ≠ iPad Goodnotes**. Position mobile whiteboard as **thinking → OCR → tutor**, with Concepts-like chrome discipline, not Paperlike marketing.

### 9.4 Anti-patterns to reject

- Dashboard-first mobile hub (stats, schedules, multiple promos).
- Dual filled CTAs (“Ask AI” + “Start quiz”) in the same Easy row.
- Primary actions in the top-left under the notch.
- Toolbars that consume the bottom third *and* a separate tab bar *and* a composer (triple tax).
- Onboarding walls before first successful study action (Forest’s 60-second plant is the bar).

---

## 10. Sources (selected)

- Khan Academy mobile / learner UX case studies (e.g. Qasim Brown AI learner dashboard; Kejia Shao KA mobile product; Scott Liang KA redesign IA).
- Khan Academy Blog — Wonder Blocks color system (2025 district UI).
- [Forest](https://forestapp.cc/) product site; Forest product teardowns / Medium design critiques.
- Thumb-zone UX guides (e.g. Timothy Graf, Hoober-derived zone maps).
- [Goodnotes for Web](https://www.goodnotes.com/web); Goodnotes Support — Android/Windows/Web FAQs, Cloud sync, offline editing, performance.
- Comparative reviews (AFFiNE Goodnotes vs Notability, Paperless X, latency blogs).
- Notability Support — Apple Pencil writing; Appearances, Tools & Gestures.
- [Concepts manuals](https://concepts.app/en/manual) — Getting Started; Your Workspace (iOS/Android).

---

## 11. Out of scope

- Implementation, CSS, or React for Scholaris.
- Pricing negotiations, App Store ASO, or full accessibility WCAG audit (see also `docs/research/getstudi-mobile-a11y.md` for chat a11y).
- Deep stylus latency engineering (see whiteboard research `04-goodnotes-notability.md`, `10-concepts-freeform.md`).
