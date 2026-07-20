BEGIN;
UPDATE public.questions SET
  question_text = 'The function *f* is defined by  *f*( *x* ) =  *x*<sup>2</sup>  +  *x*  - 2. If  *f*( *a* ) = 10, what is the value of *a*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by  *f*( *x* ) =  *x*<sup>2</sup>  +  *x*  - 2. If  *f*( *a* ) = 10, what is the value of *a*?

**Step 2 — Solve.** We can solve for *a* by substituting 10 for *f*( *a* ) in the equation and then solving the quadratic equation. This gives us  10 =  *a*<sup>2</sup>  +  *a*  - 2. Subtracting 10 from both sides of this equation, we get  0 =  *a*<sup>2</sup>  +  *a*  - 12. Factoring the quadratic expression, we get ( *a* + 4 )( *a* - 3 ) = 0. The solutions are *a* = -4 and *a* = 3. The value of *a* = 3 is the one that satisfies the given condition, so the answer is 3.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":476,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_e7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a9760dae-1807-474b-b104-d667358f370a';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(5)=31.40$."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$10.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(5)=31.40$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a995d74d-24d8-41ff-bc4c-587a2dfe7771';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a9e0582e-0f47-44fd-b1ae-951dd892da1c';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 cm is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 cm is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5 cm, the diameter is 10 cm.  Therefore, the side length of the square is 10 cm, and the area of the square is 10² = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1001,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_29","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'aa0af0c2-16bb-4f46-a622-d0ccc79ea251';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"**Step 1:** Interval 64% to 72%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'aa19ff2c-e4a4-47b9-bd90-36f28c8d0861';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 7 > 219$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 219 grams but at most 232 grams to ship.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $5(40)+7=207$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Still below threshold 219."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$43$","is_correct":true,"explanation":"**Step 1:** $5x > 212$. **Step 2:** $x > 42.4$. Smallest integer choice: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 212$.
**Step 2:** $x > 42.40$.
**Step 3:** Among choices, $43$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'aa9f12b9-435f-4b3d-b2dc-7e57c239d95f';

UPDATE public.questions SET
  question_text = 'Given $x+y=71$ and $2x-y=43$, what is $x$?',
  stimulus_text = 'At a fundraiser, 71 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 38 VIP and 33 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$38$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=114$. **Step 2:** $x=38$."},{"id":"B","text":"$37$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$39$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=71+43$ → $3x=114$.
**Step 2:** $x=38$.
**Step 3:** Back-substitute: $y=33$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'aafc4b31-930b-4b26-a01c-bc6d98ee1d2f';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1.  What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"15","is_correct":false,"explanation":"Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1.  What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 2(2)<sup>2</sup> + 3(2) - 1.  Simplifying, we get *f*(2) = 8 + 6 - 1 = 13.

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (15): Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":367,"opensat_domain":"Advanced Math","opensat_raw_id":"2365d47f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ab92f0cb-b340-4e30-b3d5-f677c8ab3496';

COMMIT;
