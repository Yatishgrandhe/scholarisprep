BEGIN;
UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"d99d3345-2df6-4b74-b585-6373380dcb51"}'::jsonb,
  updated_at = now()
WHERE id = 'd99d3345-2df6-4b74-b585-6373380dcb51';

UPDATE public.questions SET
  question_text = 'What is the missing score $x$?',
  stimulus_text = 'Five test scores: 51, 55, 59, 63, and one score $x$ is unknown. The mean is 55.2.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"Correct (B). **Step 1:** Sum needed $=55.2×5=276$. **Step 2:** $x=48$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$55$","is_correct":false,"explanation":"Confuses mean with the missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=55.2×5=276$.
**Step 2:** Known sum $=228$.
**Step 3:** $x=276-228=48$.
**Step 4:** Verify mean.

**Distractor analysis:**
- **A** ($45$): Pulls the mean down too far.
- **C** ($51$): Too high for the given mean.
- **D** ($55$): Confuses mean with the missing value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"fbdd8058-bab5-42c0-94f3-1e6c841ac459"}'::jsonb,
  updated_at = now()
WHERE id = 'fbdd8058-bab5-42c0-94f3-1e6c841ac459';

UPDATE public.questions SET
  question_text = 'If the original price is $705$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$839$","is_correct":true,"explanation":"Correct (A). **Step 1:** $705×1.4=987$. **Step 2:** $987×0.85=839$."},{"id":"B","text":"$705$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$987$","is_correct":false,"explanation":"Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$881$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $705×(1+40/100)=987$.
**Step 2:** Discount on new price: $987×(1-15/100)=839$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($705$): Ignores both percent changes.
- **C** ($987$): Choice C ($987$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($881$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1defe636-e0a9-4adf-b264-be2273c313df"}'::jsonb,
  updated_at = now()
WHERE id = '1defe636-e0a9-4adf-b264-be2273c313df';

UPDATE public.questions SET
  question_text = 'If the original price is $900$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$900$","is_correct":true,"explanation":"Correct (A). **Step 1:** $900×1.25=1125$. **Step 2:** $1125×0.8=900$."},{"id":"B","text":"$900$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1125$","is_correct":false,"explanation":"Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$945$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $900×(1+25/100)=1125$.
**Step 2:** Discount on new price: $1125×(1-20/100)=900$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($900$): Ignores both percent changes.
- **C** ($1125$): Choice C ($1125$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($945$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2dd05475-9215-4b7c-9fe7-9957cdf0edb3"}'::jsonb,
  updated_at = now()
WHERE id = '2dd05475-9215-4b7c-9fe7-9957cdf0edb3';

UPDATE public.questions SET
  question_text = 'If the original price is $885$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$1053$","is_correct":true,"explanation":"Correct (A). **Step 1:** $885×1.4=1239$. **Step 2:** $1239×0.85=1053$."},{"id":"B","text":"$885$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1239$","is_correct":false,"explanation":"Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$1106$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $885×(1+40/100)=1239$.
**Step 2:** Discount on new price: $1239×(1-15/100)=1053$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($885$): Ignores both percent changes.
- **C** ($1239$): Choice C ($1239$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($1106$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3273b42c-7435-4372-9433-e94aaf5a05eb"}'::jsonb,
  updated_at = now()
WHERE id = '3273b42c-7435-4372-9433-e94aaf5a05eb';

UPDATE public.questions SET
  question_text = 'If the original price is $210$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 35%, then discounted 15% on the new price.',
  options = '[{"id":"A","text":"$241$","is_correct":true,"explanation":"Correct (A). **Step 1:** $210×1.35=284$. **Step 2:** $284×0.85=241$."},{"id":"B","text":"$210$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$284$","is_correct":false,"explanation":"Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$252$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $210×(1+35/100)=284$.
**Step 2:** Discount on new price: $284×(1-15/100)=241$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($210$): Ignores both percent changes.
- **C** ($284$): Choice C ($284$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($252$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6136877f-d80e-4ab0-a265-8b8d57d588a2"}'::jsonb,
  updated_at = now()
WHERE id = '6136877f-d80e-4ab0-a265-8b8d57d588a2';

UPDATE public.questions SET
  question_text = 'If the original price is $360$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 25%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$360$","is_correct":true,"explanation":"Correct (A). **Step 1:** $360×1.25=450$. **Step 2:** $450×0.8=360$."},{"id":"B","text":"$360$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$450$","is_correct":false,"explanation":"Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$378$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $360×(1+25/100)=450$.
**Step 2:** Discount on new price: $450×(1-20/100)=360$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($360$): Ignores both percent changes.
- **C** ($450$): Choice C ($450$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($378$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6bdb9969-52f1-4d7c-b851-a8224ea6cf19"}'::jsonb,
  updated_at = now()
WHERE id = '6bdb9969-52f1-4d7c-b851-a8224ea6cf19';

UPDATE public.questions SET
  question_text = 'If the original price is $765$, what is the final price after both changes?',
  stimulus_text = 'A price is marked up 40%, then discounted 20% on the new price.',
  options = '[{"id":"A","text":"$857$","is_correct":true,"explanation":"Correct (A). **Step 1:** $765×1.4=1071$. **Step 2:** $1071×0.8=857$."},{"id":"B","text":"$765$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$1071$","is_correct":false,"explanation":"Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$918$","is_correct":false,"explanation":"Subtracting percentages directly is invalid for sequential changes."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $765×(1+40/100)=1071$.
**Step 2:** Discount on new price: $1071×(1-20/100)=857$.
**Step 3:** Do not net the percents — order matters.

**Distractor analysis:**
- **B** ($765$): Ignores both percent changes.
- **C** ($1071$): Choice C ($1071$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($918$): Subtracting percentages directly is invalid for sequential changes.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"76a60ccb-6d04-4151-aa51-231acc53eaae"}'::jsonb,
  updated_at = now()
WHERE id = '76a60ccb-6d04-4151-aa51-231acc53eaae';

COMMIT;
