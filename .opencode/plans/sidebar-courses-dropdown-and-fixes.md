# Sidebar Courses Dropdown + STEM Labs Readability + Whiteboard Chat Fix

## Goal
1. Move Free Studying, STEM Labs, and AI Courses into a new collapsible "Courses" section in the sidebar
2. Fix STEM Labs text readability (font sizes, contrast, dark mode overrides)
3. Fix whiteboard chat textbox dark mode mismatch (different black than rest)
4. Fix button layouts across affected pages
5. Research-backed improvements

---

## Research: 20+ Apps Analyzed

### Sidebar Patterns
| App | Pattern | Takeaway |
|-----|---------|----------|
| **Notion** | Collapsible sections with toggle chevrons, 224px width | Toggle persists to localStorage |
| **Linear** | Flat sections with section headers, collapsible groups | Active section auto-expands |
| **Canvas LMS** | Course-specific sidebar that repopulates per course | Context-aware navigation |
| **Slack** | User-created collapsible groups with drag-and-drop | Independent collapse state |
| **CoreUI** | `<CNavGroup>` with accordion toggle | Unfoldable icon-only mode |
| **Figma** | Layers panel with disclosure triangles | Nested tree with indentation |
| **Vercel Dashboard** | Team > Project hierarchy in sidebar | Clean section labels |
| **Stripe Dashboard** | Product categories as collapsible groups | Minimal, clean typography |

### Text Readability (Dark Mode)
| Best Practice | Source | Value |
|---------------|--------|-------|
| Never use pure black (#000) background | Material Design 3 | Causes halation for astigmatism |
| Never use pure white (#fff) text | WCAG 2.2 | Too harsh, use 87% white |
| Minimum contrast 4.5:1 for normal text | WCAG AA | Required for <18pt text |
| Minimum contrast 3:1 for large text | WCAG AA | Required for >=18pt bold |
| Elevated surfaces = lighter in dark mode | Material Design 3 | Inverted from light mode |

### Whiteboard Chat Textbox
**Root cause**: Global rule at `globals.css:555-561`:
```css
.dark textarea { background: hsl(var(--background)) !important; }
```
This forces `hsl(222 28% 9%)` on the textarea, while the composer container uses `hsl(222 28% 14%)` — a 5% lightness gap creating the "different black" mismatch.

---

## Phase 1: Collapsible "Courses" Section in Sidebar

### Files to Edit

#### 1. `src/lib/dashboard/navConfig.ts`
- Remove Free Studying, STEM Labs, and AI Courses from `mainNavForExam()`
- Create a new `COURSES_SECTION` NavSection with these 3 items:
  ```ts
  { id: "main", items: [
    { id: "home", href: "/dashboard", label: "Home", icon: House },
    // ... other main items WITHOUT free-study, labs, ai-courses
  ]},
  { id: "courses", label: "Courses", items: [
    { id: FREE_STUDY_NAV_ID, href: FREE_STUDY_HREF, label: "Free Studying", icon: Notebook, badge: "New", children: [...] },
    { id: LABS_NAV_ID, href: LABS_HREF, label: "STEM Labs", icon: Flask, badge: "New" },
    { id: "ai-courses", href: "/dashboard/courses/create", label: "AI Courses", icon: Sparkle },
  ]},
  ```
- Update `getNavForExam()` to include the new `courses` section

#### 2. `src/components/layout/DashboardSidebar.tsx`
- Add `expandedGroups` state with localStorage persistence:
  ```ts
  const [expandedGroups, setExpandedGroups] = useState<Set<string>>(() => {
    if (typeof window === "undefined") return new Set(["courses"]);
    try {
      const saved = localStorage.getItem("scholaris-expanded-nav");
      return saved ? new Set(JSON.parse(saved)) : new Set(["courses"]);
    } catch { return new Set(["courses"]); }
  });
  ```
- Add `toggleGroup(id)` function that toggles membership and persists
- Render section label as clickable toggle when section has `collapsible` flag
- Add chevron icon (CaretDown/CaretRight) next to section labels
- Only render children when `expandedGroups.has(sectionId)`
- Auto-expand section containing active route (derive from `usePathname()`)

#### 3. `src/components/layout/DashboardSidebar.module.css`
- Add styles for:
  - `.sectionToggle` — clickable section header with chevron
  - `.sectionChevron` — rotation animation on expand/collapse
  - `.sectionChevronExpanded` — rotate(180deg)
  - Transition for smooth expand/collapse animation

---

## Phase 2: STEM Labs Text Readability Fixes

### Problem
- 14 instances of `0.625rem` (10px) font sizes for labels/metadata — too small
- 4 instances of opacity-reduced muted text (0.8/0.85) failing WCAG AA contrast
- 6+ hardcoded `#fff`/`white` values with no dark mode override
- `.btnSecondary` and `.examTag` have no dark mode at all

### Files to Edit

#### 1. `src/components/sims/labs-shell.module.css`
- **Font sizes**: Increase minimum readable sizes:
  - `.listLabel` (line 275): `0.625rem` → `0.6875rem` (11px)
  - `.labMeta` (line 351): `0.625rem` → `0.6875rem` (11px)
  - `.categoryCount` (line 251): `0.6875rem` → `0.75rem` (12px)
- **Muted text contrast**: Increase opacity:
  - `.categoryCount` (line 255): `/0.85` → `/1` (remove opacity reduction)
  - `.listLabel` (line 279): `/0.8` → `/0.9`
  - `.labMeta` (line 355): `/0.85` → `/1`
- **Dark mode overrides**: Add missing ones:
  - `.catalogLink` default color (line 369): add dark override
  - `.menuBtn` (line 533): add dark override

#### 2. `src/components/sims/labs-studio-shell.module.css`
- Same font size and opacity fixes as labs-shell
- Add dark mode overrides:
  - `.catalogLink` default color (line 494): add dark override
  - `.railCompact .brandLink` (line 240): add dark override
  - `.category[data-active="true"] .categoryCount` (line 339): add dark override
  - `.menuBtn` mobile (line 692): add dark override

#### 3. `src/components/sims/SimShell.module.css`
- Add dark mode overrides:
  - `.btnSecondary` (lines 387, 393): add dark background override
  - `.examTag` (line 82): add dark background override
- Increase font sizes:
  - `.tierChip` (line 130): `0.625rem` → `0.6875rem`
  - `.metricHead` (line 304): `0.625rem` → `0.6875rem`

#### 4. `src/components/sims/sims-hub.module.css`
- Already has dark mode overrides for fidelity badges (lines 384-399) — verify they're correct
- Increase font sizes:
  - `.subject`, `.priority` (line 166): `0.625rem` → `0.6875rem`
  - `.tags li` (line 239): `0.625rem` → `0.6875rem`

---

## Phase 3: Whiteboard Chat Textbox Dark Mode Fix

### Root Cause
`globals.css:555-561` applies `background: hsl(var(--background)) !important` to all `.dark textarea` elements. The whiteboard chat textarea inherits this, giving it `hsl(222 28% 9%)` while its composer container uses `hsl(222 28% 14%)`.

### Fix: `src/components/whiteboard/board-chat.module.css`
Add a scoped dark mode override that beats the global `!important`:

```css
:global(.dark) .field {
  background: var(--dock-surface) !important;
}
```

This matches the textarea's background to the composer container (`hsl(222 28% 14%)`), eliminating the visual mismatch.

Also override the placeholder color to match the dock theme:
```css
:global(.dark) .field::placeholder {
  color: color-mix(in srgb, var(--dock-muted) 82%, transparent) !important;
}
```

---

## Phase 4: Button Layout Fixes

### Files to Audit and Fix

#### 1. `src/components/free-study/FreeStudyLanding.tsx` + CSS
- Action cards grid should use consistent spacing (12-16px gap)
- Cards should have consistent padding (16px)
- Hover states should be uniform

#### 2. `src/components/free-study/FreeStudyNotes.tsx` + CSS
- Action bar buttons (Quiz Me, Flashcards) should match the design system button patterns
- Ensure buttons have proper `min-height` (32px) for touch targets

#### 3. `src/components/free-study/NoteQuiz.tsx` + CSS
- Option buttons should have consistent padding and border-radius
- Score screen layout should be centered and balanced

#### 4. `src/components/free-study/NoteFlashcards.tsx` + CSS
- Navigation buttons should be evenly spaced
- Progress bar should have consistent height (4px)

---

## Phase 5: Build + Commit + Push

1. `npm run build` — verify clean
2. `git add` all changed files
3. Commit with descriptive message
4. Push to master

---

## Files Changed Summary

| Action | File | Change |
|--------|------|--------|
| EDIT | `navConfig.ts` | New "Courses" section, reorganize items |
| EDIT | `DashboardSidebar.tsx` | Collapsible sections with toggle state |
| EDIT | `DashboardSidebar.module.css` | Toggle styles, chevron animation |
| EDIT | `labs-shell.module.css` | Font sizes, contrast, dark overrides |
| EDIT | `labs-studio-shell.module.css` | Font sizes, contrast, dark overrides |
| EDIT | `SimShell.module.css` | Dark mode overrides for btnSecondary, examTag |
| EDIT | `sims-hub.module.css` | Font size increases |
| EDIT | `board-chat.module.css` | Textarea dark mode fix |
| EDIT | `FreeStudyLanding.tsx` | Button layout consistency |
| EDIT | `free-study-landing.module.css` | Button spacing |
| EDIT | `FreeStudyNotes.tsx` | Button consistency |
| EDIT | `free-study-notes.module.css` | Button spacing |
