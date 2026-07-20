BEGIN;
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 250 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b26bace0-42d8-4ff5-96ad-cd27c94159dd';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle?  (Express your answer in terms of \pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle?  (Express your answer in terms of \pi.)

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r gives us C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":876,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b27e4019-238e-416d-891f-4f10973aaf50';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of $12\pi$.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6\\pi","is_correct":false,"explanation":"Choice A (6\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12\\pi","is_correct":false,"explanation":"Choice B (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $12\pi$.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. We are given that $C = 12\pi$, so we can solve for the radius:  
 $12\pi = 2\pi r$ 
 $r = 6$ 
 The area of a circle is given by the formula $A = \pi r^2$. Substituting 6 for $r$ gives us $A = \pi (6)^2 = 36\pi$.

**Step 3 — Select C.** 36\pi

**Distractor analysis:**
- **A** (6\pi): Choice A (6\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12\pi): Choice B (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":811,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2b80189-0c53-4c39-b9f2-d2c5854c8aa5';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+43)^2 - (2x-43)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$344x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+43$, $v=2x-43$ → $344x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$172x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+1849$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+43$, $v=2x-43$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(86)=344x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2c8f4e4-4b9f-457e-b231-349a58672313';

UPDATE public.questions SET
  question_text = 'A store sells apples for $1.25 each and oranges for $0.75 each.  A customer buys 3 apples and 5 oranges. What is the total cost, in dollars, of the customer''s purchase?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6.25","is_correct":false,"explanation":"Choice A (6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7.50","is_correct":false,"explanation":"Choice B (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8.75","is_correct":false,"explanation":"Choice C (8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9.25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.25 each and oranges for $0.75 each.  A customer buys 3 apples and 5 oranges. What is the total cost, in dollars, of the customer''s purchase?

**Step 2 — Solve.** The cost of the apples is 3 * $1.25 = $3.75.  The cost of the oranges is 5 * $0.75 = $3.75.  The total cost is $3.75 + $3.75 = $7.50.

**Step 3 — Select D.** 9.25

**Distractor analysis:**
- **A** (6.25): Choice A (6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (7.50): Choice B (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8.75): Choice C (8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":397,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2eaa9bc-fd66-44ec-86bf-f3f64ed5a9f8';

UPDATE public.questions SET
  question_text = 'A function  is defined by $f(x)= \frac{x^2 - 4}{x - 2}$. For what value of x is the function undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A function  is defined by $f(x)= \frac{x^2 - 4}{x - 2}$. For what value of x is the function undefined?

**Step 2 — Solve.** A function is undefined when the denominator is zero.  The denominator of this function, x - 2, is equal to zero when x = 2.  Therefore, the function is undefined when x = 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":15,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b3426c9b-30c1-432b-a333-7dae2de5e34c';

UPDATE public.questions SET
  question_text = 'The graph of the equation $y = 2x^2 + 4x - 6$ intersects the x-axis at two points. What is the sum of the x-coordinates of these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = 2x^2 + 4x - 6$ intersects the x-axis at two points. What is the sum of the x-coordinates of these two points?

**Step 2 — Solve.** The x-intercepts of the graph occur when y = 0.  So, we need to solve the equation $2x^2 + 4x - 6 = 0$.  Dividing both sides by 2 gives us $x^2 + 2x - 3 = 0$. Factoring, we get $(x + 3)(x - 1) = 0$.  This gives us $x = -3$ or $x = 1$.  The sum of these x-coordinates is $-3 + 1 = -2$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":68,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_23","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b34d7d76-159f-4e93-8078-35c1544c4ff9';

UPDATE public.questions SET
  question_text = 'A store sells packages of 6 cookies for \$3.50. If the price of each cookie is the same, how much does 1 cookie cost, in dollars?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.40","is_correct":false,"explanation":"Choice A (0.40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.50","is_correct":false,"explanation":"Choice B (0.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0.58","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"0.60","is_correct":false,"explanation":"Choice D (0.60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells packages of 6 cookies for \$3.50. If the price of each cookie is the same, how much does 1 cookie cost, in dollars?

**Step 2 — Solve.** To find the cost of one cookie, divide the total price of a package by the number of cookies in the package. 3.50 divided by 6 is approximately 0.58.

**Step 3 — Select C.** 0.58

**Distractor analysis:**
- **A** (0.40): Choice A (0.40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0.50): Choice B (0.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.60): Choice D (0.60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":162,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"8f564a2d","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b36132f6-81a1-4f38-a46c-d41217eb7feb';

COMMIT;
