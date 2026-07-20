BEGIN;
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 134° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 64 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 64° + 46° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":516,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9e9f36e9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0ee83993-2a24-4eda-a3fc-98586e4adcdb"}'::jsonb,
  updated_at = now()
WHERE id = '0ee83993-2a24-4eda-a3fc-98586e4adcdb';
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 134° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$46°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 46°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 64 = 46°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 64° + 46° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($56°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":54,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"74735a92","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"37658e76-277f-40fb-a0eb-14675d437158"}'::jsonb,
  updated_at = now()
WHERE id = '37658e76-277f-40fb-a0eb-14675d437158';
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 70°$ and $m\angle B = 56°$. Line through $C$ forms exterior angle 126° with side $AB$.',
  options = '[{"id":"A","text":"$70°$","is_correct":false,"explanation":"Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$56°$","is_correct":false,"explanation":"Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$54°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 54°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 70 - 56 = 54°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 70° + 56° + 54° = 180°.

**Distractor analysis:**
- **A** ($70°$): Choice A ($70°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($56°$): Choice B ($56°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($64°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":673,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"59633abc-8e3a-4824-80b4-c3617f659316"}'::jsonb,
  updated_at = now()
WHERE id = '59633abc-8e3a-4824-80b4-c3617f659316';
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 48°$. Line through $C$ forms exterior angle 124° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$48°$","is_correct":false,"explanation":"Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$66°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$56°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 56°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 48 = 56°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 48° + 56° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($48°$): Choice B ($48°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($66°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":515,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"92bee801-7f4e-474f-a71a-6407a4046090"}'::jsonb,
  updated_at = now()
WHERE id = '92bee801-7f4e-474f-a71a-6407a4046090';
UPDATE public.questions SET
  question_text = 'What is $m\angle C$?',
  stimulus_text = 'In triangle $ABC$, $m\angle A = 76°$ and $m\angle B = 64°$. Line through $C$ forms exterior angle 140° with side $AB$.',
  options = '[{"id":"A","text":"$76°$","is_correct":false,"explanation":"Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$64°$","is_correct":false,"explanation":"Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$50°$","is_correct":false,"explanation":"Too large for the triangle angle sum."},{"id":"D","text":"$40°$","is_correct":true,"explanation":"Correct (D). **Step 1:** Sum $180°$. **Step 2:** $m\\angle C = 40°$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Triangle sum: $m\angle A + m\angle B + m\angle C = 180°$.
**Step 2:** $m\angle C = 180 - 76 - 64 = 40°$.
**Step 3:** Exterior angle equals sum of remote interior angles.
**Step 4:** Verify 76° + 64° + 40° = 180°.

**Distractor analysis:**
- **A** ($76°$): Choice A ($76°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($64°$): Choice B ($64°$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($50°$): Too large for the triangle angle sum.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":868,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e6901a49-0d79-499b-868a-cb6aa3647603"}'::jsonb,
  updated_at = now()
WHERE id = 'e6901a49-0d79-499b-868a-cb6aa3647603';
UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":173,"opensat_domain":"Advanced Math","opensat_raw_id":"a9e73934","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.054Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"008f585d-d789-4509-b536-1ceebf9bcde9"}'::jsonb,
  updated_at = now()
WHERE id = '008f585d-d789-4509-b536-1ceebf9bcde9';
UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 36 = 0$, what is the positive solution? (Discriminant $=25$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-9)=0$.
**Step 2:** Roots $x=4$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $25$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":448,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0513703d-777d-4eb2-9c90-e65bf95e0c69"}'::jsonb,
  updated_at = now()
WHERE id = '0513703d-777d-4eb2-9c90-e65bf95e0c69';
UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-7)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1014,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"07e2964b-0ab1-4ab9-9ff2-3a55282e38fa"}'::jsonb,
  updated_at = now()
WHERE id = '07e2964b-0ab1-4ab9-9ff2-3a55282e38fa';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":387,"opensat_domain":"Advanced Math","opensat_raw_id":"8436f365","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"082cc69d-5b4b-4c0b-92a9-476dbda2a77b"}'::jsonb,
  updated_at = now()
WHERE id = '082cc69d-5b4b-4c0b-92a9-476dbda2a77b';
UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-8)=0$.
**Step 2:** Roots $x=6$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":332,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0b176817-5587-4f85-80af-44ef9e2d8994"}'::jsonb,
  updated_at = now()
WHERE id = '0b176817-5587-4f85-80af-44ef9e2d8994';
UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-7)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-7)=0$.
**Step 2:** Roots $x=8$ and $x=7$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":915,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0c7acaa0-3aca-43ec-8133-184f5b47a504"}'::jsonb,
  updated_at = now()
WHERE id = '0c7acaa0-3aca-43ec-8133-184f5b47a504';
UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 56 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-7)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-7)(x-8)=0$.
**Step 2:** Roots $x=7$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($6$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":417,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0fe0cbc4-cf87-446e-adbf-a17bd7e23943"}'::jsonb,
  updated_at = now()
WHERE id = '0fe0cbc4-cf87-446e-adbf-a17bd7e23943';
UPDATE public.questions SET
  question_text = 'For $x^2 - 10x + 24 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($10$): Choice B ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($12$): Choice D ($12$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1021,"opensat_domain":"Advanced Math","opensat_raw_id":"25a57533","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10a84d97-d1b8-4965-bfdf-7a4f456c773b"}'::jsonb,
  updated_at = now()
WHERE id = '10a84d97-d1b8-4965-bfdf-7a4f456c773b';
UPDATE public.questions SET
  question_text = 'For $x^2 - 16x + 64 = 0$, what is the positive solution? (Discriminant $=0$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$16$","is_correct":false,"explanation":"Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-8)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-8)(x-8)=0$.
**Step 2:** Roots $x=8$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($7$): Not a root of the quadratic.
- **B** ($16$): Choice B ($16$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($18$): Choice D ($18$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":953,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a12","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"125f87e2-4f74-4667-92f3-bbf446fec2da"}'::jsonb,
  updated_at = now()
WHERE id = '125f87e2-4f74-4667-92f3-bbf446fec2da';
UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 48 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$8$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-8)=0$. **Step 2:** Positive root $8$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-8)=0$.
**Step 2:** Roots $x=6$ and $x=8$.
**Step 3:** Positive solution: $8$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":280,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c7","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"14a3af42-da38-48b3-95e4-53b4dad699cd"}'::jsonb,
  updated_at = now()
WHERE id = '14a3af42-da38-48b3-95e4-53b4dad699cd';
UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":650,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1a8a49b5-ecca-44ab-89bf-3ff25c3cae55"}'::jsonb,
  updated_at = now()
WHERE id = '1a8a49b5-ecca-44ab-89bf-3ff25c3cae55';

UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 30 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":949,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1bcdc20e-e22f-4e04-888b-da12a8552577"}'::jsonb,
  updated_at = now()
WHERE id = '1bcdc20e-e22f-4e04-888b-da12a8552577';
UPDATE public.questions SET
  question_text = 'For $x^2 - 12x + 36 = 0$, what is the positive solution? (Discriminant $=0$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$6$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-6)=0$. **Step 2:** Positive root $6$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-6)=0$.
**Step 2:** Roots $x=6$ and $x=6$.
**Step 3:** Positive solution: $6$.
**Step 4:** Quadratic formula confirms discriminant $0$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":314,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2450cbde-c590-44d5-a8fa-094cfba18954"}'::jsonb,
  updated_at = now()
WHERE id = '2450cbde-c590-44d5-a8fa-094cfba18954';
UPDATE public.questions SET
  question_text = 'For $x^2 - 14x + 45 = 0$, what is the positive solution? (Discriminant $=16$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$14$","is_correct":false,"explanation":"Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-9)=0$.
**Step 2:** Roots $x=5$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $16$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($14$): Choice B ($14$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($16$): Choice D ($16$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":505,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"279f699d-d726-4666-8a54-6ac12d35b1ea"}'::jsonb,
  updated_at = now()
WHERE id = '279f699d-d726-4666-8a54-6ac12d35b1ea';
UPDATE public.questions SET
  question_text = 'For $x^2 - 11x + 28 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($3$): Not a root of the quadratic.
- **B** ($11$): Choice B ($11$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($13$): Choice D ($13$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":134,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"282a5332-3325-420e-b8b2-a67a6423b147"}'::jsonb,
  updated_at = now()
WHERE id = '282a5332-3325-420e-b8b2-a67a6423b147';
COMMIT;
