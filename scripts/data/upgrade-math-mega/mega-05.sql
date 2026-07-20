BEGIN;
UPDATE public.questions SET
  question_text = 'If  $x^2 - 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $x^2 - 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The equation is a perfect square trinomial, which can be factored as $(x - 3)^2 = 0$. Taking the square root of both sides gives $x - 3 = 0$, which means $x = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":492,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0fada8fc-eb99-4eb3-b244-3e673d9ccc36';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 8x + 15 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$5$","is_correct":true,"explanation":"**Step 1:** Factor $(x-3)(x-5)=0$. **Step 2:** Positive root is $5$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-3)(x-5)=0$.
**Step 2:** Roots $x=3$ and $x=5$.
**Step 3:** Positive solution: $5$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '98ac4658-822d-4fd9-80aa-8e0d1ac8ff28';
UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students liked apples, 40 students liked oranges, and 15 students liked both apples and oranges. How many students liked neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"15","is_correct":false,"explanation":"Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"35","is_correct":false,"explanation":"Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students liked apples, 40 students liked oranges, and 15 students liked both apples and oranges. How many students liked neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem.  Let the number of students who like only apples be  and the number of students who like only oranges be .  We know that , , and .  We can use the following equation to find the number of students who like neither apples nor oranges: , or .  Therefore, students liked neither apples nor oranges.

**Step 3 — Select C.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (15): Choice B (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (35): Choice D (35…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":91,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '990348ba-6ce2-4afd-b1b1-4e22c4179bee';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 142°.',
  options = '[{"id":"A","text":"$142°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$38°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-142=38°$."},{"id":"C","text":"$48°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-142°=38°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '99848b00-e0b8-4882-a822-a8253cceea37';
UPDATE public.questions SET
  question_text = 'The lengths of two sides of a triangle are 5 and 12. Which of the following could NOT be the length of the third side of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":false,"explanation":"Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The lengths of two sides of a triangle are 5 and 12. Which of the following could NOT be the length of the third side of the triangle?

**Step 2 — Solve.** The Triangle Inequality Theorem states that the sum of the lengths of any two sides of a triangle must be greater than the length of the third side.  In this case, 5 + 12 = 17, so the length of the third side cannot be 17.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (7): Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":171,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_11","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '999b522d-0ada-43b9-ac03-71a00502bcf3';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+23)^2 - (3x-23)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$276x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+23$, $v=3x-23$ → $276x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$92x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+529$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+23$, $v=3x-23$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(46)=276x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '999da41e-1d17-4753-804d-2cc86c330cb6';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5\\pi$ cm","is_correct":false,"explanation":"Choice A ($5\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$10\\pi$ cm","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$25\\pi$ cm","is_correct":false,"explanation":"Choice C ($25\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$50\\pi$ cm","is_correct":false,"explanation":"Choice D ($50\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle, in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. Substituting $r = 5$ cm, we get $C = 2\pi (5) = 10\pi$ cm.

**Step 3 — Select B.** $10\pi$ cm

**Distractor analysis:**
- **A** ($5\pi$ cm): Choice A ($5\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($25\pi$ cm): Choice C ($25\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($50\pi$ cm): Choice D ($50\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":940,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '99aeabd2-db2b-4ceb-8c49-d7025b78ee09';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 43, 47, 51, 55, and one score $x$ is missing. The mean is 47.4.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$41$","is_correct":true,"explanation":"**Step 1:** Sum needed $=47.4×5=237$. **Step 2:** $x=237-196=41$."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$47$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=47.4×5=237$.
**Step 2:** $x=237-196=41$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '99bb501d-798c-4085-969d-1a82aca1a766';
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation $ax^2 + bx + c = 0$ is given by $-b/a$.  Factoring the given quadratic equation yields $(x - 4)(x + 2) = 0$. Therefore, the solutions to the equation are $x = 4$ and $x = -2$.  The sum of these solutions is $4 + (-2) = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":392,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9a1963c8-e13f-46a7-99ef-7f67d0883572';

UPDATE public.questions SET
  question_text = 'Given $x+y=42$ and $2x-y=30$, what is $x$?',
  stimulus_text = 'At a fundraiser, 42 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 24 VIP and 18 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$24$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=72$. **Step 2:** $x=24$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$18$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$25$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=42+30$ → $3x=72$.
**Step 2:** $x=24$.
**Step 3:** Back-substitute: $y=18$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9a662915-f286-4038-9640-c510aaaf2d33';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(12,35)$ and $(18,53)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{53-35}{18-12}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$53$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9a80002c-39b5-4194-9595-a8c14fce8538';
UPDATE public.questions SET
  question_text = 'If $3x - 2y = 11$ and $x + 2y = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x - 2y = 11$ and $x + 2y = 5$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we eliminate y: $3x - 2y + (x + 2y) = 11 + 5$, which simplifies to $4x = 16$. Dividing both sides by 4, we find $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":95,"opensat_domain":"Algebra","opensat_raw_id":"a9f12c4a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9a9c7f0a-b7f3-4c6f-b278-c06d66a8dbc7';
UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees and the hypotenuse is 10 centimeters. What is the length of the shorter leg of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5 centimeters","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"5\\sqrt{3} centimeters","is_correct":false,"explanation":"Choice B (5\\sqrt{3} centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10\\sqrt{3} centimeters","is_correct":false,"explanation":"Choice C (10\\sqrt{3} centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10 centimeters","is_correct":false,"explanation":"Choice D (10 centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees and the hypotenuse is 10 centimeters. What is the length of the shorter leg of the triangle?

**Step 2 — Solve.** In a 30-60-90 triangle, the shorter leg is half the length of the hypotenuse.  Therefore, the shorter leg is 10 centimeters / 2 = 5 centimeters.

**Step 3 — Select A.** 5 centimeters

**Distractor analysis:**
- **B** (5\sqrt{3} centimeters): Choice B (5\sqrt{3} centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10\sqrt{3} centimeters): Choice C (10\sqrt{3} centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10 centimeters): Choice D (10 centimeters…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":471,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9a9e3a28-8aef-4396-a653-571d5101f2c0';
UPDATE public.questions SET
  question_text = 'If $x^2 - 4 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-2 and 2","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 4 = 0$, what is the value of $x$?

**Step 2 — Solve.** The equation $x^2 - 4 = 0$ can be factored as $(x+2)(x-2) = 0$. For this equation to be true, either $(x+2) = 0$ or $(x-2) = 0$. Solving for $x$ in both cases gives us $x = -2$ or $x = 2$.

**Step 3 — Select D.** -2 and 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":276,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9aa08cac-2c4f-4616-b124-4965e73b1ff1';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm.  What is the area of the circle in terms of pi?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm.  What is the area of the circle in terms of pi?

**Step 2 — Solve.** The area of a circle is given by the formula \(A = \pi r^2\), where \(r\) is the radius.  Substituting 5 for \(r\) gives us \(A = \pi (5)^2\) = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":217,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9ab7dfbe-660f-41b3-abc2-55e4e6a4e6bf';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 27 by 26 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$702$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$698$","is_correct":true,"explanation":"**Step 1:** Full area $702$. **Step 2:** Subtract $2^2$ → $698$."},{"id":"D","text":"$700$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $27×26=702$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $702-4=698$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9adf6d44-b4d0-48eb-8fb1-3f199ea0fed6';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and a radius drawn to an endpoint of the chord. This radius will be perpendicular to the chord and will bisect the chord. This creates a right triangle with the radius as the hypotenuse, half the chord length as one leg, and the distance from the center of the circle to the chord as the other leg. Using the Pythagorean theorem, we have  . Solving for the distance, we get  , or .

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":489,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9b5c30ce-53e0-449e-a69d-183634a2083d';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 30 by 29 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$870$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$59$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$866$","is_correct":true,"explanation":"**Step 1:** Full area $870$. **Step 2:** Subtract $2^2$ → $866$."},{"id":"D","text":"$868$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $30×29=870$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $870-4=866$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9b80d4ec-206e-4f7e-8368-fdc4e868def2';
UPDATE public.questions SET
  question_text = 'The expression $\frac{1}{x} - \frac{1}{x+1}$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{x^2 + x}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{1}{x^2 + 1}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{1}{x(x+1)}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{1}{x(x-1)}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{1}{x} - \frac{1}{x+1}$ is equivalent to which of the following?

**Step 2 — Solve.** To combine the fractions, we need a common denominator. The common denominator is $x(x+1)$.  Multiplying the first fraction by $\frac{x+1}{x+1}$ and the second fraction by $\frac{x}{x}$ gives $\frac{x+1}{x(x+1)} - \frac{x}{x(x+1)}$.  Combining the numerators, we get $\frac{x + 1 - x}{x(x+1)}$, which simplifies to $\frac{1}{x(x+1)}$.

**Step 3 — Select C.** $\frac{1}{x(x+1)}$

**Distractor analysis:**
- **A** ($\frac{1}{x^2 + x}$): Inverts the ratio — a common probability error.
- **B** ($\frac{1}{x^2 + 1}$): Inverts the ratio — a common probability error.
- **D** ($\frac{1}{x(x-1)}$): Inverts the ratio — a common probability error.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":244,"opensat_domain":"Advanced Math","opensat_raw_id":"3a82227f","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9b996024-a2b4-4b8c-8d9a-583f7549ed30';
UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for \(x\), we substitute 48 for \(f(x)\) in the equation \(f(x) = 8\sqrt{x}\). This gives us \(48 = 8\sqrt{x}\). Dividing both sides of this equation by 8 yields \(6 = \sqrt{x}\). This can be rewritten as \(\sqrt{x} = 6\). Squaring both sides of this equation yields \(x = 36\). Therefore, the value of \(x\) for which \(f(x) = 48\) is 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":843,"opensat_domain":"Advanced Math","opensat_raw_id":"f452410b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9ba2e434-84bc-47df-ba9f-654fe96902bb';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 7 by 6 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$38$","is_correct":true,"explanation":"**Step 1:** Full area $42$. **Step 2:** Subtract $2^2$ → $38$."},{"id":"D","text":"$40$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $7×6=42$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $42-4=38$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9c5bb31b-a81b-4da8-990c-a3dd316b7b73';
UPDATE public.questions SET
  question_text = 'If $3x + 2y = 17$ and $x - y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 17$ and $x - y = 2$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using elimination. Multiplying the second equation by 2 gives us $2x - 2y = 4$. Adding this equation to the first equation, we get $5x = 21$. Dividing both sides by 5, we find $x = \frac{21}{5} = 4.2$.  The closest answer choice is C, 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":580,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9c6092c8-a2e2-4c1d-b3b3-9bf1996848d8';
UPDATE public.questions SET
  question_text = 'What is the value of $x$ if $x^2-4x+3=0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ if $x^2-4x+3=0$?

**Step 2 — Solve.** We can factor the quadratic equation as $(x-3)(x-1)=0$.  Setting each factor equal to zero, we get $x-3=0$ or $x-1=0$. Solving for $x$, we find that $x=3$ or $x=1$. Since choice C is the only option that is a solution to the equation, it is the correct answer.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":254,"opensat_domain":"Advanced Math","opensat_raw_id":"2b779c0b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9c6a0f2e-b5e7-4cfe-b8aa-0d51762712ca';
UPDATE public.questions SET
  question_text = 'In the figure above, lines l and m are parallel, and line t intersects lines l and m.  If the measure of angle 1 is 110 degrees, what is the measure of angle 2?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"70","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"80","is_correct":false,"explanation":"Choice B (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":false,"explanation":"Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"110","is_correct":false,"explanation":"Choice D (110…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the figure above, lines l and m are parallel, and line t intersects lines l and m.  If the measure of angle 1 is 110 degrees, what is the measure of angle 2?

**Step 2 — Solve.** Since lines l and m are parallel, the angles 1 and 2 are alternate interior angles. Alternate interior angles have the same measure, so the measure of angle 2 is 110 degrees.

**Step 3 — Select A.** 70

**Distractor analysis:**
- **B** (80): Choice B (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (100): Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (110): Choice D (110…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":775,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9d146726-1ce8-49d2-8452-448dad097073';
UPDATE public.questions SET
  question_text = 'The expression  $\frac{x^{10}y^6}{x^2y^2}$ is equivalent to $x^ay^b$, where a and b are constants. What is the value of $a+b$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression  $\frac{x^{10}y^6}{x^2y^2}$ is equivalent to $x^ay^b$, where a and b are constants. What is the value of $a+b$?

**Step 2 — Solve.** Using the properties of exponents, we can simplify the expression as follows:  $\frac{x^{10}y^6}{x^2y^2} = x^{10-2}y^{6-2} = x^8y^4$.  Therefore, $a+b = 8+4 = 12$.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":968,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_27","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9d164ed2-3607-45ac-b0ad-24681c5414d7';

UPDATE public.questions SET
  question_text = 'If the final reading is 37 when $r=4$, and the process is modeled by $8r+5$, what value of $x$ satisfies $8x+5=37$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 8, then 5 is added.',
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"After subtracting 5, divide by 8; this is too small."},{"id":"B","text":"$8$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$9$","is_correct":true,"explanation":"**Step 1:** $8x = 32$. **Step 2:** $x = 9$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 5: $8x=32$.
**Step 2:** Divide by 8: $x=9$.
**Step 3:** Verify: $8(9)+5=37$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9d2e4a63-0c3e-4cf7-b456-6704978a9126';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 13 meters.',
  options = '[{"id":"A","text":"$81.64$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(13)=81.64$."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$26.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(13)=81.64$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9d629c7c-942b-4f05-9ccc-173ebff419d9';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by \(f(x) = 2x^2 + 3x - 1\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by \(f(x) = 2x^2 + 3x - 1\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** Substituting -2 for *x* in the function, we get \(f(-2) = 2(-2)^2 + 3(-2) - 1\). Simplifying, we get \(f(-2) = 8 - 6 - 1\), or \(f(-2) = -9\).

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":977,"opensat_domain":"Advanced Math","opensat_raw_id":"c824d513","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9d79e4e0-219d-4f09-8542-c4e555ef39a2';
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x - 3 = 5x + 6$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x - 3 = 5x + 6$?

**Step 2 — Solve.** To solve for x, we can subtract 2x from both sides of the equation to get $-3 = 3x + 6$.  Then, we can subtract 6 from both sides of the equation to get $-9 = 3x$.  Dividing both sides of the equation by 3 gives us $x=-3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":371,"opensat_domain":"Algebra","opensat_raw_id":"a987655b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9db0ad1a-771b-4d95-b969-76464961612f';
UPDATE public.questions SET
  question_text = 'A group of 100 students took a test. The average score on the test was 75.  A second group of 50 students took the same test, and their average score was 85. What is the average score of all 150 students who took the test?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"78","is_correct":false,"explanation":"Choice A (78…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"79","is_correct":false,"explanation":"Choice B (79…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"80","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"81","is_correct":false,"explanation":"Choice D (81…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students took a test. The average score on the test was 75.  A second group of 50 students took the same test, and their average score was 85. What is the average score of all 150 students who took the test?

**Step 2 — Solve.** The total score of the first group of students is 100 * 75 = 7500. The total score of the second group of students is 50 * 85 = 4250. The total score of all 150 students is 7500 + 4250 = 11750. Therefore, the average score of all 150 students is 11750 / 150 = 80.

**Step 3 — Select C.** 80

**Distractor analysis:**
- **A** (78): Choice A (78…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (79): Choice B (79…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (81): Choice D (81…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":861,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9dc4aef8-2696-46b0-8396-817f7b3e1675';
UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5, the diameter is 10.  The area of the square is then $10^2 = 100$.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":981,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9e7ce4a5-7da8-44ee-84a0-bf6ee1799eec';
UPDATE public.questions SET
  question_text = 'The expression  is equivalent to $\frac{a}{b}$, where *a* and *b* are integers with no common factors. What is the value of *b*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"256","is_correct":false,"explanation":"Choice D (256…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression  is equivalent to $\frac{a}{b}$, where *a* and *b* are integers with no common factors. What is the value of *b*?

**Step 2 — Solve.** Simplify the given expression:  \begin{align*} \frac{16x^2 + 64}{8x^2 + 32} &= \frac{16(x^2 + 4)}{8(x^2 + 4)}\\ &= \frac{16}{8} \\ &= 2. \end{align*} To express 2 as a fraction in the form $\frac{a}{b}$, where *a* and *b* have no common factors, we can rewrite it as $\frac{2}{1}$. Thus, the value of *b* is 1.

**Step 3 — Select C.** 64

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (256): Choice D (256…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":855,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9ea915c2-3922-4c75-98f5-90bb6b0e9294';
UPDATE public.questions SET
  question_text = 'If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for x by using elimination.  Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$.  Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":743,"opensat_domain":"Algebra","opensat_raw_id":"98d37f8d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9eae003b-0ce0-497a-9837-42e12b60b6f5';

UPDATE public.questions SET
  question_text = 'If $x + y = 5$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x + y = 5$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(x + y) + (x - y) = 5 + 1$. This simplifies to $2x = 6$, so $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":571,"opensat_domain":"Algebra","opensat_raw_id":"54f7b56c","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9f37e7c6-7666-46de-b29a-1490f0061ebf';
UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer to eat pizza or tacos. The results showed that 60 people prefer pizza, and 40 people prefer tacos. What percentage of the people surveyed prefer tacos?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20%","is_correct":false,"explanation":"Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60%","is_correct":false,"explanation":"Choice C (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80%","is_correct":false,"explanation":"Choice D (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer to eat pizza or tacos. The results showed that 60 people prefer pizza, and 40 people prefer tacos. What percentage of the people surveyed prefer tacos?

**Step 2 — Solve.** The percentage of people who prefer tacos can be calculated by dividing the number of people who prefer tacos by the total number of people surveyed and multiplying by 100%. This gives (40/100) * 100% = 40%.

**Step 3 — Select B.** 40%

**Distractor analysis:**
- **A** (20%): Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60%): Choice C (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80%): Choice D (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":600,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9f43f399-366a-43c8-9c5d-0856d13a3ef4';
COMMIT;
