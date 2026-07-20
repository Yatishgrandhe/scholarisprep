BEGIN;
UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 9 > 230$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 230 but stay at most 246 to trigger an alert.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$43$","is_correct":false,"explanation":"Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$45$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 44.20$. **Step 2:** Smallest integer: 45."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 221$.
**Step 2:** $x > 44.20$.
**Step 3:** Among choices, $45$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($42$): Choice A ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($43$): Choice B ($43$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($44$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"460a17b0-9669-4339-8d1d-94c0ff501447"}'::jsonb,
  updated_at = now()
WHERE id = '460a17b0-9669-4339-8d1d-94c0ff501447';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 8 > 228$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 228 but stay at most 244 to trigger an alert.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$54$","is_correct":false,"explanation":"Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$56$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 55.00$. **Step 2:** Smallest integer: 56."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 220$.
**Step 2:** $x > 55.00$.
**Step 3:** Among choices, $56$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($53$): Choice A ($53$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($54$): Choice B ($54$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($55$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"560c69d5-7850-436b-8f19-f564273b31f5"}'::jsonb,
  updated_at = now()
WHERE id = '560c69d5-7850-436b-8f19-f564273b31f5';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 5 > 266$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 266 but stay at most 282 to trigger an alert.',
  options = '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$51$","is_correct":false,"explanation":"Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$53$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 52.20$. **Step 2:** Smallest integer: 53."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 261$.
**Step 2:** $x > 52.20$.
**Step 3:** Among choices, $53$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($50$): Choice A ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($51$): Choice B ($51$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($52$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"63f549d7-9033-4ae6-8ef6-94567f2c85ee"}'::jsonb,
  updated_at = now()
WHERE id = '63f549d7-9033-4ae6-8ef6-94567f2c85ee';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $4(49)+10=206$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 51.00$. **Step 2:** Smallest integer: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 204$.
**Step 2:** $x > 51.00$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($49$): Too small: $4(49)+10=206$.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"772ddb90-f484-4c28-97f7-9345d7cf7ab6"}'::jsonb,
  updated_at = now()
WHERE id = '772ddb90-f484-4c28-97f7-9345d7cf7ab6';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 7 > 132$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 132 but stay at most 148 to trigger an alert.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$43$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 41.67$. **Step 2:** Smallest integer: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 125$.
**Step 2:** $x > 41.67$.
**Step 3:** Among choices, $43$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($40$): Choice A ($40$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($41$): Choice B ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($42$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a1a452ec-a023-46c5-ba2b-b14f144c40c3"}'::jsonb,
  updated_at = now()
WHERE id = 'a1a452ec-a023-46c5-ba2b-b14f144c40c3';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 8 > 180$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 180 but stay at most 196 to trigger an alert.',
  options = '[{"id":"A","text":"$41$","is_correct":false,"explanation":"Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$42$","is_correct":false,"explanation":"Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$44$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 43.00$. **Step 2:** Smallest integer: 44."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 172$.
**Step 2:** $x > 43.00$.
**Step 3:** Among choices, $44$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($41$): Choice A ($41$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($42$): Choice B ($42$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($43$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"aa9f12b9-435f-4b3d-b2dc-7e57c239d95f"}'::jsonb,
  updated_at = now()
WHERE id = 'aa9f12b9-435f-4b3d-b2dc-7e57c239d95f';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $4x + 10 > 214$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 214 but stay at most 230 to trigger an alert.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $4(49)+10=206$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$52$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 51.00$. **Step 2:** Smallest integer: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $4x > 204$.
**Step 2:** $x > 51.00$.
**Step 3:** Among choices, $52$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($49$): Too small: $4(49)+10=206$.
- **B** ($50$): Choice B ($50$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($51$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d8f41b58-083a-4d0f-9964-84a79a9721b5"}'::jsonb,
  updated_at = now()
WHERE id = 'd8f41b58-083a-4d0f-9964-84a79a9721b5';

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $6x + 10 > 426$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 426 but stay at most 442 to trigger an alert.',
  options = '[{"id":"A","text":"$67$","is_correct":false,"explanation":"Too small: $6(67)+10=412$."},{"id":"B","text":"$68$","is_correct":false,"explanation":"Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$69$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$70$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 69.33$. **Step 2:** Smallest integer: 70."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $6x > 416$.
**Step 2:** $x > 69.33$.
**Step 3:** Among choices, $70$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($67$): Too small: $6(67)+10=412$.
- **B** ($68$): Choice B ($68$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($69$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"dfcfe4c3-8017-49dc-a41a-4c490bf0e39b"}'::jsonb,
  updated_at = now()
WHERE id = 'dfcfe4c3-8017-49dc-a41a-4c490bf0e39b';

COMMIT;
