BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $3x-y=41$, what is $x$?',
  stimulus_text = 'At an event, 64 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=41$.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=140$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=64+41$ → $4x=140$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($34$): One less than the solution.
- **C** ($29$): Choice C ($29$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($36$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"82b146d8-01b0-4a80-ac0f-207c99a89412"}'::jsonb,
  updated_at = now()
WHERE id = '82b146d8-01b0-4a80-ac0f-207c99a89412';

UPDATE public.questions SET
  question_text = 'Given $x+y=84$ and $3x-y=51$, what is $x$?',
  stimulus_text = 'At an event, 84 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=51$.',
  options = '[{"id":"A","text":"$45$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=180$. **Step 2:** $x=45$."},{"id":"B","text":"$44$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$39$","is_correct":false,"explanation":"Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$46$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=84+51$ → $4x=180$.
**Step 2:** $x=45$.
**Step 3:** Back-substitute: $y=39$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($44$): One less than the solution.
- **C** ($39$): Choice C ($39$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($46$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"9fc585b6-832c-423c-ac08-2aecf20bab7a"}'::jsonb,
  updated_at = now()
WHERE id = '9fc585b6-832c-423c-ac08-2aecf20bab7a';

UPDATE public.questions SET
  question_text = 'Given $x+y=94$ and $4x-y=56$, what is $x$?',
  stimulus_text = 'At an event, 94 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=56$.',
  options = '[{"id":"A","text":"$50$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=250$. **Step 2:** $x=50$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$51$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=94+56$ → $5x=250$.
**Step 2:** $x=50$.
**Step 3:** Back-substitute: $y=44$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($49$): One less than the solution.
- **C** ($44$): Choice C ($44$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($51$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"cb3f991f-7b3d-4099-89fc-a8bd34bb58fe"}'::jsonb,
  updated_at = now()
WHERE id = 'cb3f991f-7b3d-4099-89fc-a8bd34bb58fe';

UPDATE public.questions SET
  question_text = 'Given $x+y=60$ and $3x-y=39$, what is $x$?',
  stimulus_text = 'At an event, 60 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=39$.',
  options = '[{"id":"A","text":"$33$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=132$. **Step 2:** $x=33$."},{"id":"B","text":"$32$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$34$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=60+39$ → $4x=132$.
**Step 2:** $x=33$.
**Step 3:** Back-substitute: $y=27$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($32$): One less than the solution.
- **C** ($27$): Choice C ($27$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($34$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"ffcc25c0-4817-45be-9dd6-5e6b6bdd1893"}'::jsonb,
  updated_at = now()
WHERE id = 'ffcc25c0-4817-45be-9dd6-5e6b6bdd1893';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(13,50)$ and $(21,82)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{82-50}{21-13}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=82$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{82}{21}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=82$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{82}{21}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"5d78b6d6-d8aa-47c8-aa9d-94b81b199909"}'::jsonb,
  updated_at = now()
WHERE id = '5d78b6d6-d8aa-47c8-aa9d-94b81b199909';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(35,138)$ and $(43,170)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{170-138}{43-35}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=170$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{170}{43}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=170$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{170}{43}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6ecee29e-0cc3-4b00-a93e-28596c38d4d8"}'::jsonb,
  updated_at = now()
WHERE id = '6ecee29e-0cc3-4b00-a93e-28596c38d4d8';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(46,182)$ and $(54,214)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{214-182}{54-46}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=214$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{214}{54}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=214$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{214}{54}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"6f8df9e3-03c7-456c-9651-2667a01fb901"}'::jsonb,
  updated_at = now()
WHERE id = '6f8df9e3-03c7-456c-9651-2667a01fb901';

UPDATE public.questions SET
  question_text = 'Which equation models the line, and what does the slope represent?',
  stimulus_text = 'A line models cost vs. units, passing through $(42,166)$ and $(50,198)$.',
  options = '[{"id":"A","text":"$y=4x-2$; cost increases $4$ per unit","is_correct":true,"explanation":"Correct (A). **Step 1:** Slope $=\\frac{198-166}{50-42}=4$. **Step 2:** $y=4x-2$."},{"id":"B","text":"$y=3x+-2$; cost decreases per unit","is_correct":false,"explanation":"Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"C","text":"$y=198$; fixed total cost","is_correct":false,"explanation":"That is a single point''s $y$-value, not the line."},{"id":"D","text":"$y=\\frac{198}{50}x$; average cost per unit from origin","is_correct":false,"explanation":"Slope from origin is not the line''s slope."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{32}{8}=4$.
**Step 2:** $y=4x-2$.
**Step 3:** Slope $4$ = dollars per additional unit.
**Step 4:** Check both points.

**Distractor analysis:**
- **B** ($y=3x+-2$; cost decreases per unit): Choice B ($y=3x+-2$; cost decreases per unit…) reflects a common misread or arithmetic slip — re-check each operation.
- **C** ($y=198$; fixed total cost): That is a single point''s $y$-value, not the line.
- **D** ($y=\frac{198}{50}x$; average cost per unit from origin): Slope from origin is not the line''s slope.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"81c2999e-754a-4964-9b25-85541ce57458"}'::jsonb,
  updated_at = now()
WHERE id = '81c2999e-754a-4964-9b25-85541ce57458';

COMMIT;
