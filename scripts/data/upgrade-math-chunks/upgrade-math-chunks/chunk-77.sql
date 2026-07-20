BEGIN;
UPDATE public.questions SET
  question_text = 'The sum of two numbers is 10.  One number is 4 less than twice the other number.  What is the value of the larger number?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The sum of two numbers is 10.  One number is 4 less than twice the other number.  What is the value of the larger number?

**Step 2 — Solve.** Let x represent the smaller number.  The larger number is 2x - 4.  The sum of the two numbers is x + (2x - 4) = 10.  Combining like terms, we get 3x - 4 = 10.  Adding 4 to both sides, we get 3x = 14.  Dividing both sides by 3, we get x = 14/3.  The larger number is 2(14/3) - 4 = 28/3 - 4 = 16/3 = 5 1/3.  Therefore, the larger number is 6.

**Step 3 — Select D.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"INE","domain_id":"algebra","opensat_index":786,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '68d2d2af-7356-4b10-bb0b-753f40f61292';

UPDATE public.questions SET
  question_text = 'The lengths of the sides of a triangle are 5, 12, and 13.  Is this triangle a right triangle?  Explain your reasoning.',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"Yes, because the triangle satisfies the Pythagorean Theorem: 5^2 + 12^2 = 13^2.","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"Yes, because the triangle has one angle that measures 90 degrees.","is_correct":false,"explanation":"Choice B (Yes, because the triangle has one angle that measures 90 deg…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"No, because the triangle is not a right triangle, and the angles do not measure 90 degrees.","is_correct":false,"explanation":"Choice C (No, because the triangle is not a right triangle, and the an…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"No, because the triangle does not satisfy the Pythagorean Theorem: 5^2 + 12^2 ≠ 13^2.","is_correct":false,"explanation":"Choice D (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The lengths of the sides of a triangle are 5, 12, and 13.  Is this triangle a right triangle?  Explain your reasoning.

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. In this case, 5^2 + 12^2 = 25 + 144 = 169, and 13^2 = 169.  Since the sides satisfy the Pythagorean Theorem, the triangle is a right triangle.

**Step 3 — Select A.** Yes, because the triangle satisfies the Pythagorean Theorem: 5^2 + 12^2 = 13^2.

**Distractor analysis:**
- **B** (Yes, because the triangle has one angle that measures 90 degrees.): Choice B (Yes, because the triangle has one angle that measures 90 deg…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (No, because the triangle is not a right triangle, and the angles do not measure 90 degrees.): Choice C (No, because the triangle is not a right triangle, and the an…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (No, because the triangle does not satisfy the Pythagorean Theorem: 5^2 + 12^2 ≠ 13^2.): Choice D (No, because the triangle does not satisfy the Pythagorean Th…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":922,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_17","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6906b605-53ed-4778-a9b4-02a6347c768f';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$.  Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":340,"opensat_domain":"Algebra","opensat_raw_id":"random_id_5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '69086a83-bd6b-425d-a688-5c59a366cd33';

UPDATE public.questions SET
  question_text = 'If  \(2x+3 = 11\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  \(2x+3 = 11\), what is the value of \(x\)?

**Step 2 — Solve.** Subtracting 3 from both sides of the equation gives \(2x = 8\). Dividing both sides by 2 gives \(x = 4\).

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":25,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '696f59e6-94d9-4e6e-a629-a552459afe71';

UPDATE public.questions SET
  question_text = 'If $f(x) = 3x^2 - 2x + 1$, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = 3x^2 - 2x + 1$, what is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for $x$ in the function: $f(-2) = 3(-2)^2 - 2(-2) + 1$. Simplifying, we get $f(-2) = 3(4) + 4 + 1 = 12 + 4 + 1 = 17$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":469,"opensat_domain":"Advanced Math","opensat_raw_id":"37a147e1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6974b2cb-41e4-41fb-8995-0d258127cfe7';

UPDATE public.questions SET
  question_text = 'If $x-2$ is a factor of $2x^2 + ax + b$, where $a$ and $b$ are constants, what is the value of $b$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-8","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-4","is_correct":false,"explanation":"Choice B (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x-2$ is a factor of $2x^2 + ax + b$, where $a$ and $b$ are constants, what is the value of $b$?

**Step 2 — Solve.** If $x-2$ is a factor of $2x^2 + ax + b$, then the polynomial must equal 0 when $x = 2$.  Substituting 2 for $x$ in the expression, we get $2(2)^2 + a(2) + b = 0$.  Simplifying, we have $8 + 2a + b = 0$. Since the coefficient of $x^2$ is 2, the coefficient of the constant term $b$ must also be 2 times the constant term in the factored form $(x - 2)$.  This means that $b = -8$, which is the constant term in the factored form,  $2(x-2)(x+2) = 0$.  Substituting $b = -8$ into the equation $8 + 2a + b = 0$ gives $8 + 2a - 8 = 0$, or $2a = 0$, so $a = 0$.  Therefore, the value of $b$ is -8.

**Step 3 — Select A.** -8

**Distractor analysis:**
- **B** (-4): Choice B (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":799,"opensat_domain":"Algebra","opensat_raw_id":"f125a218","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6983a6c4-7898-425e-91b2-22a7ea35ea55';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area of the square, in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area of the square, in square centimeters?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  The diameter of the circle is 2 times the radius, or 10 centimeters. Therefore, the area of the square is 10^2 = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":17,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"d8f2679c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '69baab82-ae97-4bed-8837-f7dab2312d3b';

UPDATE public.questions SET
  question_text = 'After $t=17$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+14$.',
  options = '[{"id":"A","text":"$78$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=17$."},{"id":"B","text":"$82$","is_correct":true,"explanation":"**Step 1:** Substitute $t=17$. **Step 2:** $d=4(17)+14=82$."},{"id":"C","text":"$83$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$18$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=17$: $d=4(17)+14$.
**Step 2:** Compute: $d=82$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '69bc1c87-2069-43b5-a0f0-74dc363686f8';

COMMIT;
