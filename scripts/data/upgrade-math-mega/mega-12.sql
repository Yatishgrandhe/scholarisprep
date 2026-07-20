BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula  where r is the radius of the circle.  Substituting 5 for r in the formula, we get π(5)² = 25π.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":592,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b646d131","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bdd59320-06ba-46dd-ad82-8353b60f0d71';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+9)^2 - (4x-9)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$144x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+9$, $v=4x-9$ → $144x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$36x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+81$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+9$, $v=4x-9$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(18)=144x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'be090de2-89d3-4708-a371-6e76b76e21cd';
UPDATE public.questions SET
  question_text = 'If $2x + 3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we first subtract 3 from both sides of the equation: $2x + 3 - 3 = 7 - 3$. This gives us $2x = 4$. Then, we divide both sides of the equation by 2: $\frac{2x}{2} = \frac{4}{2}$. This gives us $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":144,"opensat_domain":"Algebra","opensat_raw_id":"random_id_4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'be5b8d6e-de47-44bc-8531-fdaf1c044c2b';
UPDATE public.questions SET
  question_text = 'What is the value of $\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \frac{4}{5}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{10}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{1}{5}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"$\\frac{3}{5}$","is_correct":false,"explanation":"Choice C ($\\frac{3}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{7}{10}$","is_correct":false,"explanation":"Choice D ($\\frac{7}{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the value of $\frac{1}{2} \times \frac{2}{3} \times \frac{3}{4} \times \frac{4}{5}$?

**Step 2 — Solve.** Notice that all of the numerators cancel with the denominators except for 1 in the numerator and 10 in the denominator.  This leaves us with $\frac{1}{10}$.

**Step 3 — Select A.** $\frac{1}{10}$

**Distractor analysis:**
- **B** ($\frac{1}{5}$): Inverts the ratio — a common probability error.
- **C** ($\frac{3}{5}$): Choice C ($\frac{3}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{7}{10}$): Choice D ($\frac{7}{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":636,"opensat_domain":"Advanced Math","opensat_raw_id":"234d5678","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bec81ab0-a231-49b0-9e00-8899b039614a';

UPDATE public.questions SET
  question_text = 'In a circle with a radius of 5, a chord is drawn that is 8 units long. What is the distance from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a circle with a radius of 5, a chord is drawn that is 8 units long. What is the distance from the center of the circle to the chord?

**Step 2 — Solve.** Draw a radius from the center of the circle to an endpoint of the chord, and draw another radius to the other endpoint of the chord. This creates an isosceles triangle with the chord as its base and the two radii as its legs. The altitude from the center of the circle to the chord bisects the chord, creating two right triangles. Each of these right triangles has a hypotenuse of 5 and a leg of 4. Using the Pythagorean Theorem, we can find the length of the other leg, which is the distance from the center of the circle to the chord: $\sqrt{5^2 - 4^2} = \sqrt{9} = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":294,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bef4b6ff-ffbb-4cc1-bc6c-2a64fbda159f';
UPDATE public.questions SET
  question_text = 'If $\frac{x^2}{4} = 25$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x^2}{4} = 25$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we multiply both sides of the equation by 4: $x^2 = 100$.  Taking the square root of both sides, we get $x = \pm 10$.  Since the question asks for a possible value of x, the answer is 10.

**Step 3 — Select B.** 10

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":179,"opensat_domain":"Advanced Math","opensat_raw_id":"788fb45b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bf2c6bfa-0d1a-4f25-878c-c6b1857a5081';
UPDATE public.questions SET
  question_text = 'What is the value of $\frac{x^2 + 6x + 9}{x+3}$ when $x = 2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the value of $\frac{x^2 + 6x + 9}{x+3}$ when $x = 2$?

**Step 2 — Solve.** First, factor the numerator: $\frac{x^2 + 6x + 9}{x+3} = \frac{(x+3)(x+3)}{x+3}$. Then, simplify by canceling out the common factor of $x+3$: $\frac{(x+3)(x+3)}{x+3} = x+3$.  Finally, substitute $x = 2$ into the expression: $2 + 3 = 5$.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":675,"opensat_domain":"Advanced Math","opensat_raw_id":"a214b1b9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bf4c377d-6e64-403a-a7a1-7bf3038e93c8';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 10$ and $x - y = 2$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 10$ and $x - y = 2$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x + y$, we can use elimination. Multiplying the second equation by 3, we get $3x - 3y = 6$.  Adding this equation to the first equation, we get $5x = 16$. Dividing both sides by 5, we find $x = \frac{16}{5}$. Substituting this value of $x$ into the second equation, we get $\frac{16}{5} - y = 2$. Subtracting $\frac{16}{5}$ from both sides, we get $-y = 2 - \frac{16}{5}$, or $-y = -\frac{6}{5}$. Multiplying both sides by -1, we get $y = \frac{6}{5}$. Therefore, $x + y = \frac{16}{5} + \frac{6}{5} = \frac{22}{5}$, or 4.4.  Since the answer must be an integer, the closest answer is 6.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":138,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bf5b914f-3c12-49e6-b4e1-8eff007ddc9f';
UPDATE public.questions SET
  question_text = 'A circle with center at the origin and radius 5 intersects the line $x + y = 7$ at two points. What is the distance between these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\sqrt{2}","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice C (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7\\sqrt{2}","is_correct":false,"explanation":"Choice D (7\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with center at the origin and radius 5 intersects the line $x + y = 7$ at two points. What is the distance between these two points?

**Step 2 — Solve.** The equation of the circle with center at the origin and radius 5 is $x^2 + y^2 = 25$.  We can solve the system of equations $x^2 + y^2 = 25$ and $x + y = 7$ to find the points of intersection. Solving for $x$ in the second equation, we get $x = 7 - y$. Substituting this into the first equation, we get $(7-y)^2 + y^2 = 25$. Expanding the equation, we get $49 - 14y + y^2 + y^2 = 25$. Combining like terms, we get $2y^2 - 14y + 24 = 0$. Dividing both sides by 2, we get $y^2 - 7y + 12 = 0$. Factoring, we get $(y-3)(y-4) = 0$. Therefore, $y = 3$ or $y = 4$. Substituting these values back into the equation $x = 7 - y$, we get the points of intersection as $(4,3)$ and $(3,4)$. The distance between these two points can be found using the distance formula: $\sqrt{(4-3)^2 + (3-4)^2} = \sqrt{1+1} = \sqrt{2}$.  Thus, the distance between the two points is $5\sqrt{2}$.

**Step 3 — Select A.** 5\sqrt{2}

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5\sqrt{3}): Choice C (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7\sqrt{2}): Choice D (7\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":502,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a12f3478","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bf6a21d0-a6c8-41d1-81d8-156f853e5a8c';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \sqrt{x^2 + 1}\). What is the value of \(f(-3)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{10}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \sqrt{x^2 + 1}\). What is the value of \(f(-3)\)?

**Step 2 — Solve.** Substituting -3 for x in the equation f(x) = √(x^2 + 1) yields f(-3) = √((-3)^2 + 1).  Simplifying, we get f(-3) = √(9 + 1) = √10.

**Step 3 — Select C.** $\sqrt{10}$

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":116,"opensat_domain":"Advanced Math","opensat_raw_id":"84fd464d","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bfa7e62b-004a-4b34-9c9a-1b80bf7132d9';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $5x + 4 > 71$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 71 grams but at most 84 grams to ship.',
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"Too small: $5(11)+4=59$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Still below threshold 71."},{"id":"C","text":"$13$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$14$","is_correct":true,"explanation":"**Step 1:** $5x > 67$. **Step 2:** $x > 13.4$. Smallest integer choice: 14."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $5x > 67$.
**Step 2:** $x > 13.40$.
**Step 3:** Among choices, $14$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bfdf1082-0c7b-4b1e-b463-8bffe1526f62';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for $x$ by using elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":154,"opensat_domain":"Algebra","opensat_raw_id":"random_id_29","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bfe201b9-4afd-460c-84a9-1847b23dfbfc';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 52% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 52% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 48% and 56%","is_correct":true,"explanation":"**Step 1:** Interval 48% to 56%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 48% to 56%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '112234e4-6ee2-4fb7-9660-a42128db8ad9';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":308,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '11259cf9-3cfe-43d9-9870-25117beced80';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples and 40 people liked oranges. Of those who liked apples, 20 also liked oranges. What is the probability that a randomly selected person from this group liked oranges, given that they liked apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1/3","is_correct":false,"explanation":"Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1/2","is_correct":false,"explanation":"Choice B (1/2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2/3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3/5","is_correct":false,"explanation":"Choice D (3/5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples and 40 people liked oranges. Of those who liked apples, 20 also liked oranges. What is the probability that a randomly selected person from this group liked oranges, given that they liked apples?

**Step 2 — Solve.** The probability that a randomly selected person from this group liked oranges, given that they liked apples, is the number of people who liked both apples and oranges divided by the number of people who liked apples. From the given information, 20 people liked both apples and oranges, and 60 people liked apples. Thus, the probability is 20/60, or 1/3.

**Step 3 — Select C.** 2/3

**Distractor analysis:**
- **A** (1/3): Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1/2): Choice B (1/2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3/5): Choice D (3/5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":195,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"5464496a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '116fd9ef-17ce-416b-be25-f267b8427bf1';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:6$ to make 318 milliliters of solution.',
  options = '[{"id":"A","text":"$124$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$126$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$127$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{10}$. **Step 2:** $\\frac{4}{10}×318=127$."},{"id":"D","text":"$318$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{10}$ of 318.
**Step 2:** $\frac{4}{10}×318=127$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '11a64899-007c-43fd-bd27-0f5f605d4399';
UPDATE public.questions SET
  question_text = 'If the original price is $280$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 10%.',
  options = '[{"id":"A","text":"$328$","is_correct":true,"explanation":"**Step 1:** $280×1.3=364$. **Step 2:** $364×0.9=328$."},{"id":"B","text":"$280$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$364$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$338$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $280×(1+30/100)=364$.
**Step 2:** Discount: $364×(1-10/100)=328$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '11d44383-956e-4809-8cc1-f19d79f51f69';
UPDATE public.questions SET
  question_text = 'A system of linear equations is graphed in the xy-plane. The equations are $x + 2y = 1$ and $x - 2y = -1$. Which of the following points represents a solution to the system? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(-1, 1)","is_correct":false,"explanation":"Choice A ((-1, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(0, 1)","is_correct":false,"explanation":"Choice B ((0, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"(1, -1)","is_correct":false,"explanation":"Choice C ((1, -1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(1, 0)","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A system of linear equations is graphed in the xy-plane. The equations are $x + 2y = 1$ and $x - 2y = -1$. Which of the following points represents a solution to the system? 

**Step 2 — Solve.** To solve the system of equations, we can use the elimination method.  Adding the two equations together, we get 2x = 0, which means x = 0.  Substituting 0 for x in either equation, we get 2y = 1, or y = 1/2. The solution to the system is (0, 1/2), but that point isn''t listed as an answer choice.  The point (1, 0) satisfies both equations, and therefore represents a solution to the system.

**Step 3 — Select D.** (1, 0)

**Distractor analysis:**
- **A** ((-1, 1)): Choice A ((-1, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ((0, 1)): Choice B ((0, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((1, -1)): Choice C ((1, -1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"SYS","domain_id":"algebra","opensat_index":945,"opensat_domain":"Algebra","opensat_raw_id":"77814f0c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '120efc2c-792d-4311-a7e0-68f20347571d';
UPDATE public.questions SET
  question_text = 'A function f is defined by \(f(x) = \frac{x^2 - 4}{x + 2}\).  For what value of x does f(x) = 4?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function f is defined by \(f(x) = \frac{x^2 - 4}{x + 2}\).  For what value of x does f(x) = 4?

**Step 2 — Solve.** To find the value of x for which f(x) = 4, we set \(\frac{x^2 - 4}{x + 2}\) equal to 4 and solve for x: \begin{aligned} \frac{x^2 - 4}{x + 2} &= 4\\ x^2 - 4 &= 4(x + 2)\\ x^2 - 4 &= 4x + 8\\ x^2 - 4x - 12 &= 0\\ (x - 6)(x + 2) &= 0\\ x &= 6, -2 \end{aligned} Since the function is undefined when x = -2, the only solution is x = 6.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":953,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a12","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '125f87e2-4f74-4667-92f3-bbf446fec2da';
UPDATE public.questions SET
  question_text = 'If \(3x + 2y = 10\) and \(x - 2y = 6\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If \(3x + 2y = 10\) and \(x - 2y = 6\), what is the value of \(x\)?

**Step 2 — Solve.** We can solve this system of equations by elimination. Adding the two equations together, we get \(4x = 16\). Dividing both sides by 4, we find that \(x = 4\).

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":767,"opensat_domain":"Algebra","opensat_raw_id":"6835116d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '12e12293-d795-445a-892d-3afb1119332f';

UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":false,"explanation":"Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** To find f(-2), we substitute -2 for x in the function:  f(-2) = 2(-2)^2 + 3(-2) - 5 = 8 - 6 - 5 = 3

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-15): Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":894,"opensat_domain":"Advanced Math","opensat_raw_id":"f456d12a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bfec6d3d-5975-4c3b-bb4e-4c666d79c42d';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-49)^2+51$, where $t$ is seconds. What is $h(52)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(52)=2(52-49)^2+51=2(9)+51=69$."},{"id":"C","text":"$67$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=52$: $h(52)=2(52-49)^2+51$.
**Step 2:** $(52-49)^2=9$ → $h(52)=69$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bfefc97a-467e-407e-9bec-0bf4be8d86ab';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(17)=13$ and $f(22)=33$, what is $f(-19)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-127$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-19$)."},{"id":"C","text":"$-134$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-131$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-19)=4(-19-17)+(13)=-131$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{33-13}{22-17}=4$.
**Step 2:** Point-slope: $f(-19)=4(-19-17)+(13)$.
**Step 3:** $f(-19)=-131$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c00683e0-673d-4f3e-9b2a-b11afa45a122';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius drawn to the midpoint of the chord.  The radius, the chord, and the line segment from the center of the circle to the midpoint of the chord form a right triangle, with the radius being the hypotenuse. Since the chord is 8 units long, the line segment from the center of the circle to the midpoint of the chord is 4 units long.  The Pythagorean Theorem tells us that  The distance from the center of the circle to the chord is 3 units.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":403,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a11","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0d5c966-c623-4a3f-baba-93b9aa02ccfd';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 42 by 41 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1722$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$83$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1718$","is_correct":true,"explanation":"**Step 1:** Full area $1722$. **Step 2:** Subtract $2^2$ → $1718$."},{"id":"D","text":"$1720$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $42×41=1722$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1722-4=1718$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0e933f5-c0d5-44e2-b3cb-afeb9288f92d';
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 13x + 42 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0eb2435-5ed3-46c3-8bc9-098220db2fe9';
UPDATE public.questions SET
  question_text = 'A survey of 100 students asked whether they preferred pizza or burgers.  70 students preferred pizza, and 30 students preferred burgers.  What percentage of the students surveyed preferred burgers? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10%","is_correct":false,"explanation":"Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"70%","is_correct":false,"explanation":"Choice D (70%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students asked whether they preferred pizza or burgers.  70 students preferred pizza, and 30 students preferred burgers.  What percentage of the students surveyed preferred burgers? 

**Step 2 — Solve.** To find the percentage, we divide the number who preferred burgers (30) by the total number of students (100) and multiply by 100%.  This gives us (30/100) * 100% = 30%.

**Step 3 — Select C.** 30%

**Distractor analysis:**
- **A** (10%): Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (70%): Choice D (70%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":692,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_10","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c10505bc-b9cf-4dee-a2fb-33d8f224bf2e';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 10 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{14}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 14 total. **Step 2:** P $=\\frac{4}{14}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 14.
**Step 2:** Conditional probability $=\frac{4}{14}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c10c1f21-4032-4d3c-a5b6-e8a95172d77d';

UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees.  The side opposite this angle has a length of 5.  What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\sqrt{2}","is_correct":false,"explanation":"Choice A (5\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice B (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice D (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees.  The side opposite this angle has a length of 5.  What is the length of the hypotenuse?

**Step 2 — Solve.** A 30-60-90 right triangle has side lengths in the ratio 1:sqrt(3):2.  Since the side opposite the 30-degree angle has length 5, the hypotenuse has length 10.

**Step 3 — Select C.** 10

**Distractor analysis:**
- **A** (5\sqrt{2}): Choice A (5\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5\sqrt{3}): Choice B (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{3}): Choice D (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":532,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c1b635f4-6d1e-405c-bf3b-5630c4666528';
UPDATE public.questions SET
  question_text = 'The expression $\frac{3x^2 - 6x}{x^2 - 4}$ is equivalent to $\frac{a}{x+2}$, where $x \neq -2$ and $x \neq 2$. What is the value of $a$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression $\frac{3x^2 - 6x}{x^2 - 4}$ is equivalent to $\frac{a}{x+2}$, where $x \neq -2$ and $x \neq 2$. What is the value of $a$?

**Step 2 — Solve.** Factoring the numerator and denominator of the given expression yields $\frac{3x(x-2)}{(x+2)(x-2)}$. Since $x \neq 2$, the (x – 2) terms cancel, leaving $\frac{3x}{x+2}$.  Therefore, the expression is equivalent to $\frac{a}{x+2}$ when $a = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":895,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c1b9d1ce-6e62-4003-8f3b-cd48e8234a9a';
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 8 > 263$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 263 grams but at most 276 grams to ship.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $6(40)+8=248$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Still below threshold 263."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$43$","is_correct":true,"explanation":"**Step 1:** $6x > 255$. **Step 2:** $x > 42.5$. Smallest integer choice: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 255$.
**Step 2:** $x > 42.50$.
**Step 3:** Among choices, $43$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c1c47edc-0b57-47e5-aeaf-50956511b4db';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$.  Adding this equation to the first equation, we get $5x = 15$.  Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":19,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c2331190-400d-419c-b98b-69f6216031bf';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like bananas, and 20 people like both apples and bananas. How many people like only apples? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like bananas, and 20 people like both apples and bananas. How many people like only apples? 

**Step 2 — Solve.** We can use a Venn diagram to solve this problem. Draw two overlapping circles, one for apples and one for bananas. The overlap represents the people who like both.  Since 20 people like both, we write 20 in the overlap. Since 60 people like apples, we write 40 in the apple-only part of the apple circle.  Therefore, 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":466,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c2576244-fe76-4cf5-8bd0-e90efb0c5e95';
UPDATE public.questions SET
  question_text = 'If the final reading is 51 when $r=5$, and the process is modeled by $9r+6$, what value of $x$ satisfies $9x+6=51$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 9, then 6 is added.',
  options = '[{"id":"A","text":"$9$","is_correct":false,"explanation":"After subtracting 6, divide by 9; this is too small."},{"id":"B","text":"$10$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$11$","is_correct":true,"explanation":"**Step 1:** $9x = 45$. **Step 2:** $x = 11$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 6: $9x=45$.
**Step 2:** Divide by 9: $x=11$.
**Step 3:** Verify: $9(11)+6=51$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c2731198-7541-4271-b903-e35b0c9d3689';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60% of them prefer brand A, 30% prefer brand B, and the rest prefer brand C. How many people prefer brand C? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"30","is_correct":false,"explanation":"Choice B (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":false,"explanation":"Choice C (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"70","is_correct":false,"explanation":"Choice D (70…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60% of them prefer brand A, 30% prefer brand B, and the rest prefer brand C. How many people prefer brand C? 

**Step 2 — Solve.** If 60% prefer brand A, then 60 people prefer brand A (0.60 * 100 = 60). If 30% prefer brand B, then 30 people prefer brand B (0.30 * 100 = 30).  Since 60 + 30 = 90, then 100 – 90 = 10 people prefer brand C.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (30): Choice B (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (40): Choice C (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (70): Choice D (70…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":834,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c2fd147b-6d48-4c8d-afa0-4620bcff90e3';
COMMIT;
