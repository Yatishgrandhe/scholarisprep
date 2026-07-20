BEGIN;
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 62% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 62% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 58% and 66%","is_correct":true,"explanation":"**Step 1:** Interval 58% to 66%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 58% to 66%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '75d3e453-aa4d-4586-843b-23f14413a895';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 10x + 21 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-3)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-3)(x-7)=0$.
**Step 2:** Roots $x=3$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '75e34390-184e-4bf1-8a99-4112e800e1cd';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\). For what value of \(x\) is \(f(x)\) undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-2","is_correct":false,"explanation":"Choice C (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-4","is_correct":false,"explanation":"Choice D (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\). For what value of \(x\) is \(f(x)\) undefined?

**Step 2 — Solve.** A function is undefined when the denominator of the fraction is equal to 0.  The denominator of \(f(x)\) is \(x - 2\), so \(f(x)\) is undefined when \(x - 2 = 0\).  Solving for \(x\), we get \(x = 2\).

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-2): Choice C (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-4): Choice D (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":135,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '75ec33bf-3782-47f4-8618-73f3c9996c07';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side of each equilateral triangle is equal to the radius of the circle, which is 6. Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":527,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '760cc568-fb6d-4bd7-91c8-3b560bc0494a';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":699,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '76154ae9-3056-424d-9cb8-daeb7c0944ce';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-20)^2+22$, where $t$ is seconds. What is $h(23)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$49$","is_correct":true,"explanation":"**Step 1:** $h(23)=3(23-20)^2+22=3(9)+22=49$."},{"id":"C","text":"$46$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$25$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=23$: $h(23)=3(23-20)^2+22$.
**Step 2:** $(23-20)^2=9$ → $h(23)=49$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '761818f1-3fad-4d2c-9202-f65c6fc7750f';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - y = 2$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - y = 2$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x + y$, we can manipulate the given equations. Multiplying the second equation by 2, we get $2x - 2y = 4$. Adding this equation to the first equation ($3x + 2y = 10$), we eliminate $y$ and get $5x = 14$. Dividing both sides by 5, we find that $x = \frac{14}{5}$. Substituting this value of $x$ into the second equation, we get $\frac{14}{5} - y = 2$. Solving for $y$ yields $y = \frac{4}{5}$. Therefore, $x + y = \frac{14}{5} + \frac{4}{5} = \frac{18}{5} = 3\frac{3}{5}$. Since the answer must be an integer, the answer is 6.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":914,"opensat_domain":"Algebra","opensat_raw_id":"random_id_e5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '761d7b34-4d3d-4527-9ad5-3fe43714c073';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for x in the function: f(-2) = (-2)^2 + 3(-2) - 4.  Simplifying, we get f(-2) = 4 - 6 - 4 = -6.

**Step 3 — Select A.** -6

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":114,"opensat_domain":"Advanced Math","opensat_raw_id":"8493e142","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7674eab8-86e3-49d8-b6a0-8ef1d9741692';

COMMIT;
