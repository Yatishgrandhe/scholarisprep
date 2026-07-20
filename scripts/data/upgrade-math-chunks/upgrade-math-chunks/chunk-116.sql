BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=73$ and $2x-y=44$, what is $x$?',
  stimulus_text = 'At a fundraiser, 73 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 39 VIP and 34 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=117$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$34$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=73+44$ → $3x=117$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=34$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a09665c0-846c-4f04-8e3d-68b6e5ff4a54';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x-2}$. For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2 and -2","is_correct":false,"explanation":"Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"There are no values of $x$ for which $f(x)$ is undefined.","is_correct":false,"explanation":"Choice D (There are no values of $x$ for which $f(x)$ is undefined.…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 4}{x-2}$. For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction is zero.  In this case, the denominator is $x-2$, which equals zero when $x = 2$. Therefore, $f(x)$ is undefined when $x = 2$.

**Step 3 — Select A.** 2

**Distractor analysis:**
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2 and -2): Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (There are no values of $x$ for which $f(x)$ is undefined.): Choice D (There are no values of $x$ for which $f(x)$ is undefined.…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":74,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a18c03b8-40c4-4a23-bde3-f68fb2a9aa04';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 315$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 315 grams but at most 328 grams to ship.',
  options = '[{"id":"A","text":"$49$","is_correct":false,"explanation":"Too small: $6(49)+6=300$."},{"id":"B","text":"$50$","is_correct":false,"explanation":"Still below threshold 315."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$52$","is_correct":true,"explanation":"**Step 1:** $6x > 309$. **Step 2:** $x > 51.5$. Smallest integer choice: 52."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 309$.
**Step 2:** $x > 51.50$.
**Step 3:** Among choices, $52$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a1a452ec-a023-46c5-ba2b-b14f144c40c3';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"62.8","is_correct":false,"explanation":"Choice C (62.8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting the given values, we get $C = 2(3.14)(5) = 31.4$.

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (62.8): Choice C (62.8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":788,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a1af7521-dc29-4d98-8922-0091ff2c478a';

UPDATE public.questions SET
  question_text = 'If the original price is $120$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 10%.',
  options = '[{"id":"A","text":"$135$","is_correct":true,"explanation":"**Step 1:** $120×1.25=150$. **Step 2:** $150×0.9=135$."},{"id":"B","text":"$120$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$150$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$145$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $120×(1+25/100)=150$.
**Step 2:** Discount: $150×(1-10/100)=135$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a21b6230-1ff3-4201-8807-a428ac5b91ac';

UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the value of $x$?

**Step 2 — Solve.** We can factor the quadratic equation as $(x-4)(x+2) = 0$.  This means that either $x-4 = 0$ or $x+2 = 0$. Solving for $x$ in each case, we get $x = 4$ or $x = -2$.  Since the question asks for a solution to the equation, the answer is 4.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":10,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a23421f5-6179-43e8-a746-6aeff75e7e26';

UPDATE public.questions SET
  question_text = 'The equation $2x + 3y = 12$ represents a line in the $xy$-plane. Which of the following points lies on this line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(3, 2)","is_correct":false,"explanation":"Choice A ((3, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(2, 3)","is_correct":false,"explanation":"Choice B ((2, 3)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"(6, 0)","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(0, 4)","is_correct":false,"explanation":"Choice D ((0, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The equation $2x + 3y = 12$ represents a line in the $xy$-plane. Which of the following points lies on this line?

**Step 2 — Solve.** To determine if a point lies on the line, we can substitute the x and y coordinates of the point into the equation and check if the equation is true. Substituting x = 6 and y = 0 into the equation 2x + 3y = 12, we get 2(6) + 3(0) = 12, which is true. Therefore, the point (6, 0) lies on the line.

**Step 3 — Select C.** (6, 0)

**Distractor analysis:**
- **A** ((3, 2)): Choice A ((3, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ((2, 3)): Choice B ((2, 3)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((0, 4)): Choice D ((0, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":197,"opensat_domain":"Algebra","opensat_raw_id":"random_id_3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a2771ed0-b39e-4376-8546-94448980d736';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{x^2 - 4}{x - 2}$. For what value of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-2","is_correct":false,"explanation":"Choice D (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{x^2 - 4}{x - 2}$. For what value of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when its denominator is equal to zero. In this case, the denominator is $x-2$, so the function is undefined when $x-2 = 0$. Solving for $x$, we get $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-2): Choice D (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":30,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a2fbb358-51b1-46f6-8a90-3d7a319f1ec7';

COMMIT;
