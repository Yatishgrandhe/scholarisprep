# Product Chrome — Polished Shells for Free Studying

**Scope:** How Linear, Arc, Framer, Figma, Vercel Dashboard, Stripe Dashboard, and Raycast structure **application chrome** (sidebar, headers, density, type, mode switching) — not marketing pages, not tutor/chat UX. No app code. Aimed at Free Studying hub shell polish: typography, density, navigation **without** a cluttered row of mode pills.

**Sources:** Linear redesign essays (2024 UI + 2026 “calmer interface”), Figma UI3 blog/help, Arc sidebar/Spaces patterns, Vercel Geist / dashboard language, Stripe dashboard + Söhne discipline, Raycast floating dense UI, Framer editor-bar updates. Secondary design-system teardowns used only where they match public product behavior.

---

## 1. Verdict (one paragraph)

Premium product shells win by making **chrome recede** and **content dominate**: quiet sidebars, soft borders, 13–14px UI type, keyboard-first jumps, and **one primary surface** at a time. Mode switching is **spatial or route-based** (sidebar item, space, bottom tool strip, command palette) — not a permanent strip of equally loud pills. Scholaris should steal that discipline for Free Studying: cobalt instrument chrome, dense but scannable lists, dim nav vs bright work area; avoid purple-gradient “AI product” clichés and avoid treating Tutor / PDF / Voice / Notes as a candy-bar of mode chips.

---

## 2. Cross-product pattern map

| Product | Primary chrome idea | Typography | Density | How “modes” switch |
| --- | --- | --- | --- | --- |
| **Linear** | Inverted-L chrome; sidebar dimmer than content; compact tabs | Inter (+ Inter Display for headings); ~13–14px UI | High info density, low visual noise; 4px rhythm; soft borders | Sidebar destinations + views; personalized hide/reorder; ⌘K |
| **Arc** | Sidebar-first browser; content framed; subtractive top chrome | Inter ~13px sidebar; quiet captions | Vertical tabs = readable titles; Spaces as contexts | **Spaces** (context themes) + ⌘T command bar — not top tab overflow |
| **Framer** | Canvas / site primary; editor chrome light and edge-placed | Product sans; marketing ≠ editor weight | Editor bar moved to reduce overlap with page UI | Page / design tools via light editor entry — not a mode pill rack |
| **Figma UI3** | Canvas center; bottom toolbar; resizable / minimize panels | System UI type at small sizes; icons + optional labels | Dense properties when needed; Minimize UI (Shift+\\) | Dev Mode / Design via **toolbar control**; Actions menu — not equal-weight top pills |
| **Vercel Dashboard** | Monochrome ink; 1px borders; deploy/project lists | **Geist Sans + Mono**; mono for IDs/paths | Interaction-dense, visually spare | Sidebar sections + project context; command palette |
| **Stripe Dashboard** | Fixed sidebar; data tables as hero | **Söhne** (precise weights); tabular nums for money | Dense tables + breathing room between groups | Account sections in sidebar; page headers for local actions |
| **Raycast** | Floating window = entire product | 14–15px primary / 11–12px meta; contrast via color not bold | Extreme density in small frame | Extensions/commands via list + shortcuts; accent ≤~5–10% of view |

**Shared principle:** Structure should be **felt, not seen** (Linear 2026). Borders and separators exist, but at low contrast; navigation is quieter than the work surface.

---

## 3. Typography

### 3.1 One family, systemic scale

Polished shells almost never mix a “friendly” display font into app chrome:

- **Linear:** Inter for UI; Inter Display only where headings need expression — same family DNA.
- **Vercel:** Geist Sans + Geist Mono as a closed pair (UI + IDs/code).
- **Stripe:** Söhne (+ mono for technical strings); thin display weights on marketing, disciplined UI weights in-product.
- **Arc / Raycast:** Neutral Inter-class sans; hierarchy from **size + muted color**, not decorative faces.

**Rule for Scholaris Free Studying:** Keep dashboard chrome on the existing instrument sans (and mono for IDs / OCR snippets). Do not introduce a second marketing display face into mode headers or sidebar labels. Reserve any serif/italic moment for empty-state copy or tutor voice — not for nav.

### 3.2 Product UI sizes (steal these ranges)

| Role | Typical size | Notes |
| --- | --- | --- |
| Sidebar / nav label | 13px | Linear / Arc sweet spot; 16px nav feels like a blog |
| Body / list primary | 13–14px | Line-height ~1.4–1.5 |
| Meta / secondary | 11–12px | Muted color; Raycast-style hierarchy |
| Section eyebrow | 10–11px | Uppercase + tracking **or** sentence case muted — pick one system and stick |
| Page title | 16–20px | Weight step, not a huge display jump |

Slight negative tracking (−0.01em to −0.02em) on UI labels reads as precise; default 16px / 1.6 leading reads as marketing.

### 3.3 Weight and color do hierarchy — not bold everywhere

Raycast and Linear both underuse **bold**. Primary rows: medium weight + full foreground. Secondary: regular + ~55% opacity. Tertiary: ~30–40%. Accent color appears on **active state, shortcuts, critical actions** — not on every icon.

### 3.4 Mono as signal, not decoration

Vercel Geist Mono for paths, deployment IDs, and eyebrows; Stripe tabular figures for money; Linear Berkeley Mono in code contexts. In Free Studying: mono for file names, OCR confidence crumbs, token/model labels — never for primary nav items.

---

## 4. Density without clutter

### 4.1 Two kinds of density

| Kind | What it means | Who does it well |
| --- | --- | --- |
| **Information density** | Many useful rows, filters, properties per screen | Linear Inbox, Stripe tables, Raycast results |
| **Visual density** | Heavy borders, cards, shadows, colored chips | Generic SaaS — **avoid** |

Premium UIs are **interaction-dense and visually spare** (Mantlr / craft essays on Stripe–Linear–Vercel): hover, focus, keyboard, and context menus carry weight that pixels do not.

### 4.2 Spacing rhythm

- **4px base** (Linear, Arc teardowns, Stripe-adjacent systems).
- Row padding often **8×12** or **6×10** for lists — not 16×20 “card padding” on every item.
- **Group** with quiet section gaps (16–24px), not boxed cards around every nav item.

### 4.3 Borders and surfaces

Linear’s 2024–2026 work: fewer separators, softer contrast, rounded edges on remaining rules so structure reads without a grid of boxes. Vercel: ~8% opacity borders on dark; light gray hairlines on light dashboard. Raycast: elevation via **luminance steps** (`#1C1C1E` → `#242424` → `#2C2C2E`), not pure black + neon glow.

**Scholaris:** Prefer hairline separators and dim sidebar fill over nested cards for Tutor/PDF/Notes panes. Cobalt accent on interactive states only — not full-bleed purple panels.

### 4.4 Chrome weight vs content weight

Linear 2026 principle: **“Don’t compete for attention you haven’t earned.”** Sidebar dimmed after arrival; tabs compacted; icon chrome reduced. Figma UI3: bottom toolbar + Minimize UI so the **canvas** earns attention. Arc: subtractive browser chrome so the **page** fills the frame.

**Scholaris Free Studying:** Once the user is in a mode (e.g. PDF or Tutor), global dashboard chrome and mode chrome should quiet down; the transcript, document, or board is the bright plane.

---

## 5. Navigation without cluttered mode pills

### 5.1 Why mode pills fail

A permanent horizontal strip of equal-weight pills (Tutor · PDF · Voice · Notes · …) creates:

1. **Equal visual competition** — nothing is primary; everything shouts.
2. **Mobile collapse pain** — pills wrap, scroll, or shrink into unreadability.
3. **False “modes”** — some destinations are full products (Whiteboard Studio) and should leave the hub, not sit as another chip.
4. **AI-product cliché** — rounded full pills + gradient accent = default generative-UI kit look.

Polished products almost never put **primary IA** in a candy-bar of pills.

### 5.2 What the references do instead

**A. Sidebar destinations (Linear, Stripe, Vercel)**  
Top-level places live as **nav rows**: icon + label, active state = subtle fill or left accent, unread as **dot or count** (Linear lets users choose). Hide infrequent items behind **More** / customize (Linear personalized sidebar).

**B. Spaces / contexts (Arc)**  
Mental contexts are **Spaces** (separate tab sets + theme), switched as a small control — not ten equal pills. Within a Space, vertical list carries density.

**C. Bottom tool strip for craft tools (Figma UI3)**  
Pen/frame/hand live on a **slim bottom toolbar**; product “modes” like Dev Mode are a **single toolbar control**, not a top row of peers. AI/actions live in an **Actions** overflow — progressive disclosure.

**D. Command palette as universal switch (Linear, Arc ⌘T, Raycast, Vercel)**  
Power users jump modes/pages by search. The palette is the escape hatch that keeps the default chrome thin.

**E. Route split for immersive surfaces (Figma Minimize / Arc Little Arc / Scholaris Whiteboard)**  
When the surface needs the whole viewport, **leave the hub shell** (fullscreen route) instead of stuffing another pill into the hub.

**F. Framer editor bar**  
Entry to edit sits **lightly on an edge** so it does not fight the designed page’s own bottom nav — chrome yields to content geometry.

### 5.3 Recommended Free Studying IA (chrome only)

| Need | Pattern | Anti-pattern |
| --- | --- | --- |
| Switch Tutor / PDF / Voice / Notes | **Segmented control** under page title **or** left **subnav list** (one active, muted siblings) — max ~4 peers | Full-width pill cluster with icons + labels + badges |
| Open Whiteboard Studio | Sidebar child / dedicated route (already) | Extra hub pill |
| STEM Labs | Own nav item / route (already) | Sims as fifth mode chip |
| Power jump | ⌘K / search to conversation, note, PDF | Always-visible mega toolbar |
| Focus on artifact | Collapse secondary chrome; keep one escape | Always-on dual sidebars + pill row + top bar widgets |

**Segmented control vs pills:** A compact segmented control (underline or shared track, **text-first**, no rainbow fills) is acceptable for 3–4 siblings. It fails when each segment becomes a **badge + icon + marketing label**. Prefer sentence-case labels (`Tutor`, `PDF`) over Title Case Marketing Chips.

### 5.4 Active state language (steal)

- **Linear / Vercel:** Soft fill or ink weight change; sparse accent.
- **Arc:** Active row = solid-ish surface + soft shadow on translucent sidebar.
- **Stripe:** Clear section highlight in sidebar; page title names the place.
- **Avoid:** Saturated purple pill fill, glow, or gradient on the active mode.

For Scholaris: cobalt left rail or quiet fill — **one** accent token, used like Hermès orange: rarely.

---

## 6. Per-product notes (chrome-only)

### Linear
- Redesign focused on **hierarchy, alignment, density** of the inverted-L chrome — not a new IA rewrite.
- Sidebar **customizable**; unread as count or dot.
- 2026 refresh: dimmer sidebar, compact tabs, fewer icons, softer borders — calm under growth (including agent workflows) without making the UI “AI-looking.”
- Themes from few tokens (base / accent / contrast); limited chrome tint in color math → more neutral, timeless UI.

### Arc
- **Vertical sidebar > horizontal tabs** for title legibility and widescreen use.
- **Spaces** = context switch; **⌘T** = command bar replacing a heavy URL chrome.
- Translucency is atmospheric; Scholaris should borrow **sidebar-first + command jump**, not pastel gradient wallpapers in a study dashboard.

### Framer
- Site/canvas remains primary; editor chrome **gets out of the way** (edge placement, lighter bar).
- Lesson: Free Studying content (PDF page, notes editor) should not fight a fat mode chrome overlapping bottom controls.

### Figma UI3
- Bottom toolbar standardizes muscle memory across Design / FigJam / Slides.
- **Minimize UI** collapses panels but keeps tools reachable — better than blunt Hide UI.
- Floating panels looked exciting in exploration; fixed resizable panels won for all-day speed — prefer **stable chrome** over hover-only magic for study hubs.

### Vercel Dashboard
- Geist + near-monochrome ink; status colors for signal only.
- Lists and project context over dashboard widget theater.
- Command palette + sidebar; density in **rows and metadata**, not cards of KPIs.

### Stripe Dashboard
- Sidebar sections; **tables and forms** as the product.
- Typography carries trust (Söhne discipline, tabular numbers).
- Empty/error states as first-class — relevant when PDF/OCR/voice fail in Free Studying.

### Raycast
- Entire UX is a dense floating list: primary label, muted meta, shortcut hint on the right.
- Accent (coral/red-orange) on shortcuts and selection — **surgical**.
- Blur ~20px, controlled translucency — not 60px frosted candy glass.

---

## 7. Color & look (anti-cliché)

Do **not** recommend for Scholaris Free Studying chrome:

- Purple-to-indigo gradients, glow focus rings, “AI aurora” backgrounds  
- Warm cream + terracotta + big serif (overused “tasteful AI” kit)  
- Broadsheet hairline newspaper layouts  
- Rounded-full marketing pills as primary nav  

**Do** recommend:

- Cool slate / ink surfaces aligned with existing cobalt instrument language  
- Hairline borders, dim sidebar, bright content  
- One accent (cobalt) on active + focus + primary CTA  
- Optional warm lamp only on immersive boards (Whiteboard atmosphere) — not on the hub shell  

---

## 8. Portable checklist for Free Studying shell

1. **UI type at 13–14px** for nav and lists; 11–12px meta; no 16px blog-nav.  
2. **One type family** in chrome (+ mono for IDs).  
3. **Sidebar or subnav** for primary places; ≤4 siblings in a compact segment if needed.  
4. **No equal-weight mode pill rack**; no badge soup on every mode.  
5. **Dim chrome / bright content** after the user arrives.  
6. **4px spacing**; soft separators; avoid card-wrapping every control.  
7. **Command palette** for power switching.  
8. **Immersive surfaces** get their own fullscreen route (Whiteboard already).  
9. **Accent ≤ ~10%** of any view; cobalt, not purple.  
10. **Stable panels** over hover-only chrome for long study sessions.  
11. **Keyboard and focus states** designed, not default browser rings only.  
12. **Empty/error** for PDF/voice/OCR match Stripe-level seriousness.

---

## 9. Explicit non-goals

- Cloning Linear purple, Arc Space gradients, or Stripe marketing blurple into the study hub  
- Rebuilding Free Studying as a Figma-like canvas editor  
- Adding more top-bar widgets, KPI strips, or “AI mode” glow toggles  
- App implementation in this doc (research only)

---

## 10. Source anchors

- Linear: [How we redesigned the Linear UI (Ⅱ)](https://www.linear.app/now/how-we-redesigned-the-linear-ui), [Welcome to the new Linear](https://linear.app/changelog/2024-03-20-new-linear-ui), [Personalized sidebar](https://linear.app/changelog/2024-12-18-personalized-sidebar), [A calmer interface…](https://linear.app/now/behind-the-latest-design-refresh)  
- Figma: [Behind UI3](https://www.figma.com/blog/behind-our-redesign-ui3/), [Approach to UI3](https://www.figma.com/blog/our-approach-to-designing-ui3/), [Navigating UI3](https://help.figma.com/hc/en-us/articles/23954856027159-Navigating-UI3)  
- Arc: vertical sidebar + Spaces + command bar (product behavior; design writeups)  
- Vercel: Geist system + dashboard monochrome language  
- Stripe: Dashboard sidebar + Söhne / tabular discipline  
- Raycast: dense floating list + restrained accent  
- Framer: lighter, edge-placed editor bar (product updates)
