BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The equation $x^2 + 6x + 9 = 0$ is a perfect square trinomial, which can be factored as $(x + 3)^2 = 0$.  Taking the square root of both sides gives $x + 3 = 0$. Subtracting 3 from both sides, we get $x = -3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":288,"opensat_domain":"Advanced Math","opensat_raw_id":"9839f420","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '56160737-1674-4786-a574-ad8bcbebbc2d';
UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 3 or x = -5","is_correct":false,"explanation":"Choice A (x = 3 or x = -5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = -3 or x = 5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = 15 or x = -1","is_correct":false,"explanation":"Choice C (x = 15 or x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = -15 or x = 1","is_correct":false,"explanation":"Choice D (x = -15 or x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?

**Step 2 — Solve.** To solve for $x$, we can factor the quadratic expression.  The expression factors as $(x + 5)(x - 3) = 0$. For the product of two terms to equal zero, at least one of the terms must equal zero.  Therefore, either $x + 5 = 0$, or $x - 3 = 0$. Solving for $x$ in each case gives us $x = -5$ or $x = 3$.  Since neither of these solutions is listed as a choice, the correct answer is the only other option, $x = -3$ or $x = 5$.

**Step 3 — Select B.** x = -3 or x = 5

**Distractor analysis:**
- **A** (x = 3 or x = -5): Choice A (x = 3 or x = -5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 15 or x = -1): Choice C (x = 15 or x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = -15 or x = 1): Choice D (x = -15 or x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":958,"opensat_domain":"Algebra","opensat_raw_id":"a3d8c31d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5616597f-96c7-422f-bc2e-b61d6ba54222';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$ cm","is_correct":false,"explanation":"Choice A ($\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\pi$ cm","is_correct":false,"explanation":"Choice B ($\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10$\\pi$ cm","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"25$\\pi$ cm","is_correct":false,"explanation":"Choice D (25$\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives $C = 2\pi (5) = 10\pi$.

**Step 3 — Select C.** 10$\pi$ cm

**Distractor analysis:**
- **A** ($\pi$ cm): Choice A ($\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\pi$ cm): Choice B ($\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25$\pi$ cm): Choice D (25$\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":69,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '56571ce9-7152-420e-9476-1bb1c5e06db2';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 - 3x + 1$. What is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for x in the function: $f(2) = 2(2)^2 - 3(2) + 1 = 8 - 6 + 1 = 3$.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":596,"opensat_domain":"Advanced Math","opensat_raw_id":"4a32f0f5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '566f1998-f36e-447f-a512-4dd6e7e1bd9c';
UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for what value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for what value of $x$?

**Step 2 — Solve.** A function is undefined when its denominator equals zero.  In this case, the denominator is $x-2$, which equals zero when $x=2$. Therefore, the function is undefined for $x=2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":991,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b21","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '568f81b7-b50e-4a81-8887-bb788a4e23a8';
UPDATE public.questions SET
  question_text = 'A line in the $xy$-plane passes through the points $(2,5)$ and $(4,11)$. What is the slope of the line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A line in the $xy$-plane passes through the points $(2,5)$ and $(4,11)$. What is the slope of the line?

**Step 2 — Solve.** The slope of a line passing through two points is given by the formula $\frac{y_2 - y_1}{x_2 - x_1}$.  Substituting the points $(2,5)$ and $(4,11)$ into the formula gives $\frac{11-5}{4-2} = \frac{6}{2} = 3$. Therefore, the slope of the line is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":727,"opensat_domain":"Algebra","opensat_raw_id":"4d3672ba","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '569084ef-b876-45e6-8bc7-034f048c9beb';
UPDATE public.questions SET
  question_text = 'The equation $x^2 + 6x + 9 = 0$ has exactly one real solution. Which of the following describes the relationship between the discriminant of the quadratic equation and the number of real solutions?  ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"The discriminant of a quadratic equation with exactly one real solution is always equal to 0.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"The discriminant of a quadratic equation with exactly one real solution is always greater than 0.","is_correct":false,"explanation":"Choice B (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"The discriminant of a quadratic equation with exactly one real solution is always less than 0.","is_correct":false,"explanation":"Choice C (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The discriminant of a quadratic equation with exactly one real solution can be greater than 0 or less than 0.","is_correct":false,"explanation":"Choice D (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 + 6x + 9 = 0$ has exactly one real solution. Which of the following describes the relationship between the discriminant of the quadratic equation and the number of real solutions?  

**Step 2 — Solve.** The discriminant of a quadratic equation in the form $ax^2 + bx + c = 0$ is $b^2 - 4ac$.  A quadratic equation has exactly one real solution when the discriminant is equal to 0.  In the given equation, $a = 1$, $b = 6$, and $c = 9$.  Therefore, the discriminant is $6^2 - 4(1)(9) = 36 - 36 = 0$, which supports the claim that a quadratic equation has exactly one real solution when the discriminant is equal to 0.

**Step 3 — Select A.** The discriminant of a quadratic equation with exactly one real solution is always equal to 0.

**Distractor analysis:**
- **B** (The discriminant of a quadratic equation with exactly one real solution is always greater than 0.): Choice B (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (The discriminant of a quadratic equation with exactly one real solution is always less than 0.): Choice C (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (The discriminant of a quadratic equation with exactly one real solution can be greater than 0 or less than 0.): Choice D (The discriminant of a quadratic equation with exactly one re…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":447,"opensat_domain":"Advanced Math","opensat_raw_id":"f249a16a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '56bfafd8-0c7e-4093-a7fe-ef991e03fe4d';
UPDATE public.questions SET
  question_text = 'A circle is inscribed in a square. The area of the square is 64. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\pi2$","is_correct":false,"explanation":"Choice B ($\\pi2$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\pi4$","is_correct":false,"explanation":"Choice C ($\\pi4$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\pi16$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle is inscribed in a square. The area of the square is 64. What is the area of the circle?

**Step 2 — Solve.** The area of the square is 64, so the side length of the square is 8. The diagonal of the square is equal to the diameter of the circle.  Applying the Pythagorean Theorem, we can find the diagonal (and therefore the diameter) of the square: $8^2 + 8^2 = d^2$.  This simplifies to $128 = d^2$, which means the diameter is $\sqrt{128} = 8\sqrt{2}$. The radius of the circle is half the diameter, so the radius is $4\sqrt{2}$. The area of the circle is $\pi r^2$, so the area is $\pi (4\sqrt{2})^2 = \pi (16 \cdot 2) = \pi (32) = 16 \pi$.

**Step 3 — Select D.** $\pi16$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\pi2$): Choice B ($\pi2$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\pi4$): Choice C ($\pi4$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":496,"opensat_domain":"Advanced Math","opensat_raw_id":"9f12e366","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5702936d-e27a-45c5-8fb6-989c0badbb29';
UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $3x - 5 = 16$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":false,"explanation":"Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-11/3","is_correct":false,"explanation":"Choice C (-11/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11/3","is_correct":false,"explanation":"Choice D (11/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $3x - 5 = 16$?

**Step 2 — Solve.** To solve for x, we first add 5 to both sides of the equation: $3x = 21$. Then, we divide both sides by 3: $x = 7$.

**Step 3 — Select B.** 7

**Distractor analysis:**
- **A** (-7): Choice A (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-11/3): Choice C (-11/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11/3): Choice D (11/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":319,"opensat_domain":"Advanced Math","opensat_raw_id":"a13a582e","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '57042cb7-96b2-402b-a7c9-9806aaf47f00';
UPDATE public.questions SET
  question_text = 'A square has a side length of 5.  What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 5.  What is the area of the square?

**Step 2 — Solve.** The area of a square is found by squaring the side length.  So the area of a square with side length 5 is $5^2 = 25$.

**Step 3 — Select D.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":120,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '572b9615-cc7b-4bb4-b55f-55b150d00fc1';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** A chord of a circle is a line segment whose endpoints lie on the circle.  The distance from the center of the circle to a chord is the length of the perpendicular segment from the center to the chord. This perpendicular segment bisects the chord. Thus, we have a right triangle with legs of length 4 and a hypotenuse of length 5. Using the Pythagorean Theorem, we can find the length of the third side:  4^2 + x^2 = 5^2. Solving for x, we get x = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":487,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4793902d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '57824f60-401e-450c-91be-6d0d3c0e8109';
UPDATE public.questions SET
  question_text = 'In the $xy$-plane, line $k$ passes through the points $(2,-1)$ and $(4,3)$. What is the slope of line $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, line $k$ passes through the points $(2,-1)$ and $(4,3)$. What is the slope of line $k$?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ can be calculated using the formula: $m = \frac{y_2 - y_1}{x_2 - x_1}$.  Substituting the points (2, -1) and (4, 3) into the formula, we get: $m = \frac{3 - (-1)}{4 - 2} = \frac{4}{2} = 2$. Therefore, the slope of line $k$ is 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":992,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1453c4d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '57dbc0f7-beb9-4ff9-b397-ba31a1301780';
UPDATE public.questions SET
  question_text = 'A circle with center $O$ has radius 10.  Points $A$ and $B$ lie on the circle, and the measure of central angle $AOB$ is 120 degrees.  What is the area of sector $AOB$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{100\\pi}{3}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{50\\pi}{3}$","is_correct":false,"explanation":"Choice B ($\\frac{50\\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$100\\pi$","is_correct":false,"explanation":"Choice C ($100\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$50\\pi$","is_correct":false,"explanation":"Choice D ($50\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with center $O$ has radius 10.  Points $A$ and $B$ lie on the circle, and the measure of central angle $AOB$ is 120 degrees.  What is the area of sector $AOB$?

**Step 2 — Solve.** The area of a sector of a circle is given by the formula  $\frac{\theta}{360} \pi r^2$, where $\theta$ is the measure of the central angle in degrees and r is the radius of the circle. In this case, $\theta = 120$ and $r = 10$, so the area of sector $AOB$ is $\frac{120}{360} \pi (10)^2 = \frac{100\pi}{3}$.

**Step 3 — Select A.** $\frac{100\pi}{3}$

**Distractor analysis:**
- **B** ($\frac{50\pi}{3}$): Choice B ($\frac{50\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($100\pi$): Choice C ($100\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($50\pi$): Choice D ($50\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":942,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '580b0fec-28f6-4b99-a848-bf53574202fb';
UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $2^{x+1} = 8$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $2^{x+1} = 8$?

**Step 2 — Solve.** Since 8 is equal to 2 cubed (2 x 2 x 2 = 8), we can rewrite the equation as  2^(x + 1) = 2^3.  Since the bases are the same, the exponents must be equal:  x + 1 = 3.  Subtracting 1 from both sides gives x = 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":669,"opensat_domain":"Advanced Math","opensat_raw_id":"a8e9d4f2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '58153ee3-e208-47de-a6f5-9c6fd34b6e5e';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 69% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 69% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 65% and 73%","is_correct":true,"explanation":"**Step 1:** Interval 65% to 73%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 65% to 73%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5868a85e-7309-4b5a-a289-a7d4beb5b91f';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '589569eb-4ddc-4ba2-8c17-a8d9d46d699f';
UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form $ax^2 + bx + c = 0$ is given by $-b/a$.  In this case, the sum of the solutions is $-2/1 = -2$.  Therefore, the sum of the solutions to the equation $x^2 + 2x - 15 = 0$ is -2.

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":467,"opensat_domain":"Advanced Math","opensat_raw_id":"8a4e419b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '58afbaf8-a163-40e6-8382-0d0968bcd74d';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r, we get C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":643,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '58b8a915-9e51-49a9-9eff-01c3edc7a54c';

UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students play basketball, 40 students play soccer, and 15 students play both basketball and soccer. How many students play neither basketball nor soccer?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"35","is_correct":false,"explanation":"Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students play basketball, 40 students play soccer, and 15 students play both basketball and soccer. How many students play neither basketball nor soccer?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let B represent the set of students who play basketball, and let S represent the set of students who play soccer.  The number of students who play both sports is 15, so we put 15 in the intersection of the two circles.  Since 60 students play basketball, and 15 of them also play soccer, 60 - 15 = 45 students play only basketball.  Similarly, 40 - 15 = 25 students play only soccer.  The total number of students who play either basketball or soccer is 45 + 25 + 15 = 85.  This means that 100 - 85 = 15 students play neither basketball nor soccer.

**Step 3 — Select C.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (35): Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":196,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4f8a7902","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '58f5ecde-ff80-4d79-a163-71dc27acfb87';
UPDATE public.questions SET
  question_text = 'If  $y = 2x + 3$ and $x = 5$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"8","is_correct":false,"explanation":"Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $y = 2x + 3$ and $x = 5$, what is the value of $y$?

**Step 2 — Solve.** Substituting the value of $x = 5$ into the equation $y = 2x + 3$ gives us $y = 2(5) + 3 = 10 + 3 = 13$.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (8): Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":837,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5906d6b8-1b3d-43ac-b2bd-c5f257496868';
UPDATE public.questions SET
  question_text = 'If the original price is $390$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 25%.',
  options = '[{"id":"A","text":"$366$","is_correct":true,"explanation":"**Step 1:** $390×1.25=488$. **Step 2:** $488×0.75=366$."},{"id":"B","text":"$390$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$488$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$376$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $390×(1+25/100)=488$.
**Step 2:** Discount: $488×(1-25/100)=366$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5908952e-2c84-4e78-bbec-0cb60c3d8ed7';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x + 2}$. For what value of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x + 2}$. For what value of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator is equal to zero. The denominator of the given function,  $x + 2$, is equal to zero when $x = -2$. Therefore, $f(x)$ is undefined for $x = -2$.

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":691,"opensat_domain":"Advanced Math","opensat_raw_id":"a891379d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '593e8a0b-2152-4704-89bf-4fe7a5f5412a';
UPDATE public.questions SET
  question_text = 'A function *f* is defined by $f(x) = 2x^2 + 3x - 5$.  What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-5","is_correct":false,"explanation":"Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A function *f* is defined by $f(x) = 2x^2 + 3x - 5$.  What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function *f*, we get: 

$f(-2) = 2(-2)^2 + 3(-2) - 5$ 

$f(-2) = 2(4) - 6 - 5$ 

$f(-2) = 8 - 6 - 5$ 

$f(-2) = -3$

**Step 3 — Select A.** -11

**Distractor analysis:**
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-5): Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":28,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5946f4fb-4f14-4a32-ade0-e6e107abf24b';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5\\pi$","is_correct":false,"explanation":"Choice A ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10\\pi$","is_correct":false,"explanation":"Choice B ($10\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$25\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$100\\pi$","is_correct":false,"explanation":"Choice D ($100\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives $A = \pi (5^2) = 25\pi$.

**Step 3 — Select C.** $25\pi$

**Distractor analysis:**
- **A** ($5\pi$): Choice A ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($10\pi$): Choice B ($10\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($100\pi$): Choice D ($100\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":627,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '595a0e2b-51dd-40a9-99f7-c2883d04847a';
UPDATE public.questions SET
  question_text = 'In triangle ABC, angle A is a right angle, and the lengths of sides AC and BC are 6 and 8, respectively.  What is the length of side AB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\sqrt{10}$","is_correct":false,"explanation":"Choice C ($\\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{100}$","is_correct":false,"explanation":"Choice D ($\\sqrt{100}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle ABC, angle A is a right angle, and the lengths of sides AC and BC are 6 and 8, respectively.  What is the length of side AB?

**Step 2 — Solve.** Triangle ABC is a right triangle, so we can use the Pythagorean Theorem: $a^2 + b^2 = c^2$, where a and b are the lengths of the legs and c is the length of the hypotenuse.  In this case, AC = 6 and BC = 8, so  $6^2 + 8^2 = c^2$. Simplifying, we get $36 + 64 = c^2$, or $100 = c^2$.  Taking the square root of both sides, we get $c = \sqrt{100}$, or $c = 10$. Therefore, the length of side AB is 10.

**Step 3 — Select B.** 10

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{10}$): Choice C ($\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\sqrt{100}$): Choice D ($\sqrt{100}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":673,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '59633abc-8e3a-4824-80b4-c3617f659316';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 29 by 28 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$808$","is_correct":true,"explanation":"**Step 1:** Full area $812$. **Step 2:** Subtract $2^2$ → $808$."},{"id":"D","text":"$810$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $812-4=808$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '59827d6f-97e5-4c5a-af42-019558dbf1fc';

UPDATE public.questions SET
  question_text = 'Given $x+y=77$ and $2x-y=46$, what is $x$?',
  stimulus_text = 'At a fundraiser, 77 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 41 VIP and 36 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$41$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=123$. **Step 2:** $x=41$."},{"id":"B","text":"$40$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$36$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$42$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=77+46$ → $3x=123$.
**Step 2:** $x=41$.
**Step 3:** Back-substitute: $y=36$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5990d2b8-0084-4706-a432-2bce1b51a292';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for *x* in the function:  f(-2) = 2(-2)^2 - 3(-2) + 1.  Simplify: f(-2) = 8 + 6 + 1 = 15.

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":141,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '59b1721d-445e-45c8-8e9d-193be2857c7e';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 33 ft from the wall and the top is 40 ft high.',
  options = '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$73$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$52$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{33^2+40^2}=52$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 33 and 40.
**Step 2:** $c=\sqrt{33^2+40^2}=52$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '59fc910d-c282-4cc0-a252-a0599393ae3b';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 17$ and $x - 2y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 17$ and $x - 2y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we can use elimination.  Multiply the second equation by 2, giving us $2x - 4y = 2$.  Subtracting this equation from the first equation, we get $7y = 15$, so $y = \frac{15}{7}$.  Substituting this value back into the second equation, we get $x - 2(\frac{15}{7}) = 1$, so $x = 1 + \frac{30}{7} = \frac{37}{7}$.  Therefore, $x = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":810,"opensat_domain":"Algebra","opensat_raw_id":"random_id_f7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5a745659-2a01-4279-9620-f9f73fc4e091';
UPDATE public.questions SET
  question_text = 'The sum of two numbers is 10, and their difference is 4. What is the value of the larger number?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The sum of two numbers is 10, and their difference is 4. What is the value of the larger number?

**Step 2 — Solve.** Let the larger number be x and the smaller number be y. We are given that x + y = 10 and x - y = 4. Adding these two equations together eliminates y, giving us 2x = 14. Solving for x, we get x = 7. Therefore, the larger number is 7.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":866,"opensat_domain":"Algebra","opensat_raw_id":"random_id_b9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5a76dd3e-59d1-4db9-bad3-415f766b63bf';
UPDATE public.questions SET
  question_text = 'If 3x - 2y = 10 and 2x + y = 7, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If 3x - 2y = 10 and 2x + y = 7, what is the value of x?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 2, we get 4x + 2y = 14. Adding this equation to the first equation (3x - 2y = 10), we eliminate y:  7x = 24. Dividing both sides by 7, we get x = 24/7, or x = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":291,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5aa89804-8927-420f-b92b-517863a8ff9c';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+33)^2 - (4x-33)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+33$, $v=4x-33$ → $528x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$132x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1089$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+33$, $v=4x-33$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(66)=528x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5aff7910-7bd1-4761-91b6-1efe366339f8';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 34, 38, 42, 46, and one score $x$ is missing. The mean is 38.4.',
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$32$","is_correct":true,"explanation":"**Step 1:** Sum needed $=38.4×5=192$. **Step 2:** $x=192-160=32$."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$38$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=38.4×5=192$.
**Step 2:** $x=192-160=32$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5b16c23d-4c54-437f-a80f-1dde3f6b6c6b';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"22","is_correct":false,"explanation":"Choice D (22…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse squared is equal to 5 squared plus 12 squared, or 169.  The square root of 169 is 13, so the length of the hypotenuse is 13.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (22): Choice D (22…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":955,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_15","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5b1d0094-77f2-48aa-8d3b-ac7ce39de60c';
COMMIT;
