BEGIN;
UPDATE public.questions SET
  question_text = 'A store is selling shirts for $\$15$ each.  If a customer buys 3 shirts and uses a coupon for $\$5$ off their total purchase, what is the total cost of the shirts?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$35$","is_correct":false,"explanation":"Choice A ($\\$35$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$40$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\$45$","is_correct":false,"explanation":"Choice C ($\\$45$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$50$","is_correct":false,"explanation":"Choice D ($\\$50$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is selling shirts for $\$15$ each.  If a customer buys 3 shirts and uses a coupon for $\$5$ off their total purchase, what is the total cost of the shirts?

**Step 2 — Solve.** The total cost of 3 shirts without the coupon is 3 x $15 = $45.  With the coupon, the total cost is $45 - $5 = $40.

**Step 3 — Select B.** $\$40$

**Distractor analysis:**
- **A** ($\$35$): Choice A ($\$35$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$45$): Choice C ($\$45$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$50$): Choice D ($\$50$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":921,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '898db639-c012-4461-b1f3-d2c6c37027cb';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 67% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 67% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 63% and 71%","is_correct":true,"explanation":"**Step 1:** Interval 63% to 71%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 63% to 71%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '89a46d91-930a-4d54-91b3-01081b010bc3';

UPDATE public.questions SET
  question_text = 'What is the solution to the given equation?  \frac{-54}{w} = 6',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-6","is_correct":false,"explanation":"Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the given equation?  \frac{-54}{w} = 6

**Step 2 — Solve.** The correct answer is -9. Since w is in the denominator of a fraction in the given equation, w can''t be equal to 0. Since w isn''t equal to 0, multiplying both sides of the given equation by w yields an equivalent equation, -54 = 6w. Dividing both sides of this equation by 6 yields -9 = w. Therefore, -9 is the solution to the given equation.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-6): Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":295,"opensat_domain":"Advanced Math","opensat_raw_id":"5ae186b4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8a057482-3ae9-46c0-940d-fd5aca7f6664';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 5 centimeters.  What is the perimeter, in centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"34","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 5 centimeters.  What is the perimeter, in centimeters, of the rectangle?

**Step 2 — Solve.** The perimeter of a rectangle is found by adding up the lengths of all four sides.  Since a rectangle has two pairs of equal sides, the perimeter is 2(length + width) = 2(12 + 5) = 2(17) = 34 centimeters.

**Step 3 — Select C.** 34

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":304,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f54c918d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8a76e935-5cdf-4c91-90bb-ef4f623e341f';

UPDATE public.questions SET
  question_text = 'After $t=53$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+50$.',
  options = '[{"id":"A","text":"$258$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=53$."},{"id":"B","text":"$262$","is_correct":true,"explanation":"**Step 1:** Substitute $t=53$. **Step 2:** $d=4(53)+50=262$."},{"id":"C","text":"$263$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=53$: $d=4(53)+50$.
**Step 2:** Compute: $d=262$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8a790913-2874-4773-9a09-5563e9e38add';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5π","is_correct":false,"explanation":"Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10π","is_correct":false,"explanation":"Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25π","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100π","is_correct":false,"explanation":"Choice D (100π…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula A = πr², where r is the radius of the circle.  Substituting 5 for r, we get A = π(5)² = 25π.

**Step 3 — Select C.** 25π

**Distractor analysis:**
- **A** (5π): Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10π): Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100π): Choice D (100π…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":117,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8a8f163d-4c22-4c62-bcc2-81d7889eec59';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":false,"explanation":"Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5 centimeters, the diameter is 10 centimeters. Therefore, the side length of the square is 10 centimeters, and the area of the square is 10^2 = 100 square centimeters.

**Step 3 — Select D.** 100

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50): Choice C (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":357,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8ab20114-d433-488c-9497-7f99090dbca0';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 10, 14, 18, 22, and one score $x$ is missing. The mean is 14.4.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"**Step 1:** Sum needed $=14.4×5=72$. **Step 2:** $x=72-64=8$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=14.4×5=72$.
**Step 2:** $x=72-64=8$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8ae78d96-57bf-4e30-9ad7-7c5ead0d658f';

COMMIT;
