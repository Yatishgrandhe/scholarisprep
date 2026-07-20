# Scholaris

A free, AI-powered Digital SAT prep platform that delivers personalized adaptive practice, real-time tutoring, and structured study plans.

**Live:** [scholaris.ai](https://scholaris.ai)

---

## What It Does

Scholaris helps students prepare for the Digital SAT with:

- **Adaptive practice engine** — generates unique question sets on the fly using AI, targeting weak areas as students progress
- **Scho AI Tutor** — a conversational tutor trained on College Board–style pedagogy that explains mistakes and teaches strategies in natural language
- **AI Study Plans** — personalized, week-by-week schedules built from diagnostic scores and updated as practice data accumulates
- **Full-length mock tests** — timed, exam-faithful practice tests scored automatically
- **Vocabulary system** — spaced-repetition SAT vocabulary cards organized by difficulty tier
- **Performance dashboard** — real-time analytics on accuracy, speed, topic mastery, and weak areas
- **Leaderboards** — social motivation through peer ranking and streaks

---

## Tech Stack

| Layer | Technology |
|---|---|
| Frontend | React 19, Next.js 16 (App Router, Turbopack), Tailwind CSS 4, Framer Motion, Three.js / React Three Fiber, shadcn/ui |
| State Management | Zustand, TanStack React Query |
| Backend / Auth | Supabase (PostgreSQL, Row Level Security, Auth, Realtime) |
| AI / LLM | LangChain + Google Gemini (study plans, tutor chat), OpenRouter (question generation) |
| Payments | Stripe (subscription billing) |
| Email | React Email + Resend (transactional and onboarding emails) |
| PDF / Docs | pdf.js, react-katex (math rendering), react-markdown |
| Deployment | Vercel (serverless, edge middleware) |
| CI / Tooling | Playwright (e2e tests), ESLint, TypeScript 5 |

---

## Architecture

```
src/
├── app/              # Next.js App Router pages (dashboard, practice, test, vocabulary)
├── components/       # Reusable UI (charts, question cards, modals, layout)
├── lib/              # Supabase client, LangChain chains, prompts, utilities
├── stores/           # Zustand client-side stores
├── hooks/            # Custom React hooks (auth, real-time data, practice state)
├── types/            # Auto-generated Supabase types + shared TS types
├── data/             # Static reference data (SAT domains, skill taxonomies)
└── emails/           # Transactional email templates (React Email)
```

---

## Getting Started

```bash
npm install
cp .env.example .env.local   # fill in Supabase + Gemini keys
npm run dev
```

---

## Supabase Setup

The project uses Supabase as the sole backend. Schema is managed through SQL migrations in `supabase/migrations/`. Row Level Security (RLS) policies enforce per-user data access at the database level.

Key tables:
- `profiles` — user accounts and subscription status
- `practice_attempts` — per-question results with skill/domain tags
- `study_plans` / `multi_subject_study_plans` — AI-generated schedules
- `chat_messages` — Scho AI tutor conversation history
- `vocab_cards` — spaced-repetition vocabulary items
- `question_library` — AI-generated and imported question bank

---

## License

Proprietary — for demonstration purposes only.
