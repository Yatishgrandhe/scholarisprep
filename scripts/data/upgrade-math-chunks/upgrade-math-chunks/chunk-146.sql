BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with center (5, 3) passes through the point (1, 3). What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (5, 3) passes through the point (1, 3). What is the radius of the circle?

**Step 2 — Solve.** The radius of a circle is the distance between the center of the circle and any point on the circle.  The distance between (5, 3) and (1, 3) is 5 - 1 = 4. Therefore, the radius of the circle is 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":201,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c8386f25-219e-4fa9-b4ac-d3cb41f41c1d';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 8 centimeters and a width of 5 centimeters.  What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":false,"explanation":"Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"26","is_correct":false,"explanation":"Choice B (26…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 8 centimeters and a width of 5 centimeters.  What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying the length and width.  Therefore, the area of this rectangle is 8 * 5 = 40 square centimeters.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (13): Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (26): Choice B (26…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":477,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"13f17362","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c85b683d-200f-40f6-a72f-1f363b79e6fb';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 8, 12, 16, 20, and one score $x$ is missing. The mean is 12.4.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"**Step 1:** Sum needed $=12.4×5=62$. **Step 2:** $x=62-56=6$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=12.4×5=62$.
**Step 2:** $x=62-56=6$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c887c76f-3de3-44da-9931-802ae9307c21';

UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute $-2$ for $x$ in the function: $f(-2) = 2(-2)^2 - 3(-2) + 1$.  Simplifying, we get $f(-2) = 8 + 6 + 1 = 15$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1020,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c8a68bad-5f0c-4f55-9019-2a19f8ec4c46';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 36 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{39}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{39}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 39 total. **Step 2:** P $=\\frac{3}{39}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 39.
**Step 2:** Conditional probability $=\frac{3}{39}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c8b12cf1-b32e-4a0b-a99b-de94615e60dd';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by C = 2\pi r, where r is the radius. We are given that C = 12\pi, so 12\pi = 2\pi r. Dividing both sides by 2\pi gives us r = 6. The area of a circle is given by A = \pi r^2. Substituting 6 for r gives us A = \pi (6)^2 = 36\pi.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":410,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c8cb5b77-a096-42fa-9ce6-0f09773e1889';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 10x + 24 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c952942f-95f4-4f7f-b741-2613b70a8867';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 6, 10, 14, 18, and one score $x$ is missing. The mean is 10.4.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"**Step 1:** Sum needed $=10.4×5=52$. **Step 2:** $x=52-48=4$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=10.4×5=52$.
**Step 2:** $x=52-48=4$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c99693e7-20b1-46e4-9904-4bf83c8f85c1';

COMMIT;
