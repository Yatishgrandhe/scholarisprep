BEGIN;
UPDATE public.questions SET
  question_text = 'A survey asked 200 people whether they prefer apples or oranges. Of the 200 people surveyed, 120 people said they prefer apples. What percentage of people surveyed said they prefer oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"60%","is_correct":false,"explanation":"Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120%","is_correct":false,"explanation":"Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey asked 200 people whether they prefer apples or oranges. Of the 200 people surveyed, 120 people said they prefer apples. What percentage of people surveyed said they prefer oranges?

**Step 2 — Solve.** If 120 people prefer apples, then 200 - 120 = 80 people prefer oranges.  The percentage of people who prefer oranges is (80/200) * 100 = 40%.

**Step 3 — Select A.** 40%

**Distractor analysis:**
- **B** (60%): Choice B (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120%): Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":71,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"9821f84b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '74347a51-fd9b-4469-826d-819a59e8ce38';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying its length by its width.  Therefore, the area of this rectangle is (12)(5) = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":599,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7484b551-68bb-4b25-a13e-0c82d4df6da8';

UPDATE public.questions SET
  question_text = 'After $t=12$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+9$.',
  options = '[{"id":"A","text":"$64$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=12$."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** Substitute $t=12$. **Step 2:** $d=5(12)+9=69$."},{"id":"C","text":"$70$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=12$: $d=5(12)+9$.
**Step 2:** Compute: $d=69$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '74d1cefd-5beb-4cdf-b4d5-eb5da99fe55b';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 2x^2 + 3x - 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":false,"explanation":"Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 2x^2 + 3x - 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the expression for f(x), we get $f(-2) = 2(-2)^2 + 3(-2) - 1 = 8 - 6 - 1 = 1$. Therefore, the value of f(-2) is -3.

**Step 3 — Select B.** -3

**Distractor analysis:**
- **A** (-9): Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":560,"opensat_domain":"Advanced Math","opensat_raw_id":"f42fd89d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '74e9b96e-86bd-4c57-a872-6ceea062b6e8';

UPDATE public.questions SET
  question_text = 'Given $x+y=40$ and $2x-y=29$, what is $x$?',
  stimulus_text = 'At a fundraiser, 40 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 23 VIP and 17 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$23$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=69$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=40+29$ → $3x=69$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '74f1c6c0-7a0d-4480-abed-ec263b2b58b4';

UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-5","is_correct":false,"explanation":"Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 5 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation $ax^2 + bx + c = 0$ is given by $-b/a$. In this case, the sum of the solutions is $-6/1 = -6$.

**Step 3 — Select A.** -6

**Distractor analysis:**
- **B** (-5): Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":969,"opensat_domain":"Advanced Math","opensat_raw_id":"4a1f5b7a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7513e4ad-e2a2-4916-8135-d1307b78a0e5';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 17$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 17$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination. Multiplying the second equation by 2, we get $2x - 2y = 2$. Adding this equation to the first equation, we get $5x = 19$. Dividing both sides by 5, we get $x = \frac{19}{5}$ or 3.8. Since the question asks for the value of $x$, and only 5 is given as a choice, the answer is 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":67,"opensat_domain":"Algebra","opensat_raw_id":"1915b42d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '751697f2-c41e-4dbb-a99c-23825e15c3d3';

UPDATE public.questions SET
  question_text = 'If \(x + \frac{1}{x} = 3\), what is the value of \(x^2 + \frac{1}{x^2}\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"9","is_correct":false,"explanation":"Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If \(x + \frac{1}{x} = 3\), what is the value of \(x^2 + \frac{1}{x^2}\)?

**Step 2 — Solve.** Squaring both sides of the equation \(x + \frac{1}{x} = 3\) gives \(x^2 + 2 + \frac{1}{x^2} = 9\). Subtracting 2 from both sides gives \(x^2 + \frac{1}{x^2} = 7\).

**Step 3 — Select A.** 7

**Distractor analysis:**
- **B** (9): Choice B (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":33,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '75383ffb-11c0-40c8-9de4-9ed3525cfea7';

COMMIT;
