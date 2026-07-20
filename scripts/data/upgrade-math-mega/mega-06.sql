BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25$\\pi$","is_correct":false,"explanation":"Choice C (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100$\\pi$","is_correct":false,"explanation":"Choice D (100$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives us $C = 2\pi (5) = 10\pi$.

**Step 3 — Select B.** 10$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25$\pi$): Choice C (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100$\pi$): Choice D (100$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":444,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f486a329","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9f71e67e-eb63-4b69-aff9-97f2f3fca2f9';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9f73325d-bc0f-465a-be7c-91b0c5c16a20';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the value of $x$?

**Step 2 — Solve.** Factoring the quadratic equation gives us  (x - 4)(x + 2) = 0.  Setting each factor equal to zero, we get x - 4 = 0 or x + 2 = 0.  Solving for x in each equation gives us x = 4 or x = -2.  Therefore, x = 4 is a solution to the equation.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":695,"opensat_domain":"Advanced Math","opensat_raw_id":"f84948c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9f78c25a-cd0f-4af6-b37a-65c5d3485703';
UPDATE public.questions SET
  question_text = 'The equation  $2x^2 - 5x + 3 = 0$ has two solutions.  What is the sum of these solutions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-\\frac{5}{2}","is_correct":false,"explanation":"Choice A (-\\frac{5}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"\\frac{5}{2}","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-\\frac{3}{2}","is_correct":false,"explanation":"Choice C (-\\frac{3}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"\\frac{3}{2}","is_correct":false,"explanation":"Choice D (\\frac{3}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation  $2x^2 - 5x + 3 = 0$ has two solutions.  What is the sum of these solutions?

**Step 2 — Solve.** For a quadratic equation in the form $ax^2 + bx + c = 0$, the sum of the solutions is given by -b/a. In this case, a = 2 and b = -5, so the sum of the solutions is -(-5)/2 = 5/2.

**Step 3 — Select B.** \frac{5}{2}

**Distractor analysis:**
- **A** (-\frac{5}{2}): Choice A (-\frac{5}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-\frac{3}{2}): Choice C (-\frac{3}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (\frac{3}{2}): Choice D (\frac{3}{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":366,"opensat_domain":"Algebra","opensat_raw_id":"1543281b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9f7f9290-126d-4ee0-8c0d-4695d3a2841e';
UPDATE public.questions SET
  question_text = 'Given $x+y=42$ and $2x-y=30$, what is $x$?',
  stimulus_text = 'At a fundraiser, 42 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 24 VIP and 18 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$24$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=72$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=42+30$ → $3x=72$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=18$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9fc585b6-832c-423c-ac08-2aecf20bab7a';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 8 > 137$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 137 grams but at most 150 grams to ship.',
  options = '[{"id":"A","text":"$30$","is_correct":false,"explanation":"Too small: $4(30)+8=128$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Still below threshold 137."},{"id":"C","text":"$32$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$33$","is_correct":true,"explanation":"**Step 1:** $4x > 129$. **Step 2:** $x > 32.25$. Smallest integer choice: 33."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 129$.
**Step 2:** $x > 32.25$.
**Step 3:** Among choices, $33$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9feaf483-282f-4624-8cac-0d6dc59591fb';

UPDATE public.questions SET
  question_text = 'If  $3x - 2y = 12$ and $x + 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $3x - 2y = 12$ and $x + 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(3x-2y) + (x+2y) = 12 + 4$.  The y-terms cancel out, leaving us with $4x = 16$.  Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":522,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a0007412-36c9-441b-b2a2-c35bdf0770ab';
UPDATE public.questions SET
  question_text = 'The function f(x) is defined by $f(x)=3x^{2}-2x+1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":false,"explanation":"Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by $f(x)=3x^{2}-2x+1$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find f(-2), we substitute -2 for *x* in the function:  

 f(-2) = 3(-2)^2 - 2(-2) + 1  

 f(-2) = 3(4) + 4 + 1  

 f(-2) = 12 + 4 + 1  

 f(-2) = 17

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-9): Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":907,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a10","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a00d52f7-d4a2-4165-a3ec-298669835d7a';
UPDATE public.questions SET
  question_text = 'A store sells apples for $2 per pound and oranges for $1.50 per pound. A customer buys 3 pounds of apples and 2 pounds of oranges. What is the total cost of the apples and oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7.00","is_correct":false,"explanation":"Choice A ($7.00…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$7.50","is_correct":false,"explanation":"Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$8.00","is_correct":false,"explanation":"Choice C ($8.00…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$9.00","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $2 per pound and oranges for $1.50 per pound. A customer buys 3 pounds of apples and 2 pounds of oranges. What is the total cost of the apples and oranges?

**Step 2 — Solve.** The cost of the apples is 3 pounds * $2/pound = $6. The cost of the oranges is 2 pounds * $1.50/pound = $3. The total cost is $6 + $3 = $9.

**Step 3 — Select D.** $9.00

**Distractor analysis:**
- **A** ($7.00): Choice A ($7.00…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($7.50): Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($8.00): Choice C ($8.00…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":85,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a01df2bd-1027-4bec-b97d-d115da8f20f4';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 29 ft from the wall and the top is 36 ft high.',
  options = '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$46$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{29^2+36^2}=46$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 29 and 36.
**Step 2:** $c=\sqrt{29^2+36^2}=46$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a03078a8-af1e-44f8-bc64-8a1faa20c0e0';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":878,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a05584b0-039c-4de5-b435-925d3dd68c26';
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 28 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a05f3f73-bdd8-4049-a655-97d8f2f19e3e';
UPDATE public.questions SET
  question_text = 'In a circle with center O, points A, B, and C lie on the circle, and \overline{AC} is a diameter of the circle. If the measure of \angle AOB is 100 degrees, what is the measure of \angle ABC?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"75","is_correct":false,"explanation":"Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a circle with center O, points A, B, and C lie on the circle, and \overline{AC} is a diameter of the circle. If the measure of \angle AOB is 100 degrees, what is the measure of \angle ABC?

**Step 2 — Solve.** Since \overline{AC} is a diameter, \angle ACB is a right angle, and has a measure of 90 degrees.  The measure of an inscribed angle is half the measure of its intercepted arc.  The intercepted arc of \angle AOB is 100 degrees, so the measure of \angle ACB is 50 degrees.  Therefore, the measure of \angle ABC is 180 degrees - 90 degrees - 50 degrees = 40 degrees.

**Step 3 — Select B.** 50

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (75): Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":205,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_42","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a0703928-38a1-409b-9271-8a0ca0ad7129';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"125","is_correct":false,"explanation":"Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying the length by the width.  So, the area of this rectangle is 12 centimeters * 5 centimeters = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (125): Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":642,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_37","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a0714d83-d2e0-46af-963a-c55ba1fedf77';

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

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60\\sqrt{3}","is_correct":false,"explanation":"Choice C (60\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120\\sqrt{3}","is_correct":false,"explanation":"Choice D (120\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  Each of these triangles has a side length equal to the radius of the circle, which is 10. Therefore, the perimeter of the hexagon is 6 * 10 = 60.

**Step 3 — Select B.** 60

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60\sqrt{3}): Choice C (60\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120\sqrt{3}): Choice D (120\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":654,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a31a5d66-bfb8-4724-b636-d2b63f415557';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is \sqrt{5^2 + 12^2} = \sqrt{169} = 13.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":86,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a32ed8c1-febf-4e64-9b36-097ab86a8f6b';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 25, 29, 33, 37, and one score $x$ is missing. The mean is 29.4.',
  options = '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$23$","is_correct":true,"explanation":"**Step 1:** Sum needed $=29.4×5=147$. **Step 2:** $x=147-124=23$."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$29$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=29.4×5=147$.
**Step 2:** $x=147-124=23$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a332be46-92b9-4097-aaae-7ad08fe981b8';
UPDATE public.questions SET
  question_text = 'A store sells two types of cookies: chocolate chip and peanut butter. The store sells 3 chocolate chip cookies for every 2 peanut butter cookies. If the store sells 45 chocolate chip cookies in a day, how many peanut butter cookies do they sell in a day?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"22.5","is_correct":false,"explanation":"Choice B (22.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"67.5","is_correct":false,"explanation":"Choice D (67.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of cookies: chocolate chip and peanut butter. The store sells 3 chocolate chip cookies for every 2 peanut butter cookies. If the store sells 45 chocolate chip cookies in a day, how many peanut butter cookies do they sell in a day?

**Step 2 — Solve.** The ratio of chocolate chip cookies to peanut butter cookies is 3:2.  Since the store sells 45 chocolate chip cookies, which is 3 times the value of the ratio, the store must sell 2 times that value in peanut butter cookies, or 30 peanut butter cookies.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (22.5): Choice B (22.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (67.5): Choice D (67.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":57,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a344baed-d4b4-4799-9b01-50fa212ced16';
UPDATE public.questions SET
  question_text = 'A group of students are selling raffle tickets to raise money for a school trip.  They have sold 150 tickets so far, and they need to sell a total of 300 tickets.  What percentage of the total number of tickets have they sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25%","is_correct":false,"explanation":"Choice A (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"33.3%","is_correct":false,"explanation":"Choice B (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"66.7%","is_correct":false,"explanation":"Choice D (66.7%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of students are selling raffle tickets to raise money for a school trip.  They have sold 150 tickets so far, and they need to sell a total of 300 tickets.  What percentage of the total number of tickets have they sold?

**Step 2 — Solve.** They have sold half of the total number of tickets, which is 150/300 = 0.5.  This is equivalent to 50%.

**Step 3 — Select C.** 50%

**Distractor analysis:**
- **A** (25%): Choice A (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (33.3%): Choice B (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (66.7%): Choice D (66.7%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":132,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a385e114-4b4c-4a9d-9561-2ba9e53304d4';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":913,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"34b49314","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a38f72bf-267d-4fae-9806-d11dfffbbbd9';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 13 by 12 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$152$","is_correct":true,"explanation":"**Step 1:** Full area $156$. **Step 2:** Subtract $2^2$ → $152$."},{"id":"D","text":"$154$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $156-4=152$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a392f164-d274-49ba-9bc2-3f8730be6779';
UPDATE public.questions SET
  question_text = 'If the original price is $290$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$296$","is_correct":true,"explanation":"**Step 1:** $290×1.2=348$. **Step 2:** $348×0.85=296$."},{"id":"B","text":"$290$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$348$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $290×(1+20/100)=348$.
**Step 2:** Discount: $348×(1-15/100)=296$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a396425d-1983-4dc0-b8b5-efb3a7fecc16';

UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students prefer to watch movies at home, 45 students prefer to watch movies at the theater, and 10 students prefer to watch movies at both home and the theater. What is the number of students who prefer to watch movies only at home?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students prefer to watch movies at home, 45 students prefer to watch movies at the theater, and 10 students prefer to watch movies at both home and the theater. What is the number of students who prefer to watch movies only at home?

**Step 2 — Solve.** The 10 students who prefer to watch movies at both home and the theater are counted twice in the total, once for home and once for the theater. To find the number of students who prefer to watch movies only at home, we subtract the number of students who prefer both from the total number of students who prefer to watch movies at home: 60 - 10 = 50.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":671,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a3c86797-5ada-4353-8648-fc8783ca6ad4';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the circumference of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$5\\pi$","is_correct":false,"explanation":"Choice B ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$25\\pi$","is_correct":false,"explanation":"Choice D ($25\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the circumference of the circle in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives $C = 2\pi(5) = 10\pi$.

**Step 3 — Select C.** $10\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($5\pi$): Choice B ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($25\pi$): Choice D ($25\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":302,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"42d8c34f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a3ec8b6e-0b7d-4c4c-95c2-3adf115555cb';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 4 > 276$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 276 grams but at most 289 grams to ship.',
  options = '[{"id":"A","text":"$52$","is_correct":false,"explanation":"Too small: $5(52)+4=264$."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Still below threshold 276."},{"id":"C","text":"$54$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$55$","is_correct":true,"explanation":"**Step 1:** $5x > 272$. **Step 2:** $x > 54.4$. Smallest integer choice: 55."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 272$.
**Step 2:** $x > 54.40$.
**Step 3:** Among choices, $55$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a45c6999-2498-4084-ae46-2efe6aef170f';
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $\frac{x-3}{x+2} = 1$ ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"No solution","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $\frac{x-3}{x+2} = 1$ ?

**Step 2 — Solve.** Multiplying both sides of the equation by $x+2$ gives $x-3 = x+2$. Subtracting $x$ from both sides gives $-3 = 2$. This equation is false, so there is no solution to the original equation. The original equation is undefined when $x=-2$.

**Step 3 — Select D.** No solution

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":791,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a46535ee-7ae4-407f-a817-b3b3b0f60f58';
UPDATE public.questions SET
  question_text = 'A circle in the $xy$-plane has a diameter with endpoints $(-4,5)$ and $(6,5)$. What is the length of the radius of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle in the $xy$-plane has a diameter with endpoints $(-4,5)$ and $(6,5)$. What is the length of the radius of this circle?

**Step 2 — Solve.** The radius of a circle is half the length of the diameter. The length of the diameter can be found using the distance formula: $\sqrt{(6 - (-4))^2 + (5 - 5)^2} = \sqrt{10^2 + 0^2} = 10$. The radius is half this length, which is 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":324,"opensat_domain":"Advanced Math","opensat_raw_id":"78a213bf","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a46ad1be-e950-4c69-8b7a-3725f42944e0';
COMMIT;
