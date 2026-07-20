BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 8, 12, 16, 20, and one score $x$ is missing. The mean is 12.4.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"**Step 1:** Sum needed $=12.4×5=62$. **Step 2:** $x=62-56=6$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=12.4×5=62$.
**Step 2:** $x=62-56=6$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c887c76f-3de3-44da-9931-802ae9307c21';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":false,"explanation":"Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute $-2$ for $x$ in the function: $f(-2) = 2(-2)^2 - 3(-2) + 1$.  Simplifying, we get $f(-2) = 8 + 6 + 1 = 15$.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (9): Choice C (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1020,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c8a68bad-5f0c-4f55-9019-2a19f8ec4c46';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 36 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{39}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{39}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 39 total. **Step 2:** P $=\\frac{3}{39}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 39.
**Step 2:** Conditional probability $=\frac{3}{39}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c8b12cf1-b32e-4a0b-a99b-de94615e60dd';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by C = 2\pi r, where r is the radius. We are given that C = 12\pi, so 12\pi = 2\pi r. Dividing both sides by 2\pi gives us r = 6. The area of a circle is given by A = \pi r^2. Substituting 6 for r gives us A = \pi (6)^2 = 36\pi.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":410,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c8cb5b77-a096-42fa-9ce6-0f09773e1889';
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
WHERE id = 'c952942f-95f4-4f7f-b741-2613b70a8867';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 6, 10, 14, 18, and one score $x$ is missing. The mean is 10.4.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"**Step 1:** Sum needed $=10.4×5=52$. **Step 2:** $x=52-48=4$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=10.4×5=52$.
**Step 2:** $x=52-48=4$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c99693e7-20b1-46e4-9904-4bf83c8f85c1';

UPDATE public.questions SET
  question_text = 'If  $\frac{x-3}{x+2} = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If  $\frac{x-3}{x+2} = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we first multiply both sides of the equation by *x + 2*:  $x - 3 = x + 2$. Subtracting *x* from both sides, we get -3 = 2. This is a contradiction, which means there is no solution to the equation.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":924,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c9dc5253-a856-422e-8bf9-02acdaf02841';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 5$ and $x - y = 2$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 5$ and $x - y = 2$, what is the value of $y$?

**Step 2 — Solve.** We can solve this system of equations by elimination. Adding the two equations together, we get  (x + 2y) + (x - y) = 5 + 2, or 2x + y = 7. Simplifying the first equation, we get x = 5 - 2y. Substituting this into the second equation, we get (5 - 2y) - y = 2, or 3y = 3. Therefore, y = 1.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":1005,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ca0585b0-0c7a-488e-8ffb-4776228e59b3';
UPDATE public.questions SET
  question_text = 'A survey of 100 randomly selected students found that 60 students prefer to study in a quiet environment, 30 students prefer to study with music, and 10 students prefer to study in a noisy environment.  If one student is selected at random from this group of 100 students, what is the probability that the student prefers to study in a quiet environment?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.1","is_correct":false,"explanation":"Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.3","is_correct":false,"explanation":"Choice B (0.3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0.6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"0.9","is_correct":false,"explanation":"Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 randomly selected students found that 60 students prefer to study in a quiet environment, 30 students prefer to study with music, and 10 students prefer to study in a noisy environment.  If one student is selected at random from this group of 100 students, what is the probability that the student prefers to study in a quiet environment?

**Step 2 — Solve.** The probability of an event is the number of favorable outcomes divided by the total number of outcomes.  In this case, there are 60 students who prefer to study in a quiet environment, and there are 100 students total.  Therefore, the probability of selecting a student who prefers to study in a quiet environment is 60/100, or 0.6.

**Step 3 — Select C.** 0.6

**Distractor analysis:**
- **A** (0.1): Choice A (0.1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0.3): Choice B (0.3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.9): Choice D (0.9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":178,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"92b8c91d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ca144441-1c88-423c-80e9-ab9644865466';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $3:5$ to make 168 milliliters of solution.',
  options = '[{"id":"A","text":"$60$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$62$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$63$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{3}{8}$. **Step 2:** $\\frac{3}{8}×168=63$."},{"id":"D","text":"$168$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{3}{8}$ of 168.
**Step 2:** $\frac{3}{8}×168=63$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ca5be4c0-43a2-47af-834a-194f884c35f5';
UPDATE public.questions SET
  question_text = 'Given $x+y=52$ and $2x-y=35$, what is $x$?',
  stimulus_text = 'At a fundraiser, 52 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 29 VIP and 23 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$29$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=87$. **Step 2:** $x=29$."},{"id":"B","text":"$28$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$23$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$30$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=52+35$ → $3x=87$.
**Step 2:** $x=29$.
**Step 3:** Back-substitute: $y=23$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ca63ded6-7d22-41d1-9bc1-f2eb953eb926';
UPDATE public.questions SET
  question_text = 'A circle is inscribed in a square. The area of the square is 64 square units. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"16\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"32\\pi","is_correct":false,"explanation":"Choice B (32\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64\\pi","is_correct":false,"explanation":"Choice C (64\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"128\\pi","is_correct":false,"explanation":"Choice D (128\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle is inscribed in a square. The area of the square is 64 square units. What is the area of the circle?

**Step 2 — Solve.** If the area of the square is 64, then each side of the square is 8. The diameter of the circle is equal to the side of the square, so the diameter of the circle is 8. The radius of the circle is half the diameter, or 4. The area of the circle is \pi(r)^2 = \pi(4)^2 = 16\pi.

**Step 3 — Select A.** 16\pi

**Distractor analysis:**
- **B** (32\pi): Choice B (32\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (64\pi): Choice C (64\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (128\pi): Choice D (128\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":52,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ca886cc9-2e43-4423-80a8-64146808edb4';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 8 ft from the wall and the top is 15 ft high.',
  options = '[{"id":"A","text":"$15$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$16$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$17$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{8^2+15^2}=17$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 8 and 15.
**Step 2:** $c=\sqrt{8^2+15^2}=17$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ca8d660d-ed20-4e97-9732-634b0296ee1e';
UPDATE public.questions SET
  question_text = 'The table shows the number of students enrolled in each of four clubs at a high school. \begin{tabular}{c|c|c|c|c} & Math Club & Science Club & History Club & Art Club\hline Number of Students & 200 & 150 & 100 & 75 \end{tabular} What percentage of the students enrolled in the four clubs are enrolled in the Math Club?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20%","is_correct":false,"explanation":"Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25%","is_correct":false,"explanation":"Choice B (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"33.3%","is_correct":false,"explanation":"Choice C (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40%","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The table shows the number of students enrolled in each of four clubs at a high school. \begin{tabular}{c|c|c|c|c} & Math Club & Science Club & History Club & Art Club\hline Number of Students & 200 & 150 & 100 & 75 \end{tabular} What percentage of the students enrolled in the four clubs are enrolled in the Math Club?

**Step 2 — Solve.** The total number of students enrolled in the four clubs is 200 + 150 + 100 + 75 = 525.  The fraction of students enrolled in the Math Club is 200/525, which simplifies to 8/21.  To convert this fraction to a percentage, multiply by 100%, which gives 38.1%.  Of the given choices, 40% is closest to 38.1%.

**Step 3 — Select D.** 40%

**Distractor analysis:**
- **A** (20%): Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25%): Choice B (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (33.3%): Choice C (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":839,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"837f97e2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ca9601ec-8e4e-4435-aef8-3ade76ef4d8c';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 64% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 64% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 60% and 68%","is_correct":true,"explanation":"**Step 1:** Interval 60% to 68%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 60% to 68%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'caf2ddfb-93e8-459e-a216-3fcaf561cd36';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 130 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'cb0bfa55-d4d1-4929-8cbc-61f47ef19e79';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 35 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{41}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{40}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{41}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{40}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 40 total. **Step 2:** P $=\\frac{5}{40}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 40.
**Step 2:** Conditional probability $=\frac{5}{40}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb310b27-d7a4-48f2-8569-3d0a642236fb';
UPDATE public.questions SET
  question_text = 'Given $x+y=72$ and $2x-y=45$, what is $x$?',
  stimulus_text = 'At a fundraiser, 72 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 39 VIP and 33 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$39$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=117$. **Step 2:** $x=39$."},{"id":"B","text":"$38$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$33$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=72+45$ → $3x=117$.
**Step 2:** $x=39$.
**Step 3:** Back-substitute: $y=33$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb3f991f-7b3d-4099-89fc-a8bd34bb58fe';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into six equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  Therefore, the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":497,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cb5680e3-4b66-45e5-a607-0c5fca19c0ef';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 55% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 55% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 51% and 59%","is_correct":true,"explanation":"**Step 1:** Interval 51% to 59%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 51% to 59%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'cc7288bd-c12a-442e-b734-0adc2d50094f';
UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle has a radius of 5 and a center at (3, 2). Which of the following points lies on the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(3, 7)","is_correct":false,"explanation":"Choice A ((3, 7)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(8, 2)","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(3, -3)","is_correct":false,"explanation":"Choice C ((3, -3)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(-2, 2)","is_correct":false,"explanation":"Choice D ((-2, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle has a radius of 5 and a center at (3, 2). Which of the following points lies on the circle? 

**Step 2 — Solve.** The standard form of the equation of a circle is (x - h)^2 + (y - k)^2 = r^2, where (h, k) is the center of the circle and r is the radius.  Substituting the given values, the equation of the circle is (x - 3)^2 + (y - 2)^2 = 25.  We can check if each of the points lies on the circle by substituting its coordinates into the equation.  Substituting x = 8 and y = 2 into the equation gives (8 - 3)^2 + (2 - 2)^2 = 25, which is true, so the point (8, 2) lies on the circle.

**Step 3 — Select B.** (8, 2)

**Distractor analysis:**
- **A** ((3, 7)): Choice A ((3, 7)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((3, -3)): Choice C ((3, -3)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((-2, 2)): Choice D ((-2, 2)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":273,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cc927044-e675-4732-95d6-1d4f222c400c';
UPDATE public.questions SET
  question_text = 'If  $x^2 - 4x + 3 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-4","is_correct":false,"explanation":"Choice C (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-3","is_correct":false,"explanation":"Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If  $x^2 - 4x + 3 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation $ax^2 + bx + c = 0$ is given by $-b/a$. Factoring the given quadratic equation, we get $(x-3)(x-1)=0$. Thus, the solutions to the equation are $x=3$ and $x=1$. The sum of these solutions is $3+1=4$. Therefore, the sum of the solutions to the equation is 4.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-4): Choice C (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-3): Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":163,"opensat_domain":"Advanced Math","opensat_raw_id":"24e42f58","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cc9ed4b8-25fc-4c40-a26a-b42af2db8674';

UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{x^2 - 4}{x - 2}$ for $x \neq 2$, what is the value of $f(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{x^2 - 4}{x - 2}$ for $x \neq 2$, what is the value of $f(4)$?

**Step 2 — Solve.** We can simplify the function first by factoring the numerator: $f(x) = \frac{(x+2)(x-2)}{x-2}$. Since $x \neq 2$, we can cancel the common factor of $x-2$, giving us $f(x) = x+2$. Therefore, $f(4) = 4 + 2 = 6$.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":909,"opensat_domain":"Advanced Math","opensat_raw_id":"232e1e87","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cca01a31-b658-4626-8262-d0f091c34997';
UPDATE public.questions SET
  question_text = 'A bakery sells two types of cookies: chocolate chip and oatmeal raisin. The bakery makes 120 cookies per day, and the ratio of chocolate chip cookies to oatmeal raisin cookies is 5:3. How many oatmeal raisin cookies does the bakery make per day?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"48","is_correct":false,"explanation":"Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A bakery sells two types of cookies: chocolate chip and oatmeal raisin. The bakery makes 120 cookies per day, and the ratio of chocolate chip cookies to oatmeal raisin cookies is 5:3. How many oatmeal raisin cookies does the bakery make per day?

**Step 2 — Solve.** The ratio 5:3 means that for every 5 chocolate chip cookies, there are 3 oatmeal raisin cookies. This represents a total of 5 + 3 = 8 parts. Since the bakery makes 120 cookies per day, each part represents 120/8 = 15 cookies. Therefore, the bakery makes 3 * 15 = 45 oatmeal raisin cookies per day.

**Step 3 — Select B.** 36

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (48): Choice C (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":731,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'cce39a31-63fc-4c13-abc9-1ee2d764b8ef';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5π","is_correct":false,"explanation":"Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10π","is_correct":false,"explanation":"Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25π","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50π","is_correct":false,"explanation":"Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle? (Express your answer in terms of pi.)

**Step 2 — Solve.** The area of a circle is given by the formula  πr², where r is the radius of the circle.  Substituting 5 for r, we get π(5)² = 25π.

**Step 3 — Select C.** 25π

**Distractor analysis:**
- **A** (5π): Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10π): Choice B (10π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50π): Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":647,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ccf905e6-a32e-475d-b4ae-47bb57a8ccae';
UPDATE public.questions SET
  question_text = 'If the expression  $\frac{2x+3}{x-1}$  is undefined, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\frac{3}{2}$","is_correct":false,"explanation":"Choice C ($\\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{-3}{2}$","is_correct":false,"explanation":"Choice D ($\\frac{-3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the expression  $\frac{2x+3}{x-1}$  is undefined, what is the value of $x$?

**Step 2 — Solve.** A fraction is undefined when the denominator is equal to zero. So, we set the denominator, $x-1$, equal to zero and solve for $x$: $x-1 = 0$. Adding 1 to both sides of the equation gives $x = 1$.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{3}{2}$): Choice C ($\frac{3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{-3}{2}$): Choice D ($\frac{-3}{2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":850,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cd0ea2bc-a74f-4632-9244-6009969d9ae2';
UPDATE public.questions SET
  question_text = 'A group of friends is planning a trip. They decide to rent a car for the trip.  The cost to rent a car is a flat fee of $25, plus $15 per day.  Let *c* represent the total cost, in dollars, and *d* represent the number of days the car is rented.  Which of the following equations represents the relationship between *c* and *d*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"c = 25d + 15","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"c = 15d + 25","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"c = 25 + 15d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"c = 15 + 25d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends is planning a trip. They decide to rent a car for the trip.  The cost to rent a car is a flat fee of $25, plus $15 per day.  Let *c* represent the total cost, in dollars, and *d* represent the number of days the car is rented.  Which of the following equations represents the relationship between *c* and *d*?

**Step 2 — Solve.** The flat fee of $25 is a constant cost, and the cost per day, $15, is multiplied by the number of days, *d*.  Therefore, the total cost, *c*, is represented by the equation c = 15d + 25.

**Step 3 — Select B.** c = 15d + 25

**Distractor analysis:**
- **A** (c = 25d + 15): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (c = 25 + 15d): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (c = 15 + 25d): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":986,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"23ef2021","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cd503545-f143-4702-91b6-78f25ca10b8e';
UPDATE public.questions SET
  question_text = 'A group of 10 students took a test, and the average score on the test was 70.  If one student scored 100 on the test, what was the average score of the other 9 students? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"65","is_correct":false,"explanation":"Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"68","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"70","is_correct":false,"explanation":"Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"72","is_correct":false,"explanation":"Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 10 students took a test, and the average score on the test was 70.  If one student scored 100 on the test, what was the average score of the other 9 students? 

**Step 2 — Solve.** The total score of all 10 students is 10 * 70 = 700. If one student scored 100, the total score of the other 9 students is 700 – 100 = 600. The average score of the other 9 students is 600 / 9 = 66.67, which rounds to 68.

**Step 3 — Select B.** 68

**Distractor analysis:**
- **A** (65): Choice A (65…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (70): Choice C (70…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (72): Choice D (72…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":784,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdb7a96e-7c48-4f7d-874a-6511bbc5d7d9';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"**Step 1:** Interval 64% to 72%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdc6f69b-2c53-4da1-bb94-592f82999e5d';
UPDATE public.questions SET
  question_text = 'In a right triangle, the length of the hypotenuse is 10, and the length of one leg is 6. What is the length of the other leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{64}$","is_correct":false,"explanation":"Choice C ($\\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{136}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, the length of the hypotenuse is 10, and the length of one leg is 6. What is the length of the other leg?

**Step 2 — Solve.** We can use the Pythagorean theorem to solve this. The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. So, $10^2 = 6^2 + x^2$, where $x$ is the length of the other leg. Simplifying, we get $100 = 36 + x^2$. Subtracting 36 from both sides, we get $64 = x^2$. Taking the square root of both sides, we get $x = \sqrt{64} = 8$. However, the problem asks for the length of the *other* leg, which is the hypotenuse minus 6, so the answer is $\sqrt{136}$.

**Step 3 — Select D.** $\sqrt{136}$

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{64}$): Choice C ($\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":638,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'cdd002f3-2058-450e-b016-54a51fb1e75d';

UPDATE public.questions SET
  question_text = 'The graph of $y = \frac{1}{x - 2}$ has a vertical asymptote at $x = k$. What is the value of $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"0","is_correct":false,"explanation":"Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1","is_correct":false,"explanation":"Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The graph of $y = \frac{1}{x - 2}$ has a vertical asymptote at $x = k$. What is the value of $k$?

**Step 2 — Solve.** A vertical asymptote occurs where the denominator of a rational function equals zero.  In this case, the denominator is $x - 2$, and it equals zero when $x = 2$. Therefore, the value of $k$ is 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0): Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1): Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":614,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '12e34e34-f4e4-415b-9e11-7992579333cd';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 8 > 208$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 208 grams but at most 221 grams to ship.',
  options = '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Too small: $7(26)+8=190$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Still below threshold 208."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$29$","is_correct":true,"explanation":"**Step 1:** $7x > 200$. **Step 2:** $x > 28.571428571428573$. Smallest integer choice: 29."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 200$.
**Step 2:** $x > 28.57$.
**Step 3:** Among choices, $29$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '12f0a0ca-31fa-4979-ade1-c20647a76cd2';
UPDATE public.questions SET
  question_text = 'After $t=9$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+6$.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=9$."},{"id":"B","text":"$51$","is_correct":true,"explanation":"**Step 1:** Substitute $t=9$. **Step 2:** $d=5(9)+6=51$."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=9$: $d=5(9)+6$.
**Step 2:** Compute: $d=51$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '13189f46-34a9-4144-ae3c-51217df8fcf0';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:7$ to make 300 milliliters of solution.',
  options = '[{"id":"A","text":"$106$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$108$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$109$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{11}$. **Step 2:** $\\frac{4}{11}×300=109$."},{"id":"D","text":"$300$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{11}$ of 300.
**Step 2:** $\frac{4}{11}×300=109$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1339b1bf-1cf8-417c-a8f7-21ead069bb9b';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+15)^2 - (4x-15)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$240x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+15$, $v=4x-15$ → $240x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$60x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+225$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+15$, $v=4x-15$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(30)=240x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '136a4098-af0d-481f-baa9-615e3f8aa722';
COMMIT;
