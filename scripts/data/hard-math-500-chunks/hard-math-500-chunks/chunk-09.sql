BEGIN;
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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"31a42728-b9c4-4836-aa6f-0fdbe8a36b85"}'::jsonb,
  updated_at = now()
WHERE id = '31a42728-b9c4-4836-aa6f-0fdbe8a36b85';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(38)=32$ and $f(44)=62$. What is $f(-40)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-353$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-362$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-358$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-40)=-358$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{62-32}{44-38}=5$.
**Step 2:** Point-slope: $f(-40)=5(-40-38)+(32)$.
**Step 3:** $f(-40)=-358$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-353$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-362$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"32a061f4-ce1a-4dcd-9d35-55cd7999c9c3"}'::jsonb,
  updated_at = now()
WHERE id = '32a061f4-ce1a-4dcd-9d35-55cd7999c9c3';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(45)=39$ and $f(51)=57$. What is $f(-47)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-234$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-241$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-237$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-47)=-237$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{57-39}{51-45}=3$.
**Step 2:** Point-slope: $f(-47)=3(-47-45)+(39)$.
**Step 3:** $f(-47)=-237$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-234$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-241$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3c58ba73-2878-4e5a-bf4f-404f60422b41"}'::jsonb,
  updated_at = now()
WHERE id = '3c58ba73-2878-4e5a-bf4f-404f60422b41';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(21)=15$ and $f(27)=33$. What is $f(-23)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-114$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-121$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-117$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-23)=-117$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{33-15}{27-21}=3$.
**Step 2:** Point-slope: $f(-23)=3(-23-21)+(15)$.
**Step 3:** $f(-23)=-117$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-114$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-121$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6d923da3-0126-49c9-b0ff-771b1f3a355b"}'::jsonb,
  updated_at = now()
WHERE id = '6d923da3-0126-49c9-b0ff-771b1f3a355b';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(41)=35$ and $f(47)=65$. What is $f(-43)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-380$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$5$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-389$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-385$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=5$. **Step 2:** $f(-43)=-385$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{65-35}{47-41}=5$.
**Step 2:** Point-slope: $f(-43)=5(-43-41)+(35)$.
**Step 3:** $f(-43)=-385$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-380$): Adds slope once too many after point-slope setup.
- **B** ($5$): That is the rate of change, not $f(${x3})$.
- **C** ($-389$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6e25d053-224a-4fc1-8a92-7056c34fcbe3"}'::jsonb,
  updated_at = now()
WHERE id = '6e25d053-224a-4fc1-8a92-7056c34fcbe3';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7586a349-9200-4019-b68f-48f422b4d3bf"}'::jsonb,
  updated_at = now()
WHERE id = '7586a349-9200-4019-b68f-48f422b4d3bf';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(46)=40$ and $f(52)=64$. What is $f(-48)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-332$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-340$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-336$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=4$. **Step 2:** $f(-48)=-336$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{64-40}{52-46}=4$.
**Step 2:** Point-slope: $f(-48)=4(-48-46)+(40)$.
**Step 3:** $f(-48)=-336$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-332$): Adds slope once too many after point-slope setup.
- **B** ($4$): That is the rate of change, not $f(${x3})$.
- **C** ($-340$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"92f8109a-23d2-439f-a2e9-d044e1d09ec0"}'::jsonb,
  updated_at = now()
WHERE id = '92f8109a-23d2-439f-a2e9-d044e1d09ec0';

UPDATE public.questions SET
  question_text = 'Linear function $f$ models temperature. $f(18)=12$ and $f(24)=30$. What is $f(-20)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-99$","is_correct":false,"explanation":"Adds slope once too many after point-slope setup."},{"id":"B","text":"$3$","is_correct":false,"explanation":"That is the rate of change, not $f(${x3})$."},{"id":"C","text":"$-106$","is_correct":false,"explanation":"Arithmetic slip in point-slope form."},{"id":"D","text":"$-102$","is_correct":true,"explanation":"Correct (D). **Step 1:** $m=3$. **Step 2:** $f(-20)=-102$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Slope $m=\frac{30-12}{24-18}=3$.
**Step 2:** Point-slope: $f(-20)=3(-20-18)+(12)$.
**Step 3:** $f(-20)=-102$.
**Step 4:** Verify with second point.

**Distractor analysis:**
- **A** ($-99$): Adds slope once too many after point-slope setup.
- **B** ($3$): That is the rate of change, not $f(${x3})$.
- **C** ($-106$): Arithmetic slip in point-slope form.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_ai_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.620Z","model":"gemma-4-26b-a4b-it","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"c00683e0-673d-4f3e-9b2a-b11afa45a122"}'::jsonb,
  updated_at = now()
WHERE id = 'c00683e0-673d-4f3e-9b2a-b11afa45a122';

COMMIT;
