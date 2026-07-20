BEGIN;
UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=68$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+58$. At $t=60$, $d=238$.',
  options = '[{"id":"A","text":"$259$","is_correct":false,"explanation":"Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$241$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=68$."},{"id":"C","text":"$262$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(68)+58$. **Step 2:** $d=262$."},{"id":"D","text":"$204$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $58$.
**Step 2:** $d=3(68)+58=262$.
**Step 3:** Cross-check via $(68-60)×3+238=262$.

**Distractor analysis:**
- **A** ($259$): Choice A ($259$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($241$): Adds slope once instead of evaluating at $t=68$.
- **D** ($204$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"b5eb1bf7-47c6-4ea1-bbed-957464f7d231"}'::jsonb,
  updated_at = now()
WHERE id = 'b5eb1bf7-47c6-4ea1-bbed-957464f7d231';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=37$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=4t+27$. At $t=29$, $d=143$.',
  options = '[{"id":"A","text":"$171$","is_correct":false,"explanation":"Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$147$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=37$."},{"id":"C","text":"$175$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=4(37)+27$. **Step 2:** $d=175$."},{"id":"D","text":"$148$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $4$ mi/h with intercept $27$.
**Step 2:** $d=4(37)+27=175$.
**Step 3:** Cross-check via $(37-29)×4+143=175$.

**Distractor analysis:**
- **A** ($171$): Choice A ($171$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($147$): Adds slope once instead of evaluating at $t=37$.
- **D** ($148$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"bbcee4f1-0772-4f23-bdf1-3d4c7e6dcbbd"}'::jsonb,
  updated_at = now()
WHERE id = 'bbcee4f1-0772-4f23-bdf1-3d4c7e6dcbbd';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=42$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+32$. At $t=34$, $d=202$.',
  options = '[{"id":"A","text":"$237$","is_correct":false,"explanation":"Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$207$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=42$."},{"id":"C","text":"$242$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(42)+32$. **Step 2:** $d=242$."},{"id":"D","text":"$210$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $32$.
**Step 2:** $d=5(42)+32=242$.
**Step 3:** Cross-check via $(42-34)×5+202=242$.

**Distractor analysis:**
- **A** ($237$): Choice A ($237$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($207$): Adds slope once instead of evaluating at $t=42$.
- **D** ($210$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"e1c29918-bd76-43f7-bf7e-76551ec4094d"}'::jsonb,
  updated_at = now()
WHERE id = 'e1c29918-bd76-43f7-bf7e-76551ec4094d';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=46$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=5t+36$. At $t=38$, $d=226$.',
  options = '[{"id":"A","text":"$261$","is_correct":false,"explanation":"Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$231$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=46$."},{"id":"C","text":"$266$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=5(46)+36$. **Step 2:** $d=266$."},{"id":"D","text":"$230$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $5$ mi/h with intercept $36$.
**Step 2:** $d=5(46)+36=266$.
**Step 3:** Cross-check via $(46-38)×5+226=266$.

**Distractor analysis:**
- **A** ($261$): Choice A ($261$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($231$): Adds slope once instead of evaluating at $t=46$.
- **D** ($230$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f2cb2fb7-0a76-446b-a54f-d671ba7ef088"}'::jsonb,
  updated_at = now()
WHERE id = 'f2cb2fb7-0a76-446b-a54f-d671ba7ef088';

UPDATE public.questions SET
  question_text = 'If the vehicle continues at the same rate, what is $d$ when $t=28$?',
  stimulus_text = 'A vehicle''s distance $d$ (miles) after $t$ hours is $d=3t+18$. At $t=20$, $d=78$.',
  options = '[{"id":"A","text":"$99$","is_correct":false,"explanation":"Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"B","text":"$81$","is_correct":false,"explanation":"Adds slope once instead of evaluating at $t=28$."},{"id":"C","text":"$102$","is_correct":true,"explanation":"Correct (C). **Step 1:** $d=3(28)+18$. **Step 2:** $d=102$."},{"id":"D","text":"$84$","is_correct":false,"explanation":"Forgets the intercept $+${b}$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rate is $3$ mi/h with intercept $18$.
**Step 2:** $d=3(28)+18=102$.
**Step 3:** Cross-check via $(28-20)×3+78=102$.

**Distractor analysis:**
- **A** ($99$): Choice A ($99$…) reflects a common misread or arithmetic slip — re-check each operation.
- **B** ($81$): Adds slope once instead of evaluating at $t=28$.
- **D** ($84$): Forgets the intercept $+${b}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"f48157be-0dc2-43dc-a181-0ed86f8059c9"}'::jsonb,
  updated_at = now()
WHERE id = 'f48157be-0dc2-43dc-a181-0ed86f8059c9';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(42)=36$ and $f(48)=54$. What is $f(-44)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-219$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-226$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-44)=-222$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{54-36}{48-42}=3$.
**Step 2:** Point-slope: $f(-44)=3(-44-42)+(36)$.
**Step 3:** $f(-44)=-222$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-219$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-226$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"168af500-2051-47fd-aef4-ab0972429c99"}'::jsonb,
  updated_at = now()
WHERE id = '168af500-2051-47fd-aef4-ab0972429c99';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(8)=2$ and $f(14)=32$. What is $f(-10)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-83$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-92$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-88$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-10)=-88$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{32-2}{14-8}=5$.
**Step 2:** Point-slope: $f(-10)=5(-10-8)+(2)$.
**Step 3:** $f(-10)=-88$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-83$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-92$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"18b1f8ab-c4d6-42c8-bf02-9210a6611997"}'::jsonb,
  updated_at = now()
WHERE id = '18b1f8ab-c4d6-42c8-bf02-9210a6611997';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(59)=53$ and $f(65)=83$. What is $f(-61)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-542$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-551$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-547$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-61)=-547$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{83-53}{65-59}=5$.
**Step 2:** Point-slope: $f(-61)=5(-61-59)+(53)$.
**Step 3:** $f(-61)=-547$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-542$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-551$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"2df01079-8d82-4a13-9e01-d71c21bd2408"}'::jsonb,
  updated_at = now()
WHERE id = '2df01079-8d82-4a13-9e01-d71c21bd2408';

COMMIT;
