BEGIN;
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 88°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 144° with side $AB$.',
  options = '[{"id":"A","text":"$88°$","is_correct":false,"explanation":"Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$46°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$36°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 36°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 88 - 56 = 36°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 88° + 56° + 36° = 180°.

**Distractor analysis:**
- **A** ($88°$): Choice A ($88°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($46°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"033c19e6-a1e1-49cb-aad9-e3f811a6e484"}'::jsonb,
  updated_at = now()
WHERE id = '033c19e6-a1e1-49cb-aad9-e3f811a6e484';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 58°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 110° with side $AB$.',
  options = '[{"id":"A","text":"$58°$","is_correct":false,"explanation":"Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$80°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$70°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 70°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 58 - 52 = 70°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 58° + 52° + 70° = 180°.

**Distractor analysis:**
- **A** ($58°$): Choice A ($58°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($80°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"589569eb-4ddc-4ba2-8c17-a8d9d46d699f"}'::jsonb,
  updated_at = now()
WHERE id = '589569eb-4ddc-4ba2-8c17-a8d9d46d699f';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 132° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$48°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 48°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 56 = 48°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 56° + 48° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76fc7465-61d1-4753-b573-eb0391ad16dd"}'::jsonb,
  updated_at = now()
WHERE id = '76fc7465-61d1-4753-b573-eb0391ad16dd';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 116° with side $AB$.',
  options = '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$74°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$64°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 64°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 52 = 64°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 52° + 64° = 180°.

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($74°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"814cc53f-b827-4781-b017-59711a6d2c19"}'::jsonb,
  updated_at = now()
WHERE id = '814cc53f-b827-4781-b017-59711a6d2c19';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9435e200-2890-44f6-9fb9-373bd27e688c"}'::jsonb,
  updated_at = now()
WHERE id = '9435e200-2890-44f6-9fb9-373bd27e688c';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 64°$ and $m\angle B = 60°$. Line through $C$ forms exterior angle 124° with side $AB$.',
  options = '[{"id":"A","text":"$64°$","is_correct":false,"explanation":"Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$60°$","is_correct":false,"explanation":"Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 64 - 60 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 64° + 60° + 56° = 180°.

**Distractor analysis:**
- **A** ($64°$): Choice A ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($60°$): Choice B ($60°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ba95c195-91f4-4d0a-bece-4edcb72c8c7e"}'::jsonb,
  updated_at = now()
WHERE id = 'ba95c195-91f4-4d0a-bece-4edcb72c8c7e';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 52°$. Line through $C$ forms exterior angle 128° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$52°$","is_correct":false,"explanation":"Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$52°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 52°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 52 = 52°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 52° + 52° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($52°$): Choice B ($52°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bc857c4d-8a27-4ab0-9c7a-55e543e02933"}'::jsonb,
  updated_at = now()
WHERE id = 'bc857c4d-8a27-4ab0-9c7a-55e543e02933';

UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 82°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 130° with side $AB$.',
  options = '[{"id":"A","text":"$82°$","is_correct":false,"explanation":"Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$60°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$50°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 50°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 82 - 48 = 50°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 82° + 48° + 50° = 180°.

**Distractor analysis:**
- **A** ($82°$): Choice A ($82°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($60°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c42aa453-cdfa-4445-ae14-8791e826644d"}'::jsonb,
  updated_at = now()
WHERE id = 'c42aa453-cdfa-4445-ae14-8791e826644d';

COMMIT;
