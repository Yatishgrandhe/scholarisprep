BEGIN;
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"**Step 1:** Interval 57% to 65%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '65cebf37-a526-494a-8ac7-f5a90d3fd684';

UPDATE public.questions SET
  question_text = 'A line passes through the points $(1, -2)$ and $(4, 4)$. What is the slope of the line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A line passes through the points $(1, -2)$ and $(4, 4)$. What is the slope of the line?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ is given by the formula: $\frac{y_2 - y_1}{x_2 - x_1}$.  Substituting the given points, we get: $\frac{4 - (-2)}{4 - 1} = \frac{6}{3} = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":127,"opensat_domain":"Advanced Math","opensat_raw_id":"6e28133d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '661e1c5b-cf88-4e8a-842b-d2109bea8562';

UPDATE public.questions SET
  question_text = 'If $y = 2x + 5$ and $x = -3$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-6","is_correct":false,"explanation":"Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":false,"explanation":"Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $y = 2x + 5$ and $x = -3$, what is the value of $y$?

**Step 2 — Solve.** Substituting $x = -3$ into the equation $y = 2x + 5$ gives us $y = 2(-3) + 5$, or $y = -6 + 5$, or $y = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-6): Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11): Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":719,"opensat_domain":"Algebra","opensat_raw_id":"45322232","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6636d1f7-5d29-43dc-a8c1-1d69975525f3';

UPDATE public.questions SET
  question_text = 'A circle in the xy-plane has center (2, -3) and radius 5. Which of the following is an equation for this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 2)^2 + (y - 3)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x - 2)^2 + (y + 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x + 2)^2 + (y - 3)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 2)^2 + (y + 3)^2 = 25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle in the xy-plane has center (2, -3) and radius 5. Which of the following is an equation for this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2.  Substituting the values from the problem gives us (x - 2)^2 + (y + 3)^2 = 5^2, which simplifies to (x - 2)^2 + (y + 3)^2 = 25.

**Step 3 — Select D.** (x - 2)^2 + (y + 3)^2 = 25

**Distractor analysis:**
- **A** ((x + 2)^2 + (y - 3)^2 = 25): May result from squaring when you should multiply or add.
- **B** ((x - 2)^2 + (y + 3)^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x + 2)^2 + (y - 3)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":611,"opensat_domain":"Advanced Math","opensat_raw_id":"1e20d548","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6644e242-9ca2-457a-a42b-24535605f45c';

UPDATE public.questions SET
  question_text = 'If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for $x$ in the function $f(x) = 2x^2 + 3x - 1$, we get $f(-2) = 2(-2)^2 + 3(-2) - 1$. Simplifying, we have $f(-2) = 8 - 6 - 1 = 1$. Therefore, the value of $f(-2)$ is -9.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":603,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '665b596c-e60f-44a6-8785-a193c865df5b';

UPDATE public.questions SET
  question_text = 'A store is selling apples for $1.50 per pound and oranges for $2.00 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, what is the total cost, in dollars?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5.50","is_correct":false,"explanation":"Choice A (5.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6.50","is_correct":false,"explanation":"Choice B (6.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7.50","is_correct":false,"explanation":"Choice C (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8.50","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store is selling apples for $1.50 per pound and oranges for $2.00 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, what is the total cost, in dollars?

**Step 2 — Solve.** The cost of the apples is 3 pounds * $1.50/pound = $4.50.  The cost of the oranges is 2 pounds * $2.00/pound = $4.00.  The total cost is $4.50 + $4.00 = $8.50.

**Step 3 — Select D.** 8.50

**Distractor analysis:**
- **A** (5.50): Choice A (5.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6.50): Choice B (6.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7.50): Choice C (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":537,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"768237bf","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '66f30816-ac74-4e72-9dab-d5da3682b591';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 18, 22, 26, 30, and one score $x$ is missing. The mean is 22.4.',
  options = '[{"id":"A","text":"$14$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$16$","is_correct":true,"explanation":"**Step 1:** Sum needed $=22.4×5=112$. **Step 2:** $x=112-96=16$."},{"id":"C","text":"$18$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$22$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=22.4×5=112$.
**Step 2:** $x=112-96=16$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '670bdc16-929c-4a46-ac5a-cf9b0c600f92';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 240 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '67284119-70c7-4232-912a-fc89edc9de67';

COMMIT;
