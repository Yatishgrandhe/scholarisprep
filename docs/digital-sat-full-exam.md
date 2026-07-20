# Digital SAT full-length tests

## Format spec (Bluebook)

| Module | Section | Questions | Time |
|--------|---------|-----------|------|
| RW Module 1 | Reading & Writing | 27 | 32 min |
| RW Module 2 | Reading & Writing | 27 | 32 min |
| Math Module 1 | Math | 22 | 35 min |
| Math Module 2 | Math | 22 | 35 min |
| **Total** | | **98** | **134 min** |

- **Section totals:** RW 54 questions / 64 min; Math 44 questions / 70 min.
- **Adaptive routing:** The real SAT adapts Module 2 difficulty from Module 1 performance. Scholaris uses fixed official slices per form (no live adaptive routing yet).
- **Break:** Bluebook includes a **10-minute** break between RW and Math (skippable). Full exams and Exam Simulator show `ExamBreakScreen` after RW Module 2; metadata tracks `break_status`, `break_started_at`, `break_skipped`.

Constants live in `src/lib/exam/digitalSat.ts` (`DIGITAL_SAT_MODULES`, `DIGITAL_SAT_BREAK_MINUTES`).

## Question pools

### Official practice (`/dashboard/exams`)

- `source = college_board_opensat` (OpenSAT import)
- Assembly: `fetchFullExamQuestionSet({ pool: "official" })`

### Exam Simulator (`/dashboard/predicted-papers`)

- **392 unique** Scholaris-generated questions (`source = exam_simulator`, `is_platform_question = false`)
- 4 forms × 98 Q, tagged in `source_metadata` (`simulator_form`, `module_key`, `slot`)
- Generator: `scripts/generate-exam-simulator-forms.mjs` + `scripts/lib/exam-simulator-blueprint.mjs`
- Loader: `fetchSimulatorFormQuestions()` → `createSimulatorExamSession()` → `/dashboard/exams/[sessionId]`
- **No feedback during exam:** `isExamMode` on `QuestionInterface` — no check, hints, AI, or explanations until report

## End-to-end flows

### Full practice test (`/dashboard/exams`)

1. User starts **Full Practice Test** or a single section (RW or Math → 2 modules).
2. `createFullExamSession()` builds 2 or 4 module metadata blocks, fetches official questions per module, inserts `exam_sessions` (`session_type: full_exam`).
3. Client hydrates Zustand `fullExamSession` and routes to `/dashboard/exams/[sessionId]`.
4. User completes each module (timer per module); answers stored in `question_attempts` on section submit.
5. Report at `/dashboard/exams/[sessionId]/report` joins attempts → questions and shows stored explanations + optional AI explain.

### Exam simulator (`/dashboard/predicted-papers`)

1. User picks Simulator 1–4.
2. `createSimulatorExamSession(formIndex)` loads dedicated `exam_simulator` questions per module.
3. Routes to `/dashboard/exams/[sessionId]` (not practice — preserves exam-mode rules).
4. Per-module timers; 10-min skippable break after RW Module 2; section submit writes `question_attempts`.
5. Report at `/dashboard/exams/[sessionId]/report` shows explanations after full submit.

### Skill drill / bank sessions

- Still use `fetchPracticeQuestions()` (platform or official via `questionSet` filter).
- Reports now read `question_attempts` + `questions`, not legacy `practice_attempts`.

## Key files

| File | Role |
|------|------|
| `src/lib/exam/digitalSat.ts` | Module timing/counts |
| `src/lib/exam/assembleQuestions.ts` | Official + simulator question assembly |
| `src/lib/exam/queries.ts` | `createFullExamSession`, `createSimulatorExamSession` |
| `src/lib/exam/break.ts` | RW → Math break helpers |
| `src/components/exam/ExamBreakScreen.tsx` | Skippable 10-min break UI |
| `src/lib/exam/metadata.ts` | Section/module metadata shape |
| `src/lib/practice/sessionReport.ts` | Shared report row builder |
| `src/lib/question/schema.ts` | Source/explanation helpers |
| `src/lib/practice/mapQuestion.ts` | DB → UI question mapping |

## Gaps / follow-ups

1. **Adaptive Module 2** — route easier/harder pool from Module 1 accuracy.
2. **Form registry** — named forms instead of id-slice offsets for official pool.
3. **SPR / grid-in in simulator** — generator can emit `grid_in`; exam UI grid-in entry not built.
4. **Supabase types** — `questions.source` column may be missing from generated `supabase.ts`.
5. **Legacy sessions** — old 2-section metadata without `filter_section` is normalized in `parseExamMetadata`.

## Legal

OpenSAT / College Board content is not an official API. Display disclaimer on exam surfaces (see marketing footer pattern).
