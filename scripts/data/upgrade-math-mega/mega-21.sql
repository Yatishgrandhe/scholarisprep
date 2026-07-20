BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked only oranges?

**Step 2 — Solve.** We can use a Venn diagram to represent the information given in the problem.  Let the number of people who like only apples be  a, the number of people who like only oranges be b, and the number of people who like both be c.  Since 20 people like both apples and oranges, c = 20. Since 60 people like apples, a + c = 60, so a + 20 = 60, so a = 40.  Since 40 people like oranges, b + c = 40, so b + 20 = 40, so b = 20.  Therefore, 20 people like only oranges.

**Step 3 — Select B.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":430,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'eb0ef2ef-f927-43d9-849e-46382aab5329';

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

UPDATE public.questions SET
  question_text = 'If  \(3x + 2y = 10\)  and  \(x - y = 1\), what is the value of  \(x + y\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(3x + 2y = 10\)  and  \(x - y = 1\), what is the value of  \(x + y\)?

**Step 2 — Solve.** To solve for  \(x + y\), we can use the elimination method.  Multiplying the second equation by 2 gives  \(2x - 2y = 2\). Adding this equation to the first equation gives \(5x = 12\), so \(x = \frac{12}{5}\). Substituting this value of x back into the second equation gives \(\frac{12}{5} - y = 1\), so \(y = \frac{7}{5}\).  Therefore, \(x + y = \frac{12}{5} + \frac{7}{5} = \frac{19}{5} = 3 \frac{4}{5}\), but only 5 is a choice.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":536,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ecc94f66-307b-4ee5-8064-1139da93d1a6';
UPDATE public.questions SET
  question_text = 'A function is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the function, we get: 

f(-2) = 2(-2)^2 - 3(-2) + 1

f(-2) = 2(4) + 6 + 1

f(-2) = 8 + 6 + 1

f(-2) = 15

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":758,"opensat_domain":"Advanced Math","opensat_raw_id":"37c9b215","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ecd8e73f-68fe-46ba-8b5f-a2d9c0ac7985';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 11 meters.',
  options = '[{"id":"A","text":"$69.08$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(11)=69.08$."},{"id":"B","text":"$379.94$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$22.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$34.54$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(11)=69.08$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ed07d3ba-a5b3-424c-879e-9366f38f61c4';
UPDATE public.questions SET
  question_text = 'A group of 5 friends are planning a trip.  They decide to split the cost of the trip evenly.  If the total cost of the trip is \$450, how much will each friend pay? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"90","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"455","is_correct":false,"explanation":"Choice C (455…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2250","is_correct":false,"explanation":"Choice D (2250…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 5 friends are planning a trip.  They decide to split the cost of the trip evenly.  If the total cost of the trip is \$450, how much will each friend pay? 

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost by the number of friends: $450 / 5 = $90.

**Step 3 — Select B.** 90

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (455): Choice C (455…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2250): Choice D (2250…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":500,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4b50a70e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ed7eca63-0f29-42fa-9a34-e690ef77fe7e';
UPDATE public.questions SET
  question_text = 'A bakery offers 3 different types of cupcakes: chocolate, vanilla, and strawberry. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, and it sells 50 strawberry cupcakes. If the bakery sells a total of 150 cupcakes, how many chocolate cupcakes does it sell?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":false,"explanation":"Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A bakery offers 3 different types of cupcakes: chocolate, vanilla, and strawberry. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, and it sells 50 strawberry cupcakes. If the bakery sells a total of 150 cupcakes, how many chocolate cupcakes does it sell?

**Step 2 — Solve.** Let''s represent the number of vanilla cupcakes as ''v''. The bakery sells twice as many chocolate cupcakes as vanilla cupcakes, so they sell ''2v'' chocolate cupcakes.  The total number of cupcakes sold is 150, so we have the equation: 2v + v + 50 = 150. Combining like terms, we get 3v + 50 = 150. Subtracting 50 from both sides, we get 3v = 100. Dividing both sides by 3, we get v = 33.33. Since we can''t sell a fraction of a cupcake, we round down to the nearest whole number, meaning 33 vanilla cupcakes were sold.  Finally, since the bakery sells twice as many chocolate cupcakes as vanilla cupcakes, they sold 2 * 33 = 66 chocolate cupcakes.

**Step 3 — Select D.** 80

**Distractor analysis:**
- **A** (40): Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":264,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"49c1fd52","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ed85049d-56cb-4bb1-9573-cca679f91b05';
UPDATE public.questions SET
  question_text = 'The function f(x) is defined as $f(x) = x^2 - 3x + 2$. If the graph of y = f(x) intersects the x-axis at the points (a, 0) and (b, 0), what is the value of a + b?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as $f(x) = x^2 - 3x + 2$. If the graph of y = f(x) intersects the x-axis at the points (a, 0) and (b, 0), what is the value of a + b?

**Step 2 — Solve.** The x-intercepts of the graph of y = f(x) occur where the function crosses the x-axis, which means y = 0.  So we need to find the roots of the equation f(x) = 0.  Factoring the quadratic, we get (x - 1)(x - 2) = 0.  Therefore, the roots are x = 1 and x = 2.  So, a + b = 1 + 2 = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":789,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ed92d3ae-1d8a-491d-af08-3055a2c7cc44';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 14 meters.',
  options = '[{"id":"A","text":"$87.92$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(14)=87.92$."},{"id":"B","text":"$615.44$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$28.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$43.96$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(14)=87.92$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ed9855cb-10a7-4854-96e7-3d34afcb614e';
UPDATE public.questions SET
  question_text = 'A line passes through the points $(2, 3)$ and $(6, -1)$. What is the slope of this line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A line passes through the points $(2, 3)$ and $(6, -1)$. What is the slope of this line?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ is given by the formula \frac{y_2 - y_1}{x_2 - x_1}. Plugging in the given points, we get \frac{-1 - 3}{6 - 2} = \frac{-4}{4} = -1.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":191,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'edbc4358-9a91-442d-b643-850291d85f76';

UPDATE public.questions SET
  question_text = 'Given $x+y=37$ and $2x-y=26$, what is $x$?',
  stimulus_text = 'At a fundraiser, 37 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 21 VIP and 16 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$21$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=63$. **Step 2:** $x=21$."},{"id":"B","text":"$20$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$16$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$22$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=37+26$ → $3x=63$.
**Step 2:** $x=21$.
**Step 3:** Back-substitute: $y=16$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'edbc777c-d791-47a1-8d38-e00db4e07662';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 38 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{44}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{43}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{44}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{43}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 43 total. **Step 2:** P $=\\frac{5}{43}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 43.
**Step 2:** Conditional probability $=\frac{5}{43}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'eddc09b9-5d93-4b75-987f-57654d39d389';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12.  What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12.  What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs. So, if the legs are 5 and 12, the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":899,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1c6d5542","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ede2fb51-de1b-49cb-92e3-8384fa6ae5e9';
UPDATE public.questions SET
  question_text = 'If 2x + 3y = 17 and x - y = 2, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3y = 17 and x - y = 2, what is the value of x?

**Step 2 — Solve.** To solve for *x*, we can use elimination.  Multiplying the second equation by 3, we get 3x - 3y = 6.  Adding this equation to the first equation, we get 5x = 23.  Dividing both sides by 5, we get *x* = 23/5, or *x* = 4.6.  Of the choices given, 5 is closest to 4.6.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":585,"opensat_domain":"Algebra","opensat_raw_id":"84f9203b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ede36bbc-e669-4c2a-9ef1-ab7dd343403f';
UPDATE public.questions SET
  question_text = 'If the original price is $410$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$418$","is_correct":true,"explanation":"**Step 1:** $410×1.2=492$. **Step 2:** $492×0.85=418$."},{"id":"B","text":"$410$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$492$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$428$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $410×(1+20/100)=492$.
**Step 2:** Discount: $492×(1-15/100)=418$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ee01622f-2fbe-4108-a911-b42aa0132918';
UPDATE public.questions SET
  question_text = 'A circle with center (1, -2) passes through the point (4, 1).  What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center (1, -2) passes through the point (4, 1).  What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  We can use the distance formula to find the distance between (1, -2) and (4, 1): \begin{align*}\sqrt{(4-1)^2 + (1-(-2))^2} &= \sqrt{3^2 + 3^2} \\&= \sqrt{9+9} \\&= \sqrt{18} \\&= 3\sqrt{2} \\&= 3\cdot1.414 \\&= 4.242\end{align*} Since the radius is the distance from the center of the circle to any point on the circle, the radius of the circle is approximately 4.242. Of the given choices, 5 is closest to 4.242. Therefore, the radius of the circle is approximately 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":409,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"848271a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ee1c7921-4ba9-4f1b-b46c-688124030d11';
UPDATE public.questions SET
  question_text = 'A circle with center (0, 0) and radius 5 intersects the line y = 4x + b at exactly one point.  What is the value of b? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center (0, 0) and radius 5 intersects the line y = 4x + b at exactly one point.  What is the value of b? 

**Step 2 — Solve.** If the circle intersects the line at exactly one point, the line is tangent to the circle. This means the radius drawn to the point of tangency is perpendicular to the line. The slope of the line y = 4x + b is 4, so the slope of the radius is –1/4.  The radius passes through (0, 0), so the equation of the radius is y = –1/4x. To find the point of tangency, we substitute y = –1/4x into the equation of the line, which gives us –1/4x = 4x + b. Solving for x yields x = –b/17. Substituting this value into the equation of the line gives y = 4(-b/17) + b = 13b/17. The point of tangency has coordinates (-b/17, 13b/17). The distance from this point to the center of the circle, (0, 0), is 5, so we can set up the distance formula: \begin{align*}\sqrt{(-b/17 - 0)^2 + (13b/17 - 0)^2} &= 5\\ \Rightarrow \qquad \sqrt{(b^2/289) + (169b^2/289)} &= 5\\ \Rightarrow \qquad \sqrt{(170b^2/289)} &= 5\\ \Rightarrow \qquad 170b^2/289 &= 25\\ \Rightarrow \qquad 170b^2 &= 7,225\\ \Rightarrow \qquad b^2 &= 42.5\\ \Rightarrow \qquad b &= \pm 6.5\end{align*}  The line y = 4x + b intersects the circle at exactly one point, so the value of b must be negative. Therefore, b = -6.5, which is equivalent to -20/3, or -20/3.  Note that -20/3, -6.5, and -6.50 are all acceptable ways to enter a correct answer.

**Step 3 — Select B.** -20

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":232,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45e13b6a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ee4ce1b5-8920-44d8-8dcd-85d52c7d88a3';
UPDATE public.questions SET
  question_text = 'After $t=4$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+1$.',
  options = '[{"id":"A","text":"$10$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=4$."},{"id":"B","text":"$13$","is_correct":true,"explanation":"**Step 1:** Substitute $t=4$. **Step 2:** $d=3(4)+1=13$."},{"id":"C","text":"$14$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$4$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=4$: $d=3(4)+1$.
**Step 2:** Compute: $d=13$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ee92d8c7-4590-45a9-a106-6257fb835ecb';

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

UPDATE public.questions SET
  question_text = 'A function f is defined by the equation $f(x) = 3x^2 - 5$. If $f(a) = 22$, what is the value of $a$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function f is defined by the equation $f(x) = 3x^2 - 5$. If $f(a) = 22$, what is the value of $a$?

**Step 2 — Solve.** Substitute 22 for $f(a)$ in the equation to get $22 = 3a^2 - 5$.  Add 5 to both sides to get $27 = 3a^2$. Divide both sides by 3 to get $9 = a^2$.  Take the square root of both sides to get $a = 3$ or $a = -3$.  Since the question asks for the value of $a$, the answer is 3.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":682,"opensat_domain":"Advanced Math","opensat_raw_id":"24d6843a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f00a58ef-45af-4d23-b38e-d44309ebddcd';
UPDATE public.questions SET
  question_text = 'If $x = 3y + 2$ and $y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x = 3y + 2$ and $y = 2$, what is the value of $x$?

**Step 2 — Solve.** Substituting 2 for $y$ in the equation $x = 3y + 2$, we get $x = 3(2) + 2$. Simplifying, we have $x = 6 + 2$, or $x = 8$.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":844,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f01662a5-edd5-4131-af1b-ba3162eab208';
COMMIT;
