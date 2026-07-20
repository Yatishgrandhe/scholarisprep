BEGIN;
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x<sup>2</sup> + 4. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"22","is_correct":false,"explanation":"Choice C (22…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"28","is_correct":false,"explanation":"Choice D (28…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x<sup>2</sup> + 4. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the equation *f*(x) = 3x<sup>2</sup> + 4. This gives us *f*(2) = 3(2)<sup>2</sup> + 4 = 3(4) + 4 = 12 + 4 = 16.

**Step 3 — Select B.** 16

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (22): Choice C (22…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (28): Choice D (28…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":183,"opensat_domain":"Advanced Math","opensat_raw_id":"7160cbb4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fa8c9350-6a76-440c-b437-9b0fec5d8e2a';

UPDATE public.questions SET
  question_text = 'A store sells apples and oranges. The price of an apple is $\$0.75$ and the price of an orange is $\$1.25$. If a customer bought 3 apples and 5 oranges, how much did the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$8.25$","is_correct":false,"explanation":"Choice A ($\\$8.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$9.75$","is_correct":false,"explanation":"Choice B ($\\$9.75$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$10.00$","is_correct":false,"explanation":"Choice C ($\\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$11.25$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples and oranges. The price of an apple is $\$0.75$ and the price of an orange is $\$1.25$. If a customer bought 3 apples and 5 oranges, how much did the customer spend in total?

**Step 2 — Solve.** The cost of the apples is 3 * $0.75 = $2.25. The cost of the oranges is 5 * $1.25 = $6.25. The total cost is $2.25 + $6.25 = $8.50.

**Step 3 — Select D.** $\$11.25$

**Distractor analysis:**
- **A** ($\$8.25$): Choice A ($\$8.25$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$9.75$): Choice B ($\$9.75$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$10.00$): Choice C ($\$10.00$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":884,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fadb122b-da31-4204-b384-26b1073e5051';

UPDATE public.questions SET
  question_text = 'If $x^2 - 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"18","is_correct":false,"explanation":"Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The given equation is a perfect square trinomial, which can be factored as $(x-3)^2 = 0$. Taking the square root of both sides, we get $x - 3 = 0$. Adding 3 to both sides, we get $x = 3$.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (18): Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":860,"opensat_domain":"Advanced Math","opensat_raw_id":"1348f21a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fae9cbd9-1b1c-46f3-b334-ff514519887b';

UPDATE public.questions SET
  question_text = 'If $x^2 - 4x + 4 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 4x + 4 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression on the left-hand side of the equation is a perfect square trinomial: $(x-2)^2 = 0$. Taking the square root of both sides, we get $x-2 = 0$. Adding 2 to both sides, we find $x = 2$.

**Step 3 — Select D.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":490,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_12","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'fb18e4d2-f63e-4b60-a224-e598a72b7033';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 has its center at (4, -2). Which of the following is an equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 4)^2 + (y - 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x + 4)^2 + (y - 2)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 4)^2 + (y + 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 4)^2 + (y + 2)^2 = 25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 has its center at (4, -2). Which of the following is an equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle is (x - h)^2 + (y - k)^2 = r^2, where (h, k) is the center of the circle and r is the radius of the circle.  Since the center of the circle is (4, -2) and the radius is 5, the equation of the circle is (x - 4)^2 + (y - (-2))^2 = 5^2, or (x - 4)^2 + (y + 2)^2 = 25.

**Step 3 — Select D.** (x - 4)^2 + (y + 2)^2 = 25

**Distractor analysis:**
- **A** ((x + 4)^2 + (y - 2)^2 = 5): May result from squaring when you should multiply or add.
- **B** ((x + 4)^2 + (y - 2)^2 = 25): May result from squaring when you should multiply or add.
- **C** ((x - 4)^2 + (y + 2)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":832,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fb22ede9-8377-446c-a8c6-e1c49eaf2ce7';

UPDATE public.questions SET
  question_text = 'The expression $(2x+1)(3x-5)$ is equivalent to which of the following? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6x^2-7x-5$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$6x^2+x-5$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"$6x^2-x-5$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"$6x^2+7x-5$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The expression $(2x+1)(3x-5)$ is equivalent to which of the following? 

**Step 2 — Solve.** We can use the distributive property to multiply the binomials: $(2x+1)(3x-5) = 2x(3x-5) + 1(3x-5) = 6x^2 - 10x + 3x - 5 = 6x^2-7x-5$.

**Step 3 — Select A.** $6x^2-7x-5$

**Distractor analysis:**
- **B** ($6x^2+x-5$): May result from squaring when you should multiply or add.
- **C** ($6x^2-x-5$): May result from squaring when you should multiply or add.
- **D** ($6x^2+7x-5$): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":9,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fb32c91d-448b-4642-af68-dfa243b1389b';

UPDATE public.questions SET
  question_text = 'After $t=52$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+49$.',
  options = '[{"id":"A","text":"$202$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=52$."},{"id":"B","text":"$205$","is_correct":true,"explanation":"**Step 1:** Substitute $t=52$. **Step 2:** $d=3(52)+49=205$."},{"id":"C","text":"$206$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$52$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=52$: $d=3(52)+49$.
**Step 2:** Compute: $d=205$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fb3beb44-c374-4464-b4f4-753f555c12a7';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 40 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fb99cbd2-acde-40f0-86fd-8221e191bec6';

COMMIT;
