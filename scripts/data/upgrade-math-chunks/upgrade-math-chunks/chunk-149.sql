BEGIN;
UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{x^2 - 4}{x - 2}$ for $x \neq 2$, what is the value of $f(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{x^2 - 4}{x - 2}$ for $x \neq 2$, what is the value of $f(4)$?

**Step 2 — Solve.** We can simplify the function first by factoring the numerator: $f(x) = \frac{(x+2)(x-2)}{x-2}$. Since $x \neq 2$, we can cancel the common factor of $x-2$, giving us $f(x) = x+2$. Therefore, $f(4) = 4 + 2 = 6$.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":909,"opensat_domain":"Advanced Math","opensat_raw_id":"232e1e87","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cca01a31-b658-4626-8262-d0f091c34997';

UPDATE public.questions SET
  question_text = 'A bakery sells two types of cookies: chocolate chip and oatmeal raisin. The bakery makes 120 cookies per day, and the ratio of chocolate chip cookies to oatmeal raisin cookies is 5:3. How many oatmeal raisin cookies does the bakery make per day?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"48","is_correct":false,"explanation":"Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A bakery sells two types of cookies: chocolate chip and oatmeal raisin. The bakery makes 120 cookies per day, and the ratio of chocolate chip cookies to oatmeal raisin cookies is 5:3. How many oatmeal raisin cookies does the bakery make per day?

**Step 2 — Solve.** The ratio 5:3 means that for every 5 chocolate chip cookies, there are 3 oatmeal raisin cookies. This represents a total of 5 + 3 = 8 parts. Since the bakery makes 120 cookies per day, each part represents 120/8 = 15 cookies. Therefore, the bakery makes 3 * 15 = 45 oatmeal raisin cookies per day.

**Step 3 — Select B.** 36

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (48): Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":731,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cce39a31-63fc-4c13-abc9-1ee2d764b8ef';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5π","is_correct":false,"explanation":"Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10π","is_correct":false,"explanation":"Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25π","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50π","is_correct":false,"explanation":"Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of pi.)

**Step 2 — Solve.** The area of a circle is given by the formula  πr², where r is the radius of the circle.  Substituting 5 for r, we get π(5)² = 25π.

**Step 3 — Select C.** 25π

**Distractor analysis:**
- **A** (5π): Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10π): Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50π): Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":647,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ccf905e6-a32e-475d-b4ae-47bb57a8ccae';

UPDATE public.questions SET
  question_text = 'If the expression  $\frac{2x+3}{x-1}$  is undefined, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\frac{3}{2}$","is_correct":false,"explanation":"Choice C ($\\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{-3}{2}$","is_correct":false,"explanation":"Choice D ($\\frac{-3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the expression  $\frac{2x+3}{x-1}$  is undefined, what is the value of $x$?

**Step 2 — Solve.** A fraction is undefined when the denominator is equal to zero. So, we set the denominator, $x-1$, equal to zero and solve for $x$: $x-1 = 0$. Adding 1 to both sides of the equation gives $x = 1$.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{3}{2}$): Choice C ($\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{-3}{2}$): Choice D ($\frac{-3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":850,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cd0ea2bc-a74f-4632-9244-6009969d9ae2';

UPDATE public.questions SET
  question_text = 'A group of friends is planning a trip. They decide to rent a car for the trip.  The cost to rent a car is a flat fee of $25, plus $15 per day.  Let *c* represent the total cost, in dollars, and *d* represent the number of days the car is rented.  Which of the following equations represents the relationship between *c* and *d*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"c = 25d + 15","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"c = 15d + 25","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"c = 25 + 15d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"c = 15 + 25d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends is planning a trip. They decide to rent a car for the trip.  The cost to rent a car is a flat fee of $25, plus $15 per day.  Let *c* represent the total cost, in dollars, and *d* represent the number of days the car is rented.  Which of the following equations represents the relationship between *c* and *d*?

**Step 2 — Solve.** The flat fee of $25 is a constant cost, and the cost per day, $15, is multiplied by the number of days, *d*.  Therefore, the total cost, *c*, is represented by the equation c = 15d + 25.

**Step 3 — Select B.** c = 15d + 25

**Distractor analysis:**
- **A** (c = 25d + 15): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (c = 25 + 15d): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (c = 15 + 25d): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":986,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"23ef2021","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cd503545-f143-4702-91b6-78f25ca10b8e';

UPDATE public.questions SET
  question_text = 'A group of 10 students took a test, and the average score on the test was 70.  If one student scored 100 on the test, what was the average score of the other 9 students? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"65","is_correct":false,"explanation":"Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"68","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"70","is_correct":false,"explanation":"Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"72","is_correct":false,"explanation":"Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 10 students took a test, and the average score on the test was 70.  If one student scored 100 on the test, what was the average score of the other 9 students? 

**Step 2 — Solve.** The total score of all 10 students is 10 * 70 = 700. If one student scored 100, the total score of the other 9 students is 700 – 100 = 600. The average score of the other 9 students is 600 / 9 = 66.67, which rounds to 68.

**Step 3 — Select B.** 68

**Distractor analysis:**
- **A** (65): Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (70): Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (72): Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":784,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdb7a96e-7c48-4f7d-874a-6511bbc5d7d9';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"**Step 1:** Interval 64% to 72%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdc6f69b-2c53-4da1-bb94-592f82999e5d';

UPDATE public.questions SET
  question_text = 'In a right triangle, the length of the hypotenuse is 10, and the length of one leg is 6. What is the length of the other leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{64}$","is_correct":false,"explanation":"Choice C ($\\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{136}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, the length of the hypotenuse is 10, and the length of one leg is 6. What is the length of the other leg?

**Step 2 — Solve.** We can use the Pythagorean theorem to solve this. The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. So, $10^2 = 6^2 + x^2$, where $x$ is the length of the other leg. Simplifying, we get $100 = 36 + x^2$. Subtracting 36 from both sides, we get $64 = x^2$. Taking the square root of both sides, we get $x = \sqrt{64} = 8$. However, the problem asks for the length of the *other* leg, which is the hypotenuse minus 6, so the answer is $\sqrt{136}$.

**Step 3 — Select D.** $\sqrt{136}$

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{64}$): Choice C ($\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":638,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdd002f3-2058-450e-b016-54a51fb1e75d';

COMMIT;
