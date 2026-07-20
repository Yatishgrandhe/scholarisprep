BEGIN;
UPDATE public.questions SET
  question_text = 'For what value of $k$ does $6(x-5)+2k = 22$ have solution $x=7$?',
  stimulus_text = 'A calibration device applies scale factor 6, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=7$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$7$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=7$: $6(7-k)+2k=22$.
**Step 2:** Expand: $42-6k+2k=22$ → $42+-4k=22$.
**Step 3:** Isolate: $-4k=-20$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($7$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":632,"opensat_domain":"Algebra","opensat_raw_id":"4e93f543","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3f34e32b-8abf-470d-86f0-2a3df30cf9d2"}'::jsonb,
  updated_at = now()
WHERE id = '3f34e32b-8abf-470d-86f0-2a3df30cf9d2';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-5)+2k = 122$ have solution $x=19$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=19$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$19$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=19$: $8(19-k)+2k=122$.
**Step 2:** Expand: $152-8k+2k=122$ → $152+-6k=122$.
**Step 3:** Isolate: $-6k=-30$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($19$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":698,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"40a351b2-3996-4f71-9bae-103a181a03ec"}'::jsonb,
  updated_at = now()
WHERE id = '40a351b2-3996-4f71-9bae-103a181a03ec';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-4)+2k = 168$ have solution $x=36$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=36$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=36$: $5(36-k)+2k=168$.
**Step 2:** Expand: $180-5k+2k=168$ → $180+-3k=168$.
**Step 3:** Isolate: $-3k=-12$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($36$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":546,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"553c8198-532d-4721-9f39-86615d5dd362"}'::jsonb,
  updated_at = now()
WHERE id = '553c8198-532d-4721-9f39-86615d5dd362';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-5)+2k = 210$ have solution $x=55$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=55$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$55$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=55$: $4(55-k)+2k=210$.
**Step 2:** Expand: $220-4k+2k=210$ → $220+-2k=210$.
**Step 3:** Isolate: $-2k=-10$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($55$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":551,"opensat_domain":"Algebra","opensat_raw_id":"3a6bd3a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6401f41c-a30e-4e89-a7a3-eb6de97cb203"}'::jsonb,
  updated_at = now()
WHERE id = '6401f41c-a30e-4e89-a7a3-eb6de97cb203';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-6)+2k = 316$ have solution $x=44$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=44$. **Step 2:** Solve for $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$44$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=44$: $8(44-k)+2k=316$.
**Step 2:** Expand: $352-8k+2k=316$ → $352+-6k=316$.
**Step 3:** Isolate: $-6k=-36$ → $k=6$.
**Step 4:** Verify by substituting $k=6$ back.

**Distractor analysis:**
- **A** ($4$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($7$): Too large; re-check the linear equation in $k$.
- **D** ($44$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":33,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75383ffb-11c0-40c8-9de4-9ed3525cfea7"}'::jsonb,
  updated_at = now()
WHERE id = '75383ffb-11c0-40c8-9de4-9ed3525cfea7';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-7)+2k = 30$ have solution $x=9$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=9$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=9$: $8(9-k)+2k=30$.
**Step 2:** Expand: $72-8k+2k=30$ → $72+-6k=30$.
**Step 3:** Isolate: $-6k=-42$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($9$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":509,"opensat_domain":"Algebra","opensat_raw_id":"45a109a3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"79cc3067-f353-40fb-8776-5ede1e16648e"}'::jsonb,
  updated_at = now()
WHERE id = '79cc3067-f353-40fb-8776-5ede1e16648e';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $8(x-3)+2k = 454$ have solution $x=59$?',
  stimulus_text = 'A calibration device applies scale factor 8, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=59$. **Step 2:** Solve for $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$59$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=59$: $8(59-k)+2k=454$.
**Step 2:** Expand: $472-8k+2k=454$ → $472+-6k=454$.
**Step 3:** Isolate: $-6k=-18$ → $k=3$.
**Step 4:** Verify by substituting $k=3$ back.

**Distractor analysis:**
- **A** ($1$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($4$): Too large; re-check the linear equation in $k$.
- **D** ($59$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":431,"opensat_domain":"Algebra","opensat_raw_id":"random_id_24","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"853a0bab-16f4-49b7-9a0e-57b18e381f12"}'::jsonb,
  updated_at = now()
WHERE id = '853a0bab-16f4-49b7-9a0e-57b18e381f12';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $4(x-4)+2k = 112$ have solution $x=30$?',
  stimulus_text = 'A calibration device applies scale factor 4, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=30$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$30$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=30$: $4(30-k)+2k=112$.
**Step 2:** Expand: $120-4k+2k=112$ → $120+-2k=112$.
**Step 3:** Isolate: $-2k=-8$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($30$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":392,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9a1963c8-e13f-46a7-99ef-7f67d0883572"}'::jsonb,
  updated_at = now()
WHERE id = '9a1963c8-e13f-46a7-99ef-7f67d0883572';

COMMIT;
