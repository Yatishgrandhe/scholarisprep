BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area of the circle in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area of the circle in square units?

**Step 2 — Solve.** The area of a circle is given by the formula A = \pi r^2, where r is the radius.  Substituting 5 for r, we get A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":951,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c303a5cc-246a-4d8a-b349-32636d02c84a';

UPDATE public.questions SET
  question_text = 'The equation $\frac{x^2 - 4}{x-2} = 6$ has one extraneous solution. What is the extraneous solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $\frac{x^2 - 4}{x-2} = 6$ has one extraneous solution. What is the extraneous solution?

**Step 2 — Solve.** The equation can be simplified by multiplying both sides by $x-2$ to get  $x^2 - 4 = 6x - 12$.  Rearranging the terms, we get $x^2 - 6x + 8 = 0$.  Factoring, we have $(x-2)(x-4)=0$.  Therefore, the solutions to the equation are $x=2$ and $x=4$. However, the original expression is undefined when $x=2$, as this would result in division by zero. Therefore, $x=2$ is the extraneous solution.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":247,"opensat_domain":"Advanced Math","opensat_raw_id":"e37429b7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3089fec-020f-4c63-9ef4-fdc5114bc4fe';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(9)=5$ and $f(14)=25$, what is $f(-11)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-71$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-11$)."},{"id":"C","text":"$-78$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-75$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-11)=4(-11-9)+(5)=-75$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{25-5}{14-9}=4$.
**Step 2:** Point-slope: $f(-11)=4(-11-9)+(5)$.
**Step 3:** $f(-11)=-75$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c383abba-b20b-4ecc-8348-740a4a461762';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(45)=41$ and $f(50)=61$, what is $f(-47)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-323$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-47$)."},{"id":"C","text":"$-330$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-327$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-47)=4(-47-45)+(41)=-327$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{61-41}{50-45}=4$.
**Step 2:** Point-slope: $f(-47)=4(-47-45)+(41)$.
**Step 3:** $f(-47)=-327$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c383fd22-ec02-4666-aafb-6e76caef7aad';
UPDATE public.questions SET
  question_text = 'A store sells apples for $1.50 per pound and oranges for $2.25 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, how much does the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5.25","is_correct":false,"explanation":"Choice A ($5.25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$6.75","is_correct":false,"explanation":"Choice B ($6.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$7.50","is_correct":false,"explanation":"Choice C ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$9.00","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.50 per pound and oranges for $2.25 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, how much does the customer spend in total?

**Step 2 — Solve.** The customer spends 3 * $1.50 = $4.50 on apples and 2 * $2.25 = $4.50 on oranges. The total cost is $4.50 + $4.50 = $9.00.

**Step 3 — Select D.** $9.00

**Distractor analysis:**
- **A** ($5.25): Choice A ($5.25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($6.75): Choice B ($6.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($7.50): Choice C ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":923,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c38785c6-602a-43f3-a8ac-639880caedfe';
UPDATE public.questions SET
  question_text = 'A circle with radius 5 has a chord of length 8. What is the distance, in units, from the center of the circle to the midpoint of the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 has a chord of length 8. What is the distance, in units, from the center of the circle to the midpoint of the chord?

**Step 2 — Solve.** A chord of a circle and the radius drawn to the midpoint of the chord form a right triangle. The radius is the hypotenuse of this triangle. The midpoint of the chord divides the chord into two equal segments of length 4.  Therefore, the distance from the center of the circle to the midpoint of the chord is one leg of a right triangle with hypotenuse of length 5 and the other leg of length 4. Using the Pythagorean Theorem, we have  or . Therefore, the distance is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":842,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3b4cf6c-1ce3-430c-8d8a-a23626fedb2d';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"17","is_correct":false,"explanation":"Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs. In this case, the hypotenuse squared is equal to 5 squared + 12 squared, or 169. The square root of 169 is 13, so the hypotenuse is 13 units long.

**Step 3 — Select A.** 13

**Distractor analysis:**
- **B** (17): Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":336,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3d17ff9-94ad-49c3-b04b-30db50bf2026';
UPDATE public.questions SET
  question_text = 'A square has side length $s$.  A rectangle has length $2s$ and width $s$. What is the ratio of the area of the rectangle to the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A square has side length $s$.  A rectangle has length $2s$ and width $s$. What is the ratio of the area of the rectangle to the area of the square?

**Step 2 — Solve.** The area of the square is $s^2$. The area of the rectangle is $(2s)(s) = 2s^2$. The ratio of the area of the rectangle to the area of the square is $\frac{2s^2}{s^2} = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":376,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b8e213d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c3d88a78-2f9a-4f42-8fe6-ebf604732b4c';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 30 ft from the wall and the top is 37 ft high.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$48$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{30^2+37^2}=48$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 30 and 37.
**Step 2:** $c=\sqrt{30^2+37^2}=48$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c3ddd45b-cc81-4e61-ac27-a3d657f3defd';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 8 > 263$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 263 grams but at most 276 grams to ship.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $6(40)+8=248$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Still below threshold 263."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$43$","is_correct":true,"explanation":"**Step 1:** $6x > 255$. **Step 2:** $x > 42.5$. Smallest integer choice: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 255$.
**Step 2:** $x > 42.50$.
**Step 3:** Among choices, $43$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c3ef5981-e79e-4141-a748-6eacfc1d3b79';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 150°.',
  options = '[{"id":"A","text":"$150°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$30°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-150=30°$."},{"id":"C","text":"$40°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-150°=30°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c42aa453-cdfa-4445-ae14-8791e826644d';
UPDATE public.questions SET
  question_text = 'If the function $f(x) = 2x^2 + 3x - 1$ is graphed in the $xy$-plane, what is the $y$-coordinate of the $y$-intercept of the graph?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = 2x^2 + 3x - 1$ is graphed in the $xy$-plane, what is the $y$-coordinate of the $y$-intercept of the graph?

**Step 2 — Solve.** The y-intercept of a graph is the point where the graph crosses the y-axis. This occurs when $x=0$.  Substituting 0 for $x$ in the function $f(x) = 2x^2 + 3x - 1$, we get $f(0) = 2(0)^2 + 3(0) - 1 = -1$. Therefore, the y-coordinate of the y-intercept is -1.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":263,"opensat_domain":"Advanced Math","opensat_raw_id":"a987f231","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c46590e6-3bf8-4af1-8d7e-8a94d8ba453f';
UPDATE public.questions SET
  question_text = 'If $y=2x-1$ and $x=3$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $y=2x-1$ and $x=3$, what is the value of $y$?

**Step 2 — Solve.** Substituting 3 for $x$ in the equation $y=2x-1$ gives us $y = 2(3) - 1$, or $y=6-1$, which simplifies to $y=5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":512,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c476ecc9-e0ba-48c3-a456-a713fa7761ae';
UPDATE public.questions SET
  question_text = 'The function *g* is defined by *g*(x) = 10x + 8. What is the value of *g*(x) when x = 8?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"88","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *g* is defined by *g*(x) = 10x + 8. What is the value of *g*(x) when x = 8?

**Step 2 — Solve.** To find the value of *g*(x) when x = 8, we substitute 8 for x in the given equation *g*(x) = 10x + 8. This yields *g*(8) = 10(8) + 8, or *g*(8) = 88. Therefore, when x = 8, the value of *g*(x) is 88.

**Step 3 — Select D.** 88

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":666,"opensat_domain":"Algebra","opensat_raw_id":"173a5c22","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c47c206d-7798-4238-8e0b-de23795cc5aa';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6.  What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6.  What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side of each equilateral triangle is equal to the radius of the circle, so the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":153,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c4806e8f-bc7f-4e25-97d7-bd4bbb7649d8';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people prefer brand A and 40 people prefer brand B. What percentage of the people surveyed prefer brand A?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":false,"explanation":"Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100%","is_correct":false,"explanation":"Choice D (100%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people prefer brand A and 40 people prefer brand B. What percentage of the people surveyed prefer brand A?

**Step 2 — Solve.** The percentage of people who prefer brand A can be found by dividing the number of people who prefer brand A by the total number of people surveyed and multiplying by 100%.  This gives (60/100) * 100% = 60%.

**Step 3 — Select B.** 60%

**Distractor analysis:**
- **A** (40%): Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100%): Choice D (100%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":819,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c4bd62f2-9697-4395-976f-cad9c711f27c';
UPDATE public.questions SET
  question_text = 'A square has a side length of 8. What is the length of the diagonal of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"8\\sqrt{2}","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8\\sqrt{3}","is_correct":false,"explanation":"Choice C (8\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 8. What is the length of the diagonal of the square?

**Step 2 — Solve.** The diagonal of a square divides the square into two 45-45-90 right triangles.  The ratio of the length of the hypotenuse to the length of a leg in a 45-45-90 right triangle is $\sqrt{2}$:1.  Since the side length of the square is 8, the length of the diagonal is $8\sqrt{2}$.

**Step 3 — Select A.** 8\sqrt{2}

**Distractor analysis:**
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8\sqrt{3}): Choice C (8\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":807,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c5467bf8-b1c0-47f1-aee6-0ab9d4020f31';

UPDATE public.questions SET
  question_text = 'Which of the following is equivalent to $(x^2 + 3)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^4 + 9","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"x^4 + 6x^2 + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"x^4 + 9x^2 + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^4 + 12x^2 + 9","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** Which of the following is equivalent to $(x^2 + 3)^2$?

**Step 2 — Solve.** We can expand the expression using the FOIL method (First, Outer, Inner, Last):

$(x^2 + 3)^2 = (x^2 + 3)(x^2 + 3) = x^4 + 3x^2 + 3x^2 + 9 = x^4 + 6x^2 + 9$.

Therefore, the correct answer is D.

**Step 3 — Select D.** x^4 + 12x^2 + 9

**Distractor analysis:**
- **A** (x^4 + 9): Adds quantities that should be multiplied or compares unrelated terms.
- **B** (x^4 + 6x^2 + 9): May result from squaring when you should multiply or add.
- **C** (x^4 + 9x^2 + 9): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":840,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c5554295-4d5c-4329-a664-3414d2538bf8';
UPDATE public.questions SET
  question_text = 'If $y = 3x - 5$ and $x = 2y + 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $y = 3x - 5$ and $x = 2y + 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations by substitution.  Since we know that $x = 2y + 1$, we can substitute $2y + 1$ for $x$ in the equation $y = 3x - 5$.  This gives us $y = 3(2y + 1) - 5$.  Distributing the 3, we get $y = 6y + 3 - 5$.  Combining like terms, we have $y = 6y - 2$.  Subtracting $y$ from both sides, we get $0 = 5y - 2$.  Adding 2 to both sides, we get $2 = 5y$.  Dividing both sides by 5, we get $y = \frac{2}{5}$.  Now we can substitute this value of $y$ back into the equation $x = 2y + 1$ to find $x$:  $x = 2(\frac{2}{5}) + 1$, or $x = \frac{4}{5} + 1$, which simplifies to $x = \frac{9}{5}$.  The value of $x$ is then $\frac{9}{5} \cdot \frac{5}{5} = \frac{45}{5} = 9$.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":484,"opensat_domain":"Algebra","opensat_raw_id":"f872419e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c585befe-fe8f-4a2b-a6f6-a07749d7d4e2';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $4(x-2)+2k = 192$ have solution $x=49$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$1$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=49$."},{"id":"B","text":"$2$","is_correct":true,"explanation":"Expand: $4x-8+2k=192$ → $4x=196$ → $x=49$ when $k=2$."},{"id":"C","text":"$3$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$49$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=49$: $4(49-k)+2k=192$.
**Step 2:** Simplify: $196-4k+2k=192$ → $196+-2k=192$.
**Step 3:** Solve for $k$: $-2k=-4$ → $k=2$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c5d93507-9663-4854-be3b-ed214e3e23c0';
UPDATE public.questions SET
  question_text = 'The equation $x^2 - 2x - 9 = 0$ can be solved using the quadratic formula. What is the value of the discriminant for this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"32","is_correct":false,"explanation":"Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"16","is_correct":false,"explanation":"Choice C (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 2x - 9 = 0$ can be solved using the quadratic formula. What is the value of the discriminant for this equation?

**Step 2 — Solve.** The quadratic formula is used to solve equations in the form $ax^2 + bx + c = 0$, where $a$, $b$, and $c$ are constants. The discriminant of this equation is $b^2 - 4ac$. In the given equation, $a = 1$, $b = -2$, and $c = -9$. Therefore, the discriminant is $(-2)^2 - 4(1)(-9) = 4 + 36 = 40$.

**Step 3 — Select A.** 40

**Distractor analysis:**
- **B** (32): Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (16): Choice C (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":147,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c5e538c4-87c6-4152-a420-5d1a1731f29c';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 28 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{32}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 32 total. **Step 2:** P $=\\frac{4}{32}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 32.
**Step 2:** Conditional probability $=\frac{4}{32}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c5e81b64-2311-405b-b449-f1c3a4d68d97';
UPDATE public.questions SET
  question_text = 'If $3x+4y = 10$ and $2x-y = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x+4y = 10$ and $2x-y = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination. Multiplying the second equation by 4, we get $8x - 4y = 20$. Adding this equation to the first equation, we get $11x = 30$, which gives us $x = \frac{30}{11}$. Since 2 is the closest integer to $\frac{30}{11}$, the answer is B.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":608,"opensat_domain":"Algebra","opensat_raw_id":"random_id_d4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c63eb440-b92e-440b-a059-4cdd03c39fa2';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-6","is_correct":false,"explanation":"Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form ax^2 + bx + c = 0 is given by -b/a. In this case, a = 1, b = -2, and c = -8. So, the sum of the solutions is -(-2)/1 = 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-6): Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":640,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c6669b05-63c6-4282-b3eb-16307ca72899';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 3x^2 + 5x - 2$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-12","is_correct":false,"explanation":"Choice A (-12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-4","is_correct":false,"explanation":"Choice B (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 3x^2 + 5x - 2$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting $-2$ for $x$ in the function $f(x) = 3x^2 + 5x - 2$ yields  $f(-2) = 3(-2)^2 + 5(-2) - 2$ = 12 - 10 - 2 = 8.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (-12): Choice A (-12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-4): Choice B (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":386,"opensat_domain":"Advanced Math","opensat_raw_id":"949c662a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c66c0e56-bb97-4e7a-8702-b02c6ab349b3';

UPDATE public.questions SET
  question_text = 'The graph of the equation $y = \frac{1}{2}(x+1)(x-3)$ intersects the x-axis at two points. What are the x-coordinates of these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1 and 3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1 and -3","is_correct":false,"explanation":"Choice B (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2 and -2","is_correct":false,"explanation":"Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-2 and 4","is_correct":false,"explanation":"Choice D (-2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = \frac{1}{2}(x+1)(x-3)$ intersects the x-axis at two points. What are the x-coordinates of these two points?

**Step 2 — Solve.** The graph of the equation intersects the x-axis when y = 0.  Setting the equation equal to zero gives $0 = \frac{1}{2}(x+1)(x-3)$.  This equation is satisfied when either x+1=0 or x-3=0. Solving for x in each of these equations yields x = -1 and x = 3.  Therefore, the x-coordinates of the two points of intersection are -1 and 3.

**Step 3 — Select A.** -1 and 3

**Distractor analysis:**
- **B** (1 and -3): Choice B (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2 and -2): Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-2 and 4): Choice D (-2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":687,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6874e76-0c27-4890-856f-a3b8a473c1a1';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 5(2) + 2.  Simplifying, we get *f*(2) = 12 - 10 + 2 = 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":344,"opensat_domain":"Advanced Math","opensat_raw_id":"12e8c776","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6891da3-dda7-489b-a70e-88dc4252f9a8';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. If a chord of the circle has length 8 units, what is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. If a chord of the circle has length 8 units, what is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and a radius drawn to an endpoint of the chord.  The radius will be perpendicular to the chord, dividing the chord into two equal segments.  The radius, the chord segment, and a radius drawn to the other endpoint of the chord will form a right triangle.  The hypotenuse of this triangle will be the radius of the circle, which is 5 units.  The other leg of the right triangle will be half of the chord, which is 4 units.  The Pythagorean Theorem states that the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the square of the distance from the center of the circle to the chord is equal to 5^2 - 4^2 = 25 - 16 = 9.  The distance from the center of the circle to the chord is the square root of 9, which is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":887,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c6ee2299-ab48-49b0-8d64-e1cc44b4fb87';
UPDATE public.questions SET
  question_text = 'A store is selling a certain type of shirt for $\$20 each. The store is having a sale, offering a discount of 15% off the original price. What is the sale price of the shirt?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$17","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$18","is_correct":false,"explanation":"Choice B ($18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$19","is_correct":false,"explanation":"Choice C ($19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$21","is_correct":false,"explanation":"Choice D ($21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A store is selling a certain type of shirt for $\$20 each. The store is having a sale, offering a discount of 15% off the original price. What is the sale price of the shirt?

**Step 2 — Solve.** A 15% discount means the customer pays 85% of the original price.  To find the sale price, we multiply the original price by 0.85: $20 * 0.85 = $17.

**Step 3 — Select A.** $17

**Distractor analysis:**
- **B** ($18): Choice B ($18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($19): Choice C ($19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($21): Choice D ($21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":848,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c73fa2e8-420b-4552-83a7-84b72257ee50';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 1}{x - 1}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1 only","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1 only","is_correct":false,"explanation":"Choice B (-1 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0 only","is_correct":false,"explanation":"Choice C (0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1 and -1","is_correct":false,"explanation":"Choice D (1 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 1}{x - 1}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator equals zero. In this case, the denominator is $x-1$, which is zero when $x=1$. Therefore, $f(x)$ is undefined when $x=1$.

**Step 3 — Select A.** 1 only

**Distractor analysis:**
- **B** (-1 only): Choice B (-1 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0 only): Choice C (0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1 and -1): Choice D (1 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":2,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c75bf131-7be8-45e3-b569-4598904ec54b';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 49, 53, 57, 61, and one score $x$ is missing. The mean is 53.4.',
  options = '[{"id":"A","text":"$45$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$47$","is_correct":true,"explanation":"**Step 1:** Sum needed $=53.4×5=267$. **Step 2:** $x=267-220=47$."},{"id":"C","text":"$49$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=53.4×5=267$.
**Step 2:** $x=267-220=47$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c769af96-6e5e-42ba-ae14-7d91102f079d';
UPDATE public.questions SET
  question_text = 'If $\frac{x}{y} = 2$ and $\frac{y}{z} = 3$, what is the value of $\frac{x}{z}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{6}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{3}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{y} = 2$ and $\frac{y}{z} = 3$, what is the value of $\frac{x}{z}$?

**Step 2 — Solve.** We can multiply the two given equations together:  $\frac{x}{y} \cdot \frac{y}{z} = 2 \cdot 3$. The y terms cancel, leaving $\frac{x}{z} = 6$.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** ($\frac{1}{6}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{3}$): Choice B ($\frac{2}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":886,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c7dcd732-aac9-4911-b766-96fba7bff162';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{x^2 - 9}{x - 3}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 3 only","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = -3 only","is_correct":false,"explanation":"Choice B (x = -3 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = 3 and x = -3","is_correct":false,"explanation":"Choice C (x = 3 and x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 0 only","is_correct":false,"explanation":"Choice D (x = 0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{x^2 - 9}{x - 3}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when its denominator equals zero.  In this case, the denominator is $x-3$, so the function is undefined when $x-3 = 0$, which simplifies to $x=3$.  Therefore, the function is undefined for $x=3$ only.

**Step 3 — Select A.** x = 3 only

**Distractor analysis:**
- **B** (x = -3 only): Choice B (x = -3 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 3 and x = -3): Choice C (x = 3 and x = -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 0 only): Choice D (x = 0 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":37,"opensat_domain":"Advanced Math","opensat_raw_id":"784322d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c7e51eae-b1c2-4e90-9d38-2885181d3be6';

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
COMMIT;
