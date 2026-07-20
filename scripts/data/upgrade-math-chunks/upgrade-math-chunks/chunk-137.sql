BEGIN;
UPDATE public.questions SET
  question_text = 'The expression $(x + 2)(x - 2)$ is equivalent to which of the following? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^2 - 4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x^2 + 4","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"x^2 - 2x + 4","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^2 + 2x - 4","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The expression $(x + 2)(x - 2)$ is equivalent to which of the following? 

**Step 2 — Solve.** This expression is a difference of squares, which follows the pattern $(a + b)(a - b) = a^2 - b^2$. In this case, $a = x$ and $b = 2$, so $(x + 2)(x - 2) = x^2 - 2^2 = x^2 - 4$.

**Step 3 — Select A.** x^2 - 4

**Distractor analysis:**
- **B** (x^2 + 4): May result from squaring when you should multiply or add.
- **C** (x^2 - 2x + 4): May result from squaring when you should multiply or add.
- **D** (x^2 + 2x - 4): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":883,"opensat_domain":"Advanced Math","opensat_raw_id":"a46732c5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bbd11ffa-1fd0-4c81-8c45-4acc1ef20d2b';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = 2x^2 - 3x + 1\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = 2x^2 - 3x + 1\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** To find \(f(-2)\), we substitute -2 for x in the function. This gives us \(f(-2) = 2(-2)^2 - 3(-2) + 1\). Simplifying, we get \(f(-2) = 2(4) + 6 + 1\), or \(f(-2) = 8 + 6 + 1\), which is equal to \(f(-2) = 15\).

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":258,"opensat_domain":"Advanced Math","opensat_raw_id":"435b892d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bc1b0b76-7fc4-437d-a58f-a19b4ce68553';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 10x + 24 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-6)=0$.
**Step 2:** Roots $x=4$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bc1ee049-0f30-4049-8f44-6d4b810f1417';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":false,"explanation":"Choice B (10$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25$\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100$\\pi$","is_correct":false,"explanation":"Choice D (100$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle, in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where r is the radius of the circle.  Since the radius of the circle is 5 units, the area of the circle is $A = \pi (5)^2 = 25\pi$ square units.

**Step 3 — Select C.** 25$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10$\pi$): Choice B (10$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100$\pi$): Choice D (100$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":830,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bc2208cf-6f6b-44f6-905c-f73632099846';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = 2x - 3\). If \(f(a) = 11\), what is the value of \(a\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = 2x - 3\). If \(f(a) = 11\), what is the value of \(a\)?

**Step 2 — Solve.** To solve for a, we substitute 11 for f(a) in the equation f(x) = 2x - 3.  This gives us 11 = 2a - 3.  Adding 3 to both sides of the equation gives 14 = 2a.  Dividing both sides of the equation by 2 gives a = 7.

**Step 3 — Select B.** 7

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":1006,"opensat_domain":"Algebra","opensat_raw_id":"432ef812","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bc3f1669-d85c-40e7-8f92-6453a6e9070a';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bc857c4d-8a27-4ab0-9c7a-55e543e02933';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 17 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{23}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{22}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{23}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{22}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 22 total. **Step 2:** P $=\\frac{5}{22}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 22.
**Step 2:** Conditional probability $=\frac{5}{22}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bc85fe8d-3f2a-4c2f-8227-9ca3d6719296';

UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10 units. What is the area of the circle, in square units?  (Express your answer in terms of pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10 units. What is the area of the circle, in square units?  (Express your answer in terms of pi.)

**Step 2 — Solve.** The area of a circle is given by the formula  πr², where r is the radius of the circle.  Since the diameter of the circle is 10 units, the radius is 5 units.  Therefore, the area of the circle is π(5)² = 25π square units.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":142,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f1234567","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bcac69e8-323d-4752-84c8-6b4386d987d8';

COMMIT;
