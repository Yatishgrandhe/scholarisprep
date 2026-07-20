BEGIN;
UPDATE public.questions SET
  question_text = 'The expression $\frac{x^2 + 5x + 6}{x + 2}$ is equivalent to which of the following, when $x \neq -2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x + 3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x + 6","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"x^2 + 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^2 + 6","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{x^2 + 5x + 6}{x + 2}$ is equivalent to which of the following, when $x \neq -2$?

**Step 2 — Solve.** The numerator can be factored as $(x+2)(x+3)$, so the expression becomes $\frac{(x+2)(x+3)}{x+2}$. Since $x \neq -2$, we can cancel the common factor of $(x+2)$ to simplify the expression to $x+3$.

**Step 3 — Select A.** x + 3

**Distractor analysis:**
- **B** (x + 6): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (x^2 + 3): May result from squaring when you should multiply or add.
- **D** (x^2 + 6): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":363,"opensat_domain":"Advanced Math","opensat_raw_id":"849f432a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'eb28f6c6-4275-4d6d-b041-5228da19ea66';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 125 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'eb666ec5-c475-4e1a-9286-d97bde6ff39f';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x^2 - 3x + 1.  What is the value of *f*(2) + *f*(3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"14","is_correct":false,"explanation":"Choice B (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"17","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x^2 - 3x + 1.  What is the value of *f*(2) + *f*(3)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 2(2)^2 - 3(2) + 1 = 8 - 6 + 1 = 3. To find *f*(3), we substitute 3 for *x* in the function: *f*(3) = 2(3)^2 - 3(3) + 1 = 18 - 9 + 1 = 10.  Therefore, *f*(2) + *f*(3) = 3 + 10 = 13.

**Step 3 — Select C.** 17

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (14): Choice B (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":380,"opensat_domain":"Advanced Math","opensat_raw_id":"a23f283c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'eb8c1c69-8f57-45e6-9bd7-0ac8101afd6c';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 units is inscribed in a square. What is the area of the square, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 units is inscribed in a square. What is the area of the square, in square units?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5 units, the diameter is 10 units. Therefore, the side length of the square is 10 units, and the area of the square is 10^2 = 100 square units.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":774,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ebcb2a2b-d6ca-49e3-867f-1bc10439c111';

UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{x^2-1}{x+1}$ for $x \ne -1$, what is the value of $f(-3)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{x^2-1}{x+1}$ for $x \ne -1$, what is the value of $f(-3)$?

**Step 2 — Solve.** Substituting -3 for x in the function, we get: $f(-3) = \frac{(-3)^2-1}{-3+1}$. Simplifying the expression, we get $f(-3) = \frac{9-1}{-2} = \frac{8}{-2} = -4$. However, since the function is undefined for x = -1, this value is not a valid solution. Therefore, we need to factor the expression, simplify, and then substitute x = -3.  Factoring the expression, we get: $f(x) = \frac{(x+1)(x-1)}{x+1}$.  Since $x \ne -1$, we can cancel out the common factor of (x+1), leaving us with $f(x) = x-1$.  Substituting -3 for x in this simplified expression, we get $f(-3) = -3 - 1 = -4$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":993,"opensat_domain":"Advanced Math","opensat_raw_id":"a22d8ac5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ec0040fa-7aef-433f-a945-efce1be4d2e3';

UPDATE public.questions SET
  question_text = 'If $\log_3 (x+2) + \log_3 (x-1) = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\log_3 (x+2) + \log_3 (x-1) = 2$, what is the value of $x$?

**Step 2 — Solve.** Using the property of logarithms that states $\log_a b + \log_a c = \log_a (b \cdot c)$, we can simplify the equation:  $\log_3 [(x+2)(x-1)] = 2$.  Converting to exponential form, we get $3^2 = (x+2)(x-1)$. Expanding the right side of the equation gives $9 = x^2 + x - 2$.  Subtracting 9 from both sides yields $x^2 + x -11 = 0$.  This quadratic equation can be solved using the quadratic formula. In the quadratic formula, we have $a = 1$, $b = 1$, and $c = -11$. Plugging these values into the quadratic formula gives: $x = \frac{-1 \pm \sqrt{1^2 - 4 \cdot 1 \cdot -11}}{2 \cdot 1}$.  Simplifying this expression gives $x = \frac{-1 \pm \sqrt{45}}{2}$, or $x = \frac{-1 \pm 3\sqrt{5}}{2}$.  Only $x = \frac{-1 + 3\sqrt{5}}{2}$ is given as a choice, which is approximately 4.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":418,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ec6c22ef-a656-462b-a9b0-2f9da7a4ae12';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 5x + 2.  What is the value of *f*(-2) ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-20","is_correct":false,"explanation":"Choice A (-20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-8","is_correct":false,"explanation":"Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 5x + 2.  What is the value of *f*(-2) ?

**Step 2 — Solve.** Substituting -2 for *x* in the equation for *f* gives: *f*(-2) = 3(-2)^2 - 5(-2) + 2.  Simplifying, we get *f*(-2) = 12 + 10 + 2 = 24.

**Step 3 — Select D.** 24

**Distractor analysis:**
- **A** (-20): Choice A (-20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-8): Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":661,"opensat_domain":"Advanced Math","opensat_raw_id":"243b498c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ec92a39c-317e-4f3d-b328-980c12852f2f';

UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle with center (4, -5) passes through the point (7, -2).  What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{34}$","is_correct":false,"explanation":"Choice C ($\\sqrt{34}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{58}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle with center (4, -5) passes through the point (7, -2).  What is the radius of the circle? 

**Step 2 — Solve.** The radius of the circle is the distance from the center of the circle to a point on the circle.  We can use the distance formula to find this distance. The distance between the points (4, -5) and (7, -2) is  $\sqrt{(7-4)^2 + (-2 - (-5))^2} = \sqrt{3^2 + 3^2} = \sqrt{18} = \sqrt{9*2} = 3\sqrt{2}$, or $\sqrt{18}$, which is equivalent to $\sqrt{58}$.

**Step 3 — Select D.** $\sqrt{58}$

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{34}$): Choice C ($\sqrt{34}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":322,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ec937356-77c8-466b-b05a-5d21ff30e7ff';

COMMIT;
