# Own-Shell New Tab — Free Studying + STEM Labs

**Status:** Research recommendation for multi-agent delivery  
**Date:** 2026-07-20  
**Scope:** Docs only — **no app implementation**  
**Audience:** Build agents wiring product chrome for Free Studying and STEM Labs  
**Related:** `00-CONTRACT.md`, `06-product-chrome.md`, `docs/research/whiteboard/CONTRACT.md`, `docs/research/whiteboard/02-excalidraw.md`, `docs/research/whiteboard/10-concepts-freeform.md`

---

## 0. Verdict (one paragraph)

Whiteboard Studio proved the Scholaris pattern for **leaving the main dashboard sidebar**: pathname → `isExamFullscreenRoute` → `DashboardShell` renders `examLayout` (`data-shell="fullscreen"`) with **no** `DashboardSidebar` / top bar / mobile tab bar; the product owns exit (`BoardTopEsc`). That hide-chrome gate is now also applied to Free Studying and STEM Labs (`isFreeStudyFullscreenRoute` / `isLabsFullscreenRoute`). Remaining product work: open from the main app in a **new browser tab**, and mount a **product-owned cobalt sidebar** (destinations / catalog) inside the fullscreen shell — Notion file-rail + Figma file chrome + Excalidraw zen energy, not a second copy of the global dashboard nav.

---

## 1. How Whiteboard uses the fullscreen shell today

### 1.1 Mechanism (current code — reference only)

| Layer | Path | Behavior |
| --- | --- | --- |
| Route | `/dashboard/whiteboard` (`page.tsx` → `WhiteboardStudio`) | Thin layout; **no** Free Study mode tabs |
| Detector | `src/lib/dashboard/shellRoutes.ts` → `isWhiteboardFullscreenRoute` | Matches `/dashboard/whiteboard` (+ nested) |
| Aggregation | `isExamFullscreenRoute` | Also covers **free-study**, **labs**, practice sessions, question-rush session, exam runs |
| Shell | `DashboardShell` | If `hideShell`: only `examLayout` + children + `AiKeyPrompt` — **skips** sidebar, top bar, mobile tabs |
| CSS | `dashboard.module.css` `.examLayout` | `100dvh`, column flex, `overflow: hidden` |
| Exit | `BoardTopEsc` | Corner Close + Esc → `/dashboard/free-study` |

Same parent layout still wraps the page (`src/app/dashboard/layout.tsx` always mounts `DashboardShell`); fullscreen is a **branch inside** the shell, not a separate Next.js root layout.

### 1.2 What Whiteboard deliberately does *not* do

- Does **not** open a new browser tab (same-tab `router.push` from Free Studying).
- Does **not** bring a product sidebar — canvas is primary; chrome is floating HUD + chat dock.
- Does **not** reuse `DashboardSidebar` items (Home, Scho, Practice…) — those are gone for the session.

### 1.3 Sibling fullscreen peers (same `isExamFullscreenRoute`)

| Route family | Helper | Product chrome today |
| --- | --- | --- |
| Whiteboard | `isWhiteboardFullscreenRoute` | Floating HUD + `BoardTopEsc` (rail-less) |
| Free Studying | `isFreeStudyFullscreenRoute` | Hub/landing still paint their own IA; **no** dedicated product rail shell yet |
| STEM Labs | `isLabsFullscreenRoute` | Catalog / `SimLabHost`; **no** dedicated Labs product rail yet |
| Practice / exams / rush | session helpers | ExamShell-style thin HUD |

**Lesson:** Hide-dashboard-chrome is solved for Free Study + Labs. Next gap is **product-owned rail + new-tab entry**, not re-deriving the shell gate.

---

## 2. Gap analysis (what’s left)

| Surface | Route | Hide global chrome | Product rail | New-tab from dashboard |
| --- | --- | --- | --- | --- |
| Free Studying | `/dashboard/free-study` | Done (`isFreeStudyFullscreenRoute`) | **Missing** — need cobalt destination rail shell | Done / verify (`newTabLinkProps` in nav) |
| STEM Labs catalog | `/dashboard/labs` | Done (`isLabsFullscreenRoute`) | **Missing** — need catalog rail | Done / verify |
| Lab run | `/dashboard/labs/[simId]` | Done | Prefer compact/hidden rail while sim runs | Same as Labs |
| Whiteboard Studio | `/dashboard/whiteboard` | Done | N/A (rail-less by design) | Same-tab OK inside study family |

`00-CONTRACT.md` already treats Whiteboard as a full-page destination and Labs as out-of-hub. This doc freezes the chrome model: **shell gate + new-tab entry are in place or landing; the remaining build focus is the cobalt product rail** so the fullscreen void becomes a real study/lab product.

---

## 3. Recommended product model

### 3.1 Two shells, one brand

```
┌─ Tab A: Main Scholaris dashboard ─────────────────────────┐
│  DashboardSidebar · TopBar · MobileTabBar                 │
│  Home · Practice · Courses · …                            │
│  Entry: “Open Free Studying” / “Open STEM Labs”           │
│         → window.open / target=_blank (new tab)           │
└───────────────────────────────────────────────────────────┘

┌─ Tab B: Free Studying (own shell) ────────────────────────┐
│  [Product rail] │  Work surface (Tutor / PDF / Voice / …) │
│  Scholaris mark │  Cobalt instrument chrome               │
│  Destinations   │  No Home/Practice/account mega-nav      │
│  → Whiteboard   │  (Whiteboard may still be its own       │
│  Exit / Dashboard link (optional)                         │
└───────────────────────────────────────────────────────────┘

┌─ Tab C: STEM Labs (own shell) ────────────────────────────┐
│  [Product rail] │  Catalog or SimLabHost stage            │
│  Labs list      │  Full-bleed sim when running            │
│  Exit / Dashboard link                                    │
└───────────────────────────────────────────────────────────┘
```

### 3.2 Non-negotiable rules

1. **Hide global dashboard chrome** on Free Studying + Labs routes — **already landed** via `isFreeStudyFullscreenRoute` / `isLabsFullscreenRoute` → `isExamFullscreenRoute`. Do not re-add `DashboardSidebar` on those paths.
2. **Open in a new browser tab** from primary dashboard entries (sidebar, home CTA, mobile tabs, account menu). Same-tab deep links (`?dest=`) and in-product navigation still work when already inside the study/labs tab.
3. **Own product sidebar** inside the fullscreen shell — not empty Whiteboard-style void for Free Study/Labs catalog surfaces. (This is the main remaining UI deliverable.)
4. **Cobalt Scholaris** visual language (`--cobalt` / `#2563eb`, cool slate, hairlines) — align with Free Study + Whiteboard tokens; no purple AI gradients; no cream+terracotta.
5. **Whiteboard stays chrome-minimal** (floating tools + dock). Free Study/Labs get a **rail**; Whiteboard does not need the Free Study product rail when on `/dashboard/whiteboard`.
6. **Do not** duplicate the full dashboard nav tree inside the product rail.

### 3.3 New-tab entry semantics

| Entry point | Behavior |
| --- | --- |
| Dashboard sidebar “Free Studying” / “STEM Labs” | `target="_blank"` + `rel="noopener noreferrer"` (or equivalent `window.open` with noopener) |
| Dashboard home CTAs | Same |
| Mobile tab / More | Prefer new tab on desktop; on narrow mobile, same-tab may be acceptable (popup blockers / tab UX) — agent should detect coarse pointer / width if needed |
| In-product links (Tutor → Whiteboard) | Same tab `router.push` is fine (already immersive family) |
| Escape / Close from product shell | Navigate to `/dashboard` in **this** tab (or close tab if `window.opener` + policy allows — prefer explicit “Back to dashboard” link over `window.close()` anti-pattern) |

**Popup blockers:** User-gesture click handlers only; never auto-`window.open` on mount.

---

## 4. Steal from Excalidraw / Figma / Notion (full-window patterns)

### 4.1 Pattern map

| Product | Full-window idea | Steal for Scholaris | Skip |
| --- | --- | --- | --- |
| **Excalidraw** | App *is* the window; near-zero chrome; zen / view modes; thin tool strip; library as optional panel | Product fills the tab; chrome recedes; optional rail collapses; focus/zen for PDF/sim | Rough.js aesthetic as brand; collab rooms; shape mega-toolbar |
| **Figma** | File is primary; left layers/pages rail; bottom tools; **Minimize UI**; Dev Mode as single control not peer pills | Product sidebar = destinations/pages; work canvas dominates; minimize rail when reading/simming | Multiplayer avatars; comment pins; plugin sprawl; purple UI3 marketing |
| **Notion** | Page as destination; left workspace/page tree; hide sidebar for focus; calm editor column | Free Study destinations as short rail list; Labs as catalog tree; hide-rail for deep focus | Database/property chrome; teamspace sprawl; Notion AI purple |
| **Whiteboard (Scholaris)** | Hide dashboard shell; product HUD; Esc exit | Reuse `examLayout` + shellRoutes; Esc/Close affordance | No product rail (wrong for hub/catalog) |
| **Exam / Practice (Scholaris)** | Fullscreen + **own** thin HUD | Labs run mode: thin top strip (title, back, fidelity) over sim | Exam timer/score chrome on Free Study |

### 4.2 Composition recipes

**Free Studying own shell (Figma + Notion blend):**

```
┌──────────┬────────────────────────────────────────────┐
│ Rail     │  Optional thin top: Free Studying · Esc    │
│ (220px)  │────────────────────────────────────────────│
│ Mark     │                                            │
│ Tutor    │         Active destination surface         │
│ PDF      │         (composer / PDF studio / …)        │
│ Voice    │                                            │
│ Notes    │                                            │
│ ───────  │                                            │
│ Whiteboard → (new tab or same-tab studio)             │
│ STEM Labs → (new tab)                                 │
│ Dashboard                                             │
└──────────┴────────────────────────────────────────────┘
```

**STEM Labs own shell:**

```
┌──────────┬────────────────────────────────────────────┐
│ Rail     │  Catalog grid  OR  Sim stage (full bleed)  │
│ All labs │  When sim running: collapse rail to icons  │
│ Physics  │  or auto-hide (Excalidraw zen / Figma Min) │
│ …        │                                            │
└──────────┴────────────────────────────────────────────┘
```

**Whiteboard (unchanged thesis):** no product rail; atmosphere + canvas + floating tools + chat dock + `BoardTopEsc`.

### 4.3 Chrome density ladder (from Concepts / Freeform research)

Reuse the ladder from `docs/research/whiteboard/10-concepts-freeform.md`:

1. **Full** — product rail open + work surface  
2. **Compact** — icon-only rail  
3. **Hidden** — work surface only + single rediscovery peep / Esc  

Default Free Study home: Full. Default deep PDF / lab run: Compact or Hidden.

---

## 5. Steal / Skip lists

### Steal

- Pathname-gated **hide dashboard chrome** (`shellRoutes` + `examLayout`) — already proven by Whiteboard  
- **Product-owned exit** (Close / Esc / “Dashboard”) — `BoardTopEsc` pattern  
- **New tab** for leaving the main app into a study product (keep dashboard tab alive)  
- **Narrow product rail** for destinations (Notion/Figma), not mode-pill candy bars (`00-CONTRACT` + `06-product-chrome`)  
- **Cobalt** accent ≤ ~10% of view; dim rail / bright content  
- **Minimize / zen** when artifact or sim is primary (Excalidraw zen, Figma Minimize UI)  
- User-gesture `noopener` new tabs  
- Deep links still work without new tab (`/dashboard/free-study?dest=pdf`)

### Skip

- Cloning `DashboardSidebar` into the study tab  
- Fat Tutor | PDF | Voice | Notes pill strip as primary IA  
- Auto-opening tabs / popups without click  
- Forcing Whiteboard to grow a Free Study destination rail  
- Purple “AI studio” shells, cream+terracotta, glow orbs  
- `window.close()` as the only exit (unreliable; always offer navigate-to-dashboard)  
- Merging Labs back under Free Study primary destinations  
- OS browser fullscreen API as the *only* immersion (must hide **product** dashboard chrome regardless)

---

## 6. Engineering approach (guidance for implementers — not done here)

### 6.1 Shell gating — status

**Done.** `shellRoutes.ts` already exposes:

- `isFreeStudyFullscreenRoute` → `/dashboard/free-study` (+ nested)
- `isLabsFullscreenRoute` → `/dashboard/labs` (+ nested)
- Both folded into `isExamFullscreenRoute` (same as whiteboard)

Build agents should **not** re-litigate the gate; they should build product chrome that assumes fullscreen `examLayout`.

### 6.2 Product shell components (new)

When `hideShell` is true **and** route is free-study or labs, children should render inside a **product frame** that supplies the rail — either:

- **A.** Page-level wrappers (`FreeStudyStudioShell`, `LabsStudioShell`) that always paint the rail + `children`, or  
- **B.** A thin shared `ProductStudioChrome` used by both, with slot props (`rail`, `title`, `onExit`).

Whiteboard continues to render `WhiteboardStudio` without that frame.

### 6.3 New-tab wiring — status

**Landing / landed.** Prefer existing helpers in `navRoutes.ts`:

| Helper | Role |
| --- | --- |
| `isNewTabDashboardEntry(pathname, href)` | True when opening Free Study / Labs from outside those products |
| `newTabLinkProps(pathname, href)` | Returns `target="_blank"` + `rel="noopener noreferrer"` when appropriate; empty when already in-product |

Wire through sidebar, mobile tabs, home CTA, account menu, landing “Open STEM Labs”. Do **not** invent a parallel `window.open` util unless those helpers are insufficient.

Whiteboard’s same-tab push from Free Study destinations remains correct (already immersive family).

### 6.4 Auth / providers

Fullscreen branch already keeps `AiKeyPrompt`. Ensure Account sync / exam scope effects still run if Labs/Free Study need them — today the fullscreen branch **skips** `AccountSyncEffect` / `ActiveExamScopeEffect`. Build agents must verify Free Study notes + Labs do not regress when chrome is hidden; if needed, mount a minimal sync subset inside `ProductStudioChrome` without restoring the full dashboard sidebar.

---

## 7. Component map for build agents

**This research agent does not create these files.** Paths are recommendations under existing trees.

### 7.1 Shell / routing (shared)

| Path | Owner | Responsibility |
| --- | --- | --- |
| `src/lib/dashboard/shellRoutes.ts` | Shell | **Exists:** `isFreeStudyFullscreenRoute` / `isLabsFullscreenRoute` / whiteboard — keep in sync; do not regress |
| `src/components/layout/DashboardShell.tsx` | Shell | Keep fullscreen branch; no dashboard sidebar on studio routes |
| `src/app/dashboard/dashboard.module.css` | Shell | Reuse `.examLayout`; optional `[data-shell=product]` tokens if needed |
| `src/lib/dashboard/navRoutes.ts` | Constants | `FREE_STUDY_HREF` / `LABS_HREF` / `WHITEBOARD_HREF` + `newTabLinkProps` / `isNewTabDashboardEntry` |

### 7.2 Free Studying product chrome

| Path | Owner | Responsibility |
| --- | --- | --- |
| `src/components/free-study/FreeStudyStudioShell.tsx` | FS shell | Own-shell frame: cobalt rail + main stage; Esc/Dashboard exit |
| `src/components/free-study/FreeStudyProductRail.tsx` | FS shell | Destinations: Tutor, PDF, Voice, Notes; links to Whiteboard + Labs; collapse states |
| `src/components/free-study/free-study-studio-shell.module.css` | FS CSS | Rail + stage layout; cobalt tokens; compact/hidden ladder |
| `src/components/free-study/FreeStudyHub.tsx` | Hub | Compose inside StudioShell when fullscreen; keep destination IA (no fat pills) |
| `src/components/free-study/FreeStudyLanding.tsx` | Landing | May live as first stage inside shell or pre-destination home |
| `src/app/dashboard/free-study/page.tsx` | Route | Mount hub/landing; no DashboardSidebar dependency |

### 7.3 STEM Labs product chrome

| Path | Owner | Responsibility |
| --- | --- | --- |
| `src/components/sims/LabsStudioShell.tsx` | Labs shell | Own-shell frame for catalog + sim runs |
| `src/components/sims/LabsProductRail.tsx` | Labs shell | Lab list / sections; active sim highlight; collapse on run |
| `src/components/sims/labs-studio-shell.module.css` | Labs CSS | Cobalt rail; full-bleed stage for `SimLabHost` |
| `src/components/sims/SimsCatalog.tsx` | Catalog | Renders in shell stage |
| `src/components/sims/SimLabHost.tsx` | Lab run | Prefer compact/hidden rail while sim active |
| `src/app/dashboard/labs/page.tsx` | Route | Catalog under LabsStudioShell |
| `src/app/dashboard/labs/[simId]/page.tsx` | Route | Sim under LabsStudioShell |

### 7.4 Dashboard entry points (new-tab)

| Path | Owner | Responsibility |
| --- | --- | --- |
| `src/lib/dashboard/navConfig.ts` | Nav | Free Studying / STEM Labs entries; new-tab via `newTabLinkProps` |
| `src/components/layout/DashboardSidebar.tsx` | Nav UI | Apply `newTabLinkProps` for FS / Labs |
| `src/components/layout/MobileTabBar.tsx` | Mobile | Same; policy when already on product routes = same-tab |
| `src/components/layout/DashboardTopBar.tsx` | Account menu | Same if shortcuts exist |
| Dashboard home CTA (e.g. `src/app/dashboard/page.tsx`) | Home | Free Studying opens new tab when from dashboard |

### 7.5 Whiteboard (do not regress)

| Path | Note |
| --- | --- |
| `src/components/whiteboard/*` | Remains rail-less fullscreen studio |
| `BoardTopEsc` | Pattern donor for product Exit control |
| `docs/research/whiteboard/CONTRACT.md` | Still authoritative for canvas product |

### 7.6 Explicit non-goals / do-not-touch

- Rewriting global `DashboardSidebar` IA for all routes  
- Sending PDF/image binaries to Mistral (telemetry contract unchanged)  
- Reintroducing fat mode-pill primary IA  
- Purple / cream+terracotta visual reset  
- Implementing this research in app code in the research pass  

---

## 8. Acceptance checklist (for later implementers)

- [x] `/dashboard/free-study` and `/dashboard/labs` (+ `[simId]`) hide `DashboardSidebar` / top bar / mobile tab bar *(shellRoutes + DashboardShell)*  
- [ ] Those routes show a **product** cobalt rail (not empty Whiteboard void, not full dashboard nav)  
- [x] Primary dashboard entries open Free Studying / STEM Labs in a **new tab** (user gesture, noopener); in-tab deep links stay same-tab *(nav `newTabLinkProps` — verify)*  
- [ ] Whiteboard remains fullscreen + floating chrome; Esc/Close still works  
- [ ] Deep links / bookmarks work in a single tab without requiring `window.open`  
- [ ] Cobalt Scholaris look; no purple-AI / terracotta clone  
- [ ] Rail supports compact / hidden for PDF focus and sim runs  
- [ ] `npm run build` green after implementation agents land  

---

## 9. Out of scope (v1)

- Separate top-level domains (`study.scholaris…`)  
- PWA “installed app” windows  
- Multi-window sync beyond normal browser tabs  
- Replacing Mistral / telemetry contracts  
- Miro-style multiplayer product chrome  

---

## 10. One-line summary for implementers

**Reuse Whiteboard’s hide-dashboard-shell gate (already on free-study/labs); open from main dashboard in a new tab; replace the empty fullscreen with a cobalt product rail (Notion/Figma), keep Whiteboard rail-less.**
