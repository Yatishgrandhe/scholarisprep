BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $(x+2)^2 + (y-1)^2 = 4$ defines a circle in the $xy$-plane.  What is the radius of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $(x+2)^2 + (y-1)^2 = 4$ defines a circle in the $xy$-plane.  What is the radius of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center $(h,k)$ and radius $r$ is $(x-h)^2 + (y-k)^2 = r^2$.  In this case, the equation of the circle is $(x+2)^2 + (y-1)^2 = 4$, which can be rewritten as $(x-(-2))^2 + (y-1)^2 = 2^2$.  Therefore, the radius of the circle is 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":790,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'eefbc7e1-9622-43ff-b32e-8e61369d865a';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 28 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ef191897-1d31-4e1f-9dc2-8ba2aec7091a';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 7 > 236$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 236 grams but at most 249 grams to ship.',
  options = '[{"id":"A","text":"$55$","is_correct":false,"explanation":"Too small: $4(55)+7=227$."},{"id":"B","text":"$56$","is_correct":false,"explanation":"Still below threshold 236."},{"id":"C","text":"$57$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$58$","is_correct":true,"explanation":"**Step 1:** $4x > 229$. **Step 2:** $x > 57.25$. Smallest integer choice: 58."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 229$.
**Step 2:** $x > 57.25$.
**Step 3:** Among choices, $58$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ef24d2e0-31b6-48b5-8a4c-b3463558e14d';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 53% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 53% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 49% and 57%","is_correct":true,"explanation":"**Step 1:** Interval 49% to 57%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 49% to 57%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ef377265-67ec-4f6c-9f41-0e3b216a0d51';

UPDATE public.questions SET
  question_text = 'If the expression $\frac{4x^3 + 2x^2 - 6x}{2x}$ is simplified, what is the result?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2x^2 + x - 3$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$2x^3 + x^2 - 3x$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"$2x^2 + x$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"$2x^2 - 3$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the expression $\frac{4x^3 + 2x^2 - 6x}{2x}$ is simplified, what is the result?

**Step 2 — Solve.** Factoring out a 2x from the numerator, we get  $\frac{2x(2x^2 + x - 3)}{2x}$. Since x cannot be 0, we can cancel out the common factor of 2x, resulting in $2x^2 + x - 3$.

**Step 3 — Select A.** $2x^2 + x - 3$

**Distractor analysis:**
- **B** ($2x^3 + x^2 - 3x$): May result from squaring when you should multiply or add.
- **C** ($2x^2 + x$): May result from squaring when you should multiply or add.
- **D** ($2x^2 - 3$): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":938,"opensat_domain":"Algebra","opensat_raw_id":"1743968a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ef4e61bd-de53-4ee9-ac8e-d1ab10234450';

UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-13","is_correct":false,"explanation":"Choice A (-13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-9","is_correct":false,"explanation":"Choice C (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?

**Step 2 — Solve.** We substitute -2 for $x$ in the function: $f(-2) = 2(-2)^2 - 3(-2) + 1$.  Simplifying, we get $f(-2) = 8 + 6 + 1 = 15$.

**Step 3 — Select D.** 15

**Distractor analysis:**
- **A** (-13): Choice A (-13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-9): Choice C (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":351,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'efab2598-3959-4831-819c-b7b34e15e99e';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 cm and a width of 8 cm. What is the area of the rectangle in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"96","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"192","is_correct":false,"explanation":"Choice D (192…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 cm and a width of 8 cm. What is the area of the rectangle in square centimeters?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width.  Therefore, the area of the rectangle is 12 cm * 8 cm = 96 square centimeters.

**Step 3 — Select C.** 96

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (192): Choice D (192…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":192,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'efc85c23-67d9-48cb-a83b-afdce7548916';

UPDATE public.questions SET
  question_text = 'A circle with center O has a radius of 5. Point P is on the circle, and line segment OP is a diameter of the circle. Point Q is on the circle such that \angle POQ = 60 degrees. What is the length of line segment PQ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2.5","is_correct":false,"explanation":"Choice A (2.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice C (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center O has a radius of 5. Point P is on the circle, and line segment OP is a diameter of the circle. Point Q is on the circle such that \angle POQ = 60 degrees. What is the length of line segment PQ?

**Step 2 — Solve.** Triangle POQ is an equilateral triangle because all three sides are radii of the circle, and \angle POQ = 60 degrees.  Therefore, line segment PQ has a length of 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2.5): Choice A (2.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5\sqrt{3}): Choice C (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":465,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"841d1d98","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'efec8d82-6841-41a3-bf7a-cb4a9a9b595c';

COMMIT;
