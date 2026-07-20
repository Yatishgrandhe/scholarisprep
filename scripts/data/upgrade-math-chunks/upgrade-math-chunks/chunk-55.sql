BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 people asked them whether they preferred apples or oranges. Of the people surveyed, 60% said they preferred apples. How many people preferred oranges? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people asked them whether they preferred apples or oranges. Of the people surveyed, 60% said they preferred apples. How many people preferred oranges? 

**Step 2 — Solve.** If 60% of the 100 people surveyed preferred apples, then 100 - 60 = 40% preferred oranges. Since 40% of 100 is (0.40)(100) = 40, then 40 people preferred oranges.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":165,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"e879416b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4b9df27d-7ee7-4612-9b56-f447bdd688e5';

UPDATE public.questions SET
  question_text = 'A bakery sells cookies in packages of 6. They have 150 cookies in stock.  How many packages of cookies can they sell?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"900","is_correct":false,"explanation":"Choice D (900…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A bakery sells cookies in packages of 6. They have 150 cookies in stock.  How many packages of cookies can they sell?

**Step 2 — Solve.** To find out how many packages they can sell, divide the total number of cookies by the number of cookies per package: 150 cookies / 6 cookies/package = 25 packages.

**Step 3 — Select B.** 25

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (900): Choice D (900…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":320,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4c3c0426-0b22-4bac-8dc1-8ed1a31f5e50';

UPDATE public.questions SET
  question_text = 'The function $f(x) = ax^2 + bx + c$ has a vertex at $(-2, 3)$ and passes through the point $(0, 1)$. What is the value of $c$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = ax^2 + bx + c$ has a vertex at $(-2, 3)$ and passes through the point $(0, 1)$. What is the value of $c$?

**Step 2 — Solve.** Since the parabola passes through the point (0, 1), we know that f(0) = 1.  Substituting x = 0 into the equation f(x) = ax^2 + bx + c, we get f(0) = a(0)^2 + b(0) + c = c. Therefore, c = 1.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":261,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_22","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4c7fc594-b15c-476c-a5fc-f2ce4a0e39af';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$ cm","is_correct":false,"explanation":"Choice A ($\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5$\\pi$ cm","is_correct":false,"explanation":"Choice B (5$\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10$\\pi$ cm","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"25$\\pi$ cm","is_correct":false,"explanation":"Choice D (25$\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 cm for $r$, we get $C = 2\pi (5) = 10\pi$ cm.

**Step 3 — Select C.** 10$\pi$ cm

**Distractor analysis:**
- **A** ($\pi$ cm): Choice A ($\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5$\pi$ cm): Choice B (5$\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25$\pi$ cm): Choice D (25$\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":723,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4c95e373-6db8-4993-9194-cdbcddcde7c3';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(2)$?

**Step 2 — Solve.** To find f(2), we substitute 2 for x in the function: f(2) = 3(2)^2 - 2(2) + 1.  Simplifying, we get f(2) = 12 - 4 + 1 = 9.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":164,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ce1d5f1-efef-47bf-9f4e-7f32b0e7702b';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we find that $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":327,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ceb9f6a-39a0-47a2-9cff-061849750ff3';

UPDATE public.questions SET
  question_text = 'If the final reading is 78 when $r=9$, and the process is modeled by $8r+6$, what value of $x$ satisfies $8x+6=78$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 8, then 6 is added.',
  options = '[{"id":"A","text":"$13$","is_correct":false,"explanation":"After subtracting 6, divide by 8; this is too small."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$15$","is_correct":true,"explanation":"**Step 1:** $8x = 72$. **Step 2:** $x = 15$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 6: $8x=72$.
**Step 2:** Divide by 8: $x=15$.
**Step 3:** Verify: $8(15)+6=78$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4d0dfd00-cca8-437d-9fc9-be431ebd7884';

UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the function, we get: $f(-2) = 2(-2)^2 - 3(-2) + 1 = 8 + 6 + 1 = 15$. Therefore, the value of f(-2) is 15.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":755,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d75f43b-c4b6-4e9a-95ce-3921a7f1dc69';

COMMIT;
