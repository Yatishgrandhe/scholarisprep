# OnePrep Dashboard Parity — Todo Tracker

Synced from `.cursor/plans/oneprep_dashboard_parity_2888da7e.plan.md` (70 tracked items).

**Status:** All implementation todos complete as of 2026-06-11. QA todos (SAT, ACT, transitions) complete. Parallel agents todo cancelled by design.

## Pass 1 — Shell & sidebar (13)

| ID | Status |
|----|--------|
| pass1-shell-theme | ✅ |
| pass1-shell-topbar | ✅ |
| pass1-route-skeletons | ✅ |
| pass1-sidebar-nav-config | ✅ |
| pass1-sidebar-exam-switcher | ✅ |
| pass1-sidebar-college-inline | ✅ |
| pass1-sidebar-more-flyout | ✅ |
| pass1-sidebar-more-college | ✅ |
| pass1-sidebar-more-support | ✅ |
| pass1-sidebar-more-opportunities | ✅ |
| pass1-sidebar-more-resources | ✅ |
| pass1-sidebar-more-social | ✅ |
| pass1-sidebar-profile-footer | ✅ |

## Pass 1 — Home & analytics (6)

| ID | Status |
|----|--------|
| pass1-home-hero | ✅ |
| pass1-home-analytics-strip | ✅ |
| pass1-home-study-plan-block | ✅ |
| pass1-home-score-cards | ✅ |
| pass1-analytics-query-migration | ✅ |
| pass1-analytics-page-scope | ✅ |

## Pass 1 — Multi-exam (5)

| ID | Status |
|----|--------|
| pass1-exam-type-questions | ✅ |
| pass1-exam-type-attempts | ✅ |
| pass1-onboarding-active-subjects | ✅ |
| pass1-settings-manage-exams | ✅ |
| pass1-act-nav-reduction | ✅ |

## Pass 1 — Transitions (6)

| ID | Status |
|----|--------|
| pass1-wizard-step-shell | ✅ |
| pass1-wizard-continue-guard | ✅ |
| pass1-async-button-checking | ✅ |
| pass15-session-loading-overlay | ✅ |
| pass15-session-loading-integrate | ✅ |
| pass15-pause-dialog | ✅ |

## Pass 1 — Study planner (7)

| ID | Status |
|----|--------|
| pass1-planner-landing | ✅ |
| pass1-planner-step1-starting | ✅ |
| pass1-planner-step2-confidence | ✅ |
| pass1-planner-step3-goals | ✅ |
| pass1-planner-step4-preview | ✅ |
| pass1-planner-upload-path | ✅ |
| pass1-planner-home-sync | ✅ |

## Pass 1 — Settings (7)

| ID | Status |
|----|--------|
| pass1-settings-layout | ✅ |
| pass1-settings-account | ✅ |
| pass1-settings-preferences | ✅ |
| pass1-settings-achievements | ✅ |
| pass1-settings-reset-sat | ✅ |
| pass1-settings-reset-act | ✅ |
| pass1-settings-billing | ✅ |

## Pass 1.5 — Bank (7)

| ID | Status |
|----|--------|
| pass15-bank-root-cards | ✅ |
| pass15-bank-rw-table | ✅ |
| pass15-bank-math-table | ✅ |
| pass15-bank-filters | ✅ |
| pass15-bank-more-options | ✅ |
| pass15-bank-multi-select | ✅ |
| pass15-bank-act-sections | ✅ |

## Pass 1.5 — ExamShell & panels (11)

| ID | Status |
|----|--------|
| pass15-examshell-layout | ✅ |
| pass15-examshell-rw-split | ✅ |
| pass15-examshell-math-tools | ✅ |
| pass15-examshell-bottom-bar | ✅ |
| pass15-question-more-menu | ✅ |
| pass15-question-header-actions | ✅ |
| pass15-scho-panel-shell | ✅ |
| pass15-explanation-option-tabs | ✅ |
| pass15-explanation-steps | ✅ |
| pass15-explanation-ask-scho-cta | ✅ |
| pass15-scho-tutor-wire | ✅ |

## Pass 2 — Rush (9)

| ID | Status |
|----|--------|
| pass2-rush-hub-layout | ✅ |
| pass2-rush-in-progress | ✅ |
| pass2-rush-recent-sessions | ✅ |
| pass2-rush-wizard-step1-topics | ✅ |
| pass2-rush-wizard-step2-difficulty | ✅ |
| pass2-rush-wizard-step3-count | ✅ |
| pass2-rush-wizard-step4-pace | ✅ |
| pass2-rush-session-hud | ✅ |
| pass2-rush-session-metadata | ✅ |

## Pass 2 — Other (5)

| ID | Status |
|----|--------|
| pass2-predicted-papers | ✅ |
| pass2-saved-questions-schema | ✅ |
| pass2-saved-page | ✅ |
| pass2-mistakes-page | ✅ |
| pass2-vocab-stub | ✅ |

## Execution (4)

| ID | Status |
|----|--------|
| exec-parallel-agents | ⛔ cancelled |
| exec-browser-qa-sat | ✅ |
| exec-browser-qa-act | ✅ |
| exec-browser-qa-transitions | ✅ |

## Key file map

| Area | Files |
|------|-------|
| Shell / nav | `DashboardShell.tsx`, `DashboardSidebar.tsx`, `SidebarMoreFlyout.tsx`, `navConfig.ts` |
| Home | `app/dashboard/page.tsx`, `HomeAnalyticsStrip.tsx` |
| Planner | `StudyPlannerClient.tsx`, `generate-study-plan/route.ts` |
| Bank | `QuestionBankClient.tsx`, `BankFiltersDrawer.tsx`, `bankTaxonomy.ts` |
| Exam | `ExamShell.tsx`, `SchoSidePanel.tsx`, `ExplanationSidePanel.tsx` |
| Rush | `QuestionRushClient.tsx`, `practice/[sessionId]/page.tsx` |
| Pass 2 | `PredictedPapersClient.tsx`, `SavedQuestionsClient.tsx`, `MistakesLogClient.tsx` |

## Ops (outside code)

- ~~Apply `supabase/migrations/20260611180000_saved_questions.sql` to production Supabase if not applied.~~ **Done 2026-06-11** on `aioyzumxxsepbnfivvdd`
