BEGIN;
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A critic claims "nobody likes the new app" after surveying 285 followers who commented on one negative post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"Correct (A). **Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because ${sample} responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.
**Step 4:** Larger convenience sample still biased.

**Distractor analysis:**
- **B** (The claim is valid because ${sample} responses is large): Size alone does not fix selection bias.
- **C** (The claim is valid because social media represents everyone): Platform users are not the entire population.
- **D** (The claim is valid because one post reflects all opinions): One thread is not representative.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fb99cbd2-acde-40f0-86fd-8221e191bec6"}'::jsonb,
  updated_at = now()
WHERE id = 'fb99cbd2-acde-40f0-86fd-8221e191bec6';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5868a85e-7309-4b5a-a289-a7d4beb5b91f"}'::jsonb,
  updated_at = now()
WHERE id = '5868a85e-7309-4b5a-a289-a7d4beb5b91f';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 64% to 72%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 68% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75d3e453-aa4d-4586-843b-23f14413a895"}'::jsonb,
  updated_at = now()
WHERE id = '75d3e453-aa4d-4586-843b-23f14413a895';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 59% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 59% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 55% and 63%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 55% to 63%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 55% to 63%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 59% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"89a46d91-930a-4d54-91b3-01081b010bc3"}'::jsonb,
  updated_at = now()
WHERE id = '89a46d91-930a-4d54-91b3-01081b010bc3';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 56% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 56% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 52% and 60%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 52% to 60%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 52% to 60%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 56% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"946fab21-ffdc-43d5-9611-034041b493b4"}'::jsonb,
  updated_at = now()
WHERE id = '946fab21-ffdc-43d5-9611-034041b493b4';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ad0fa41c-1a0e-4b66-9b7b-454aa4f0f224"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0fa41c-1a0e-4b66-9b7b-454aa4f0f224';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 65% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 61% to 69%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 65% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fdf3d32e-5647-4388-8622-11354e31e527"}'::jsonb,
  updated_at = now()
WHERE id = 'fdf3d32e-5647-4388-8622-11354e31e527';
UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 9 > 194$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 194 but stay at most 210 to trigger an alert.',
  options = '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$61$","is_correct":false,"explanation":"Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$62$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$63$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 61.67$. **Step 2:** Smallest integer: 63."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 185$.
**Step 2:** $x > 61.67$.
**Step 3:** Among choices, $63$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($60$): Choice A ($60$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($61$): Choice B ($61$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($62$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.619Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3437398f-75ba-4c87-ae93-015f098dd038"}'::jsonb,
  updated_at = now()
WHERE id = '3437398f-75ba-4c87-ae93-015f098dd038';

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

UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $6x + 8 > 232$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 232 but stay at most 248 to trigger an alert.',
  options = '[{"id":"A","text":"$35$","is_correct":false,"explanation":"Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$36$","is_correct":false,"explanation":"Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$37$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$38$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 37.33$. **Step 2:** Smallest integer: 38."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $6x > 224$.
**Step 2:** $x > 37.33$.
**Step 3:** Among choices, $38$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($35$): Choice A ($35$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($36$): Choice B ($36$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($37$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e1e5f322-186c-4473-9477-d768ac3ba78a"}'::jsonb,
  updated_at = now()
WHERE id = 'e1e5f322-186c-4473-9477-d768ac3ba78a';
UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $3x + 5 > 178$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 178 but stay at most 194 to trigger an alert.',
  options = '[{"id":"A","text":"$56$","is_correct":false,"explanation":"Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$58$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$59$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 57.67$. **Step 2:** Smallest integer: 59."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $3x > 173$.
**Step 2:** $x > 57.67$.
**Step 3:** Among choices, $59$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($56$): Choice A ($56$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($57$): Choice B ($57$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($58$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ea7c2e52-49c1-4f46-87fd-4a79769fc3e0"}'::jsonb,
  updated_at = now()
WHERE id = 'ea7c2e52-49c1-4f46-87fd-4a79769fc3e0';
UPDATE public.questions SET
  question_text = 'Which integer value of $x$ satisfies $5x + 5 > 146$ and is the smallest feasible reading?',
  stimulus_text = 'A sensor reading $R=ax+b$ must exceed 146 but stay at most 162 to trigger an alert.',
  options = '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; strict inequality requires the next integer up."},{"id":"D","text":"$29$","is_correct":true,"explanation":"Correct (D). **Step 1:** $x > 28.20$. **Step 2:** Smallest integer: 29."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $5x > 141$.
**Step 2:** $x > 28.20$.
**Step 3:** Among choices, $29$ is the smallest valid integer.
**Step 4:** Check upper bound if needed.

**Distractor analysis:**
- **A** ($26$): Choice A ($26$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($27$): Choice B ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($28$): Borderline; strict inequality requires the next integer up.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f8b30c60-f29f-45d0-be44-c2c8cc061f51"}'::jsonb,
  updated_at = now()
WHERE id = 'f8b30c60-f29f-45d0-be44-c2c8cc061f51';
UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=64$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+54$. At $t=56$, $d=222$.',
  options = '[{"id":"A","text":"$243$","is_correct":false,"explanation":"Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$225$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=64$."},{"id":"C","text":"$246$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(64)+54$. **Step 2:** $d=246$."},{"id":"D","text":"$192$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $54$.
**Step 2:** $d=3(64)+54=246$.
**Step 3:** Cross-check via $(64-56)×3+222=246$.

**Distractor analysis:**
- **A** ($243$): Choice A ($243$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($225$): Adds slope once instead of evaluating at $t=64$.
- **D** ($192$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0b9552c6-edb9-49e9-aa7f-6d0c5174a8a2"}'::jsonb,
  updated_at = now()
WHERE id = '0b9552c6-edb9-49e9-aa7f-6d0c5174a8a2';
COMMIT;
