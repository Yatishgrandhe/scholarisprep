BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=33$ and $2x-y=24$, what is $x$?',
  stimulus_text = 'At a fundraiser, 33 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 19 VIP and 14 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$19$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=57$. **Step 2:** $x=19$."},{"id":"B","text":"$18$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$14$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$20$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=33+24$ → $3x=57$.
**Step 2:** $x=19$.
**Step 3:** Back-substitute: $y=14$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2a801925-6d2e-40b0-9df8-ce89da6c5449';
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 8x + 15 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$5$","is_correct":true,"explanation":"**Step 1:** Factor $(x-3)(x-5)=0$. **Step 2:** Positive root is $5$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-3)(x-5)=0$.
**Step 2:** Roots $x=3$ and $x=5$.
**Step 3:** Positive solution: $5$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2aa2458f-822e-40a3-aa83-7ff75148a743';
UPDATE public.questions SET
  question_text = 'The system of equations $\begin{cases} 2x + 3y = 12 \\ x - y = 3 \end{cases}$ has the solution $(x,y)$.  What is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The system of equations $\begin{cases} 2x + 3y = 12 \\ x - y = 3 \end{cases}$ has the solution $(x,y)$.  What is the value of $x + y$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 3, we get $3x - 3y = 9$.  Adding this equation to the first equation, we get $5x = 21$, so $x = \frac{21}{5}$. Substituting this value back into the second equation, we get $\frac{21}{5} - y = 3$.  Solving for $y$, we get $y = \frac{6}{5}$.  Therefore, $x + y = \frac{21}{5} + \frac{6}{5} = \frac{27}{5} = 5.4$, which is closest to 6.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"SYS","domain_id":"algebra","opensat_index":330,"opensat_domain":"Algebra","opensat_raw_id":"7e3f821b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2ac43a25-5824-4ff5-89c6-4976904f37a8';
UPDATE public.questions SET
  question_text = 'A researcher is studying the growth of a particular type of bacteria. The researcher finds that the number of bacteria doubles every 3 hours. If there are 100 bacteria at the start of the experiment, how many bacteria will there be after 12 hours?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"400","is_correct":false,"explanation":"Choice A (400…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"800","is_correct":false,"explanation":"Choice B (800…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1600","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3200","is_correct":false,"explanation":"Choice D (3200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A researcher is studying the growth of a particular type of bacteria. The researcher finds that the number of bacteria doubles every 3 hours. If there are 100 bacteria at the start of the experiment, how many bacteria will there be after 12 hours?

**Step 2 — Solve.** Since the bacteria doubles every 3 hours, after 12 hours they will have doubled 4 times.  This can be represented as 100 * 2 * 2 * 2 * 2 = 100 * 16 = 1600 bacteria.

**Step 3 — Select C.** 1600

**Distractor analysis:**
- **A** (400): Choice A (400…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (800): Choice B (800…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3200): Choice D (3200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":339,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"a7a8542d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2b069f57-e8f5-4ee6-a09e-4e28f901148e';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 + 3x - 1$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 + 3x - 1$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the function, we get:  $f(-2) = 2(-2)^2 + 3(-2) - 1 = 2(4) - 6 - 1 = 8 - 6 - 1 = -9$.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":621,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2b6ee60a-01e6-4f6a-ac6d-1bb6ca3fdf45';
UPDATE public.questions SET
  question_text = 'If $x^2 + 5x - 6 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 5x - 6 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation $ax^2 + bx + c = 0$ is given by $-b/a$. In this case, $a = 1$ and $b = 5$, so the sum of the solutions is $-5/1 = -5$.

**Step 3 — Select A.** -5

**Distractor analysis:**
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":871,"opensat_domain":"Algebra","opensat_raw_id":"random_id_6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2c1f9227-3149-49a1-b08b-a12ca7a63794';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 35 ft from the wall and the top is 42 ft high.',
  options = '[{"id":"A","text":"$53$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$77$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$55$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{35^2+42^2}=55$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 35 and 42.
**Step 2:** $c=\sqrt{35^2+42^2}=55$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2c6fe393-0176-4ed6-8352-f5d9f28ec4f3';

UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the roots of a quadratic equation in the form ax² + bx + c = 0 is given by -b/a. In this equation, a = 1, b = -2, and c = -8. Therefore, the sum of the solutions is -(-2)/1 = 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":209,"opensat_domain":"Advanced Math","opensat_raw_id":"4321657a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2cd39fff-66f4-494a-857c-0dc9a3e57cc7';
UPDATE public.questions SET
  question_text = 'If $x + 3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"14","is_correct":false,"explanation":"Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x + 3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we subtract 3 from both sides of the equation: $x + 3 - 3 = 7 - 3$. This gives us $x = 4$.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (14): Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":605,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2ce3f18c-a250-46e3-abe5-bd3a807cc0c0';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 100 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2d3102b4-3bda-4228-82cd-bd468750c27e';
UPDATE public.questions SET
  question_text = 'The equation $2x+3y=12$ represents a line in the $xy$-plane.  Which of the following points lies on this line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(0, 4)","is_correct":false,"explanation":"Choice A ((0, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(3, 2)","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(4, 0)","is_correct":false,"explanation":"Choice C ((4, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(6, -2)","is_correct":false,"explanation":"Choice D ((6, -2)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $2x+3y=12$ represents a line in the $xy$-plane.  Which of the following points lies on this line?

**Step 2 — Solve.** To determine if a point lies on a line, we can substitute the coordinates of the point into the equation of the line and see if the equation holds true.  Substituting the coordinates of choice B, (3, 2), into the equation 2x + 3y = 12, we get 2(3) + 3(2) = 12, which simplifies to 6 + 6 = 12.  Since this equation is true, the point (3, 2) lies on the line 2x + 3y = 12.

**Step 3 — Select B.** (3, 2)

**Distractor analysis:**
- **A** ((0, 4)): Choice A ((0, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((4, 0)): Choice C ((4, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((6, -2)): Choice D ((6, -2)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":538,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2d9f06e5-1fcb-4671-862f-b43ff257ce44';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 182°.',
  options = '[{"id":"A","text":"$182°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$-2°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-182=-2°$."},{"id":"C","text":"$8°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-182°=-2°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2daf5447-055c-4f81-8312-095ea7d9c58a';
UPDATE public.questions SET
  question_text = 'If the original price is $200$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 10%.',
  options = '[{"id":"A","text":"$216$","is_correct":true,"explanation":"**Step 1:** $200×1.2=240$. **Step 2:** $240×0.9=216$."},{"id":"B","text":"$200$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$240$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$226$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $200×(1+20/100)=240$.
**Step 2:** Discount: $240×(1-10/100)=216$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2dd05475-9215-4b7c-9fe7-9957cdf0edb3';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(8)=4$ and $f(13)=24$, what is $f(-10)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-64$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-10$)."},{"id":"C","text":"$-71$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-68$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-10)=4(-10-8)+(4)=-68$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{24-4}{13-8}=4$.
**Step 2:** Point-slope: $f(-10)=4(-10-8)+(4)$.
**Step 3:** $f(-10)=-68$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2df01079-8d82-4a13-9e01-d71c21bd2408';
UPDATE public.questions SET
  question_text = 'A circle in the $xy$-plane has a diameter with endpoints $(2,-4)$ and $(2,14)$. What is the length of the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle in the $xy$-plane has a diameter with endpoints $(2,-4)$ and $(2,14)$. What is the length of the radius of the circle?

**Step 2 — Solve.** The radius of a circle is half the length of its diameter.  The length of the diameter can be found using the distance formula: $\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}$.  Substituting (2,-4) and (2,14) for $(x_1, y_1)$ and $(x_2, y_2)$ gives a distance of $\sqrt{(2-2)^2 + (14-(-4))^2} = \sqrt{0^2 + 18^2} = \sqrt{324} = 18$.  Half of 18 is 9, so the radius of the circle is 9.

**Step 3 — Select A.** 5

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":149,"opensat_domain":"Advanced Math","opensat_raw_id":"f21f58b1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2e0c4a76-ba19-4ec1-a124-948e1505848f';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. The diameter is twice the radius, so the side length of the square is 10.  The area of the square is (side length)^2 = 10^2 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":229,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2e210755-86eb-4899-a005-787d2c93fddb';
UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5, the diameter is 10. The area of the square is then side length squared, or 10 * 10 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":325,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9389fa32","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2e52b9de-b777-4725-bb2a-cfcb7f086b92';
UPDATE public.questions SET
  question_text = 'The expression $(x + 3)^2$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^2 + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"x^2 + 6x + 9","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x^2 + 9x + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^2 + 3x + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression $(x + 3)^2$ is equivalent to which of the following?

**Step 2 — Solve.** The expression $(x + 3)^2$ is equivalent to $(x + 3)(x + 3)$. Using the distributive property, we expand this to get $x^2 + 3x + 3x + 9$. Combining like terms gives us $x^2 + 6x + 9$.

**Step 3 — Select B.** x^2 + 6x + 9

**Distractor analysis:**
- **A** (x^2 + 9): May result from squaring when you should multiply or add.
- **C** (x^2 + 9x + 9): May result from squaring when you should multiply or add.
- **D** (x^2 + 3x + 9): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":764,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_12","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2eba7996-a0e6-4452-bf6d-d584964b0b77';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:5$ to make 216 milliliters of solution.',
  options = '[{"id":"A","text":"$105$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$107$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$108$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{10}$. **Step 2:** $\\frac{5}{10}×216=108$."},{"id":"D","text":"$216$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{10}$ of 216.
**Step 2:** $\frac{5}{10}×216=108$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2f30aac5-f288-4386-98fe-bf075a01a9f8';
UPDATE public.questions SET
  question_text = 'The function f(x) is defined as f(x) = (x^2 - 4)/(x-2), where x is not equal to 2. What is the value of f(3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as f(x) = (x^2 - 4)/(x-2), where x is not equal to 2. What is the value of f(3)?

**Step 2 — Solve.** We can simplify the function by factoring the numerator: f(x) = (x + 2)(x - 2)/(x - 2). Since x is not equal to 2, we can cancel out the (x - 2) terms, leaving us with f(x) = x + 2.  Therefore, f(3) = 3 + 2 = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":200,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2f6810b9-6daa-44bd-a177-bac914b62f4c';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units and a diameter with endpoints (2, 4) and (2, 14).  An equation of this circle is $(x - h)^2 + (y - k)^2 = r^2$, where r is a positive constant. What is the value of r?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units and a diameter with endpoints (2, 4) and (2, 14).  An equation of this circle is $(x - h)^2 + (y - k)^2 = r^2$, where r is a positive constant. What is the value of r?

**Step 2 — Solve.** The radius of a circle is the distance from the center of the circle to any point on the circle.  Since the endpoints of a diameter are given, the length of the diameter is the distance between those two points.  The distance between (2, 4) and (2, 14) is 10.  Since the radius is half the diameter, the radius is 5.  In the equation of the circle, r represents the radius, so r = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":352,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2f85d30a-c79f-4c08-9455-8da52d787b84';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of $12\pi$ centimeters. What is the area, in square centimeters, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6\\pi","is_correct":false,"explanation":"Choice A (6\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12\\pi","is_correct":false,"explanation":"Choice B (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $12\pi$ centimeters. What is the area, in square centimeters, of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  We are given that the circumference is $12\pi$ centimeters, so we can solve for the radius: 
 $12\pi = 2\pi r$ 
 $r = 6$ 
 The area of a circle is given by the formula $A = \pi r^2$. Substituting 6 for $r$ gives us $A = \pi(6)^2 = 36\pi$ square centimeters.

**Step 3 — Select C.** 36\pi

**Distractor analysis:**
- **A** (6\pi): Choice A (6\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12\pi): Choice B (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":485,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2fb9a686-8217-4949-8904-39c739df0b90';
UPDATE public.questions SET
  question_text = 'A store sells apples and oranges. The ratio of apples to oranges sold on a particular day was 3:5. If 120 apples were sold that day, how many oranges were sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"80","is_correct":false,"explanation":"Choice A (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"160","is_correct":false,"explanation":"Choice B (160…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"200","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"300","is_correct":false,"explanation":"Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells apples and oranges. The ratio of apples to oranges sold on a particular day was 3:5. If 120 apples were sold that day, how many oranges were sold?

**Step 2 — Solve.** The ratio 3:5 means for every 3 apples sold, 5 oranges were sold.  We can set up a proportion: 3/5 = 120/x.  Solving for x, we get 3x = 600, and dividing both sides by 3 yields x = 200.  Therefore, 200 oranges were sold.

**Step 3 — Select C.** 200

**Distractor analysis:**
- **A** (80): Choice A (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (160): Choice B (160…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (300): Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":954,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2fd12944-b637-4963-952e-9cd275864144';

UPDATE public.questions SET
  question_text = 'The sum of two numbers is 10 and their product is 21. What are the two numbers?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3 and 7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2 and 10","is_correct":false,"explanation":"Choice B (2 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4 and 6","is_correct":false,"explanation":"Choice C (4 and 6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1 and 21","is_correct":false,"explanation":"Choice D (1 and 21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The sum of two numbers is 10 and their product is 21. What are the two numbers?

**Step 2 — Solve.** We can find the two numbers by factoring 21.  The factors of 21 that add up to 10 are 3 and 7.

**Step 3 — Select A.** 3 and 7

**Distractor analysis:**
- **B** (2 and 10): Choice B (2 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4 and 6): Choice C (4 and 6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1 and 21): Choice D (1 and 21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":565,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '304fcb9c-4d5c-4196-bac3-b06617013f64';
UPDATE public.questions SET
  question_text = 'After $t=5$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+2$.',
  options = '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=5$."},{"id":"B","text":"$22$","is_correct":true,"explanation":"**Step 1:** Substitute $t=5$. **Step 2:** $d=4(5)+2=22$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$6$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=5$: $d=4(5)+2$.
**Step 2:** Compute: $d=22$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '306c8c85-d593-4f03-8f15-0d964dc503e0';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(6)=2$ and $f(11)=22$, what is $f(-8)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-50$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-8$)."},{"id":"C","text":"$-57$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-54$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-8)=4(-8-6)+(2)=-54$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{22-2}{11-6}=4$.
**Step 2:** Point-slope: $f(-8)=4(-8-6)+(2)$.
**Step 3:** $f(-8)=-54$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '308b22fb-388f-434f-a296-a440ab643893';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  The perimeter of the hexagon is then 6 times the side length of the equilateral triangle, or 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":424,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30b1ef7c-821d-4222-ba5b-66411bf4c62f';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 45 by 44 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1980$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$89$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1976$","is_correct":true,"explanation":"**Step 1:** Full area $1980$. **Step 2:** Subtract $2^2$ → $1976$."},{"id":"D","text":"$1978$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $45×44=1980$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1980-4=1976$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30b739c2-5b09-4d29-b045-01eaefe4be24';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 47 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{52}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 52 total. **Step 2:** P $=\\frac{5}{52}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 52.
**Step 2:** Conditional probability $=\frac{5}{52}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30f53983-2819-49c6-a519-8cdb23103abc';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives us $A = \pi (5)^2$, or $A = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1023,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '311145cd-f448-43aa-bda6-d380a5e04473';
UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30 degree angle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30 degree angle?

**Step 2 — Solve.** In a 30-60-90 right triangle, the side opposite the 30 degree angle is half the length of the hypotenuse. Therefore, the length of the side opposite the 30 degree angle is 10/2 = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":92,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '314550a7-1e79-4027-bcd5-57e21a0dd8b3';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  The point (-3,1) lies on the circle.  What is the equation of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 3)^2 + (y - 1)^2 = 25","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(x + 3)^2 + (y - 1)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 3)^2 + (y + 1)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x - 3)^2 + (y + 1)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  The point (-3,1) lies on the circle.  What is the equation of the circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2. Since the center of the circle is (-3, 1) and the radius is 5, the equation of the circle is (x - (-3))^2 + (y - 1)^2 = 5^2, or (x + 3)^2 + (y - 1)^2 = 25.

**Step 3 — Select A.** (x + 3)^2 + (y - 1)^2 = 25

**Distractor analysis:**
- **B** ((x + 3)^2 + (y - 1)^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x - 3)^2 + (y + 1)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x - 3)^2 + (y + 1)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":6,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '317a12b0-a88a-41b7-8442-0ba418a5a722';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(8)=4$ and $f(13)=24$, what is $f(-10)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-64$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-10$)."},{"id":"C","text":"$-71$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-68$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-10)=4(-10-8)+(4)=-68$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{24-4}{13-8}=4$.
**Step 2:** Point-slope: $f(-10)=4(-10-8)+(4)$.
**Step 3:** $f(-10)=-68$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '31a42728-b9c4-4836-aa6f-0fdbe8a36b85';
UPDATE public.questions SET
  question_text = 'The expression $\frac{x^2 + 3x - 4}{x^2 - 1}$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x-4}{x-1}$","is_correct":false,"explanation":"Choice A ($\\frac{x-4}{x-1}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\frac{x-1}{x+1}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{x+4}{x+1}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{x+4}{x-1}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{x^2 + 3x - 4}{x^2 - 1}$ is equivalent to which of the following?

**Step 2 — Solve.** We can factor the numerator and denominator to simplify the expression. The numerator factors as $(x+4)(x-1)$ and the denominator factors as $(x+1)(x-1)$. The common factor of $(x-1)$ cancels out, leaving us with $\frac{x+4}{x+1}$.

**Step 3 — Select C.** $\frac{x+4}{x+1}$

**Distractor analysis:**
- **A** ($\frac{x-4}{x-1}$): Choice A ($\frac{x-4}{x-1}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\frac{x-1}{x+1}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x+4}{x-1}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":206,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '31aede24-baa2-465b-899a-ca1a7545d323';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by  *f*(x) = 3x^2 + 5. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"17","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"21","is_correct":false,"explanation":"Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"27","is_correct":false,"explanation":"Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by  *f*(x) = 3x^2 + 5. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for x in the equation *f*(x) = 3x^2 + 5. This gives us *f*(2) = 3(2)^2 + 5 = 3 * 4 + 5 = 12 + 5 = 17.

**Step 3 — Select B.** 17

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (21): Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (27): Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":625,"opensat_domain":"Advanced Math","opensat_raw_id":"87654321","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '31c1dff1-c09a-4ee3-8bbc-3133d0d9e6c6';
COMMIT;
