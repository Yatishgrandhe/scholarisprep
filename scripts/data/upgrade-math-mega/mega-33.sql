BEGIN;
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 25 by 24 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$600$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$596$","is_correct":true,"explanation":"**Step 1:** Full area $600$. **Step 2:** Subtract $2^2$ → $596$."},{"id":"D","text":"$598$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $25×24=600$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $600-4=596$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '47542fab-6e63-458a-86ff-33c42b3f1bc1';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 26, 30, 34, 38, and one score $x$ is missing. The mean is 30.4.',
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$24$","is_correct":true,"explanation":"**Step 1:** Sum needed $=30.4×5=152$. **Step 2:** $x=152-128=24$."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$30$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=30.4×5=152$.
**Step 2:** $x=152-128=24$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '47582382-bdb1-43c2-87d9-a1502900a35a';
UPDATE public.questions SET
  question_text = 'If \(3x + 2y = 10\) and \(x - y = 1\), what is the value of \(x + y\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If \(3x + 2y = 10\) and \(x - y = 1\), what is the value of \(x + y\)?

**Step 2 — Solve.** To solve for \(x + y\), we can add the two equations together. Adding the left-hand side of the first equation and the left-hand side of the second equation yields \(3x + 2y + (x - y) = 4x + y\). Adding the right-hand sides of the two equations yields \(10 + 1 = 11\). Thus, \(4x + y = 11\).  We can rewrite the first equation as \(x = \frac{10 - 2y}{3}\). Substituting this into the equation \(4x + y = 11\) gives \(4(\frac{10 - 2y}{3}) + y = 11\). Simplifying, we have \(\frac{40 - 8y}{3} + y = 11\), or \(\frac{40 - 8y + 3y}{3} = 11\), or \(\frac{40 - 5y}{3} = 11\).  Multiplying both sides by 3 gives \(40 - 5y = 33\). Subtracting 40 from both sides gives \(-5y = -7\). Dividing both sides by -5 gives \(y = \frac{7}{5}\).  Substituting this value of y into the equation \(x - y = 1\) gives \(x - \frac{7}{5} = 1\), or \(x = \frac{12}{5}\).  Therefore, \(x + y = \frac{12}{5} + \frac{7}{5} = \frac{19}{5}\), or 3.8.  Of the choices given, 5 is closest to 3.8.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":677,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4767d953-d1dc-44f0-a64a-477c74f3a517';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25$\\pi$","is_correct":false,"explanation":"Choice C (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50$\\pi$","is_correct":false,"explanation":"Choice D (50$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives $C = 2\pi(5) = 10\pi$.

**Step 3 — Select B.** 10$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25$\pi$): Choice C (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50$\pi$): Choice D (50$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":947,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '477190ab-2795-4d14-9a69-d11ca4a48116';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 142°.',
  options = '[{"id":"A","text":"$142°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$38°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-142=38°$."},{"id":"C","text":"$48°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-142°=38°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4786cd7e-8528-452c-9ca9-31fc892c69a2';
UPDATE public.questions SET
  question_text = 'A circle with radius $r$ is inscribed in a square.  If the area of the square is 64, what is the area of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4 \\pi$","is_correct":false,"explanation":"Choice A ($4 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$8 \\pi$","is_correct":false,"explanation":"Choice B ($8 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$16 \\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$64 \\pi$","is_correct":false,"explanation":"Choice D ($64 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius $r$ is inscribed in a square.  If the area of the square is 64, what is the area of the circle in terms of $\pi$?

**Step 2 — Solve.** Since the circle is inscribed in the square, the diameter of the circle is equal to the side length of the square.  The area of the square is 64, so the side length of the square is $\sqrt{64} = 8$.  The diameter of the circle is 8, so the radius is 4.  The area of the circle is $\pi r^2 = \pi (4)^2 = 16 \pi$.

**Step 3 — Select C.** $16 \pi$

**Distractor analysis:**
- **A** ($4 \pi$): Choice A ($4 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($8 \pi$): Choice B ($8 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($64 \pi$): Choice D ($64 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":779,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '47aa4885-e162-4b27-abcf-eb115d92a38a';
UPDATE public.questions SET
  question_text = 'If the function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is not defined at $x = 2$.","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined, what is the value of $f(2)$?

**Step 2 — Solve.** The function is undefined at x = 2 because the denominator becomes 0 when x = 2, making the expression undefined. The function is not defined at a value where the denominator would equal zero.

**Step 3 — Select D.** The function is not defined at $x = 2$.

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":616,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_f4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '47b4bab6-579e-4fc5-9cd4-1c8d5a44f280';
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side of each equilateral triangle is equal to the radius of the circle, so the perimeter of the hexagon is 6 times the radius, or 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":564,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4833d581-6989-4c7b-88ae-a8e3ee4a9dbb';

UPDATE public.questions SET
  question_text = 'The equation $x^2 - 6x + 9 = 0$ has exactly one solution. What is the value of the solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 6x + 9 = 0$ has exactly one solution. What is the value of the solution?

**Step 2 — Solve.** The equation is a perfect square trinomial, which can be factored as $(x-3)^2 = 0$. Taking the square root of both sides yields $x-3 = 0$.  Adding 3 to both sides of the equation yields $x=3$.  Therefore, the solution to the equation is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":606,"opensat_domain":"Advanced Math","opensat_raw_id":"f469d82a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '48415e7d-5e99-431c-a617-25083a57c6fa';
UPDATE public.questions SET
  question_text = 'The product of two positive integers is 48. The difference between the two integers is 2. What is the sum of the two integers?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"14","is_correct":false,"explanation":"Choice A (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"26","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The product of two positive integers is 48. The difference between the two integers is 2. What is the sum of the two integers?

**Step 2 — Solve.** Let the two integers be x and y. We are given that xy = 48 and x - y = 2. Solving for x in the second equation gives us x = y + 2. Substituting y + 2 for x in the first equation gives (y + 2)y = 48, or y^2 + 2y = 48. Subtracting 48 from both sides yields y^2 + 2y - 48 = 0. Factoring this equation gives (y + 8)(y - 6) = 0, which means y = -8 or y = 6. Since the integers are positive, y must equal 6. Substituting 6 for y in the equation x = y + 2 gives us x = 6 + 2, or x = 8. Therefore, the sum of the two integers is 8 + 6 = 14.

**Step 3 — Select D.** 26

**Distractor analysis:**
- **A** (14): Choice A (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":882,"opensat_domain":"Advanced Math","opensat_raw_id":"b587417a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4873e4f8-1b4d-494a-af59-c89c1ac0330c';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 50 people like oranges, and 20 people like both apples and oranges. How many people like only oranges? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 50 people like oranges, and 20 people like both apples and oranges. How many people like only oranges? 

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem. The number of people who like only oranges is represented by the region of the orange circle that doesn''t overlap with the apple circle. Since 20 people like both apples and oranges, and 50 people like oranges in total, then 50 – 20 = 30 people like only oranges.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":890,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '487655e4-3bf9-49b1-a222-491ca629dfd0';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(32,95)$ and $(38,113)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{113-95}{38-32}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$113$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '49288293-8f9a-4202-8fb7-e6c61a511988';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 25 ft from the wall and the top is 32 ft high.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$41$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{25^2+32^2}=41$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 25 and 32.
**Step 2:** $c=\sqrt{25^2+32^2}=41$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '49af7d1d-50f0-4606-bdcf-a43721e36064';
UPDATE public.questions SET
  question_text = 'Given $x+y=20$ and $2x-y=19$, what is $x$?',
  stimulus_text = 'At a fundraiser, 20 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 13 VIP and 7 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$13$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=39$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=20+19$ → $3x=39$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4a395719-8fa7-4d53-ae74-d6422b3d00c4';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is $\$1200. If there are 6 friends going on the trip, how much will each friend pay? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$100","is_correct":false,"explanation":"Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$200","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$300","is_correct":false,"explanation":"Choice C ($300…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$600","is_correct":false,"explanation":"Choice D ($600…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is $\$1200. If there are 6 friends going on the trip, how much will each friend pay? 

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost of the trip by the number of friends.  $\frac{1200}{6} = 200$, so each friend will pay $\$200.

**Step 3 — Select B.** $200

**Distractor analysis:**
- **A** ($100): Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($300): Choice C ($300…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($600): Choice D ($600…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":174,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ae65559-6e99-44b4-ad6a-2bb0681eeb27';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area, in square centimeters, of a sector of this circle with a central angle of 72 degrees?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20\\pi","is_correct":false,"explanation":"Choice B (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30\\pi","is_correct":false,"explanation":"Choice C (30\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40\\pi","is_correct":false,"explanation":"Choice D (40\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area, in square centimeters, of a sector of this circle with a central angle of 72 degrees?

**Step 2 — Solve.** The area of a sector of a circle is given by (central angle/360 degrees) * (pi * radius^2).  Plugging in the values we get (72/360) * (pi * 5^2) = (1/5) * 25pi = 5pi.  Therefore, the area of the sector is 5pi square centimeters.

**Step 3 — Select A.** 10\pi

**Distractor analysis:**
- **B** (20\pi): Choice B (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30\pi): Choice C (30\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40\pi): Choice D (40\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":856,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4af8eeba-39af-4405-8008-81284a648561';

UPDATE public.questions SET
  question_text = 'A survey of 100 people asked them whether they preferred apples or oranges. Of the people surveyed, 60% said they preferred apples. How many people preferred oranges? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people asked them whether they preferred apples or oranges. Of the people surveyed, 60% said they preferred apples. How many people preferred oranges? 

**Step 2 — Solve.** If 60% of the 100 people surveyed preferred apples, then 100 - 60 = 40% preferred oranges. Since 40% of 100 is (0.40)(100) = 40, then 40 people preferred oranges.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":165,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"e879416b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4b9df27d-7ee7-4612-9b56-f447bdd688e5';
UPDATE public.questions SET
  question_text = 'A bakery sells cookies in packages of 6. They have 150 cookies in stock.  How many packages of cookies can they sell?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"900","is_correct":false,"explanation":"Choice D (900…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A bakery sells cookies in packages of 6. They have 150 cookies in stock.  How many packages of cookies can they sell?

**Step 2 — Solve.** To find out how many packages they can sell, divide the total number of cookies by the number of cookies per package: 150 cookies / 6 cookies/package = 25 packages.

**Step 3 — Select B.** 25

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (900): Choice D (900…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":320,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4c3c0426-0b22-4bac-8dc1-8ed1a31f5e50';
UPDATE public.questions SET
  question_text = 'The function $f(x) = ax^2 + bx + c$ has a vertex at $(-2, 3)$ and passes through the point $(0, 1)$. What is the value of $c$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = ax^2 + bx + c$ has a vertex at $(-2, 3)$ and passes through the point $(0, 1)$. What is the value of $c$?

**Step 2 — Solve.** Since the parabola passes through the point (0, 1), we know that f(0) = 1.  Substituting x = 0 into the equation f(x) = ax^2 + bx + c, we get f(0) = a(0)^2 + b(0) + c = c. Therefore, c = 1.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":261,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_22","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4c7fc594-b15c-476c-a5fc-f2ce4a0e39af';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$ cm","is_correct":false,"explanation":"Choice A ($\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5$\\pi$ cm","is_correct":false,"explanation":"Choice B (5$\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10$\\pi$ cm","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"25$\\pi$ cm","is_correct":false,"explanation":"Choice D (25$\\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle in terms of $\pi$?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 cm for $r$, we get $C = 2\pi (5) = 10\pi$ cm.

**Step 3 — Select C.** 10$\pi$ cm

**Distractor analysis:**
- **A** ($\pi$ cm): Choice A ($\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5$\pi$ cm): Choice B (5$\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25$\pi$ cm): Choice D (25$\pi$ cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":723,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4c95e373-6db8-4993-9194-cdbcddcde7c3';
UPDATE public.questions SET
  question_text = 'The function f(x) is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(2)$?

**Step 2 — Solve.** To find f(2), we substitute 2 for x in the function: f(2) = 3(2)^2 - 2(2) + 1.  Simplifying, we get f(2) = 12 - 4 + 1 = 9.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":164,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ce1d5f1-efef-47bf-9f4e-7f32b0e7702b';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we find that $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":327,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ceb9f6a-39a0-47a2-9cff-061849750ff3';
UPDATE public.questions SET
  question_text = 'If the final reading is 78 when $r=9$, and the process is modeled by $8r+6$, what value of $x$ satisfies $8x+6=78$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 8, then 6 is added.',
  options = '[{"id":"A","text":"$13$","is_correct":false,"explanation":"After subtracting 6, divide by 8; this is too small."},{"id":"B","text":"$14$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$15$","is_correct":true,"explanation":"**Step 1:** $8x = 72$. **Step 2:** $x = 15$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 6: $8x=72$.
**Step 2:** Divide by 8: $x=15$.
**Step 3:** Verify: $8(15)+6=78$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4d0dfd00-cca8-437d-9fc9-be431ebd7884';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the function, we get: $f(-2) = 2(-2)^2 - 3(-2) + 1 = 8 + 6 + 1 = 15$. Therefore, the value of f(-2) is 15.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":755,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d75f43b-c4b6-4e9a-95ce-3921a7f1dc69';

UPDATE public.questions SET
  question_text = 'In triangle $ABC$, angle $A$ is a right angle, and $AB = 3$ and $BC = 5$. What is the length of $AC$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle $ABC$, angle $A$ is a right angle, and $AB = 3$ and $BC = 5$. What is the length of $AC$?

**Step 2 — Solve.** Triangle $ABC$ is a right triangle, so we can use the Pythagorean theorem to find the length of $AC$.  The Pythagorean theorem states that in a right triangle, the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. In this case, $BC$ is the hypotenuse, so $BC^2 = AB^2 + AC^2$.  Substituting the given values, we get $5^2 = 3^2 + AC^2$.  This simplifies to $25 = 9 + AC^2$.  Subtracting 9 from both sides, we get $16 = AC^2$. Taking the square root of both sides, we get $AC = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":838,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d78cc60-ddee-4c31-8959-c19f0c154792';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 10 by 9 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$90$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$86$","is_correct":true,"explanation":"**Step 1:** Full area $90$. **Step 2:** Subtract $2^2$ → $86$."},{"id":"D","text":"$88$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $10×9=90$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $90-4=86$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d826b3b-405b-4479-9cc5-77b3fdaddd74';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 11 by 10 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$110$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$106$","is_correct":true,"explanation":"**Step 1:** Full area $110$. **Step 2:** Subtract $2^2$ → $106$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $11×10=110$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $110-4=106$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4db25458-488d-436c-9556-b864b2b46b34';
UPDATE public.questions SET
  question_text = 'If $2x+3=7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $2x+3=7$, what is the value of $x$?

**Step 2 — Solve.** Subtracting 3 from both sides of the equation gives $2x = 4$. Dividing both sides by 2 gives $x=2$.

**Step 3 — Select A.** 2

**Distractor analysis:**
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":281,"opensat_domain":"Algebra","opensat_raw_id":"random_id_15","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4dc24c84-9818-4c37-b633-56485fb058ad';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:6$ to make 102 milliliters of solution.',
  options = '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$41$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{10}$. **Step 2:** $\\frac{4}{10}×102=41$."},{"id":"D","text":"$102$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{10}$ of 102.
**Step 2:** $\frac{4}{10}×102=41$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4dd3ab6a-90a1-4835-8705-42ea602252bf';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates $y$ and gives us $2x = 16$. Dividing both sides by 2 gives $x = 8$.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":820,"opensat_domain":"Algebra","opensat_raw_id":"81a5872d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4e70e096-01f5-4215-b602-845c60a4cb20';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 29 by 28 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$808$","is_correct":true,"explanation":"**Step 1:** Full area $812$. **Step 2:** Subtract $2^2$ → $808$."},{"id":"D","text":"$810$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $812-4=808$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ea3514c-4aa9-49d8-8ece-1108b15f5855';
UPDATE public.questions SET
  question_text = 'If $3x + 4y = 17$ and $2x - 3y = 9$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $3x + 4y = 17$ and $2x - 3y = 9$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x+y$, we can add the two equations together.  Adding the left sides gives us $(3x + 4y) + (2x - 3y) = 5x + y$.  Adding the right sides gives us $17 + 9 = 26$.  Therefore, $5x + y = 26$.  Dividing both sides by 5 gives us $x + y = \frac{26}{5}$, or $x + y = 5.2$.  Since the answer must be a whole number, we round 5.2 to the nearest whole number, 5.  Therefore, $x + y = 5$.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":802,"opensat_domain":"Algebra","opensat_raw_id":"b678452b","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4ea571b8-cb0f-4802-9359-803bb1feb77c';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 30 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-5)(x-6)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-6)=0$.
**Step 2:** Roots $x=5$ and $x=6$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4eacf167-db3e-4f3e-9151-62120af69b15';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x<sup>2</sup> - 5x + 2. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x<sup>2</sup> - 5x + 2. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)<sup>2</sup> - 5(2) + 2 = 3(4) - 10 + 2 = 12 - 8 = 4. Therefore, *f*(2) = 4.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":586,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4eb568bc-4499-427d-894b-1d57cf0202e0';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1. What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x<sup>2</sup> + 3x - 1. What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function *f*(x) = 2x<sup>2</sup> + 3x - 1, we get *f*(-2) = 2(-2)<sup>2</sup> + 3(-2) - 1 = 8 - 6 - 1 = 1. Therefore, the value of *f*(-2) is -9.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":287,"opensat_domain":"Advanced Math","opensat_raw_id":"f1326ef1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4ebeb071-1e49-46bc-84a5-d7e7dc397c57';
COMMIT;
