BEGIN;
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x - 2 = 10 - x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x - 2 = 10 - x$?

**Step 2 — Solve.** To solve for x, we add x to both sides of the equation: $3x - 2 + x = 10 - x + x$, which gives us $4x - 2 = 10$. Then, we add 2 to both sides: $4x - 2 + 2 = 10 + 2$, or $4x = 12$. Dividing both sides by 4, we get $x = 3$.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":879,"opensat_domain":"Algebra","opensat_raw_id":"8b85219d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b689d120-028c-4b11-bbd8-014bff2fb3b8';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":514,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_45","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b68e95f8-9525-4d8c-b8ef-bb681794faf4';

UPDATE public.questions SET
  question_text = 'Given $x+y=79$ and $2x-y=47$, what is $x$?',
  stimulus_text = 'At a fundraiser, 79 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 42 VIP and 37 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$42$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=126$. **Step 2:** $x=42$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$37$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$43$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=79+47$ → $3x=126$.
**Step 2:** $x=42$.
**Step 3:** Back-substitute: $y=37$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b69b017a-d978-4bb6-850c-edbbb24f1bdc';

UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0","is_correct":false,"explanation":"Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form $ax^2 + bx + c = 0$ is given by $-b/a$.  In this case, $a = 1$, $b = 6$, and $c = 5$, so the sum of the solutions is $-6/1 = -6$.

**Step 3 — Select B.** -6

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0): Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":411,"opensat_domain":"Algebra","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6af976a-c360-4fc7-9fba-7f056952f641';

UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression on the left-hand side of the equation is a perfect square trinomial: $(x + 3)^2 = 0$.  Taking the square root of both sides, we get $x + 3 = 0$. Subtracting 3 from both sides, we get $x = -3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":128,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6b206c3-ccb1-4dbc-8aef-4c78642959f2';

UPDATE public.questions SET
  question_text = 'What is the value of the expression $\frac{5^2 - 3^2}{2^2 - 1^2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of the expression $\frac{5^2 - 3^2}{2^2 - 1^2}$?

**Step 2 — Solve.** We can simplify the expression using the difference of squares pattern:  $\frac{5^2 - 3^2}{2^2 - 1^2} = \frac{(5+3)(5-3)}{(2+1)(2-1)} = \frac{8 \times 2}{3 \times 1} = \frac{16}{3} = \boxed{4}$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":222,"opensat_domain":"Advanced Math","opensat_raw_id":"67eb899b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b6b3082f-c96e-44ae-94ad-82d08613f896';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x-2}$ is undefined for what value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x-2}$ is undefined for what value of $x$?

**Step 2 — Solve.** The function is undefined when the denominator is equal to zero.  The denominator, $x-2$, is equal to zero when $x=2$. Therefore, the function is undefined for $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":75,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b6bdd2eb-7d05-49ed-ad00-c1cf5dd60843';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** Since the circle is inscribed in the square, the diameter of the circle is equal to the side length of the square. The diameter of the circle is twice the radius, or 10 centimeters. Therefore, the side length of the square is 10 centimeters, and the area of the square is 10^2 = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":520,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d72993bd","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b6c86712-1a24-4c2b-b4e1-9f900edf98ce';

COMMIT;
