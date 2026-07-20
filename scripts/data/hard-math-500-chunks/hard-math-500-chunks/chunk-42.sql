BEGIN;
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

UPDATE public.questions SET
  question_text = 'For $x^2 - 13x + 42 = 0$, what is the positive solution? (Discriminant $=1$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $1$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($13$): Choice B ($13$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($15$): Choice D ($15$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":382,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"28b87969-cdb6-432d-b820-079171cb6c6b"}'::jsonb,
  updated_at = now()
WHERE id = '28b87969-cdb6-432d-b820-079171cb6c6b';

UPDATE public.questions SET
  question_text = 'For $x^2 - 12x + 35 = 0$, what is the positive solution? (Discriminant $=4$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$7$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-5)(x-7)=0$. **Step 2:** Positive root $7$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-7)=0$.
**Step 2:** Roots $x=5$ and $x=7$.
**Step 3:** Positive solution: $7$.
**Step 4:** Quadratic formula confirms discriminant $4$.

**Distractor analysis:**
- **A** ($4$): Not a root of the quadratic.
- **B** ($12$): Choice B ($12$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($14$): Choice D ($14$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":200,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2f6810b9-6daa-44bd-a177-bac914b62f4c"}'::jsonb,
  updated_at = now()
WHERE id = '2f6810b9-6daa-44bd-a177-bac914b62f4c';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":625,"opensat_domain":"Advanced Math","opensat_raw_id":"87654321","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6"}'::jsonb,
  updated_at = now()
WHERE id = '31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6';

UPDATE public.questions SET
  question_text = 'For $x^2 - 15x + 54 = 0$, what is the positive solution? (Discriminant $=9$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$15$","is_correct":false,"explanation":"Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$9$","is_correct":true,"explanation":"Correct (C). **Step 1:** Factor $(x-6)(x-9)=0$. **Step 2:** Positive root $9$."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-9)=0$.
**Step 2:** Roots $x=6$ and $x=9$.
**Step 3:** Positive solution: $9$.
**Step 4:** Quadratic formula confirms discriminant $9$.

**Distractor analysis:**
- **A** ($5$): Not a root of the quadratic.
- **B** ($15$): Choice B ($15$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): Choice D ($17$…) reflects a common misread or arithmetic slip — re-check each operation.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1016,"opensat_domain":"Advanced Math","opensat_raw_id":"8f457e4f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3380c70a-4e0b-436c-8240-75be7f9e22ae"}'::jsonb,
  updated_at = now()
WHERE id = '3380c70a-4e0b-436c-8240-75be7f9e22ae';

COMMIT;
