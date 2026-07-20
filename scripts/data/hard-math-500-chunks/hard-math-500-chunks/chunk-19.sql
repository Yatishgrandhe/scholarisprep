BEGIN;
UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 39 ft from a wall; the top is 46 ft high. The ladder length is 60 ft.',
  options = '[{"id":"A","text":"$\\frac{39}{60}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{46}{60}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=46$, hypotenuse $=60$. **Step 2:** $\\sin\\theta=\\frac{46}{60}≈0.767$."},{"id":"C","text":"$\\frac{60}{46}$","is_correct":false,"explanation":"Choice C ($\\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{39}{46}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=46$, hypotenuse $=60$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{46}{60}$.
**Step 3:** Pythagorean check: $39^2+46^2=60^2$.
**Step 4:** $\cos\theta=\frac{39}{60}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{39}{60}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{60}{46}$): Choice C ($\frac{60}{46}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{39}{46}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7f2e119c-4e0c-4dcc-9ad5-777c715898ba"}'::jsonb,
  updated_at = now()
WHERE id = '7f2e119c-4e0c-4dcc-9ad5-777c715898ba';

UPDATE public.questions SET
  question_text = 'What is $\sin\theta$ where $\theta$ is the angle between the ladder and the ground?',
  stimulus_text = 'A ladder''s foot is 12 ft from a wall; the top is 19 ft high. The ladder length is 22 ft.',
  options = '[{"id":"A","text":"$\\frac{12}{22}$","is_correct":false,"explanation":"That is $\\cos\\theta$ (adjacent/hypotenuse)."},{"id":"B","text":"$\\frac{19}{22}$","is_correct":true,"explanation":"Correct (B). **Step 1:** Opposite $=19$, hypotenuse $=22$. **Step 2:** $\\sin\\theta=\\frac{19}{22}≈0.864$."},{"id":"C","text":"$\\frac{22}{19}$","is_correct":false,"explanation":"Choice C ($\\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$\\frac{12}{19}$","is_correct":false,"explanation":"Uses a leg ratio, not sine."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Right triangle: opposite $=19$, hypotenuse $=22$.
**Step 2:** $\sin\theta=\frac{\text{opposite}}{\text{hypotenuse}}=\frac{19}{22}$.
**Step 3:** Pythagorean check: $12^2+19^2=22^2$.
**Step 4:** $\cos\theta=\frac{12}{22}$, not the answer.

**Distractor analysis:**
- **A** ($\frac{12}{22}$): That is $\cos\theta$ (adjacent/hypotenuse).
- **C** ($\frac{22}{19}$): Choice C ($\frac{22}{19}$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($\frac{12}{19}$): Uses a leg ratio, not sine.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"919c4e79-a6a7-4e64-9d3f-63bf96540bb2"}'::jsonb,
  updated_at = now()
WHERE id = '919c4e79-a6a7-4e64-9d3f-63bf96540bb2';

UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"1769e153-7e33-48ff-90fd-6aebd076801f"}'::jsonb,
  updated_at = now()
WHERE id = '1769e153-7e33-48ff-90fd-6aebd076801f';

UPDATE public.questions SET
  question_text = 'Given $x+y=46$ and $4x-y=32$, what is $x$?',
  stimulus_text = 'At an event, 46 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=32$.',
  options = '[{"id":"A","text":"$26$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=130$. **Step 2:** $x=26$."},{"id":"B","text":"$25$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$20$","is_correct":false,"explanation":"Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$27$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=46+32$ → $5x=130$.
**Step 2:** $x=26$.
**Step 3:** Back-substitute: $y=20$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($25$): One less than the solution.
- **C** ($20$): Choice C ($20$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($27$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"19844a77-30be-4e0c-9f38-f7652f637c4b"}'::jsonb,
  updated_at = now()
WHERE id = '19844a77-30be-4e0c-9f38-f7652f637c4b';

UPDATE public.questions SET
  question_text = 'Given $x+y=72$ and $3x-y=45$, what is $x$?',
  stimulus_text = 'At an event, 72 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=45$.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=156$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=72+45$ → $4x=156$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($38$): One less than the solution.
- **C** ($33$): Choice C ($33$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($40$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3af893b1-6ca4-4e09-8d2e-f3186d0a3acc"}'::jsonb,
  updated_at = now()
WHERE id = '3af893b1-6ca4-4e09-8d2e-f3186d0a3acc';

UPDATE public.questions SET
  question_text = 'Given $x+y=26$ and $4x-y=22$, what is $x$?',
  stimulus_text = 'At an event, 26 combined tickets were sold. VIP revenue follows $4x$ and standard $y$, with constraint $4x-y=22$.',
  options = '[{"id":"A","text":"$16$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $5x=80$. **Step 2:** $x=16$."},{"id":"B","text":"$15$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$17$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(4x-y)=26+22$ → $5x=80$.
**Step 2:** $x=16$.
**Step 3:** Back-substitute: $y=10$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($15$): One less than the solution.
- **C** ($10$): Choice C ($10$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($17$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"3fce8be2-a073-4881-ab74-4817e4c4374b"}'::jsonb,
  updated_at = now()
WHERE id = '3fce8be2-a073-4881-ab74-4817e4c4374b';

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
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_bulk_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"656d4afd-aacb-4b44-9ae6-85302298ff12"}'::jsonb,
  updated_at = now()
WHERE id = '656d4afd-aacb-4b44-9ae6-85302298ff12';

UPDATE public.questions SET
  question_text = 'Given $x+y=40$ and $3x-y=29$, what is $x$?',
  stimulus_text = 'At an event, 40 combined tickets were sold. VIP revenue follows $3x$ and standard $y$, with constraint $3x-y=29$.',
  options = '[{"id":"A","text":"$23$","is_correct":true,"explanation":"Correct (A). **Step 1:** Add equations → $4x=92$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(3x-y)=40+29$ → $4x=92$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.
**Step 4:** Verify both equations.

**Distractor analysis:**
- **B** ($22$): One less than the solution.
- **C** ($17$): Choice C ($17$…) reflects a common misread or arithmetic slip — re-check each operation.
- **D** ($24$): One more than the solution.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"hard_content_v2":true,"explanation_v2":true,"generator":"scholaris_template_v1","hard_content_version":"hard_content_v2","hard_content_at":"2026-06-12T20:29:24.622Z","original":true,"prior_difficulty":"medium","math_difficulty_upgrade":"math_difficulty_v1","difficulty_reclassified_at":"2026-06-12T20:24:49.070Z","difficulty_reclassified_to":"medium","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","difficulty_reclassified_from":"hard","difficulty_reclassified_reason":"calibration_shift_down_v1","upgraded_from_id":"7156ce00-6441-4147-9f02-42db1324da0f"}'::jsonb,
  updated_at = now()
WHERE id = '7156ce00-6441-4147-9f02-42db1324da0f';

COMMIT;
