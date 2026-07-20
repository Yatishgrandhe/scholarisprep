BEGIN;
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+35)^2 - (3x-35)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$420x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+35$, $v=3x-35$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$140x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+35$, $v=3x-35$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(70)=420x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($140x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+1225$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":658,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"45dcc60c-0c26-46e0-adec-887af76804fa"}'::jsonb,
  updated_at = now()
WHERE id = '45dcc60c-0c26-46e0-adec-887af76804fa';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+10)^2 - (5x-10)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$200x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+10$, $v=5x-10$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+10$, $v=5x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(20)=200x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($40x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+100$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":533,"opensat_domain":"Advanced Math","opensat_raw_id":"84977e3c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"a7657468-b9cb-4281-a385-7e97cf90817d"}'::jsonb,
  updated_at = now()
WHERE id = 'a7657468-b9cb-4281-a385-7e97cf90817d';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(5x+31)^2 - (5x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$620x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=5x+31$, $v=5x-31$."},{"id":"B","text":"$10x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$25x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=5x+31$, $v=5x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(10x)(62)=620x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($10x^2$): Squares each binomial separately — wrong approach.
- **C** ($124x$): Uses $4b$ instead of $4ab$.
- **D** ($25x^2+961$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":937,"opensat_domain":"Advanced Math","opensat_raw_id":"a94182ab","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b51594ba-5ea6-411e-b303-e18a3fb4e05b"}'::jsonb,
  updated_at = now()
WHERE id = 'b51594ba-5ea6-411e-b303-e18a3fb4e05b';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+8)^2 - (3x-8)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$96x$","is_correct":true,"explanation":"Correct (A). Difference of squares: $(u+v)(u-v)$ with $u=3x+8$, $v=3x-8$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$32x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+64$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+8$, $v=3x-8$.
**Step 2:** $u^2-v^2=(u+v)(u-v)$.
**Step 3:** $(u+v)(u-v)=(6x)(16)=96x$.
**Step 4:** Confirm by expanding both forms.

**Distractor analysis:**
- **B** ($6x^2$): Squares each binomial separately — wrong approach.
- **C** ($32x$): Uses $4b$ instead of $4ab$.
- **D** ($9x^2+64$): Adds squares; not equivalent.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":408,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"da50dfd1-9b3a-4ba8-bd62-44c7a2ca984e"}'::jsonb,
  updated_at = now()
WHERE id = 'da50dfd1-9b3a-4ba8-bd62-44c7a2ca984e';
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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":231,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9b262b21","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0d07c1d9-1bba-4008-93a5-7b028475ea22"}'::jsonb,
  updated_at = now()
WHERE id = '0d07c1d9-1bba-4008-93a5-7b028475ea22';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":749,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"6a12b9d6","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10941e80-c8f3-488b-9d2b-56d531887e33"}'::jsonb,
  updated_at = now()
WHERE id = '10941e80-c8f3-488b-9d2b-56d531887e33';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 54% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 54% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 50% and 58%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 50% to 58%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 50% to 58%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 54% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1024,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"24556fc7-02b4-4a58-ab94-0b9a39e6f39e"}'::jsonb,
  updated_at = now()
WHERE id = '24556fc7-02b4-4a58-ab94-0b9a39e6f39e';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 66% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 66% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 62% and 70%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 62% to 70%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 62% to 70%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 66% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.624Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":126,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_d4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"40623429-3457-4697-8bbd-4ad85b2cebf8"}'::jsonb,
  updated_at = now()
WHERE id = '40623429-3457-4697-8bbd-4ad85b2cebf8';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":964,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a4","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6a2db9c0-7149-43b7-ab3c-fd1ced1476e1"}'::jsonb,
  updated_at = now()
WHERE id = '6a2db9c0-7149-43b7-ab3c-fd1ced1476e1';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":612,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"75403c40-21ab-4e08-ab56-689291dda951"}'::jsonb,
  updated_at = now()
WHERE id = '75403c40-21ab-4e08-ab56-689291dda951';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 69% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 69% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 65% and 73%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 65% to 73%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 65% to 73%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 69% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":62,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_21","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7f74a51d-d012-4ddb-b34c-2abcb144606b"}'::jsonb,
  updated_at = now()
WHERE id = '7f74a51d-d012-4ddb-b34c-2abcb144606b';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 57% to 65%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 61% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":277,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b8d35e0a-edbd-41d6-a034-d2be75afc3ff"}'::jsonb,
  updated_at = now()
WHERE id = 'b8d35e0a-edbd-41d6-a034-d2be75afc3ff';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 66% favor a policy, margin of error ±4 pp (95% confidence), $n=1500$.',
  options = '[{"id":"A","text":"Exactly 66% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 62% and 70%","is_correct":true,"explanation":"Correct (B). **Step 1:** Interval 62% to 70%. **Step 2:** Supported at 95% confidence."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1500 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 62% to 70%.
**Step 2:** At 95% confidence, true support likely falls in this range.
**Step 3:** Do not equate sample % with population % exactly.

**Distractor analysis:**
- **A** (Exactly 66% of all citizens favor the policy): Sample statistics are not exact population values.
- **C** (The sample proves every citizen was asked): Only 1500 people were surveyed.
- **D** (Margin of error makes the poll useless): MOE quantifies uncertainty; it does not invalidate the poll.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":577,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"e8a7453f","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e289cfcd-2e05-48cf-b640-c5c4f3417e42"}'::jsonb,
  updated_at = now()
WHERE id = 'e289cfcd-2e05-48cf-b640-c5c4f3417e42';
UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=67$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=6t+57$. At $t=59$, $d=411$.',
  options = '[{"id":"A","text":"$453$","is_correct":false,"explanation":"Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$417$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=67$."},{"id":"C","text":"$459$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=6(67)+57$. **Step 2:** $d=459$."},{"id":"D","text":"$402$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $6$ mi/h with intercept $57$.
**Step 2:** $d=6(67)+57=459$.
**Step 3:** Cross-check via $(67-59)×6+411=459$.

**Distractor analysis:**
- **A** ($453$): Choice A ($453$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($417$): Adds slope once instead of evaluating at $t=67$.
- **D** ($402$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":833,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1903e8c2-ec42-4fbe-8543-d9c03cc7cffb"}'::jsonb,
  updated_at = now()
WHERE id = '1903e8c2-ec42-4fbe-8543-d9c03cc7cffb';
UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=62$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+52$. At $t=54$, $d=322$.',
  options = '[{"id":"A","text":"$357$","is_correct":false,"explanation":"Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$327$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=62$."},{"id":"C","text":"$362$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(62)+52$. **Step 2:** $d=362$."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $52$.
**Step 2:** $d=5(62)+52=362$.
**Step 3:** Cross-check via $(62-54)×5+322=362$.

**Distractor analysis:**
- **A** ($357$): Choice A ($357$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($327$): Adds slope once instead of evaluating at $t=62$.
- **D** ($310$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":432,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d1b2c5f5-d3de-4772-b3fe-78ed012bf273"}'::jsonb,
  updated_at = now()
WHERE id = 'd1b2c5f5-d3de-4772-b3fe-78ed012bf273';
UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=57$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+47$. At $t=49$, $d=243$.',
  options = '[{"id":"A","text":"$271$","is_correct":false,"explanation":"Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$247$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=57$."},{"id":"C","text":"$275$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(57)+47$. **Step 2:** $d=275$."},{"id":"D","text":"$228$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $4$ mi/h with intercept $47$.
**Step 2:** $d=4(57)+47=275$.
**Step 3:** Cross-check via $(57-49)×4+243=275$.

**Distractor analysis:**
- **A** ($271$): Choice A ($271$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($247$): Adds slope once instead of evaluating at $t=57$.
- **D** ($228$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":356,"opensat_domain":"Algebra","opensat_raw_id":"f5c91883","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f63d18bd-0f5d-4513-aed9-89f05aefe9dc"}'::jsonb,
  updated_at = now()
WHERE id = 'f63d18bd-0f5d-4513-aed9-89f05aefe9dc';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-8)+2k = 56$ have solution $x=16$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$8$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=16$. **Step 2:** Solve for $k=8$."},{"id":"C","text":"$9$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$16$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=16$: $5(16-k)+2k=56$.
**Step 2:** Expand: $80-5k+2k=56$ → $80+-3k=56$.
**Step 3:** Isolate: $-3k=-24$ → $k=8$.
**Step 4:** Verify by substituting $k=8$ back.

**Distractor analysis:**
- **A** ($6$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($9$): Too large; re-check the linear equation in $k$.
- **D** ($16$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":989,"opensat_domain":"Algebra","opensat_raw_id":"13b8a32c","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"0a308946-d110-43e0-8ccb-62c8932ad4b9"}'::jsonb,
  updated_at = now()
WHERE id = '0a308946-d110-43e0-8ccb-62c8932ad4b9';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does $5(x-5)+2k = 140$ have solution $x=31$?',
  stimulus_text = 'A calibration device applies scale factor 5, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$5$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=31$. **Step 2:** Solve for $k=5$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$31$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=31$: $5(31-k)+2k=140$.
**Step 2:** Expand: $155-5k+2k=140$ → $155+-3k=140$.
**Step 3:** Isolate: $-3k=-15$ → $k=5$.
**Step 4:** Verify by substituting $k=5$ back.

**Distractor analysis:**
- **A** ($3$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($6$): Too large; re-check the linear equation in $k$.
- **D** ($31$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":602,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d3","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"10f29039-321d-472b-9320-898c063e944e"}'::jsonb,
  updated_at = now()
WHERE id = '10f29039-321d-472b-9320-898c063e944e';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-7)+2k = 196$ have solution $x=33$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$7$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=33$. **Step 2:** Solve for $k=7$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=33$: $7(33-k)+2k=196$.
**Step 2:** Expand: $231-7k+2k=196$ → $231+-5k=196$.
**Step 3:** Isolate: $-5k=-35$ → $k=7$.
**Step 4:** Verify by substituting $k=7$ back.

**Distractor analysis:**
- **A** ($5$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($8$): Too large; re-check the linear equation in $k$.
- **D** ($33$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":478,"opensat_domain":"Algebra","opensat_raw_id":"a3d227c8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"15c24b12-e2b4-44ff-b702-a57c688c51cc"}'::jsonb,
  updated_at = now()
WHERE id = '15c24b12-e2b4-44ff-b702-a57c688c51cc';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does $7(x-4)+2k = 106$ have solution $x=18$?',
  stimulus_text = 'A calibration device applies scale factor 7, then adds a correction term involving parameter $k$.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ leaves $x$ one less than ${target}."},{"id":"B","text":"$4$","is_correct":true,"explanation":"Correct (B). **Step 1:** Plug in $x=18$. **Step 2:** Solve for $k=4$."},{"id":"C","text":"$5$","is_correct":false,"explanation":"Too large; re-check the linear equation in $k$."},{"id":"D","text":"$18$","is_correct":false,"explanation":"That is the given solution for $x$, not the parameter $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=18$: $7(18-k)+2k=106$.
**Step 2:** Expand: $126-7k+2k=106$ → $126+-5k=106$.
**Step 3:** Isolate: $-5k=-20$ → $k=4$.
**Step 4:** Verify by substituting $k=4$ back.

**Distractor analysis:**
- **A** ($2$): Substituting this $k$ leaves $x$ one less than ${target}.
- **C** ($5$): Too large; re-check the linear equation in $k$.
- **D** ($18$): That is the given solution for $x$, not the parameter $k$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"generate-hard-math.mjs","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.625Z","section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":657,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","prior_difficulty":"medium","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"23d3c984-8967-4522-b574-f72d1352cce3"}'::jsonb,
  updated_at = now()
WHERE id = '23d3c984-8967-4522-b574-f72d1352cce3';
COMMIT;
