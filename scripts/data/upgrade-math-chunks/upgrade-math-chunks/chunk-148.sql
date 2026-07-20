BEGIN;
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 64% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"**Step 1:** Interval 60% to 68%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'caf2ddfb-93e8-459e-a216-3fcaf561cd36';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 130 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'cb0bfa55-d4d1-4929-8cbc-61f47ef19e79';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 35 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{41}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{40}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{41}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{40}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 40 total. **Step 2:** P $=\\frac{5}{40}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 40.
**Step 2:** Conditional probability $=\frac{5}{40}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb310b27-d7a4-48f2-8569-3d0a642236fb';

UPDATE public.questions SET
  question_text = 'Given $x+y=72$ and $2x-y=45$, what is $x$?',
  stimulus_text = 'At a fundraiser, 72 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 39 VIP and 33 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=117$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=72+45$ → $3x=117$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb3f991f-7b3d-4099-89fc-a8bd34bb58fe';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into six equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":497,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb5680e3-4b66-45e5-a607-0c5fca19c0ef';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 55% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"**Step 1:** Interval 51% to 59%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'cc7288bd-c12a-442e-b734-0adc2d50094f';

UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle has a radius of 5 and a center at (3, 2). Which of the following points lies on the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(3, 7)","is_correct":false,"explanation":"Choice A ((3, 7)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(8, 2)","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(3, -3)","is_correct":false,"explanation":"Choice C ((3, -3)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(-2, 2)","is_correct":false,"explanation":"Choice D ((-2, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle has a radius of 5 and a center at (3, 2). Which of the following points lies on the circle? 

**Step 2 — Solve.** The standard form of the equation of a circle is (x - h)^2 + (y - k)^2 = r^2, where (h, k) is the center of the circle and r is the radius.  Substituting the given values, the equation of the circle is (x - 3)^2 + (y - 2)^2 = 25.  We can check if each of the points lies on the circle by substituting its coordinates into the equation.  Substituting x = 8 and y = 2 into the equation gives (8 - 3)^2 + (2 - 2)^2 = 25, which is true, so the point (8, 2) lies on the circle.

**Step 3 — Select B.** (8, 2)

**Distractor analysis:**
- **A** ((3, 7)): Choice A ((3, 7)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((3, -3)): Choice C ((3, -3)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((-2, 2)): Choice D ((-2, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":273,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cc927044-e675-4732-95d6-1d4f222c400c';

UPDATE public.questions SET
  question_text = 'If  $x^2 - 4x + 3 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-4","is_correct":false,"explanation":"Choice C (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-3","is_correct":false,"explanation":"Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If  $x^2 - 4x + 3 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation $ax^2 + bx + c = 0$ is given by $-b/a$. Factoring the given quadratic equation, we get $(x-3)(x-1)=0$. Thus, the solutions to the equation are $x=3$ and $x=1$. The sum of these solutions is $3+1=4$. Therefore, the sum of the solutions to the equation is 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-4): Choice C (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-3): Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":163,"opensat_domain":"Advanced Math","opensat_raw_id":"24e42f58","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cc9ed4b8-25fc-4c40-a26a-b42af2db8674';

COMMIT;
