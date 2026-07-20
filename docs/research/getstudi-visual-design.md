# GetStudi (getstudi.com) Visual Design Research

**Date:** 2026-07-17  
**Purpose:** Reference visual design and UX patterns from [Studi](https://www.getstudi.com) for Scholaris AI tutor product styling.  
**Sources browsed:** Homepage (`/`), Pricing (`/pricing`). Live chat (`/chat`) redirects to Clerk sign-in — product UI not publicly accessible.

---

## Executive summary

Studi and Scholaris already share the same core type pairing (**DM Serif Display** + **Plus Jakarta Sans**) and a warm off-white page background. Studi diverges sharply in **brand accent** (terracotta `#e05a3a` vs Scholaris cobalt `#2563eb`) and **surface language** (neo-brutalist 2px borders + hard offset shadows vs Scholaris OnePrep-style flat hairlines and no shadows). Studi is **conversation-first** with no course catalog; Scholaris scopes tutor chats by `exam_type` via the subject store but does not surface a course picker in the tutor UI.

---

## 1. Studi design system (extracted)

### 1.1 Color palette

| Token | Hex | Usage |
|-------|-----|-------|
| `--bg` | `#fdf8f2` | Page background (warm cream/paper) |
| `--bg-alt` | `#f5ede0` | Alternate section wash |
| `--bg-elevated` | `#fff8f0` | Elevated panels |
| `--bg-card` | `#fff` | Card fill |
| `--fg` | `#1c1208` | Primary text (warm near-black) |
| `--fg-muted` | `#6b5a47` | Secondary text |
| `--fg-faint` | `#b0a090` | Tertiary / labels |
| `--border` | `#e8ddd0` | Default borders |
| `--border-faint` | `#f0e9e0` | Subtle dividers |
| `--accent` | `#e05a3a` | Primary CTA / brand (terracotta) |
| `--accent-hover` | `#f06a48` | Hover state |
| `--accent-dim` | `#e05a3a1a` | Tint backgrounds, selection |
| `--accent2` | `#3a9e8a` | Teal (Sparks / secondary) |
| `--accent3` | `#e8a030` | Amber |
| `--accent4` | `#9b6dd4` | Lavender |
| `--accent5` | `#d94f7a` | Pink |
| `--card-teal` | `#e5f4f1` | Spark card wash |
| `--card-amber` | `#f7f0e0` | Spark card wash |
| `--card-lavender` | `#f0ebf8` | Spark card wash |
| `--card-pink` | `#f8e5ee` | Spark card wash |

**Computed samples (homepage):**
- Body: `rgb(253, 248, 242)` / `rgb(28, 18, 8)`
- Primary button: `rgb(224, 90, 58)` fill, `2px solid rgb(28, 18, 8)` border, `24px` radius
- Email input: white fill, `2px solid rgb(28, 18, 8)`, `24px` radius, `12px 16px` padding

**Dark mode:** Marketing site sets `color-scheme: light` only. No public dark theme observed.

### 1.2 Typography

| Role | Family | Observed specs |
|------|--------|----------------|
| Display / H1 | DM Serif Display | 72px, weight 400, letter-spacing -1.8px, line-height ~1.04 |
| Body / UI | Plus Jakarta Sans | 16px base, line-height ~1.7 (27.2px) |
| Message role labels | Plus Jakarta Sans | 11px, bold, uppercase, tracking-wider |
| User label color | `--fg-faint` | Muted uppercase "You" |
| Tutor label color | `--fg` | Strong uppercase "Studi" |

Body uses a `font-ui` utility class on the landing wrapper. Selection highlight: `selection:bg-accent/20`.

### 1.3 Spacing & layout

| Token | Value | Usage |
|-------|-------|-------|
| `--sidebar-w` | `256px` | Chat sidebar width |
| `--column-max` | `740px` | Main reading/chat column |
| `--radius-sm` | `10px` | Small corners |
| `--radius-md` | `14px` | Medium corners |
| `--radius-lg` | `18px` | Large corners |
| `--radius-xl` | `24px` | Pills, inputs, buttons |
| Feature card padding | `24px` | "How it works" cards |
| Spark tab padding | `14px` | Interactive type tabs |
| Nav height | ~`80px` | Top bar |

Container max widths follow Tailwind conventions (`--container-md` 28rem, up to 6xl 72rem).

### 1.4 Card & surface style (neo-brutalist)

Studi's signature look on marketing cards:

- **Fill:** `#fff` on cream page
- **Border:** `2px solid #1c1208` (dark ink outline)
- **Radius:** `16px`
- **Shadow:** Hard offset `4px 4px 0 #1c1208` (feature grid) or `5px 5px 0` (benefit cards) — **not** soft blur shadows
- **No glassmorphism** on marketing surfaces

Spark type tabs:
- **Selected:** white bg + `2px solid #1c1208`, `16px` radius
- **Unselected:** semi-transparent warm wash, transparent border

### 1.5 Chat / message patterns (marketing demo)

From homepage accessibility tree and partial DOM inspection:

```
[YOU label — uppercase, faint]
User message text (plain, no filled bubble on demo)

[STUDI label — uppercase, strong]
Studi reply text (plain prose, question-led)

[Optional inline Spark — physics sim with draggable weights]
```

**Patterns:**
- **Role labels** above messages, not avatars
- **Assistant messages** are plain text blocks, not bubble chrome
- **User messages** in the hero demo appear as labeled text blocks rather than saturated fill bubbles
- **Sparks** embed mid-thread as interactive panels (simulations, graphs, quizzes, flashcards)
- Product copy emphasizes **one question at a time**, not long lectures

Live chat UI (post-auth) could not be inspected; `/chat` requires Clerk sign-in at `accounts.getstudi.com`.

### 1.6 Sidebar layout (inferred from tokens + product)

- Fixed-width rail: `--sidebar-w: 256px`
- Conversation list (not course list) — product explicitly has **no courses to enroll in**
- "Open chat" CTA in nav
- Pricing page: "Back to chat" link confirms chat-centric IA

### 1.7 Course selection UI

**None.** Studi positioning: "No courses to enroll in, no playlists to binge." Users arrive with a question; subject is inferred from conversation. Any "plan" selection is billing-tier (Guided preview / Starter / Pro), not curriculum.

### 1.8 Composer / input

Marketing waitlist form (proxy for input styling):
- Pill shape (`border-radius: 24px`)
- `2px` dark outline border
- White fill on cream page
- Adjacent solid accent button with matching outline treatment

### 1.9 Animations (CSS keyframes observed)

| Animation | Likely use |
|-----------|------------|
| `fade-in`, `rise`, `scale-in` | Section/hero entrance |
| `bounce-dot`, `blink`, `warm-spin` | Typing / loading |
| `shimmer`, `pulse-glow`, `activity-pulse` | Spark generation states |
| `spark-panel-enter`, `slide-in-from-right` | Spark embed reveal |
| `marquee` | Social proof ticker |
| `float-drift`, `orbit` | Decorative hero motion |
| `quiz-results-in`, `quiz-feedback-in`, `flash-hint-pulse` | Spark sub-types |

Motion feels **warm and playful** rather than minimal. Studi invests heavily in Spark panel enter animations.

### 1.10 Mobile patterns (observed / inferred)

- Landing uses `overflow-x-clip` on root
- Nav padding tightens to `16px`
- Feature cards likely stack single-column (standard responsive grid)
- Spark tabs appear as horizontal tab list — expect scroll or wrap on narrow viewports
- No mobile-specific chat chrome visible without auth

---

## 2. Scholaris tutor audit

### 2.1 Files reviewed

| Path | Role |
|------|------|
| `src/app/dashboard/tutor/page.tsx` | Legacy single-page tutor (sidebar + chat inline) |
| `src/app/dashboard/tutor/[conversationId]/page.tsx` | Route-based tutor with shared components |
| `src/app/dashboard/tutor/loading.tsx` | Skeleton using tutor.module.css |
| `src/components/tutor/tutor.module.css` | **Primary tutor styling** (~960 lines) |
| `src/components/tutor/TutorMessageBubble.tsx` | User bubble + assistant plain text |
| `src/components/tutor/TutorConversationList.tsx` | Sidebar conversation list |
| `src/components/tutor/TutorChatInput.tsx` | Composer with char limit |
| `src/styles/globals.css` | Design tokens (HSL system, fonts, spacing) |

### 2.2 Scholaris design tokens (tutor-relevant)

From `src/styles/globals.css`:

| Token | Light value | Notes |
|-------|-------------|-------|
| `--font-display` | DM Serif Display | Same as Studi |
| `--font-body` | Plus Jakarta Sans | Same as Studi |
| `--background` | `40 18% 97%` (~warm off-white) | Close cousin to Studi `#fdf8f2` |
| `--foreground` | `222 22% 14%` | Cooler gray-black vs Studi warm `#1c1208` |
| `--primary` | `221 83% 53%` (#2563eb cobalt) | **Major divergence** from Studi terracotta |
| `--border` | `220 13% 88%` | Hairline, not 2px ink |
| `--space-*` | 4–96px scale | Used consistently in tutor.module.css |
| `--radius-sm/md/lg` | 9/13/18px | Similar scale to Studi |
| Dark mode | `.dark` class | Full token swap — Studi has no public equivalent |

### 2.3 Current tutor UI patterns

**Layout (`tutor.module.css`):**
- Two-pane flex: sidebar `280px` + main chat (Studi: `256px`)
- Height: `calc(100dvh - 9rem)`
- Sidebar: hairline right border, transparent bg
- Mobile `@900px`: column stack, sidebar max-height `160px`

**Sidebar:**
- Solid cobalt "New chat" button (`border-radius: 12px`, no outline)
- Conversation rows: muted hover/active bg, truncated titles
- Delete on hover (Phosphor Trash icon)
- Collapsible variant in `[conversationId]` route

**Messages:**
- **User:** right-aligned cobalt filled bubble (`border-radius: 16px`, max-width 85%)
- **Assistant:** left-aligned plain text + circular avatar badge "S" (primary tint)
- No role labels ("You" / "Scho")
- Rich markdown in assistant (GFM, KaTeX, tables)

**Empty state:**
- Sparkle icon in primary-tint circle
- Suggestion rows: hairline-separated list, bold lead + muted text + chevron
- Hover: slight padding-left shift

**Composer:**
- Rounded bar (`border-radius: 22px`), hairline border, transparent textarea
- Circular cobalt send button
- Centered disclaimer text

**Philosophy (from CSS header comment):**
> "minimal flat OnePrep-style chat — flat surfaces, hairline borders, no shadows/gradients/blur"

### 2.4 Course / exam selection in tutor

- Chats filtered by `activeExamType` from `useActiveExamType()` / `subjectStore`
- No in-tutor course picker UI — exam context is implicit from dashboard subject switcher
- Greeting/suggestions adapt via `tutorSuggestions(activeExamType, examLabel)`
- Aligns with Studi's "show up confused" model, but Scholaris still has exam-scoped data model

### 2.5 Gap analysis: Studi vs Scholaris tutor

| Dimension | Studi | Scholaris tutor | Gap severity |
|-----------|-------|-----------------|--------------|
| Typography | DM Serif + Plus Jakarta | Same | ✅ Aligned |
| Page warmth | Cream `#fdf8f2` | Warm off-white HSL | Low — tweak hue toward amber |
| Brand accent | Terracotta `#e05a3a` | Cobalt `#2563eb` | Medium — intentional brand choice |
| Borders | 2px ink outlines | 1px hairline `--border` | High — different personality |
| Shadows | Hard offset 4–5px | None (explicit ban) | High |
| User messages | Labeled plain text (demo) | Cobalt filled bubble | Medium |
| Assistant chrome | "STUDI" uppercase label | Avatar circle "S" | Medium |
| Interactive embeds | Sparks (sim/quiz/graph/card) | Markdown only | High — product feature |
| Chat column width | 740px max | ~42rem assistant max | Low |
| Sidebar width | 256px | 280px | Low |
| Dark mode | Not public | Full `.dark` support | Scholaris advantage |
| Course UI | None | None in tutor (exam via store) | ✅ Aligned |
| Animations | Rich Spark/typing motion | Subtle dot pulse + skel pulse | Medium |

---

## 3. Recommendations for build agents

Priority-ordered, scoped to tutor UX. **Do not change global brand cobalt** unless product explicitly requests a Studi-like warm accent — apply Studi patterns as tutor-surface options.

### P0 — High impact, low risk

1. **Constrain chat reading width to ~740px.** Center the message column in `.chatMain` with `max-width: var(--column-max, 740px); margin-inline: auto; width: 100%`.

2. **Add role labels above messages** (Studi pattern). Replace or supplement avatar with:
   ```css
   /* 11px uppercase tracking-wider */
   .messageLabelUser { color: hsl(var(--muted-foreground)); }
   .messageLabelAssistant { color: hsl(var(--foreground)); font-weight: 700; }
   ```
   Label text: "You" / "Scho".

3. **Warm the tutor canvas slightly.** In tutor scope only, set `--background` closer to Studi's paper: e.g. `38 30% 97%` or use hex `#fdf8f2` as a tutor-local override on `.chatLayout`.

4. **Suggestion rows → optional card variant.** For empty state, offer a neo-brutalist option: `2px solid hsl(var(--foreground))`, `box-shadow: 4px 4px 0 hsl(var(--foreground))`, `border-radius: 16px` per row instead of hairline list — useful for A/B or marketing parity.

### P1 — Medium effort

5. **Spark embed container (future feature).** When rendering interactive tutor artifacts, use Studi's tab strip pattern:
   - White selected tab + 2px outline
   - Unselected: muted wash
   - Panel enter: `spark-panel-enter` style animation (translate + fade, ~250ms ease-out)

6. **User bubble softening.** Consider Studi-like user messages: no fill bubble, right-aligned text block under "YOU" label. Keep cobalt bubble as fallback via prop `variant="bubble" | "plain"`.

7. **Composer outline upgrade.** Tutor composer: `border: 2px solid hsl(var(--foreground) / 0.85)` and `border-radius: 24px` on `.inputArea` for Studi pill feel while keeping hairline focus (no glow ring).

8. **Typing indicator warmth.** Swap dot pulse for Studi's `bounce-dot` keyframe; optional terracotta/teal dot color using `--accent2` if tutor accent tokens added.

### P2 — Polish / optional

9. **Multi-accent Spark tints.** Add tutor-scoped tokens mirroring Studi:
   ```css
   --tutor-spark-teal: #e5f4f1;
   --tutor-spark-amber: #f7f0e0;
   --tutor-spark-lavender: #f0ebf8;
   ```
   Use for interactive embed backgrounds by Spark type.

10. **Sidebar width 256px** to match Studi `--sidebar-w` (currently 280px).

11. **Section entrance motion** on empty state only: `fade-in` + `rise` 20px, respect `prefers-reduced-motion`.

12. **Do not remove dark mode.** Studi is light-only publicly; Scholaris dark tutor is a differentiator — ensure neo-brutalist borders use `--foreground` not hardcoded `#1c1208` so dark mode stays valid.

### Anti-patterns (avoid)

- ❌ Copying terracotta as global `--primary` without product sign-off
- ❌ Adding soft drop shadows to tutor (conflicts with OnePrep flat spec in `tutor.module.css`)
- ❌ Building a course catalog into tutor — both products are conversation-first
- ❌ Glassmorphism / backdrop-blur in tutor pane

---

## 4. Implementation map (Scholaris files)

| Change | Target file(s) |
|--------|----------------|
| Column max-width, paper bg override | `tutor.module.css` |
| Role labels | `TutorMessageBubble.tsx`, `tutor.module.css` |
| Composer outline | `tutor.module.css`, `TutorChatInput.tsx` |
| Neo-brutalist suggestion cards | `tutor.module.css` (modifier class) |
| Spark embed shell (future) | New `TutorSparkPanel.tsx` + CSS module |
| Sidebar width | `tutor.module.css` `.sidebar` |
| Typing animation | `TutorTypingIndicator.tsx`, `tutor.module.css` |

---

## 5. Reference screenshots & URLs

| URL | Status |
|-----|--------|
| https://www.getstudi.com/ | ✅ Browsed — hero, Sparks demo, FAQ, waitlist |
| https://www.getstudi.com/pricing | ✅ Browsed — tier cards (Guided preview / Starter / Pro) |
| https://www.getstudi.com/chat | 🔒 Redirects to Clerk sign-in |

---

## 6. Token quick-reference (copy-paste for agents)

```css
/* Studi-extracted (reference only — not yet in Scholaris globals) */
:root {
  --studi-bg: #fdf8f2;
  --studi-fg: #1c1208;
  --studi-accent: #e05a3a;
  --studi-border-ink: #1c1208;
  --studi-column-max: 740px;
  --studi-sidebar-w: 256px;
  --studi-radius-pill: 24px;
  --studi-card-shadow: 4px 4px 0 #1c1208;
}

/* Scholaris tutor already uses */
/* --font-display, --font-body, --space-*, --primary (cobalt), hsl(var(--border)) */
```

---

*Research conducted via browser inspection (computed styles, CSS custom properties, accessibility snapshot) and Scholaris codebase audit. Live Studi chat UI not available without authentication.*
