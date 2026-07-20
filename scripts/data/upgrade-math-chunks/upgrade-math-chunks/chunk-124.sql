BEGIN;
UPDATE public.questions SET
  question_text = 'The function f(x) is defined by the equation f(x) = (x^2 + 3x - 4)/(x - 1). For what values of x does the function f(x) have a vertical asymptote?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = -4","is_correct":false,"explanation":"Choice A (x = -4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = -1","is_correct":false,"explanation":"Choice B (x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = 1","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"x = 4","is_correct":false,"explanation":"Choice D (x = 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by the equation f(x) = (x^2 + 3x - 4)/(x - 1). For what values of x does the function f(x) have a vertical asymptote?

**Step 2 — Solve.** A vertical asymptote occurs where the denominator of a rational function equals zero, making the function undefined.  The denominator of f(x) is (x - 1), and this equals zero when x = 1.  Therefore, the function f(x) has a vertical asymptote at x = 1.

**Step 3 — Select C.** x = 1

**Distractor analysis:**
- **A** (x = -4): Choice A (x = -4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (x = -1): Choice B (x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 4): Choice D (x = 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":690,"opensat_domain":"Advanced Math","opensat_raw_id":"94831a0f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0038c8-4f3f-4acd-9704-3c8e751ed4b9';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(21,62)$ and $(27,80)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{80-62}{27-21}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$80$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ad00f05a-3aa4-4e30-b80a-98a1a7a32d5e';

UPDATE public.questions SET
  question_text = 'A circle with center O has radius 5.  A chord AB of the circle is 8 units long. What is the distance, in units, between the midpoint of AB and point O?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center O has radius 5.  A chord AB of the circle is 8 units long. What is the distance, in units, between the midpoint of AB and point O?

**Step 2 — Solve.** Draw a radius from O to the midpoint of AB. This radius bisects chord AB, forming two right triangles. The hypotenuse of each triangle is 5, and one leg is 4. The Pythagorean theorem states that 5^2 = 4^2 + x^2, where x is the distance between the midpoint of AB and point O. Solving, we find x^2 = 9, so x = 3. Therefore, the distance between the midpoint of AB and point O is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":290,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0ad71e-e024-4497-a016-a2c016b250f6';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 55% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"**Step 1:** Interval 51% to 59%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ad0fa41c-1a0e-4b66-9b7b-454aa4f0f224';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 189$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 189 grams but at most 202 grams to ship.',
  options = '[{"id":"A","text":"$28$","is_correct":false,"explanation":"Too small: $6(28)+6=174$."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Still below threshold 189."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$31$","is_correct":true,"explanation":"**Step 1:** $6x > 183$. **Step 2:** $x > 30.5$. Smallest integer choice: 31."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 183$.
**Step 2:** $x > 30.50$.
**Step 3:** Among choices, $31$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ad2ae7fa-8cf5-47ba-81e7-beba155a47f2';

UPDATE public.questions SET
  question_text = 'If $y = 2x - 1$, what is the value of $y$ when $x = 3$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $y = 2x - 1$, what is the value of $y$ when $x = 3$?

**Step 2 — Solve.** Substituting 3 for *x* in the equation *y* = 2*x* - 1, we get *y* = 2(3) - 1, or *y* = 6 - 1, or *y* = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":528,"opensat_domain":"Algebra","opensat_raw_id":"1020439d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ad70d75b-717e-44ca-ba77-ba6cd8090ffe';

UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle with center at (0, 0) passes through the point (4, 3). What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle with center at (0, 0) passes through the point (4, 3). What is the radius of the circle? 

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  We can use the distance formula to find this distance: $\sqrt{(4-0)^2 + (3-0)^2} = \sqrt{16 + 9} = \sqrt{25} = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":588,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'adc36b33-321a-4f5f-b1eb-61034c8151dc';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"72","is_correct":false,"explanation":"Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying its length by its width.  Therefore, the area of the rectangle is 12 cm * 5 cm = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (72): Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":53,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'adfb78d7-cad0-4457-aea5-ddf1fb372f84';

COMMIT;
