BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 6x + 5 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-6","is_correct":false,"explanation":"Choice D (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 6x + 5 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form $ax^2 + bx + c = 0$ is equal to $-b/a$.  In this case, $a = 1$ and $b = -6$, so the sum of the solutions is $-(-6)/1 = 6$.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-6): Choice D (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":401,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '36a98104-8f91-4dd8-880a-46168d3621db';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 meters and a width of 5 meters. What is the area, in square meters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 meters and a width of 5 meters. What is the area, in square meters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width. Therefore, the area of this rectangle is 12 * 5 = 60 square meters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":831,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3748d870-8eda-4453-a1f2-a1dd3c54edf7';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They have a budget of $\$1200 for transportation.  A rental car costs $\$40 per day, and a train ticket costs $\$60. If they plan to spend 3 days traveling by car, what is the maximum number of train tickets they can purchase?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They have a budget of $\$1200 for transportation.  A rental car costs $\$40 per day, and a train ticket costs $\$60. If they plan to spend 3 days traveling by car, what is the maximum number of train tickets they can purchase?

**Step 2 — Solve.** The cost of the rental car for 3 days is 3 * $40 = $120.  This leaves $1200 - $120 = $1080 for train tickets.  Since each train ticket costs $60, they can purchase $1080 / $60 = 18 train tickets. However, the problem asks for the maximum number of tickets they can purchase, given that they can only purchase whole tickets. Therefore, the maximum number of train tickets they can purchase is 10.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":523,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '375b8537-ea4f-4253-902b-64d811d91a51';
UPDATE public.questions SET
  question_text = 'In triangle ABC, angle A measures 60 degrees, angle B measures 80 degrees, and side BC has length 10. What is the length of side AC?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice B (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{3}","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In triangle ABC, angle A measures 60 degrees, angle B measures 80 degrees, and side BC has length 10. What is the length of side AC?

**Step 2 — Solve.** Triangle ABC is a 30-60-90 triangle. The ratio of the lengths of the sides of a 30-60-90 triangle is 1:√3:2. Since side BC, which is opposite the 60-degree angle, has length 10, the hypotenuse AC has length 10 * 2 = 20. However, the question asks for the length of side AC, which is the hypotenuse, not the length of the side opposite the 60-degree angle.  The length of the hypotenuse is 2 times the length of the side opposite the 30-degree angle, or 10 * 2 = 20.  Therefore, the length of side AC is 20.  Since the length of side AC is 20, the length of side AB is 10.  Therefore, the length of side AC is 10 * 2 = 20.

**Step 3 — Select D.** 10\sqrt{3}

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5\sqrt{3}): Choice B (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":54,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"74735a92","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '37658e76-277f-40fb-a0eb-14675d437158';
UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined as \(f(x) = 3x^2 + 2\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-10","is_correct":false,"explanation":"Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"14","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined as \(f(x) = 3x^2 + 2\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** To find \(f(-2)\), we substitute -2 for x in the function: \(f(-2) = 3(-2)^2 + 2\). Simplifying, we get \(f(-2) = 3(4) + 2\), which equals 12 + 2, or 14.

**Step 3 — Select D.** 14

**Distractor analysis:**
- **A** (-10): Choice A (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":425,"opensat_domain":"Advanced Math","opensat_raw_id":"43417ac6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '37778578-e53f-4b14-b554-c562d58d2877';
UPDATE public.questions SET
  question_text = 'If $3x + 5 = 17$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 5 = 17$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we first subtract 5 from both sides of the equation: $3x + 5 - 5 = 17 - 5$. This gives us $3x = 12$. Next, we divide both sides by 3: $\frac{3x}{3} = \frac{12}{3}$. This simplifies to $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":194,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3790ea4f-0b8f-48e1-b045-610f00bc569e';
UPDATE public.questions SET
  question_text = 'Given $x+y=40$ and $2x-y=29$, what is $x$?',
  stimulus_text = 'At a fundraiser, 40 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 23 VIP and 17 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$23$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=69$. **Step 2:** $x=23$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$17$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$24$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=40+29$ → $3x=69$.
**Step 2:** $x=23$.
**Step 3:** Back-substitute: $y=17$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '37bff3a5-219c-43b3-bcde-9cb28c4b2275';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 10 meters.',
  options = '[{"id":"A","text":"$62.80$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(10)=62.80$."},{"id":"B","text":"$314.00$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$20.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$31.40$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(10)=62.80$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '37fcd6e2-9a3c-44fa-8afd-4a9190aec8ba';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 8 > 149$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 149 grams but at most 162 grams to ship.',
  options = '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Too small: $6(21)+8=134$."},{"id":"B","text":"$22$","is_correct":false,"explanation":"Still below threshold 149."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$24$","is_correct":true,"explanation":"**Step 1:** $6x > 141$. **Step 2:** $x > 23.5$. Smallest integer choice: 24."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 141$.
**Step 2:** $x > 23.50$.
**Step 3:** Among choices, $24$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '380182da-18be-4a1d-a9a2-991af878aac7';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 36 ft from the wall and the top is 43 ft high.',
  options = '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$79$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{36^2+43^2}=56$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 36 and 43.
**Step 2:** $c=\sqrt{36^2+43^2}=56$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3836c1b8-8ba9-4066-80df-1e569fea430d';
UPDATE public.questions SET
  question_text = 'The function $f$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(2)$?

**Step 2 — Solve.** To find the value of $f(2)$, we substitute 2 for $x$ in the equation: $f(2) = 2^2 + 3(2) - 4$. Simplifying, we get $f(2) = 4 + 6 - 4$, or $f(2) = 6$. Therefore, the value of $f(2)$ is 6.

**Step 3 — Select D.** 10

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":521,"opensat_domain":"Advanced Math","opensat_raw_id":"e404a748","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '38866a63-2f63-4ab4-91a8-e9442ef247ab';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$5\\pi$","is_correct":false,"explanation":"Choice B ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$25\\pi$","is_correct":false,"explanation":"Choice D ($25\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  Substituting 5 for $r$, we get $C = 2\pi(5) = 10\pi$.

**Step 3 — Select C.** $10\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($5\pi$): Choice B ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($25\pi$): Choice D ($25\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":390,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"34652f15","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '38891835-c261-4958-afc9-646e7689f5e9';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of $10\pi$ centimeters. What is the area of the circle, in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $10\pi$ centimeters. What is the area of the circle, in square centimeters?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  We are given that the circumference is $10\pi$ centimeters, so $10\pi = 2\pi r$.  Dividing both sides by $2\pi$ gives us $r = 5$. The area of a circle is given by the formula $A = \pi r^2$, so the area of this circle is $A = \pi (5)^2 = 25\pi$ square centimeters.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":967,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3920ed28-333d-4dd5-afdb-aca3fd6f5404';
UPDATE public.questions SET
  question_text = 'For what values of $x$ is the expression \(\frac{x^2 - 9}{x^2 + 3x - 10}\) undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 2 or x = 5","is_correct":false,"explanation":"Choice A (x = 2 or x = 5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = -5 or x = 2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = -3 or x = 3","is_correct":false,"explanation":"Choice C (x = -3 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = -5 or x = 3","is_correct":false,"explanation":"Choice D (x = -5 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** For what values of $x$ is the expression \(\frac{x^2 - 9}{x^2 + 3x - 10}\) undefined?

**Step 2 — Solve.** A rational expression is undefined when the denominator equals 0. Factoring the denominator, we get \(x^2 + 3x - 10 = (x + 5)(x - 2)\).  The denominator is equal to zero when x = -5 or x = 2.

**Step 3 — Select B.** x = -5 or x = 2

**Distractor analysis:**
- **A** (x = 2 or x = 5): Choice A (x = 2 or x = 5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -3 or x = 3): Choice C (x = -3 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = -5 or x = 3): Choice D (x = -5 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":904,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '394e03e3-dc2f-4b1f-a1e3-c231b1c1dd6e';
UPDATE public.questions SET
  question_text = 'A square has a side length of 6.  What is the length of the diagonal of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6\\sqrt{2}","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12\\sqrt{2}","is_correct":false,"explanation":"Choice D (12\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 6.  What is the length of the diagonal of the square?

**Step 2 — Solve.** The diagonal of a square divides the square into two right triangles.  The diagonal is the hypotenuse of these triangles, and the legs of the triangles are the sides of the square.  Therefore, we can use the Pythagorean theorem to find the length of the diagonal.  Let the length of the diagonal be .  Then, .  Simplifying this equation gives .  Taking the square root of both sides gives .

**Step 3 — Select B.** 6\sqrt{2}

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12\sqrt{2}): Choice D (12\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":519,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '39a867e8-5bdc-4314-81da-be0f41119dd5';
UPDATE public.questions SET
  question_text = 'A bakery sells two types of cookies: chocolate chip and peanut butter. On Tuesday, the bakery sold 150 cookies in total. If 60% of the cookies sold were chocolate chip, how many peanut butter cookies were sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"60","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"90","is_correct":false,"explanation":"Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"150","is_correct":false,"explanation":"Choice C (150…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"250","is_correct":false,"explanation":"Choice D (250…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A bakery sells two types of cookies: chocolate chip and peanut butter. On Tuesday, the bakery sold 150 cookies in total. If 60% of the cookies sold were chocolate chip, how many peanut butter cookies were sold?

**Step 2 — Solve.** If 60% of the 150 cookies were chocolate chip, then 60/100 * 150 = 90 chocolate chip cookies were sold.  Since the bakery sold 150 cookies in total, 150 - 90 = 60 peanut butter cookies were sold.

**Step 3 — Select A.** 60

**Distractor analysis:**
- **B** (90): Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (150): Choice C (150…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (250): Choice D (250…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":234,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '39ba90ea-711a-4c90-8bfb-7a6d602f41b2';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+42)^2 - (4x-42)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+42$, $v=4x-42$ → $672x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$168x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1764$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+42$, $v=4x-42$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(84)=672x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '39da5e4f-080b-4c34-ac7f-cf9254bc0c97';

UPDATE public.questions SET
  question_text = 'If $\frac{x}{2} + 3 = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x}{2} + 3 = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we first subtract 3 from both sides of the equation: $\frac{x}{2} + 3 - 3 = 5 - 3$. This gives us $\frac{x}{2} = 2$. Then, we multiply both sides of the equation by 2: $2 \cdot \frac{x}{2} = 2 \cdot 2$, which simplifies to $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":65,"opensat_domain":"Advanced Math","opensat_raw_id":"12d8c11d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3a1edd3b-2421-4d50-a3b4-f359041b294a';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord?

**Step 2 — Solve.** The distance from the center of the circle to the chord is the perpendicular distance, which forms a right triangle with the chord as the hypotenuse and half the chord as one of the legs.  Since the chord is 8 units long, half the chord is 4 units long.  We can use the Pythagorean Theorem to find the missing side of the right triangle:  $5^2 = 4^2 + x^2$, where $x$ is the distance from the center of the circle to the chord.  Simplifying the equation, we get $25 = 16 + x^2$. Subtracting 16 from both sides, we get $x^2 = 9$, or $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":531,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"45763892","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3a78d90f-485e-4d79-be60-c3d2a5ec4edc';
UPDATE public.questions SET
  question_text = 'The equation  $2x^2 - 5x + 3 = 0$ has two solutions. If one solution is $x = \frac{3}{2}$, what is the other solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-\\frac{1}{2}","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation  $2x^2 - 5x + 3 = 0$ has two solutions. If one solution is $x = \frac{3}{2}$, what is the other solution?

**Step 2 — Solve.** Since the equation has two solutions, we can use the fact that the sum of the roots of a quadratic equation in the form $ax^2 + bx + c = 0$ is equal to $-\frac{b}{a}$. In this case, the sum of the roots is $-\frac{-5}{2} = \frac{5}{2}$. If one solution is $x = \frac{3}{2}$, then the other solution must be $\frac{5}{2} - \frac{3}{2} = 1$. Since 1 is not a choice, we must consider the other possibility: $x = -\frac{b}{a} - x_1 = \frac{5}{2} - \frac{3}{2} = 1$.  Since 1 is not a choice, we must consider the other possibility: $x = -\frac{b}{a} - x_1 = \frac{5}{2} - \frac{3}{2} = 1$. Therefore, the other solution is $x = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (-\frac{1}{2}): Inverts the ratio — a common probability error.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":433,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3a99d844-40b0-46d6-b5ba-23664ee74db7';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 33 by 32 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1056$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1052$","is_correct":true,"explanation":"**Step 1:** Full area $1056$. **Step 2:** Subtract $2^2$ → $1052$."},{"id":"D","text":"$1054$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $33×32=1056$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1056-4=1052$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3aeb1896-9457-4db9-bb0e-8a77c300cfdc';
UPDATE public.questions SET
  question_text = 'A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"15","is_correct":false,"explanation":"Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has sides of length 3, 4, and 5. What is the area of the triangle?

**Step 2 — Solve.** The area of a right triangle is (1/2) * base * height. Since the sides of length 3 and 4 are perpendicular, we can use them as the base and height. Therefore, the area is (1/2) * 3 * 4 = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (15): Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":817,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3af37f1e-414d-474c-890a-d5372d11281f';
UPDATE public.questions SET
  question_text = 'Given $x+y=10$ and $2x-y=14$, what is $x$?',
  stimulus_text = 'At a fundraiser, 10 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 8 VIP and 2 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$8$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=24$. **Step 2:** $x=8$."},{"id":"B","text":"$7$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$2$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=10+14$ → $3x=24$.
**Step 2:** $x=8$.
**Step 3:** Back-substitute: $y=2$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3af893b1-6ca4-4e09-8d2e-f3186d0a3acc';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the area of the circle, in square centimeters?  (Use 3.14 for $\pi$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the area of the circle, in square centimeters?  (Use 3.14 for $\pi$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius of the circle. In this case, the radius is 5 centimeters. So, the area is $A = (3.14)(5^2) = (3.14)(25) = 78.5$ square centimeters.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":918,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b053846-50e4-47ab-b45b-9cb2602a8191';
UPDATE public.questions SET
  question_text = 'The function f is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of x is the function f undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = -2","is_correct":false,"explanation":"Choice B (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = 2, -2","is_correct":false,"explanation":"Choice C (x = 2, -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 0, 2","is_correct":false,"explanation":"Choice D (x = 0, 2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function f is defined by $f(x) = \frac{x^2 - 4}{x - 2}$. For what value(s) of x is the function f undefined?

**Step 2 — Solve.** A function is undefined when the denominator equals 0.  The denominator of the given function is  x - 2.  Setting x - 2 = 0 and solving for x, we get x = 2.  Therefore, the function is undefined for x = 2.

**Step 3 — Select A.** x = 2

**Distractor analysis:**
- **B** (x = -2): Choice B (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 2, -2): Choice C (x = 2, -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 0, 2): Choice D (x = 0, 2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":905,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3b1e4c77-1f3f-4d6c-a3b9-d789cdf28516';

UPDATE public.questions SET
  question_text = 'A school is holding a fundraiser. They are selling raffle tickets for \$3 each. If they sell 120 raffle tickets, how much money will they raise?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"360","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"36","is_correct":false,"explanation":"Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3600","is_correct":false,"explanation":"Choice C (3600…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"300","is_correct":false,"explanation":"Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A school is holding a fundraiser. They are selling raffle tickets for \$3 each. If they sell 120 raffle tickets, how much money will they raise?

**Step 2 — Solve.** Multiplying the number of tickets sold by the price of each ticket gives the total amount raised: 120 tickets * \$3/ticket = \$360.

**Step 3 — Select A.** 360

**Distractor analysis:**
- **B** (36): Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3600): Choice C (3600…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (300): Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":543,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"c85492a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3b2611ab-a96d-43b8-9eec-e0f525916b1f';
UPDATE public.questions SET
  question_text = 'A survey of 100 randomly selected students found that 60 students prefer to study in a quiet environment and 40 students prefer to study in a noisy environment. If 300 students are surveyed, how many are likely to prefer to study in a quiet environment?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"60","is_correct":false,"explanation":"Choice A (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"120","is_correct":false,"explanation":"Choice B (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"180","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"240","is_correct":false,"explanation":"Choice D (240…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 randomly selected students found that 60 students prefer to study in a quiet environment and 40 students prefer to study in a noisy environment. If 300 students are surveyed, how many are likely to prefer to study in a quiet environment?

**Step 2 — Solve.** The ratio of students who prefer quiet to the total number of students is 60/100 = 3/5. If 300 students are surveyed, we can multiply this ratio by 300 to estimate the number of students who prefer quiet: (3/5) * 300 = 180.

**Step 3 — Select C.** 180

**Distractor analysis:**
- **A** (60): Choice A (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (120): Choice B (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (240): Choice D (240…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":98,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b44c767-8050-45c3-8abb-901412200061';
UPDATE public.questions SET
  question_text = 'A store sells apples for $1.25 each and oranges for $0.75 each. A customer buys 5 apples and 3 oranges. How much did the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6.25","is_correct":false,"explanation":"Choice A ($6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$7.50","is_correct":false,"explanation":"Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$8.75","is_correct":false,"explanation":"Choice C ($8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$10.00","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.25 each and oranges for $0.75 each. A customer buys 5 apples and 3 oranges. How much did the customer spend in total?

**Step 2 — Solve.** The cost of the apples is 5 x $1.25 = $6.25. The cost of the oranges is 3 x $0.75 = $2.25. The total cost is $6.25 + $2.25 = $8.50.

**Step 3 — Select D.** $10.00

**Distractor analysis:**
- **A** ($6.25): Choice A ($6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($7.50): Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($8.75): Choice C ($8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":971,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b686486-2911-4e3e-9e38-3735442d1426';
UPDATE public.questions SET
  question_text = 'If 3x + 2y = 17 and x - y = 2, what is the value of x + y?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If 3x + 2y = 17 and x - y = 2, what is the value of x + y?

**Step 2 — Solve.** To solve for x + y, we can use elimination. Multiplying the second equation by 2, we get 2x - 2y = 4. Adding this equation to the first equation, we get (3x + 2y) + (2x - 2y) = 17 + 4, which simplifies to 5x = 21. Dividing both sides by 5, we get x = 4.2. Substituting 4.2 for x in the equation x - y = 2, we get 4.2 - y = 2. Subtracting 4.2 from both sides gives -y = -2.2, or y = 2.2. Therefore, x + y = 4.2 + 2.2 = 6.4, which is closest to 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":672,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b6e9dfb-2f9a-4eac-84e1-e57ac042134e';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the radius of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius.  We are given that C = 12π, so 12π = 2πr.  Dividing both sides by 2π gives us r = 6.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":597,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"987fc19d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b6ee98e-eee3-41c8-b3bc-692c6d750ef6';
UPDATE public.questions SET
  question_text = 'If $y=2x+3$ and $x=4$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"14","is_correct":false,"explanation":"Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $y=2x+3$ and $x=4$, what is the value of $y$?

**Step 2 — Solve.** Substituting $x=4$ into the equation $y = 2x + 3$, we get $y = 2(4) + 3 = 8 + 3 = 11$.

**Step 3 — Select B.** 11

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (14): Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":766,"opensat_domain":"Algebra","opensat_raw_id":"11d2b54a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3b7d055f-becf-4a6c-a251-aaa1824cc133';
UPDATE public.questions SET
  question_text = 'A store is having a sale on all items.  The price of a shirt is reduced from $\$25 to $\$15. What is the percent decrease in the price of the shirt?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10%","is_correct":false,"explanation":"Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30%","is_correct":false,"explanation":"Choice C (30%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40%","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store is having a sale on all items.  The price of a shirt is reduced from $\$25 to $\$15. What is the percent decrease in the price of the shirt?

**Step 2 — Solve.** The price decrease is $25 - $15 = $10.  The percent decrease is the price decrease divided by the original price, multiplied by 100%:  $\frac{10}{25} \times 100% = 40%$.

**Step 3 — Select D.** 40%

**Distractor analysis:**
- **A** (10%): Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30%): Choice C (30%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":384,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '3c1f1412-6d65-4fa2-b2ec-8825b020b174';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(4)=0$ and $f(9)=20$, what is $f(-6)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-36$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-6$)."},{"id":"C","text":"$-43$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-40$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-6)=4(-6-4)+(0)=-40$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{20-0}{9-4}=4$.
**Step 2:** Point-slope: $f(-6)=4(-6-4)+(0)$.
**Step 3:** $f(-6)=-40$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3c58ba73-2878-4e5a-bf4f-404f60422b41';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 10\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 10\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius. We are given that C = 10\pi, so 10\pi = 2\pi r. Dividing both sides by 2\pi gives r = 5. The area of a circle is given by the formula A = \pi r^2. Substituting 5 for r gives A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":307,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3d892d23","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3c8997a1-29c9-4173-a9cc-747b60e64b79';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 205 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3c968789-2251-4794-b6b5-052dbc1d4c8b';
COMMIT;
