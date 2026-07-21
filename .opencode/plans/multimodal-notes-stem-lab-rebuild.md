# Multimodal Notes + Quiz from Images + STEM Lab Rebuild + Back Button Fix

## Goal
Transform Free Studying into a fully multimodal platform: notes with camera/images, quiz generation from PDFs and images, fix the back navigation, and rebuild the STEM Lab with superior UI. Plan database structure and Cloudflare integration.

---

## Phase 1: Fix Back Button (5 min)

**File:** `src/components/free-study/FreeStudyLayout.tsx:18`

The back button currently links to `/dashboard`. It should link to `/dashboard/free-study` (the landing page) when in a mode, and to `/dashboard` when on the landing page.

**Change:**
- If `mode` is provided → `href="/dashboard/free-study"`
- If no mode (landing page) → `href="/dashboard"`

---

## Phase 2: Multimodal Notes (Camera + Images + OCR)

### 2.1 What Exists (Backend — Already Built)
- `free_study_notes` table (id, user_id, title, body, exam_type, timestamps)
- `free_study_note_assets` table (note_id, provider=r2, object_key, paths JSON, content_type, byte_size, width, height)
- `POST /api/notes/images` — server-side upload with sharp WebP variants
- `POST /api/notes/images/upload-url` — presigned R2 PUT URL
- `POST /api/notes/images/confirm` — finalize after direct PUT
- `GET /api/notes/images/[assetId]/url` — signed download URL
- `src/lib/storage/r2.ts` — R2 client with presigned URLs
- `src/lib/storage/noteImages.ts` — sharp WebP pipeline (master/thumb/card/full)
- RLS policies on both tables (owner-only access)

### 2.2 What's Missing (Frontend)
The current `FreeStudyNotes.tsx` uses only `useState` — no Supabase persistence, no image support.

### 2.3 New Notes Component Design

**Layout:** 3-column (sidebar | editor | chat) — same as now, but editor gains image support.

**New features to add:**

1. **Camera capture button** — uses `<input type="file" capture="environment">` for mobile camera, or `<input type="file" accept="image/*">` for file picker. Opens device camera on mobile.

2. **Image upload flow:**
   - User taps camera icon or drags image
   - Client calls `POST /api/notes/images/upload-url` to get presigned URL
   - Client PUTs file directly to R2
   - Client calls `POST /api/notes/images/confirm` to save metadata
   - Image appears in the note editor as a card with thumbnail

3. **OCR on uploaded images:**
   - After image upload, run `tesseract.js` client-side OCR (already in `src/lib/free-study/ocr.ts`)
   - Show extracted text in an editable field below the image
   - User can edit/correct OCR text before saving
   - OCR text is appended to the note body

4. **Image gallery in editor:**
   - Uploaded images display as a grid of cards below the title
   - Each card shows: thumbnail, OCR text preview, delete button
   - Click to expand (lightbox)

5. **Save to Supabase:**
   - `POST /api/notes` — create/update note (title, body, exam_type)
   - `GET /api/notes` — list user's notes
   - `DELETE /api/notes/[id]` — delete note + assets

6. **Ask Scho with images:**
   - When asking about a note with images, send OCR text + image context to tutor
   - Telemetry: `note_excerpt` + `ocr_text` fields

### 2.4 New API Routes Needed

| Route | Method | Purpose |
|-------|--------|---------|
| `/api/notes` | GET | List user's notes |
| `/api/notes` | POST | Create/update note |
| `/api/notes/[id]` | DELETE | Delete note + assets |

(These are simple Supabase CRUD — no Cloudflare needed.)

### 2.5 Quiz Generation from Images/PDFs

**Current state:** `/api/ai/free-study/quiz` and `/api/ai/free-study/flashcards` reject image blobs, accept only pre-extracted text.

**Change:** Make the quiz/flashcard APIs accept `ocr_text` and `pdf_excerpt` as text fields (they already do via the tutor route). The Notes component will:
1. Upload image → OCR → extract text
2. Send extracted text to quiz/flashcard API
3. Generate questions from the text

This means the quiz/flashcard APIs don't need to change — the Notes component just needs to call them with the extracted text.

---

## Phase 3: STEM Lab Rebuild

### 3.1 Current State
- 6 physics labs (Canvas2D only)
- `LabsShell.tsx` — fullscreen sidebar shell (363 lines)
- `LabsStudioShell.tsx` — alternative shell with density ladder (298 lines)
- `LabsProductRail.tsx` — sidebar rail (291 lines)
- `SimsCatalog.tsx` — card grid (81 lines)
- `SimLabHost.tsx` — dynamic loader (66 lines)
- Shared kernel, ODE solvers, SimShell, PredictRunCompare, VisualStage

### 3.2 Problems with Current UI
1. **Too complex** — 3 shell variants (LabsShell, LabsStudioShell, LabsProductRail) = confusion
2. **Sidebar is heavy** — dark navy sidebar with categories feels like a separate app
3. **No integration with Free Studying** — labs are a separate route (`/dashboard/labs`)
4. **Missing chemistry/biology/math** — only physics implemented
5. **No "Ask Scho" integration** — can't ask AI about lab results

### 3.3 New STEM Lab Design

**Approach:** Integrate labs into Free Studying as a mode (like Tutor, PDF, Voice, Notes).

**New file structure:**
```
src/components/free-study/
  FreeStudyLabs.tsx          (NEW — lab hub + runner)
  FreeStudyLabs.module.css
```

**Delete:**
- `src/components/sims/LabsShell.tsx`
- `src/components/sims/LabsStudioShell.tsx`
- `src/components/sims/LabsProductRail.tsx`
- `src/components/sims/labs-shell.module.css`
- `src/components/sims/labs-studio-shell.module.css`

**Keep:**
- `src/sims/` — all simulation code (kernel, shell, physics packs)
- `src/components/sims/SimsCatalog.tsx`
- `src/components/sims/SimLabHost.tsx`
- `src/components/sims/sims-hub.module.css`
- `src/components/sims/labsA11y.ts`

**New Labs Page Design:**
- Simple card grid (like landing page) showing all available labs
- Each card: title, subject badge, fidelity badge, exam tags
- Click → opens the lab in a clean frame (no heavy sidebar)
- "Ask Scho" panel on the right side of the lab
- Back button goes to free-study landing

**Layout:**
```
┌─────────────────────────────────────────────┐
│  Back: Free Studying  |  STEM Labs          │
├─────────────────────────────────────────────┤
│                                             │
│  [Lab Card Grid]  or  [Lab Runner + Chat]   │
│                                             │
└─────────────────────────────────────────────┘
```

---

## Phase 4: Database Structure Plan

### 4.1 Existing Tables (Already Created)

```sql
-- Notes (already exists)
free_study_notes (id, user_id, title, body, exam_type, created_at, updated_at)
free_study_note_assets (id, note_id, user_id, provider, object_key, paths, content_type, byte_size, width, height, created_at)

-- Tutor conversations (already exists)
tutor_conversations (id, user_id, context_type, course_id, created_at)
tutor_messages (id, conversation_id, role, content, telemetry, created_at)
```

### 4.2 New Tables Needed

```sql
-- Quiz sessions from notes/PDFs/images
CREATE TABLE free_study_quizzes (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id),
  source_type text NOT NULL CHECK (source_type IN ('note', 'pdf', 'image', 'text')),
  source_note_id uuid REFERENCES free_study_notes(id),
  title text NOT NULL,
  questions jsonb NOT NULL,  -- Array of {question, options, correct, explanation}
  answers jsonb,             -- User's answers (null if not taken)
  score integer,             -- Percentage (null if not taken)
  exam_type text,
  created_at timestamptz DEFAULT now(),
  completed_at timestamptz
);

-- Flashcard decks from notes/PDFs/images
CREATE TABLE free_study_flashcard_decks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id),
  source_type text NOT NULL CHECK (source_type IN ('note', 'pdf', 'image', 'text')),
  source_note_id uuid REFERENCES free_study_notes(id),
  title text NOT NULL,
  cards jsonb NOT NULL,  -- Array of {front, back}
  exam_type text,
  created_at timestamptz DEFAULT now()
);

-- Lab sessions (optional — for tracking lab usage)
CREATE TABLE free_study_lab_sessions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id),
  sim_id text NOT NULL,
  telemetry jsonb,  -- SimTelemetry payload
  created_at timestamptz DEFAULT now()
);
```

### 4.3 RLS Policies

```sql
-- quizzes
ALTER TABLE free_study_quizzes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own quizzes" ON free_study_quizzes FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own quizzes" ON free_study_quizzes FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own quizzes" ON free_study_quizzes FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete own quizzes" ON free_study_quizzes FOR DELETE USING (auth.uid() = user_id);

-- flashcard_decks
ALTER TABLE free_study_flashcard_decks ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own decks" ON free_study_flashcard_decks FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own decks" ON free_study_flashcard_decks FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update own decks" ON free_study_flashcard_decks FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete own decks" ON free_study_flashcard_decks FOR DELETE USING (auth.uid() = user_id);

-- lab_sessions
ALTER TABLE free_study_lab_sessions ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Users can view own sessions" ON free_study_lab_sessions FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "Users can create own sessions" ON free_study_lab_sessions FOR INSERT WITH CHECK (auth.uid() = user_id);
```

---

## Phase 5: Cloudflare Integration Plan

### 5.1 Current State
- R2 is configured for note images (presigned URLs, sharp WebP pipeline)
- No Cloudflare Workers, D1, or Vectorize
- No `wrangler.toml` in the project

### 5.2 What's Needed for This Phase

**R2 (already done):**
- Note images → R2 via presigned URLs ✅
- Sharp WebP variants (master/thumb/card/full) ✅
- Signed download URLs ✅

**What's NOT needed yet:**
- D1 — Supabase already handles the database
- Vectorize — premature for v1
- Workers AI — Mistral via BYOK is the primary LLM
- Durable Objects — no real-time collab needed

**Future Cloudflare additions (out of scope for now):**
- Vectorize for semantic search of notes (when notes count > 100)
- Workers AI for on-device OCR fallback (when tesseract.js is too slow)
- D1 for edge-cached quiz/flashcard data

---

## Phase 6: Implementation Order

1. **Fix back button** (5 min)
2. **Create Supabase CRUD for notes** (new API routes)
3. **Rebuild FreeStudyNotes** with camera, image upload, OCR, persistence
4. **Wire quiz/flashcard generation** from note text
5. **Rebuild FreeStudyLabs** — delete old shells, create new integrated component
6. **Create database migration** for quizzes, flashcard_decks, lab_sessions
7. **Run build + lint**

---

## Phase 7: Verification

- [ ] Back button goes to free-study landing (not dashboard)
- [ ] Notes persist to Supabase (survive page refresh)
- [ ] Camera capture works on mobile
- [ ] Image upload goes to R2 (check network tab)
- [ ] OCR extracts text from uploaded images
- [ ] Quiz generation works from note text
- [ ] Flashcard generation works from note text
- [ ] STEM Labs render in the new integrated shell
- [ ] "Ask Scho" works alongside labs
- [ ] Dark mode works across all new pages
- [ ] `npm run build` passes
- [ ] `npm run lint` has no new errors
