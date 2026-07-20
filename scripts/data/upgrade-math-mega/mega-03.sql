BEGIN;
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+10)^2 - (2x-10)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$80x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+10$, $v=2x-10$ → $80x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+10$, $v=2x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(20)=80x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8b9a8c0b-3f85-4298-9004-fe8d657dd3ee';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-9)^2+11$, where $t$ is seconds. What is $h(12)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$29$","is_correct":true,"explanation":"**Step 1:** $h(12)=2(12-9)^2+11=2(9)+11=29$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=12$: $h(12)=2(12-9)^2+11$.
**Step 2:** $(12-9)^2=9$ → $h(12)=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8c6bdf0f-9444-4fa9-ae2a-b9e497196199';
UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 + 2x - 3}{x^2 - x - 6}$ is undefined for which value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 + 2x - 3}{x^2 - x - 6}$ is undefined for which value of $x$?

**Step 2 — Solve.** A rational function is undefined when the denominator equals zero. Factoring the denominator, we get $(x+2)(x-3)=0$.  Therefore, the function is undefined when $x=-2$ or $x=3$, and of these choices, only 3 is given.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":198,"opensat_domain":"Advanced Math","opensat_raw_id":"986421af","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8c82ff3d-e2c3-4357-919b-74d4fcd6dac4';
UPDATE public.questions SET
  question_text = 'A survey of 200 randomly selected college students found that 120 students prefer to study in a quiet environment, 80 students prefer to study in a noisy environment, and 50 students prefer to study in either a quiet or noisy environment. How many of the 200 students surveyed prefer to study in a quiet environment only?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"70","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"90","is_correct":false,"explanation":"Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"110","is_correct":false,"explanation":"Choice C (110…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"130","is_correct":false,"explanation":"Choice D (130…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 randomly selected college students found that 120 students prefer to study in a quiet environment, 80 students prefer to study in a noisy environment, and 50 students prefer to study in either a quiet or noisy environment. How many of the 200 students surveyed prefer to study in a quiet environment only?

**Step 2 — Solve.** 50 students prefer to study in either a quiet or noisy environment, but 120 students prefer to study in a quiet environment. Therefore, 120 - 50 = 70 students prefer to study in a quiet environment only.

**Step 3 — Select A.** 70

**Distractor analysis:**
- **B** (90): Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (110): Choice C (110…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (130): Choice D (130…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":535,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f876c81c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8c9b8dae-c821-4a0f-8dc6-47e62feaf77c';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8ca45dde-d9fd-4fe7-b8b8-2cdf4ddb69af';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. A chord of the circle is 8 cm long. What is the distance, in centimeters, between the center of the circle and the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. A chord of the circle is 8 cm long. What is the distance, in centimeters, between the center of the circle and the chord?

**Step 2 — Solve.** Draw a diagram: [Diagram: A circle with center O and chord AB.  Draw a perpendicular line from O to AB, intersecting AB at point M.  This perpendicular bisects AB, so AM=MB=4.   Triangle AOM is a right triangle with hypotenuse OA=5 and AM=4.  By the Pythagorean Theorem, OM = 3.]  Since OM is the perpendicular distance from the center of the circle to the chord, the distance between the center of the circle and the chord is **3** centimeters.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":233,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a2f4d6d2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8cd88728-b7cf-4318-a2c5-7ff112453844';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 174°.',
  options = '[{"id":"A","text":"$174°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$6°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-174=6°$."},{"id":"C","text":"$16°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-174°=6°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8d01c6ca-e144-4ceb-9231-8862950db2f6';

UPDATE public.questions SET
  question_text = 'The graph of the line  is shown below. Which of the following is the equation of this line? \begin{align*} \text{A. }  y&= -2x - 8\ \text{B. }  y&= x - 8\ \text{C. } y&= -x - 8\ \text{D. }  y&= 2x - 8\ \end{align*}',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"y = -2x - 8","is_correct":false,"explanation":"Choice A (y = -2x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"y = x - 8","is_correct":false,"explanation":"Choice B (y = x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"y = -x - 8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"y = 2x - 8","is_correct":false,"explanation":"Choice D (y = 2x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The graph of the line  is shown below. Which of the following is the equation of this line? \begin{align*} \text{A. }  y&= -2x - 8\ \text{B. }  y&= x - 8\ \text{C. } y&= -x - 8\ \text{D. }  y&= 2x - 8\ \end{align*}

**Step 2 — Solve.** The equation of a line can be written in slope-intercept form: y = mx + b, where m is the slope of the line, and b is the y-intercept of the line.  The line shown passes through the point (-8, 0), so b = 0. The line shown also passes through the point (-1, 8).  The slope, m, of a line passing through two points and can be calculated using the equation . For the points and , this gives , or .  Substituting for m and for b in y = mx + b yields y = -x + 0, or y = -x. Therefore, an equation of the graph shown is y = -x - 8.

**Step 3 — Select C.** y = -x - 8

**Distractor analysis:**
- **A** (y = -2x - 8): Choice A (y = -2x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (y = x - 8): Choice B (y = x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (y = 2x - 8): Choice D (y = 2x - 8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":728,"opensat_domain":"Algebra","opensat_raw_id":"d02193fb","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8d34a8ed-2258-4caf-b6fc-9cb8c0c8a98e';
UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is \$1200. If there are 6 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$100$","is_correct":false,"explanation":"Choice A ($\\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$200$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\$300$","is_correct":false,"explanation":"Choice C ($\\$300$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$400$","is_correct":false,"explanation":"Choice D ($\\$400$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is \$1200. If there are 6 friends, how much will each friend pay?

**Step 2 — Solve.** To find the cost per friend, divide the total cost of the trip by the number of friends: $\$1200 / 6 = \$200$.

**Step 3 — Select B.** $\$200$

**Distractor analysis:**
- **A** ($\$100$): Choice A ($\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$300$): Choice C ($\$300$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$400$): Choice D ($\$400$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":754,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8d401070-1a01-4c78-85f6-0bc9cee2f147';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:8$ to make 90 milliliters of solution.',
  options = '[{"id":"A","text":"$32$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$34$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$35$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{13}$. **Step 2:** $\\frac{5}{13}×90=35$."},{"id":"D","text":"$90$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{13}$ of 90.
**Step 2:** $\frac{5}{13}×90=35$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8d54f8a3-72d4-44c1-92e0-ebaf85accbe7';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 8, 12, 16, 20, and one score $x$ is missing. The mean is 12.4.',
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$6$","is_correct":true,"explanation":"**Step 1:** Sum needed $=12.4×5=62$. **Step 2:** $x=62-56=6$."},{"id":"C","text":"$8$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=12.4×5=62$.
**Step 2:** $x=62-56=6$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8d59f5e8-bd60-4b15-a7ca-440ca23d5ae3';
UPDATE public.questions SET
  question_text = 'A circle with center (2, -3) passes through the point (5, 0). What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, -3) passes through the point (5, 0). What is the radius of the circle? 

**Step 2 — Solve.** The radius of a circle is the distance from the center of the circle to any point on the circle.  We can use the distance formula to find the distance between the center (2, -3) and the point (5, 0).  The distance formula is $\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}$.  Plugging in the values, we get $\sqrt{(5-2)^2 + (0-(-3))^2} = \sqrt{3^2 + 3^2} = \sqrt{18} = 3\sqrt{2}$.  Since the distance is $3\sqrt{2}$, the radius is $3\sqrt{2}$, and the square of the radius is $(3\sqrt{2})^2 = 18$.  Therefore, the radius is $\sqrt{18} = 3\sqrt{2}$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":219,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8d5e57cc-7292-4771-830e-5d9fbabebe4b';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8d64d63a-c972-4ab1-ab75-7a7c306a935d';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 14 by 13 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$182$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$178$","is_correct":true,"explanation":"**Step 1:** Full area $182$. **Step 2:** Subtract $2^2$ → $178$."},{"id":"D","text":"$180$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $14×13=182$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $182-4=178$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8dcdbf19-c8fc-466a-9c09-ef0c21a0ce1f';
UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10.  What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5 \\pi","is_correct":false,"explanation":"Choice A (5 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10 \\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25 \\pi","is_correct":false,"explanation":"Choice C (25 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100 \\pi","is_correct":false,"explanation":"Choice D (100 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10.  What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius of the circle. Since the diameter is 10, the radius is 5. Therefore, the circumference is C = 2π(5) = 10π.

**Step 3 — Select B.** 10 \pi

**Distractor analysis:**
- **A** (5 \pi): Choice A (5 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25 \pi): Choice C (25 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100 \pi): Choice D (100 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":741,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1f203579","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8e3f68a5-78dc-4289-b1fd-4c832fb3e0ca';

UPDATE public.questions SET
  question_text = 'If $x^2 - 5x - 14 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 5x - 14 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** We can factor the quadratic equation as (x - 7)(x + 2) = 0.  The solutions to this equation are x = 7 and x = -2. The sum of these solutions is 7 + (-2) = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":21,"opensat_domain":"Algebra","opensat_raw_id":"random_id_f8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8edc1572-95cd-4247-b5a4-5ba411a82d7e';
UPDATE public.questions SET
  question_text = 'A circle with center (2, 3) passes through the point (5, 7). What is the radius of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, 3) passes through the point (5, 7). What is the radius of this circle?

**Step 2 — Solve.** The radius of a circle is the distance from the center of the circle to any point on the circle.  We can use the distance formula to find the distance between the points (2, 3) and (5, 7): \begin{align*} \sqrt{(5-2)^2 + (7-3)^2} &= \sqrt{3^2 + 4^2} \\ &= \sqrt{9+16} \\ &= \sqrt{25} \\ &= 5 \end{align*}  The radius of the circle is 5 units.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":242,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"321984ad","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8ee91f0a-d9f9-4ae0-8f33-0e3348afae3c';
UPDATE public.questions SET
  question_text = 'If $x+3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x+3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, subtract 3 from both sides of the equation:  x + 3 - 3 = 7 - 3.  This gives us x = 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":230,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8f136ec6-7f46-4e17-8894-d392ee0bce01';
UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations by elimination. Notice that the y terms have opposite coefficients. Adding the two equations together, we get $(3x + 2y) + (x - 2y) = 10 + 6$, which simplifies to $4x = 16$. Dividing both sides by 4, we find $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":44,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8f3871bb-ae12-4667-807c-51a8ca26a9e9';
UPDATE public.questions SET
  question_text = 'A group of friends went to a restaurant.  The bill came to \$120.  They agreed to split the bill evenly.  If each friend paid \$15, how many friends were in the group?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends went to a restaurant.  The bill came to \$120.  They agreed to split the bill evenly.  If each friend paid \$15, how many friends were in the group?

**Step 2 — Solve.** To find the number of friends, we divide the total bill by the amount each friend paid: 120 / 15 = 8.  Therefore, there were 8 friends in the group.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":582,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8f411985-9a23-4693-88fe-7fbe0f3f35fa';
UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x + 5 = 17$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x + 5 = 17$?

**Step 2 — Solve.** To solve for $x$, we first subtract 5 from both sides of the equation: $3x + 5 - 5 = 17 - 5$, or $3x = 12$. Next, we divide both sides by 3: $\frac{3x}{3} = \frac{12}{3}$, or $x = 4$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":659,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9034f6cd-7029-450f-b6b7-1b1a3d472cdb';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 134°.',
  options = '[{"id":"A","text":"$134°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$46°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-134=46°$."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-134°=46°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9041276d-7af7-4220-8bf5-e9334ebc39a9';
UPDATE public.questions SET
  question_text = 'If $x^2 - 5x + 6 = 0$, what is the sum of the roots of the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-6","is_correct":false,"explanation":"Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 5x + 6 = 0$, what is the sum of the roots of the equation?

**Step 2 — Solve.** For a quadratic equation of the form $ax^2 + bx + c = 0$, the sum of the roots is given by $-b/a$. In this equation, $a = 1$ and $b = -5$, so the sum of the roots is $-(-5)/1 = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-6): Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":236,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '904f3624-1f79-4e3c-85cc-c4fc51ee409f';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for which value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for which value of $x$?

**Step 2 — Solve.** A function is undefined when its denominator equals zero.  In this case, the denominator is $x - 2$, which equals zero when $x = 2$. Therefore, the function $f(x)$ is undefined for $x = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":846,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9070acdb-3512-41c8-a951-110b5c81d452';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area of the circle in square units? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area of the circle in square units? 

**Step 2 — Solve.** The area of a circle is given by the formula  $\pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives us $\pi (5)^2$, or $25\pi$ square units.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":122,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9167ab1a-682c-4820-8778-e34578241ed5';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(13,38)$ and $(19,56)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{56-38}{19-13}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$56$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '91782317-344f-4184-87d9-98b4b11b904b';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 21 ft from the wall and the top is 28 ft high.',
  options = '[{"id":"A","text":"$33$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$34$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$35$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{21^2+28^2}=35$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 21 and 28.
**Step 2:** $c=\sqrt{21^2+28^2}=35$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '919c4e79-a6a7-4e64-9d3f-63bf96540bb2';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\).  For what value(s) of \(x\) is \(f(x)\) undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2 only","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-2 only","is_correct":false,"explanation":"Choice B (-2 only…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2 and -2","is_correct":false,"explanation":"Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is defined for all values of \\(x\\)","is_correct":false,"explanation":"Choice D (The function is defined for all values of \\(x\\)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\).  For what value(s) of \(x\) is \(f(x)\) undefined?

**Step 2 — Solve.** A rational function is undefined when the denominator equals zero.  The denominator of \(f(x)\) is \(x-2\), which equals zero when \(x=2\).  Therefore, \(f(x)\) is undefined for \(x=2\) only.

**Step 3 — Select A.** 2 only

**Distractor analysis:**
- **B** (-2 only): Choice B (-2 only…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2 and -2): Choice C (2 and -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (The function is defined for all values of \(x\)): Choice D (The function is defined for all values of \(x\)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":381,"opensat_domain":"Advanced Math","opensat_raw_id":"3e679962","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '91a0dfea-8a3f-4dc9-a9a0-5fb3bc3450bc';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters.  What is the area, in square centimeters, of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters.  What is the area, in square centimeters, of the circle? 

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius of the circle.  Substituting 5 for $r$ gives us $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":193,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4c98f1a6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '91a65898-64be-4437-a71e-795fd25fd80e';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x^2 + 3x - 5.  What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"19","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"21","is_correct":false,"explanation":"Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x^2 + 3x - 5.  What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 2(2)^2 + 3(2) - 5 = 8 + 6 - 5 = 9.  Therefore, the value of *f*(2) is 9.

**Step 3 — Select B.** 19

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (21): Choice C (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":769,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_11","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '91e269ba-e973-4933-b72e-028ee02fb9c1';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 21 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{25}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{24}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{25}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{24}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 24 total. **Step 2:** P $=\\frac{3}{24}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 24.
**Step 2:** Conditional probability $=\frac{3}{24}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '91f23d03-e9e6-4525-9724-d71bf6a9a4f4';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves. The total cost of the trip is \$2,400. If the cost per person is \$300, how many friends are going on the trip?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly among themselves. The total cost of the trip is \$2,400. If the cost per person is \$300, how many friends are going on the trip?

**Step 2 — Solve.** To find the number of friends, we divide the total cost of the trip by the cost per person: \$2,400 / \$300 = 8. Therefore, there are 8 friends going on the trip.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":548,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '922fe978-5aa4-4a10-819a-c184067d7bd2';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we eliminate the $y$ terms: $(x+2y) + (x-2y) = 10 + 6$. This simplifies to $2x = 16$. Dividing both sides by 2, we get $x = 8$.

**Step 3 — Select D.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":267,"opensat_domain":"Algebra","opensat_raw_id":"random_id_20","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '924098ca-c06f-4517-8c52-b728eb077f92';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 61% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 61% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 57% and 65%","is_correct":true,"explanation":"**Step 1:** Interval 57% to 65%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 57% to 65%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '929e7b97-2129-4599-bfaf-388e4e610cea';
UPDATE public.questions SET
  question_text = 'In triangle \(ABC\), angle \(A\) is a right angle, \(AB = 5\), and \(AC = 12\). What is the length of \(BC\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"7","is_correct":false,"explanation":"Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle \(ABC\), angle \(A\) is a right angle, \(AB = 5\), and \(AC = 12\). What is the length of \(BC\)?

**Step 2 — Solve.** Triangle \(ABC\) is a right triangle, so we can use the Pythagorean Theorem: \(a^2 + b^2 = c^2\), where \(a\) and \(b\) are the lengths of the legs and \(c\) is the length of the hypotenuse.  In this case, \(AB = 5\) and \(AC = 12\), so \(BC\) is the hypotenuse.  Substituting into the Pythagorean Theorem, we get \(5^2 + 12^2 = BC^2\), or \(169 = BC^2\).  Taking the square root of both sides gives \(BC = 13\).

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (7): Choice A (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":515,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '92bee801-7f4e-474f-a71a-6407a4046090';
COMMIT;
