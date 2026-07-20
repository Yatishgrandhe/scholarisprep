BEGIN;
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

COMMIT;
