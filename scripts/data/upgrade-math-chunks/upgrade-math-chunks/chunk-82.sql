BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 3x^2 - 5$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5","is_correct":false,"explanation":"Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 3x^2 - 5$. What is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the function: $f(2) = 3(2)^2 - 5 = 3(4) - 5 = 12 - 5 = 7$. Therefore, $f(2) = 7$.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-5): Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":745,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6fd709c2-11a7-4fa9-8410-e6fad7b3142a';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle with center $(2,-3)$ is tangent to the line $y = 5$. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle with center $(2,-3)$ is tangent to the line $y = 5$. What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the perpendicular distance from the center of the circle to the tangent line.  Since the center of the circle is $(2,-3)$ and the tangent line is $y=5$, the radius is the difference between the y-coordinate of the center and the y-coordinate of the line, which is $5 - (-3) = 8$.  Therefore, the radius of the circle is 8.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":389,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"8976e141","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '70203653-eb13-4b2c-82f0-8f4ca9953a6c';

UPDATE public.questions SET
  question_text = 'If $x^{2} - 2x - 15 = 0$, what are the values of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3 and 5","is_correct":false,"explanation":"Choice A (-3 and 5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5 and 3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3 and -5","is_correct":false,"explanation":"Choice C (3 and -5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5 and -3","is_correct":false,"explanation":"Choice D (5 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^{2} - 2x - 15 = 0$, what are the values of $x$?

**Step 2 — Solve.** The equation $x^{2} - 2x - 15 = 0$ can be factored as $(x - 5)(x + 3) = 0$.  Setting each factor equal to zero, we get $x - 5 = 0$ or $x + 3 = 0$.  Solving for $x$, we find that $x = 5$ or $x = -3$.

**Step 3 — Select B.** -5 and 3

**Distractor analysis:**
- **A** (-3 and 5): Choice A (-3 and 5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3 and -5): Choice C (3 and -5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5 and -3): Choice D (5 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":939,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '70257203-c416-4517-bcd9-2c8aceba379c';

UPDATE public.questions SET
  question_text = 'The function $f(x) = x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the function: $f(2) = 2^2 - 3(2) + 1 = 4 - 6 + 1 = -2 + 1 = 1$.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":499,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7038bcee-8ad5-478d-8aa9-f159215ff6c2';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 185 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '70582b13-07ea-4053-93b3-a18ca3735c21';

UPDATE public.questions SET
  question_text = 'If $x^2 - 16 = 0$, what are the possible values of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-4 and 4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"-8 and 8","is_correct":false,"explanation":"Choice D (-8 and 8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 16 = 0$, what are the possible values of $x$?

**Step 2 — Solve.** The equation is a difference of squares. We can factor it as (x + 4)(x - 4) = 0.  For the product of two factors to equal zero, at least one of the factors must equal zero. Therefore, either x + 4 = 0 or x - 4 = 0. Solving for x in each equation gives us x = -4 or x = 4.

**Step 3 — Select C.** -4 and 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-8 and 8): Choice D (-8 and 8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1013,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '70a16337-ccc4-4686-b4fa-41723bb8b6ec';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(5)=31.40$."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$10.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(5)=31.40$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '70b31b0f-d75c-42fb-9471-0c550d929b37';

UPDATE public.questions SET
  question_text = 'If $3x - 5 = 10$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x - 5 = 10$, what is the value of $x$?

**Step 2 — Solve.** Adding 5 to both sides of the equation gives us  $3x = 15$. Dividing both sides by 3, we find that $x = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":341,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '70ed7eda-6626-4b16-ae65-6de622f2b289';

COMMIT;
