# GetStudi & Edtech AI Chat — Mobile / Responsive / A11y Research

**Date:** 2026-07-17  
**Scope:** GetStudi.com (marketing + inferred product), comparable edtech AI chat UIs, and Scholaris tutor/course-chat audit.  
**Audience:** Build agents implementing mobile/responsive/a11y fixes for course AI chat.

---

## 1. GetStudi.com — What We Could Observe

### 1.1 Product surface

| Surface | URL | Access |
|--------|-----|--------|
| Marketing site | https://www.getstudi.com | Public |
| Live chat app | https://www.getstudi.com/chat | Redirects to Clerk sign-in (`accounts.getstudi.com`) |
| Mobile apps | JetKite “Studi: AI Homework Assistant” (iOS/Android) | Native; Gemini-powered |

**Implication:** Responsive chat behavior must be **inferred** from the marketing demo, early-access positioning, competitor apps, and general AI-chat UX patterns—not from a logged-in web session.

### 1.2 Marketing chat demo patterns (observable)

From the homepage hero and product copy:

1. **Role-labeled transcript** — Messages are attributed to **“You”** and **“Studi”** (not anonymous bubbles). This aids screen-reader context and matches Scholaris `course-chat` `roleLabel` pattern.
2. **Socratic turn-taking** — One tutor question at a time; interactive artifacts (“Sparks”) appear mid-thread when text is insufficient.
3. **Spark types as tabs** — Carousel/tabs: Interactive Scene, Live Graph, Adaptive Quiz, Flashcards. Copy says **“Swipe to see every Spark type”** → mobile expects horizontal swipe + large tab targets.
4. **Touch-first Sparks** — “Drag it, break it, play with it”; physics sims embedded in chat. Mobile needs scroll containment, `touch-action`, and minimum 44×44 controls inside widgets.
5. **Neo-brutalist chrome** — Thick borders, high contrast, pill CTAs (“Open chat”, “Get Early Access”). Touch targets on marketing CTAs appear ≥44px tall.
6. **Bottom-weighted actions** — Waitlist forms and primary CTAs sit in natural thumb zone on narrow viewports.

### 1.3 Inferred responsive breakpoints (GetStudi / edtech chat)

No public CSS; recommended alignment with Scholaris + industry norms:

| Breakpoint | Typical layout |
|------------|----------------|
| **≤480px** | Single column; full-width composer; history in sheet/drawer (not persistent sidebar); Spark tabs scroll horizontally |
| **481–768px** | Same as phone; optional collapsible history strip |
| **769–1024px** | Optional narrow history rail (~240–280px) or overlay drawer |
| **≥1025px** | Two-pane: history rail + chat canvas |

Use **`dvh`** (not `vh`) for chat shell height; subtract app chrome (header, tab bar, safe areas).

### 1.4 Comparable edtech AI chat patterns

| Product | Mobile pattern | A11y note |
|---------|----------------|-----------|
| **ChatGPT mobile** | Full-screen thread; hamburger history sheet; sticky bottom composer | `aria-live` on new assistant chunks; large send |
| **Khanmigo** | Contextual tutor inside course flow; constrained width | Teacher/student role clarity |
| **Studity** | Voice + text; saved searchable threads | Multimodal needs text fallback |
| **Studi app** | Tabbed Explore + subject teachers + camera scan | Native ≥44pt targets |
| **Scholaris SchoSidePanel** | `100vw` drawer ≤768px; composer `safe-area-inset-bottom` | Good reference for embedded chat |

---

## 2. Scholaris Audit — `/dashboard/tutor/`

### 2.1 File map

| Layer | Files |
|-------|-------|
| Routes | `src/app/dashboard/tutor/page.tsx`, `[conversationId]/page.tsx`, `loading.tsx` |
| Layout shell | `src/app/dashboard/layout.tsx` → `DashboardShell`; `MobileTabBar` @ ≤768px |
| Chat layout CSS | `src/components/tutor/tutor.module.css` |
| Message/composer primitives | `src/components/course-chat/*` (re-exported by `TutorMessageBubble`, `TutorChatInput`, `TutorTypingIndicator`) |
| Embedded tutor | `src/components/exam/SchoSidePanel.module.css`, `TutorChat.tsx` |

### 2.2 Current breakpoints (Scholaris)

| Token | Where | Behavior |
|-------|-------|----------|
| **768px** | `dashboard.module.css`, `MobileTabBar.module.css` | Sidebar hidden; bottom tab bar shown; main `padding-bottom: calc(16px + 56px + safe-area)` |
| **900px** | `tutor.module.css` `.chatLayout` | Flex column; sidebar full width; convo list `max-height: 160px`; chat `min-height: 65vh` |
| **900px** | `dashboard.module.css` `.tutorLayout` | Grid → single column (skeleton only) |

**Gap:** Tutor chat uses **900px** stack while dashboard mobile mode starts at **768px**. Between 769–900px users get a side-by-side rail on a viewport that already lost the desktop sidebar.

### 2.3 Touch target audit (measured from CSS)

| Control | Current size | WCAG 2.2 AA (24px min) | Best practice (44px) |
|---------|--------------|------------------------|----------------------|
| `.sendBtn` / course-chat `.sendBtn` | 2.25–2.35rem (~36–38px) | Pass | **Fail** |
| `.convoDelete` | 1.85rem (~30px) | Pass | **Fail** |
| `.collapseBtn` | ~padding 0.25×0.45rem | Borderline | **Fail** |
| `.newChatBtn` | min-height 2.6rem (~42px) | Pass | Borderline |
| `.suggestionRow` / `.suggestedRow` | padding 15px 8px (~≥44px height) | Pass | OK |
| `MobileTabBar` `.tab` | min-height 56px bar | Pass | OK |

### 2.4 Keyboard & screen reader audit

| Area | Status | Notes |
|------|--------|-------|
| Landmarks | Partial | `aria-label="Conversations"` / `"Chat"` on `page.tsx`; missing on `[conversationId]` route |
| Message list | **Missing** | No `role="log"` / `role="feed"`, no `aria-live` region for completed assistant messages |
| Streaming | Partial | `TypingIndicator` has `aria-live="polite"`; streamed tokens in `[conversationId]` may not announce |
| Composer label | Partial | `page.tsx` uses `<label className="sr-only">`; `ChatInput` / `TutorChatInput` **no** `id`/`htmlFor` |
| Focus visible | Partial | Only `.convoDelete:focus-visible` in tutor CSS; send/collapse/suggestions lack rings |
| Delete confirm | **Risk** | `window.confirm` is keyboard-accessible but jarring; no focus return |
| History navigation | OK | Links in `[conversationId]`; buttons in `page.tsx` |
| Reduced motion | Partial | SchoSidePanel respects `prefers-reduced-motion`; tutor/course-chat animations do not |

### 2.5 Mobile layout issues

1. **Height math** — `.chatLayout { height: calc(100dvh - 9rem) }` ignores mobile tab bar (56px + safe area) → composer clipped or double-scroll.
2. **Stacked sidebar** — At ≤900px, history sits above thread with `max-height: 160px`; competes with messages on short phones.
3. **No drawer pattern** — Unlike GetStudi/ChatGPT mobile, no sheet to hide history; poor thumb reach to composer.
4. **Dual styling** — `page.tsx` still renders legacy `tutor.module.css` bubbles; `[conversationId]` uses GetStudi-style `course-chat` via re-exports → inconsistent mobile wrapping and role labels.
5. **course-chat.module.css** — **Zero** `@media` rules; bubbles stay 88%/92% max-width but composer/safe-area not tuned for mobile shell.
6. **Embedded vs full-page** — `embeddedChat .composer` adds `safe-area-inset-bottom`; full-page tutor composer does not.

---

## 3. Recommended Breakpoint System (Scholaris)

Use one shared scale across dashboard + course chat:

```css
/* Shared chat breakpoints — add to course-chat.module.css or tokens */
@custom-media --chat-compact (max-width: 480px);
@custom-media --chat-mobile (max-width: 768px);
@custom-media --chat-tablet (max-width: 900px);
@custom-media --chat-desktop (min-width: 901px);
```

| Name | Range | Layout rule |
|------|-------|-------------|
| compact | ≤480px | Full-bleed messages; composer sticky; history in bottom sheet |
| mobile | ≤768px | Account for `MobileTabBar`; single pane; `padding-bottom` on shell |
| tablet | 769–900px | Collapsible history overlay (not 160px strip) |
| desktop | ≥901px | 280px rail + flex main |

**Align tutor stack breakpoint to 768px** (not 900px) to match dashboard shell.

---

## 4. CSS / Layout Rules for Build Agents

Copy-paste blocks below. Adjust class names if consolidating `tutor.module.css` into `course-chat.module.css`.

### 4.1 Chat shell — fill viewport above tab bar (mobile)

```css
/* tutor.module.css — replace fixed 9rem subtraction on mobile */
.chatLayout {
  display: flex;
  align-items: stretch;
  min-height: 0;
  height: calc(100dvh - 9rem);
}

@media (max-width: 768px) {
  .chatLayout {
    flex-direction: column;
    /* DashboardShell header ~56px + tab bar 56px + main padding + safe areas */
    height: calc(
      100dvh
      - var(--dashboard-header-height, 3.5rem)
      - var(--mobile-tab-bar-height, 3.5rem)
      - env(safe-area-inset-top, 0px)
      - env(safe-area-inset-bottom, 0px)
    );
    min-height: 0;
  }

  .chatMain {
    flex: 1;
    min-height: 0;
    display: flex;
    flex-direction: column;
    padding-left: 0;
    padding-top: var(--space-3);
  }

  .messages {
    flex: 1;
    min-height: 0;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
    overscroll-behavior: contain;
  }
}
```

### 4.2 Composer — sticky bottom + safe area (match embedded chat)

```css
@media (max-width: 768px) {
  .composer {
    position: sticky;
    bottom: 0;
    z-index: 2;
    flex-shrink: 0;
    padding-top: var(--space-2);
    padding-bottom: calc(var(--space-2) + env(safe-area-inset-bottom, 0px));
    background: hsl(var(--background));
    border-top: 1px solid hsl(var(--border));
  }

  .inputArea {
    min-height: 2.75rem; /* 44px */
    padding: 10px 12px;
  }
}
```

Apply the same `.composer` block to **`course-chat.module.css`**.

### 4.3 Touch targets — 44×44 minimum (send, icon, delete)

```css
.sendBtn,
.iconBtn {
  width: 2.75rem;   /* 44px */
  height: 2.75rem;
  min-width: 2.75rem;
  min-height: 2.75rem;
}

.convoDelete {
  width: 2.75rem;
  height: 2.75rem;
  min-width: 2.75rem;
  min-height: 2.75rem;
}

.collapseBtn {
  min-width: 2.75rem;
  min-height: 2.75rem;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

/* course-chat.module.css */
.sendBtn {
  width: 2.75rem;
  height: 2.75rem;
}
```

### 4.4 Focus rings — all interactive chat controls

```css
.newChatBtn:focus-visible,
.convoItem:focus-visible,
.convoActive:focus-visible,
.convoDelete:focus-visible,
.collapseBtn:focus-visible,
.sendBtn:focus-visible,
.iconBtn:focus-visible,
.suggestionRow:focus-visible,
.suggestedRow:focus-visible,
.suggestedChip:focus-visible,
.textarea:focus-visible {
  outline: none;
  box-shadow: 0 0 0 3px color-mix(in srgb, hsl(var(--primary)) 28%, transparent);
}
```

### 4.5 Mobile history — drawer instead of 160px strip

Prefer a **bottom or left sheet** (reuse `Sheet` from `@/components/ui/sheet`, pattern from `MobileTabBar`):

```css
@media (max-width: 768px) {
  .sidebar {
    display: none; /* hidden by default */
  }

  .sidebarOpen {
    /* when sheet open — handled by Sheet component */
  }

  /* Remove cramped strip */
  .convoList {
    max-height: none;
  }
}
```

**JS pattern:** Header button `aria-label="Open chat history"` → `Sheet side="bottom"` with convo list; focus trap inside sheet.

### 4.6 Message stream — screen reader semantics

```tsx
{/* Wrap message list in both tutor routes */}
<div
  className={styles.messages}
  role="log"
  aria-label="Chat messages"
  aria-relevant="additions"
>
  {/* bubbles */}
</div>
```

For streaming assistant text, add a **polite** live region (avoid announcing every token):

```tsx
<div aria-live="polite" aria-atomic="true" className="sr-only">
  {isStreaming && streamedText ? "Scho is responding" : ""}
</div>
```

Announce **completed** assistant messages once (not per chunk).

### 4.7 Composer — accessible name (ChatInput)

```tsx
<label htmlFor="course-chat-message" className="sr-only">
  Message Scho
</label>
<textarea
  id="course-chat-message"
  aria-describedby="course-chat-disclaimer"
  /* ... */
/>
<p id="course-chat-disclaimer" className={styles.disclaimer}>
  Scho can make mistakes. Check important details.
</p>
```

### 4.8 GetStudi-style bubbles — mobile width

```css
/* course-chat.module.css */
@media (max-width: 768px) {
  .messageUser {
    max-width: min(92%, 100%);
  }

  .messageAssistant,
  .typingRow {
    max-width: 100%;
  }

  .bubbleUser,
  .bubbleAssistant {
    font-size: 1rem; /* 16px avoids iOS zoom-on-focus */
  }

  .textarea {
    font-size: 1rem;
  }

  .roleLabel {
    font-size: 0.75rem;
  }
}
```

### 4.9 Reduced motion

```css
@media (prefers-reduced-motion: reduce) {
  .typingDots span,
  .typingLabel::before,
  .skel,
  .suggestionRow,
  .suggestedRow {
    animation: none !important;
    transition: none !important;
  }
}
```

### 4.10 Spark / interactive embed container (future)

When embedding interactives in course chat (GetStudi “Sparks”):

```css
.sparkEmbed {
  width: 100%;
  max-width: 100%;
  overflow: auto;
  border: 1px solid hsl(var(--border));
  border-radius: 12px;
  touch-action: manipulation;
  -webkit-overflow-scrolling: touch;
}

.sparkEmbed :where(button, [role="button"], input) {
  min-width: 2.75rem;
  min-height: 2.75rem;
}
```

---

## 5. Keyboard Navigation Spec (Course AI Chat)

| Key | Context | Action |
|-----|---------|--------|
| **Tab / Shift+Tab** | Page | Move focus through history toggle → thread → composer → send |
| **Enter** | Composer textarea | Send message |
| **Shift+Enter** | Composer textarea | New line |
| **Escape** | History sheet open | Close sheet; return focus to toggle |
| **Arrow Up/Down** | Optional power-user | Previous/next convo when history list focused |

**Do not** put every message bubble on the tab order; keep one tab stop for the scrollable `role="log"` region unless implementing roving tabindex for message actions.

---

## 6. Screen Reader Patterns (Course AI Chat)

| Element | Pattern |
|---------|---------|
| Thread container | `role="log"` + `aria-label="Chat messages"` + `aria-relevant="additions"` |
| User message | Visible `roleLabel` “You” (already in `ChatMessage`) |
| Assistant message | `roleLabel` “Scho” + avatar `aria-hidden` |
| Typing | `aria-live="polite"` on typing bubble (existing) |
| Send button | `aria-label="Send message"` (existing) |
| New chat | `aria-label="Start new chat"` on icon-only variants |
| Delete chat | `aria-label="Delete chat: {title}"` (existing on `page.tsx`) |
| Streaming complete | One polite announcement: “Scho replied” |
| Math / SVG / Spark | Ensure `MathRenderer` outputs accessible text; interactive Sparks need `aria-label` + keyboard alternative |

---

## 7. Priority Fix List (Scholaris)

| P | Item | Files |
|---|------|-------|
| P0 | Fix mobile viewport height (tab bar + safe area) | `tutor.module.css`, `course-chat.module.css` |
| P0 | 44px touch targets on send/delete/collapse | `tutor.module.css`, `course-chat.module.css` |
| P0 | Add composer `<label htmlFor>` | `ChatInput.tsx` |
| P1 | Unify on `course-chat` bubbles; remove legacy `MessageBubble` in `page.tsx` | `page.tsx` |
| P1 | Align breakpoint 900→768; history sheet on mobile | `tutor.module.css`, new sheet wrapper |
| P1 | `role="log"` + live region strategy | tutor pages |
| P2 | `focus-visible` rings on all controls | both CSS modules |
| P2 | `prefers-reduced-motion` | both CSS modules |
| P2 | Composer `safe-area-inset-bottom` on full-page tutor | `tutor.module.css` |
| P3 | Smart auto-scroll (only when user near bottom) | tutor pages JS |

---

## 8. References

- GetStudi marketing: https://www.getstudi.com  
- GetStudi chat (auth gated): https://www.getstudi.com/chat  
- WCAG 2.2 SC 2.5.8 Target Size (Minimum) — 24×24 CSS px  
- WCAG 2.5.5 Target Size (Enhanced) — 44×44 CSS px (AAA benchmark)  
- Scholaris embedded chat safe-area precedent: `tutor.module.css` `.embeddedChat .composer`  
- Scholaris mobile shell: `MobileTabBar.module.css`, `dashboard.module.css` @768px  

---

## 9. Agent Checklist (before shipping mobile chat changes)

- [ ] Resize to 375×667 and 390×844; composer always visible above tab bar
- [ ] VoiceOver / TalkBack: send message, hear typing, hear reply complete
- [ ] Tab through all controls; visible focus ring
- [ ] Rotate to landscape; thread scrolls, composer sticky
- [ ] `prefers-reduced-motion: reduce` disables dot/spinner animations
- [ ] Long KaTeX/table messages scroll horizontally inside bubble
- [ ] History reachable on mobile without shrinking thread to 65vh minus 160px strip
