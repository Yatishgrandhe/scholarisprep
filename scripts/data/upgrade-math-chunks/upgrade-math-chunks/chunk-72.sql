BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** We can factor the quadratic expression to get $(x-4)(x+2) = 0$. This means the solutions are $x = 4$ and $x = -2$. The sum of these solutions is $4 + (-2) = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":221,"opensat_domain":"Advanced Math","opensat_raw_id":"8a5e763b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '635cc4d8-3131-4a99-8833-ab4781382796';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side length of each equilateral triangle is equal to the radius of the circle, which is 6. The perimeter of the hexagon is 6 times the side length of one of the equilateral triangles, or 6(6) = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":416,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"12d8c11f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '63e14c57-e500-4a05-90b3-d59512d24c9c';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 315$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 315 grams but at most 328 grams to ship.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $6(49)+6=300$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Still below threshold 315."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$52$","is_correct":true,"explanation":"**Step 1:** $6x > 309$. **Step 2:** $x > 51.5$. Smallest integer choice: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 309$.
**Step 2:** $x > 51.50$.
**Step 3:** Among choices, $52$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '63f549d7-9033-4ae6-8ef6-94567f2c85ee';

UPDATE public.questions SET
  question_text = 'The equation $2x^2 + 5x - 3 = 0$ has two solutions, $x_1$ and $x_2$. What is the value of $x_1^2 + x_2^2$ ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{4}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{25}{4}$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\frac{13}{4}$","is_correct":false,"explanation":"Choice C ($\\frac{13}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{65}{4}$","is_correct":false,"explanation":"Choice D ($\\frac{65}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $2x^2 + 5x - 3 = 0$ has two solutions, $x_1$ and $x_2$. What is the value of $x_1^2 + x_2^2$ ?

**Step 2 — Solve.** We can use the following relationship: for a quadratic equation of the form $ax^2 + bx + c = 0$, the sum of the squares of the roots is equal to $\frac{b^2 - 2ac}{a^2}$. In this case, $a = 2$, $b = 5$, and $c = -3$. Therefore, $x_1^2 + x_2^2 = \frac{5^2 - 2(2)(-3)}{2^2} = \frac{25 + 12}{4} = \frac{37}{4}$.

**Step 3 — Select B.** $\frac{25}{4}$

**Distractor analysis:**
- **A** ($\frac{1}{4}$): Inverts the ratio — a common probability error.
- **C** ($\frac{13}{4}$): Choice C ($\frac{13}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{65}{4}$): Choice D ($\frac{65}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":551,"opensat_domain":"Algebra","opensat_raw_id":"3a6bd3a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6401f41c-a30e-4e89-a7a3-eb6de97cb203';

UPDATE public.questions SET
  question_text = 'If $x = 2y + 3$ and $y = -x + 1$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x = 2y + 3$ and $y = -x + 1$, what is the value of $y$?

**Step 2 — Solve.** We can solve this system of equations by substitution.  Substitute the expression for $y$ from the second equation into the first equation: $x = 2(-x + 1) + 3$.  Simplifying this equation, we get $x = -2x + 2 + 3$, or $3x = 5$. Dividing both sides by 3, we find $x = \frac{5}{3}$.  Now, we can substitute this value of $x$ back into either of the original equations to solve for $y$.  Substituting into the second equation, we get $y = -\frac{5}{3} + 1$, or $y = \frac{-2}{3}$.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":80,"opensat_domain":"Algebra","opensat_raw_id":"c41b7f94","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6464bf85-d00c-4e86-a3b5-cc3332a95401';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x + 2 = 14$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x + 2 = 14$?

**Step 2 — Solve.** To solve for $x$, we subtract 2 from both sides of the equation, giving us $3x = 12$. Dividing both sides by 3, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":759,"opensat_domain":"Algebra","opensat_raw_id":"9823421a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '649d09aa-2ed0-4072-97cf-577e075f99b3';

UPDATE public.questions SET
  question_text = 'If the function $f(x) = \frac{x^2 + 3x + 2}{x + 1}$ is defined for all real numbers except for $x = -1$, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = \frac{x^2 + 3x + 2}{x + 1}$ is defined for all real numbers except for $x = -1$, what is the value of $f(2)$?

**Step 2 — Solve.** To find f(2), we substitute $x = 2$ into the function: $f(2) = \frac{2^2 + 3(2) + 2}{2 + 1}$. Simplifying, we get $f(2) = \frac{4 + 6 + 2}{3} = \frac{12}{3} = 4$. Therefore, the value of f(2) is 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":956,"opensat_domain":"Advanced Math","opensat_raw_id":"8a67c85f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '64a4bb94-0062-4f3b-8f46-10114167c8b5';

UPDATE public.questions SET
  question_text = 'If $x = 3$, what is the value of $(x+1)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"9","is_correct":false,"explanation":"Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"16","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x = 3$, what is the value of $(x+1)^2$?

**Step 2 — Solve.** Substitute $x = 3$ into the expression.  This gives us $(3+1)^2 = 4^2 = 16$.

**Step 3 — Select C.** 16

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (9): Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":705,"opensat_domain":"Algebra","opensat_raw_id":"f98f754f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '64bcb47c-ba98-4330-9918-8fade2b7158c';

COMMIT;
