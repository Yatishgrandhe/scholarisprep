# Free Studying Pages — Complete Redesign Plan

## Goal
Delete all Free Studying pages (except Whiteboard) and redesign them from scratch using modern learning platform UI patterns. Preserve Whiteboard + routing intact.

---

## Phase 1: Cleanup — Delete Non-Whiteboard Files

### Files to DELETE entirely:
**Components (TSX):**
- `src/components/free-study/FreeStudyHub.tsx`
- `src/components/free-study/FreeStudyLanding.tsx`
- `src/components/free-study/FreeStudyShell.tsx`
- `src/components/free-study/FreeStudyStudioShell.tsx`
- `src/components/free-study/FreeStudyProductRail.tsx`
- `src/components/free-study/FreeStudySectionedReply.tsx`
- `src/components/free-study/FreeStudyImageAsk.tsx`
- `src/components/free-study/FreeStudyPdfPane.tsx`
- `src/components/free-study/FreeStudyQuizPanel.tsx`
- `src/components/free-study/FreeStudyFlashcards.tsx`
- `src/components/free-study/FreeStudyVoicePane.tsx`
- `src/components/free-study/FreeStudyNotesPane.tsx`
- `src/components/free-study/PdfIntentChooser.tsx`
- `src/components/free-study/freeStudyA11y.ts`

**CSS Modules:**
- `src/components/free-study/free-study.module.css`
- `src/components/free-study/free-study-base.module.css`
- `src/components/free-study/free-study-studio.module.css`
- `src/components/free-study/free-study-studio-shell.module.css`
- `src/components/free-study/free-study-shell.module.css`
- `src/components/free-study/free-study-landing.module.css`
- `src/components/free-study/free-study-flashcards.module.css`
- `src/components/free-study/free-study-quiz.module.css`
- `src/components/free-study/free-study-voice.module.css`
- `src/components/free-study/free-study-notes.module.css`
- `src/components/free-study/free-study-pdf.module.css`
- `src/components/free-study/free-study-image-ask.module.css`
- `src/components/free-study/free-study-product-rail.module.css`
- `src/components/free-study/pdf-intent.module.css`
- `src/components/free-study/free-study-tokens.css`

**API Routes (keep for now — no UI dependency):**
- `src/app/api/ai/free-study/quiz/route.ts` (keep)
- `src/app/api/ai/free-study/flashcards/route.ts` (keep)

### Files to KEEP intact:
- `src/components/free-study/FreeStudyWhiteboard.tsx` + its CSS
- `src/app/dashboard/free-study/page.tsx`
- `src/app/dashboard/free-study/layout.tsx`
- API routes (quiz, flashcards)

---

## Phase 2: Design System — New Token Layer

### Design Direction
**Register:** Product UI (dashboard, tool, workspace)
**Palette Strategy:** Restrained — tinted neutrals + one accent (cobalt blue) ≤10%
**Theme:** Light default, dark mode via `.dark` class

### Research-Informed Principles
From studying Coursera, Udemy, Inflearn, Amy Tutor, OneTutor, Learnnova:

1. **White canvas, soft surfaces** — not cream/sand (AI slop). Cool-gray tinted neutrals.
2. **Single accent color** — cobalt blue `#2563eb` for all primary actions. No secondary brand hue.
3. **Chat-first for Tutor** — clean message bubbles, no sidebar clutter (like Amy).
4. **Focus mode** — distraction-free studying with minimal chrome (like OneTutor).
5. **Progress tracking** — subtle streak/completion indicators (like Inflearn).
6. **Typography:** DM Serif Display (headings) + Plus Jakarta Sans (body) — already in globals.css.

### New Token File: `free-study-tokens.css`
```
--fs-primary: hsl(var(--primary))          /* cobalt blue */
--fs-surface: hsl(220 20% 99%)            /* cool near-white */
--fs-surface-raised: hsl(0 0% 100%)       /* pure white cards */
--fs-surface-sunken: hsl(220 14% 96%)     /* subtle inset */
--fs-text: hsl(222 22% 14%)               /* near-black ink */
--fs-text-muted: hsl(222 12% 46%)         /* muted body */
--fs-text-faint: hsl(222 12% 65%)         /* placeholders */
--fs-border: hsl(220 13% 91%)             /* hairline */
--fs-border-strong: hsl(220 13% 82%)      /* emphasis border */
--fs-focus-ring: 0 0 0 2px hsl(var(--primary) / 0.3)
--fs-radius: 12px                         /* consistent rounding */
--fs-radius-lg: 16px                      /* cards, panels */
--fs-radius-full: 9999px                  /* pills, avatars */
--fs-shadow-sm: 0 1px 3px hsl(222 22% 14% / 0.06)
--fs-shadow-md: 0 4px 16px hsl(222 22% 14% / 0.08)
--fs-ease: cubic-bezier(0.22, 1, 0.36, 1)
--fs-fast: 150ms var(--fs-ease)
--fs-normal: 250ms var(--fs-ease)
```

### Dark Mode Overrides
```
:global(.dark) {
  --fs-surface: hsl(222 47% 11%)
  --fs-surface-raised: hsl(222 47% 15%)
  --fs-surface-sunken: hsl(222 47% 9%)
  --fs-text: hsl(210 40% 98%)
  --fs-text-muted: hsl(215 20% 65%)
  --fs-border: hsl(210 40% 98% / 0.08)
}
```

---

## Phase 3: Component Architecture

### New File Structure
```
src/components/free-study/
├── FreeStudyWhiteboard.tsx          (PRESERVED)
├── free-study-tokens.css            (NEW — design tokens)
├── free-study-layout.tsx            (NEW — shell with nav + content)
├── free-study-layout.module.css     (NEW — layout styles)
├── FreeStudyLanding.tsx             (NEW — destination picker)
├── FreeStudyLanding.module.css
├── FreeStudyTutor.tsx               (NEW — chat-based tutor)
├── FreeStudyTutor.module.css
├── FreeStudyPdf.tsx                 (NEW — PDF upload + ask)
├── FreeStudyPdf.module.css
├── FreeStudyVoice.tsx               (NEW — voice input + ask)
├── FreeStudyVoice.module.css
├── FreeStudyNotes.tsx               (NEW — notes + OCR)
├── FreeStudyNotes.module.css
├── FreeStudyChat.tsx                (NEW — shared chat component)
├── FreeStudyChat.module.css
└── freeStudyA11y.ts                 (NEW — accessibility helpers)
```

---

## Phase 4: Page Designs

### 4.1 Landing Page (`FreeStudyLanding.tsx`)
**Purpose:** Choose study mode before entering workspace.
**Layout:** Centered card grid, 2x2 + whiteboard.
**Design:**
- Full viewport height, vertically centered
- 5 destination cards in a responsive grid
- Each card: icon + title + one-line description
- Cobalt blue hover accent, subtle shadow lift
- Whiteboard card gets a small "Open in new tab" indicator
- Keyboard navigable, skip link to first card

**Cards:**
| Mode | Icon | Description |
|------|------|-------------|
| Tutor | ChatsCircle | "Chat with Scho about any subject" |
| PDF | FilePdf | "Upload a PDF, extract text, ask questions" |
| Voice | Microphone | "Speak your question, get answers" |
| Notes | Notebook | "Write notes, attach images, get help" |
| Whiteboard | PencilLine | "Draw diagrams and equations" (opens in tab) |

### 4.2 Tutor Mode (`FreeStudyTutor.tsx`)
**Purpose:** Chat-based AI tutoring (primary mode).
**Layout:** Full-height chat interface with minimal chrome.
**Design:**
- Clean chat interface like Amy Tutor
- Message bubbles: user (right, cobalt tint) / assistant (left, white)
- Textarea composer at bottom with send button
- Auto-scroll to latest message
- Loading indicator while streaming
- Sectioned replies for structured answers
- Optional image OCR input (upload photo → extract text → ask)

**Key UX:**
- Enter to send, Shift+Enter for newline
- Disabled state while streaming
- Empty state: "Ask Scho anything about {examType}"
- Responsive: full-width on mobile, constrained on desktop

### 4.3 PDF Mode (`FreeStudyPdf.tsx`)
**Purpose:** Upload PDF → extract text → ask questions.
**Layout:** Split view — upload/excerpt on left, chat on right.
**Design:**
- Upload zone with drag-and-drop (dashed border, icon)
- Textarea for manual paste
- Character count indicator
- Intent chooser: Summarize / Ask / Quiz / Flashcards
- Right panel: chat interface (reuses FreeStudyChat)

**Key UX:**
- Client-side PDF extraction (pdf.js) — never sends file to server
- Only extracted text goes to tutor (telemetry: `pdf_excerpt`)
- Quiz/Flashcards generate inline artifacts

### 4.4 Voice Mode (`FreeStudyVoice.tsx`)
**Purpose:** Speech-to-text → review transcript → ask questions.
**Layout:** Step-by-step flow (Listen → Review → Ask).
**Design:**
- Large microphone button with pulse animation when listening
- Status chip: "Listening…" / "Ready to ask" / "Mic idle"
- Transcript textarea (editable)
- Optional focus field: "What should Scho focus on?"
- Ask button + chat panel below

**Key UX:**
- Web Speech API (Chrome/Edge only)
- Graceful fallback for unsupported browsers
- Transcript sent as text telemetry (never audio)
- Clear button to reset

### 4.5 Notes Mode (`FreeStudyNotes.tsx`)
**Purpose:** Write notes + attach images → OCR → ask questions.
**Layout:** Two-panel — note list (left) + editor (right).
**Design:**
- Note list sidebar with "New note" button
- Title input + body textarea
- Image attach card with OCR progress
- Toolbar: Save + Ask Scho
- OCR text editor (editable before asking)

**Key UX:**
- Notes saved to Supabase (`free_study_notes` table)
- R2 upload for images (best-effort)
- OCR text sent as telemetry (never image bytes)
- Auto-save on ask

### 4.6 Shared Chat Component (`FreeStudyChat.tsx`)
**Purpose:** Reusable chat interface for all modes.
**Props:** messages, onSend, isStreaming, disabled, placeholder
**Design:**
- Scrollable message list
- User/assistant message bubbles
- Composer textarea at bottom
- Loading indicator
- Empty state slot

---

## Phase 5: Layout Shell (`FreeStudyLayout.tsx`)

### Structure
```
┌─────────────────────────────────────────┐
│  Header (logo + mode name + back btn)   │
├─────────────────────────────────────────┤
│                                         │
│           Content Area                  │
│     (varies by mode)                    │
│                                         │
└─────────────────────────────────────────┘
```

**Header:**
- Left: Back arrow + "Free Studying" text
- Center: Current mode label (e.g., "Tutor")
- Right: Dashboard exit button

**Content:**
- Full remaining height
- Mode-specific layout inside

---

## Phase 6: Implementation Order

1. **Delete old files** (Phase 1)
2. **Create token file** (Phase 2)
3. **Create layout shell** (Phase 5)
4. **Create landing page** (Phase 4.1)
5. **Create shared chat component** (Phase 4.6)
6. **Create Tutor mode** (Phase 4.2)
7. **Create PDF mode** (Phase 4.3)
8. **Create Voice mode** (Phase 4.4)
9. **Create Notes mode** (Phase 4.5)
10. **Update page.tsx** to use new components
11. **Run build + lint** to verify

---

## Phase 7: Verification

- [ ] `npm run build` passes with no errors
- [ ] `npm run lint` has no new warnings
- [ ] All 5 modes render correctly
- [ ] Dark mode works across all pages
- [ ] Whiteboard still functions (preserved)
- [ ] Chat auto-scroll works
- [ ] Voice mode falls back gracefully
- [ ] PDF extraction works client-side
- [ ] Notes save/load from Supabase
- [ ] Responsive on mobile/tablet/desktop
- [ ] Keyboard navigation works
- [ ] Screen reader accessible
