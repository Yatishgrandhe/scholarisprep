# Free Study Overhaul + Note Projects + CSS Fixes

## Goal
1. Remove PDF and Voice pages from Free Studying
2. Rebuild `/dashboard/free-study` as a dashboard with sidebar (Quiz, Flashcards, Notes, Whiteboard as children)
3. Add **Note Projects** — organize notes into projects with PDFs and images
4. Upgrade Notes with image/PDF upload (client-side resize → presigned URL → R2), quiz/flashcard generation
5. Fix whiteboard dark mode (1,100+ lines of hardcoded light colors)
6. Fix remaining hardcoded colors across all CSS files

---

## Research Summary: 24 Apps Analyzed

| App | Org Model | Image Handling | PDF Handling | Takeaway for Scholaris |
|-----|-----------|---------------|-------------|----------------------|
| **Notion** | Pages + Databases | Drag/drop, resize, Unsplash | Embed, AI analyze | Database-centric projects |
| **Obsidian** | Folders + Links + Graph | Local files, plugin resize | Embedded PDFs, annotation | File-system native |
| **Roam Research** | Pages + Blocks + Graph | Upload to cloud, public URLs | Upload, embed | Outliner + daily notes |
| **Logseq** | Outliner + Pages + Graph | Local assets, resize via attrs | Built-in PDF annotation | Graph-based, local-first |
| **Craft** | Spaces > Folders > Docs | Auto-layout, gallery viewer | Inline preview, AI analysis | Beautiful native design |
| **Bear** | Nested Tags | Resize, crop, snap-align, OCR | Inline preview, scanner | Tag-centric, minimalist |
| **Ulysses** | Projects > Groups > Sheets | Markup tags, captions | Attachments, annotation | Writing-focused |
| **Evernote** | Spaces > Stacks > Notebooks | OCR, thumbnails, edit tools | Annotation, converter, AI search | Web Clipper, OCR everywhere |
| **Apple Notes** | Folders + Smart Folders | Inline, markup, gallery | Annotation, markup, OCR | Deep ecosystem integration |
| **Coda** | Workspace > Folders > Docs | Image columns, crop | File columns, inline display | "Doc as app" paradigm |
| **Slite** | Channels > Docs | Upload, embed, inline | Upload, embed | AI knowledge base |
| **Nuclino** | Workspaces > Collections | Inline, drag-and-drop | File attachments | Speed-focused, real-time |
| **Mem** | Collections (AI-organized) | Upload, AI descriptions, OCR | Auto-index, AI chat | AI-first, auto-organization |
| **Reflect** | Backlinks + Tags + Graph | Drag/drop, encrypted | Encrypted, OCR, AI chat | E2E encryption |
| **Tana** | Supertags + Nodes + Views | Drag/drop, AI descriptions | File attachments | Supertag typed objects |
| **AnyType** | Types + Objects + Graph | Object-based, local | Embedded, encrypted | P2P sync, open-source |
| **Outline** | Collections > Documents | Upload, embed, URL | File attachments, export | Open-source team wiki |
| **AppFlowy** | Folders > Pages | Drag/drop, Unsplash, gallery | Embed, file blocks | Open-source Notion alt |
| **AFFiNE** | Folders + Collections | Upload, embed, whiteboard | Inline preview, export | Merged docs + whiteboard |
| **SiYuan** | Notebooks > Documents > Blocks | Assets folder, OCR, Markdown WYSIWYG | PDF annotation w/ bidirectional links | SQL query embedding |
| **Trilium** | Tree (cloning, no folders) | Attached exclusively, Excalidraw | In-app preview, annotation | Note cloning, scripting |
| **Joplin** | Notebooks + Tags | Resources linked to notes, OCR | Attached, OCR, external viewer | E2E encrypted, multi-sync |
| **Standard Notes** | Nested Tags + Smart Views | Encrypted upload, inline | Encrypted, 100GB storage | Zero-knowledge |
| **GoodNotes** | Workspaces > Folders > Docs | Annotate, resize, lasso tool | Full annotation, OCR, AI search | Handwriting-first, PDF annotation |

### Key Patterns Adopted for Scholaris
- **Notion-style**: Projects as database rows with properties (tags, status, date)
- **Craft-style**: Gallery view for browsing images in a project
- **Evernote-style**: OCR across all content types
- **Obsidian-style**: File-system native with link-based navigation
- **GoodNotes-style**: PDF annotation with bidirectional links

---

## Image Resize & Storage Strategy

### Client-Side (Before Upload)
Library: `browser-image-compression` (~50KB gzipped, zero-config)

```
User selects image
  → validate MIME + size (< 50MB raw)
  → browser-image-compression: WebP, max 1920px, quality 0.8
  → generates client-side thumbnail (300px) for optimistic preview
  → uploads compressed blob via presigned URL to R2
```

**Settings:**
| Setting | Value | Rationale |
|---------|-------|-----------|
| Client max dimension | 1920px | Covers 2x Retina |
| Client output format | WebP | 96% support, 25-35% smaller than JPEG |
| Client quality | 0.8 | Good balance size vs quality |
| Max file size | 50MB raw → ~1MB compressed | Fast uploads on mobile |
| Client thumbnail | 300px WebP q75 | Grid/card views (optimistic) |

### Server-Side (After Upload — R2 confirm flow)
Existing sharp pipeline in `src/lib/storage/noteImages.ts` generates 4 variants:
- **master**: 2048px WebP q80 (or q85 for handwriting)
- **full**: 1600px WebP from master
- **card**: 800px WebP from master
- **thumb**: 320px WebP q78 from master

**New addition**: Generate BlurHash on server for progressive loading:
```typescript
// Add to noteImages.ts
import { encode } from 'blurhash';

export async function generateBlurHash(buffer: Buffer): Promise<string> {
  const { data, info } = await sharp(buffer)
    .resize(32, 32, { fit: "cover" })
    .ensureAlpha()
    .raw()
    .toBuffer({ resolveWithObject: true });
  return encode(new Uint8ClampedArray(data), info.width, info.height, 4, 4);
}
```

### Display Flow
```
Component receives { url, thumbnailUrl, blurHash, width, height }
  → Renders BlurHash placeholder (instant, ~30 bytes decoded)
  → Uses next/image with loading="lazy"
  → Browser negotiates WebP/AVIF via Accept header
  → CDN caches variant for subsequent requests
  → Placeholder fades out as real image loads
```

### New Dependencies to Add
- `browser-image-compression` — client-side compression
- `blurhash` — generate blur hashes on server
- `react-blurhash` — decode and render BlurHash placeholders

---

## Note Projects: Data Model

### Database Schema (New Tables)

```sql
-- Note projects (folders/containers)
CREATE TABLE free_study_projects (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  description TEXT,
  color TEXT, -- optional project color for sidebar
  icon TEXT, -- optional emoji/icon
  parent_id UUID REFERENCES free_study_projects(id) ON DELETE SET NULL,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

-- Notes belong to projects (nullable — ungrouped notes live in inbox)
ALTER TABLE free_study_notes
  ADD COLUMN project_id UUID REFERENCES free_study_projects(id) ON DELETE SET NULL;

-- PDF attachments
CREATE TABLE free_study_pdfs (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
  project_id UUID REFERENCES free_study_projects(id) ON DELETE SET NULL,
  title TEXT NOT NULL,
  object_key TEXT NOT NULL, -- R2 key
  thumbnail_key TEXT, -- R2 key for cover page thumbnail
  page_count INTEGER,
  byte_size INTEGER,
  extracted_text TEXT, -- OCR/text extraction from pdf.js
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Image assets (extend existing free_study_note_assets)
-- Already exists — add project_id for direct project-level images
ALTER TABLE free_study_note_assets
  ADD COLUMN project_id UUID REFERENCES free_study_projects(id) ON DELETE SET NULL;
```

### Sidebar Nav Structure
```
Free Studying (sidebar parent)
├── Overview          → /dashboard/free-study
├── Projects          → /dashboard/free-study/projects
│   ├── [Project A]   → /dashboard/free-study/projects/[id]
│   └── [Project B]   → /dashboard/free-study/projects/[id]
├── Quiz              → /dashboard/free-study/quiz
├── Flashcards        → /dashboard/free-study/flashcards
├── Whiteboard Studio → /dashboard/free-study?dest=whiteboard
└── Notes             → /dashboard/free-study?dest=notes
```

### API Routes (New)

| Method | Route | Purpose |
|--------|-------|---------|
| GET | `/api/free-study/projects` | List user's projects |
| POST | `/api/free-study/projects` | Create project |
| PATCH | `/api/free-study/projects/[id]` | Update project |
| DELETE | `/api/free-study/projects/[id]` | Delete project |
| GET | `/api/free-study/projects/[id]/items` | List notes + PDFs in project |
| POST | `/api/free-study/pdfs/upload` | Presigned URL for PDF upload |
| POST | `/api/free-study/pdfs/confirm` | Confirm PDF upload + extract text |
| GET | `/api/free-study/pdfs/[id]` | Get PDF metadata |
| GET | `/api/free-study/pdfs/[id]/url` | Signed download URL |

### PDF Handling
- **Upload**: Presigned URL flow (existing R2 infrastructure)
- **Thumbnail**: Client-side via `pdfjs-dist` — render first page to canvas, export as WebP, upload alongside PDF
- **Text extraction**: Client-side via `pdfjs-dist` `page.getTextContent()` on upload confirm
- **Display**: `@embedpdf/react-pdf-viewer` (WASM/PDFium, MIT, fastest rendering)
- **Size limit**: 100MB per PDF

---

## Phase 1: Remove PDF and Voice Pages

### DELETE (4 files)
- `src/components/free-study/FreeStudyPdf.tsx`
- `src/components/free-study/free-study-pdf.module.css`
- `src/components/free-study/FreeStudyVoice.tsx`
- `src/components/free-study/free-study-voice.module.css`

### EDIT
- `src/app/dashboard/free-study/page.tsx` — Remove pdf/voice imports and switch cases
- `src/components/free-study/FreeStudyLanding.tsx` — Remove PDF and Voice from `DESTINATIONS` array

---

## Phase 2: Free Study Dashboard with Sidebar

### Current: DashboardShell HIDES sidebar on `/dashboard/free-study`. FreeStudyLayout shows back button header.
### Target: Sidebar stays visible with children. Free study content renders in dashboard content area.

### Files to Edit

1. **`src/components/layout/DashboardShell.tsx`** (line 50-54)
   - Remove `isFreeStudyFullscreenRoute(path)` from `hideShell` check
   - Keep it only for `?dest=whiteboard` (fullscreen whiteboard mode)

2. **`src/lib/dashboard/navConfig.ts`** (line 96-105)
   - Expand `FREE_STUDY_NAV_ID` children:
   ```ts
   children: [
     { id: "overview", href: FREE_STUDY_HREF, label: "Overview", icon: LayoutDashboard },
     { id: "projects", href: `${FREE_STUDY_HREF}/projects`, label: "Projects", icon: FolderOpen },
     { id: "notes", href: `${FREE_STUDY_HREF}?dest=notes`, label: "Notes", icon: FileText },
     { id: "quiz", href: `${FREE_STUDY_HREF}/quiz`, label: "Quiz", icon: Brain },
     { id: "flashcards", href: `${FREE_STUDY_HREF}/flashcards`, label: "Flashcards", icon: Layers },
     WHITEBOARD_NAV_ITEM, // existing
   ]
   ```

3. **`src/components/free-study/FreeStudyLayout.tsx`**
   - Remove header/back button shell (sidebar handles nav)
   - Just render `{children}` in a simple flex container

4. **`src/components/free-study/FreeStudyLanding.tsx`**
   - Redesign as dashboard overview:
     - Welcome heading with user name
     - Stats row (total notes, projects, study streak)
     - Quick-action cards: Projects, Notes, Quiz, Flashcards, Whiteboard
     - Recent activity section

5. **`src/components/free-study/free-study-landing.module.css`**
   - Dashboard-style grid layout (not centered hero)

---

## Phase 3: Note Projects System

### New Files to Create

1. **`src/app/dashboard/free-study/projects/page.tsx`** — Projects list view
2. **`src/app/dashboard/free-study/projects/[projectId]/page.tsx`** — Single project view
3. **`src/components/free-study/ProjectList.tsx`** — Grid of project cards
4. **`src/components/free-study/ProjectView.tsx`** — Project detail with notes + PDFs + images
5. **`src/components/free-study/ProjectCard.tsx`** — Card component for project grid
6. **`src/components/free-study/project-list.module.css`** — Projects page styles
7. **`src/components/free-study/project-view.module.css`** — Project detail styles
8. **`src/app/api/free-study/projects/route.ts`** — List + create projects
9. **`src/app/api/free-study/projects/[id]/route.ts`** — Update + delete project
10. **`src/app/api/free-study/projects/[id]/items/route.ts`** — List items in project
11. **`src/app/api/free-study/pdfs/upload-url/route.ts`** — Presigned URL for PDF
12. **`src/app/api/free-study/pdfs/confirm/route.ts`** — Confirm upload + extract text
13. **`src/app/api/free-study/pdfs/[id]/url/route.ts`** — Signed download URL

### Project List View (`/dashboard/free-study/projects`)
- Grid of `ProjectCard` components
- Each card shows: icon, name, note count, PDF count, image count, last updated
- "New Project" button → inline name input or modal
- Sort by: last updated, name, created date

### Project Detail View (`/dashboard/free-study/projects/[id]`)
- Header: project name, description, edit button
- Tabs or sections: Notes | PDFs | Images
- **Notes tab**: List of notes in this project (reuse `FreeStudyNotes` component)
- **PDFs tab**: Grid of PDF thumbnails with titles. Click to open inline viewer
- **Images tab**: Gallery view of all images (reuse Craft-style auto-layout)
- Drag-and-drop to reorder items
- Move items between projects via context menu

### ProjectCard Component
```
┌─────────────────────────┐
│ 📁 Physics 101          │
│                         │
│  12 notes · 3 PDFs      │
│  24 images              │
│                         │
│  Updated 2 hours ago    │
└─────────────────────────┘
```

---

## Phase 4: Enhanced Notes with Media + Quiz/Flashcards

### Current: 3-panel (sidebar + text editor + text chat). Text only.
### Target: Rich notes with image/PDF upload, quiz/flashcard generation.

### `src/components/free-study/FreeStudyNotes.tsx` — Add:

1. **Image upload** (presigned URL flow):
   - File input (accept `image/*`) + camera capture on mobile
   - `browser-image-compression` → WebP, max 1920px, q0.8
   - Client-side 300px thumbnail for optimistic preview
   - `POST /api/notes/images/upload-url` → PUT to R2 → `POST /api/notes/images/confirm`
   - OCR via `recognizeImageText()` (existing tesseract.js utility) — optional, user-triggered
   - Image renders inline in note editor

2. **PDF upload** (new presigned URL flow):
   - File input (accept `.pdf`)
   - `POST /api/free-study/pdfs/upload-url` → PUT to R2 → `POST /api/free-study/pdfs/confirm`
   - Client-side: `pdfjs-dist` renders page 1 to canvas → thumbnail WebP blob → upload alongside
   - Client-side: `pdfjs-dist` `page.getTextContent()` → extracted text stored in DB
   - PDF appears as collapsible embed in note (use `@embedpdf/react-pdf-viewer`)

3. **Quiz generation**:
   - "Quiz Me" button in toolbar
   - Calls existing `generateQuiz({ text: noteContent, count: 5 })` from `src/lib/free-study/generateQuiz.ts`
   - Renders questions inline with options, explanations
   - Track score (correct/incorrect)

4. **Flashcard generation**:
   - "Make Flashcards" button in toolbar
   - Calls existing `generateFlashcardsFromText({ text: noteContent, count: 8 })` from `src/lib/free-study/generateFlashcards.ts`
   - Renders flashcards with flip animation (reuse pattern from `FlashcardsSession.tsx`)
   - Navigation: prev/next, progress bar

5. **Action bar** — Toolbar above editor:
   ```
   [📷 Image] [📄 PDF] [🧠 Quiz Me] [📚 Flashcards] [⚙️ Settings]
   ```

### `src/components/free-study/free-study-notes.module.css` — Add:
- `.mediaToolbar` — action bar above editor
- `.imagePreview` — inline image grid in editor
- `.pdfEmbed` — collapsible PDF viewer container
- `.quizContainer` — quiz question/option styles
- `.flashcardContainer` — flashcard flip styles
- `.flashcardProgress` — progress bar
- Dark mode overrides for all new styles

### New Quiz/Flashcard UI Components
Create dedicated components (not just inline rendering):

1. **`src/components/free-study/NoteQuiz.tsx`** — Quiz renderer
   - Props: `questions: FreeStudyQuizQuestion[]`, `onComplete: (score) => void`
   - Renders one question at a time with 4 options
   - Shows explanation after answering
   - Final score screen

2. **`src/components/free-study/NoteFlashcards.tsx`** — Flashcard renderer
   - Props: `cards: FreeStudyFlashcard[]`, `onComplete: () => void`
   - Card flip animation
   - Navigation (prev/next/keyboard)
   - Progress bar
   - "Know it" / "Review again" buttons

---

## Phase 5: Whiteboard Chat Dock Dark Mode (696 lines)

### Problem
`board-chat.module.css` has ZERO dark mode. Every color hardcoded for light:
- `--dock-ink: hsl(222 47% 11%)`, `--dock-glass: white-based`, `--dock-surface: white-based`
- `.shell`, `.head`, `.footer`, `.brandMark`, `.tab` all use white gradients

### Fix: Add `:global(.dark)` overrides at end of file
Override `--dock-*` CSS custom properties + specific element backgrounds. ~80 lines.

Key overrides:
- `.dock` vars → dark ink, dark glass, dark surface
- `.shell` → dark gradient background
- `.head` → dark gradient
- `.footer` → dark gradient
- `.assistantBody` → dark background
- `.brandMark` → dark tinted
- `.tab` → dark glass pill
- `.tabMark`, `.tabCount`, `.emptyMark` → dark backgrounds
- `.iconBtn:hover` → subtle light highlight on dark

---

## Phase 6: Whiteboard Ask Bar Dark Mode (156 lines)

### Problem
`board-ask.module.css` hardcodes `#0f172a` ink, `#f8fafc` surface, `#fff` backgrounds

### Fix: Add `:global(.dark)` overrides
Override `--ask-*` vars + specific backgrounds. ~25 lines.

---

## Phase 7: Whiteboard Toolbar Dark Mode (259 lines)

### Problem
`board-toolbar.module.css` hardcodes `#0f172a` ink, `#f8fafc` surface, `#fff` swatch border

### Fix: Add `:global(.dark)` overrides
Override `--tb-*` vars + rule/swatch colors. ~20 lines.

---

## Phase 8: Board Canvas Dark Mode

### `board-canvas.module.css` — 2 hardcoded paper colors
```css
:global(.dark) .wrap {
  --board-paper-0: hsl(222 28% 14%);
  --board-paper-1: hsl(222 28% 16%);
  --board-rule: hsl(215 22% 48% / 0.08);
  --board-dot: hsl(215 28% 42% / 0.10);
  --board-edge: hsl(215 25% 28% / 0.12);
}
:global(.dark) .empty {
  color: hsl(215 16% 60% / 0.72);
}
:global(.dark) .wrap::after {
  background: radial-gradient(
    ellipse 90% 80% at 50% 40%,
    transparent 45%,
    hsl(215 30% 20% / 0.12) 100%
  );
}
```

### `free-study.module.css` — `.primaryBtn` has `color: #fff`
Replace with `color: hsl(var(--primary-foreground))`

---

## Phase 9: Build + Commit + Push

1. `npm run build` — verify clean
2. `git add` all changed files
3. Commit with descriptive message
4. Push to master

---

## Files Changed Summary

| Action | File | Change |
|--------|------|--------|
| DELETE | `FreeStudyPdf.tsx` | Remove |
| DELETE | `free-study-pdf.module.css` | Remove |
| DELETE | `FreeStudyVoice.tsx` | Remove |
| DELETE | `free-study-voice.module.css` | Remove |
| EDIT | `page.tsx` (free-study) | Remove pdf/voice |
| EDIT | `FreeStudyLanding.tsx` | Dashboard overview redesign |
| EDIT | `free-study-landing.module.css` | Dashboard layout |
| EDIT | `FreeStudyLayout.tsx` | Simplify (no header) |
| EDIT | `FreeStudyNotes.tsx` | Image/PDF upload, quiz, flashcards |
| EDIT | `free-study-notes.module.css` | New media/quiz styles |
| EDIT | `DashboardShell.tsx` | Show sidebar on free-study |
| EDIT | `navConfig.ts` | Add free-study children |
| EDIT | `board-chat.module.css` | +80 lines dark overrides |
| EDIT | `board-ask.module.css` | +25 lines dark overrides |
| EDIT | `board-toolbar.module.css` | +20 lines dark overrides |
| EDIT | `board-canvas.module.css` | +5 lines dark overrides |
| EDIT | `free-study.module.css` | Fix #fff on primaryBtn |
| EDIT | `noteImages.ts` | Add BlurHash generation |
| CREATE | `projects/page.tsx` | Projects list view |
| CREATE | `projects/[projectId]/page.tsx` | Project detail view |
| CREATE | `ProjectList.tsx` | Grid of project cards |
| CREATE | `ProjectView.tsx` | Project detail with items |
| CREATE | `ProjectCard.tsx` | Card component |
| CREATE | `NoteQuiz.tsx` | Quiz renderer |
| CREATE | `NoteFlashcards.tsx` | Flashcard renderer |
| CREATE | `project-list.module.css` | Projects page styles |
| CREATE | `project-view.module.css` | Project detail styles |
| CREATE | `note-quiz.module.css` | Quiz styles |
| CREATE | `note-flashcards.module.css` | Flashcard styles |
| CREATE | `api/free-study/projects/route.ts` | List + create |
| CREATE | `api/free-study/projects/[id]/route.ts` | Update + delete |
| CREATE | `api/free-study/projects/[id]/items/route.ts` | List items |
| CREATE | `api/free-study/pdfs/upload-url/route.ts` | Presigned URL |
| CREATE | `api/free-study/pdfs/confirm/route.ts` | Confirm + extract |
| CREATE | `api/free-study/pdfs/[id]/url/route.ts` | Download URL |

---

## Dependencies to Add

```bash
npm install browser-image-compression blurhash react-blurhash @embedpdf/react-pdf-viewer pdfjs-dist
```

| Package | Size | Purpose |
|---------|------|---------|
| `browser-image-compression` | ~50KB | Client-side image resize + WebP |
| `blurhash` | ~5KB | Server-side blur hash generation |
| `react-blurhash` | ~3KB | React blur hash placeholder component |
| `@embedpdf/react-pdf-viewer` | ~200KB | WASM-based PDF viewer (fastest) |
| `pdfjs-dist` | ~500KB | PDF text extraction + thumbnail gen |
