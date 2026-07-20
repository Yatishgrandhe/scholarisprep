BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with center (2, 1) and radius 5 intersects the x-axis at two points. What is the distance, in units, between these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, 1) and radius 5 intersects the x-axis at two points. What is the distance, in units, between these two points?

**Step 2 — Solve.** The distance between the two points where the circle intersects the x-axis is equal to the length of the horizontal diameter of the circle.  Since the radius of the circle is 5, the diameter is 2(5) = 10 units.  Therefore, the distance between the two points is 10 units.

**Step 3 — Select C.** 10

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":809,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"849804c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6c64dd53-4397-412b-9465-7699481c21ad';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle in terms of pi?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle in terms of pi?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r, we get C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":808,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6cc5fb65-da9e-4c6f-871c-cc8c6faab427';
UPDATE public.questions SET
  question_text = 'If $x+5 = 10$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"15","is_correct":false,"explanation":"Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50","is_correct":false,"explanation":"Choice D (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x+5 = 10$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we subtract 5 from both sides of the equation:  $x + 5 - 5 = 10 - 5$.  This gives us $x = 5$.

**Step 3 — Select A.** 5

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (15): Choice C (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50): Choice D (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":948,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6cf3ea86-2435-4338-9b0f-613debb35a0e';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of $10\pi$ units. What is the area of the circle, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $10\pi$ units. What is the area of the circle, in square units?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. We''re given that the circumference is $10\pi$, so we can solve for the radius: \begin{align*} 10\pi &= 2\pi r \\ 5 &= r  \end{align*} The area of a circle is given by the formula $A = \pi r^2$. Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":59,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6d133cea-1f64-428e-90cd-27e6f84ba911';
UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer to watch movies at home or at the theater. 60 people said they prefer to watch movies at home, and 40 people said they prefer to watch movies at the theater.  What percentage of the people surveyed prefer to watch movies at the theater?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20%","is_correct":false,"explanation":"Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60%","is_correct":false,"explanation":"Choice C (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80%","is_correct":false,"explanation":"Choice D (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer to watch movies at home or at the theater. 60 people said they prefer to watch movies at home, and 40 people said they prefer to watch movies at the theater.  What percentage of the people surveyed prefer to watch movies at the theater?

**Step 2 — Solve.** The percentage of people who prefer to watch movies at the theater is the number of people who prefer to watch movies at the theater divided by the total number of people surveyed, multiplied by 100%. This gives us  (40/100) * 100% = 40%.

**Step 3 — Select B.** 40%

**Distractor analysis:**
- **A** (20%): Choice A (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60%): Choice C (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80%): Choice D (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":646,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6d2d6a67-3180-4adc-b0eb-aca8290b59de';
UPDATE public.questions SET
  question_text = 'The graph of the equation $y = x^2 - 6x + 5$ is a parabola. What are the coordinates of the vertex of this parabola?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(-3, -4)","is_correct":false,"explanation":"Choice A ((-3, -4)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(3, -4)","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(3, 4)","is_correct":false,"explanation":"Choice C ((3, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(-3, 4)","is_correct":false,"explanation":"Choice D ((-3, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = x^2 - 6x + 5$ is a parabola. What are the coordinates of the vertex of this parabola?

**Step 2 — Solve.** The x-coordinate of the vertex of the parabola is given by $-b/(2a)$, where a and b are the coefficients of the quadratic equation. In this case, $a = 1$ and $b = -6$, so the x-coordinate of the vertex is  6/(2*1) = 3. To find the y-coordinate of the vertex, we substitute x = 3 into the equation: $y = (3)^2 - 6(3) + 5 = 9 - 18 + 5 = -4$. Therefore, the vertex of the parabola is (3, -4).

**Step 3 — Select B.** (3, -4)

**Distractor analysis:**
- **A** ((-3, -4)): Choice A ((-3, -4)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((3, 4)): Choice C ((3, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((-3, 4)): Choice D ((-3, 4)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":18,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6d523c8a-6ac1-455d-bb23-12458457dabc';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 42 ft from the wall and the top is 49 ft high.',
  options = '[{"id":"A","text":"$63$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$91$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$64$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$65$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{42^2+49^2}=65$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 42 and 49.
**Step 2:** $c=\sqrt{42^2+49^2}=65$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6d8c362e-6b7d-4d86-adc2-34a3bfded08f';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(30)=26$ and $f(35)=46$, what is $f(-32)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-218$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-32$)."},{"id":"C","text":"$-225$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-222$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-32)=4(-32-30)+(26)=-222$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{46-26}{35-30}=4$.
**Step 2:** Point-slope: $f(-32)=4(-32-30)+(26)$.
**Step 3:** $f(-32)=-222$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6d923da3-0126-49c9-b0ff-771b1f3a355b';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(9)=5$ and $f(14)=25$, what is $f(-11)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-71$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-11$)."},{"id":"C","text":"$-78$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-75$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-11)=4(-11-9)+(5)=-75$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{25-5}{14-9}=4$.
**Step 2:** Point-slope: $f(-11)=4(-11-9)+(5)$.
**Step 3:** $f(-11)=-75$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6d931c43-5da9-4f84-8933-2293aa04ea64';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  What is the circumference of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  What is the circumference of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. In this case, $r = 5$, so the circumference is $C = 2\pi (5) = 10\pi$.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":863,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6de2538f-1065-453b-a8a5-6a442f2687aa';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+28)^2 - (2x-28)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$224x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+28$, $v=2x-28$ → $224x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$112x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+784$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+28$, $v=2x-28$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(56)=224x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6e1576dd-9647-463c-b117-be4781fad28e';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(20)=16$ and $f(25)=36$, what is $f(-22)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-148$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-22$)."},{"id":"C","text":"$-155$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-152$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-22)=4(-22-20)+(16)=-152$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{36-16}{25-20}=4$.
**Step 2:** Point-slope: $f(-22)=4(-22-20)+(16)$.
**Step 3:** $f(-22)=-152$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6e25d053-224a-4fc1-8a92-7056c34fcbe3';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 67% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 67% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 63% and 71%","is_correct":true,"explanation":"**Step 1:** Interval 63% to 71%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 63% to 71%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6e2b95a0-4e7d-472e-8ea4-364d5fa788b5';
UPDATE public.questions SET
  question_text = 'In a right triangle, the length of the hypotenuse is 10 and the length of one leg is 6. What is the length of the other leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{64}$","is_correct":false,"explanation":"Choice C ($\\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{136}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, the length of the hypotenuse is 10 and the length of one leg is 6. What is the length of the other leg?

**Step 2 — Solve.** We can use the Pythagorean theorem to solve for the missing leg. The Pythagorean theorem states that in a right triangle, the square of the hypotenuse (the longest side) is equal to the sum of the squares of the other two sides.  Let $x$ be the length of the missing leg.  We have the equation: $10^2 = 6^2 + x^2$.  Simplifying, we get $100 = 36 + x^2$.  Subtracting 36 from both sides, we get $64 = x^2$.  Taking the square root of both sides, we get $x = \sqrt{64}$ or $x = -\sqrt{64}$.  Since a length cannot be negative, the length of the other leg is $x = \sqrt{64}$.

**Step 3 — Select D.** $\sqrt{136}$

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{64}$): Choice C ($\sqrt{64}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":973,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6e7a4190-6f45-4096-9589-4e13de8d4354';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(44,131)$ and $(50,149)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{149-131}{50-44}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$149$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6ecee29e-0cc3-4b00-a93e-28596c38d4d8';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 6. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{20}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\sqrt{28}$","is_correct":false,"explanation":"Choice D ($\\sqrt{28}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 6. A chord of the circle is 8 units long. What is the distance from the center of the circle to the chord? 

**Step 2 — Solve.** Draw a radius from the center of the circle to each endpoint of the chord. This creates an isosceles triangle with the chord as the base. Draw a perpendicular segment from the center of the circle to the chord, bisecting the chord. This forms a right triangle with legs of length 4 and hypotenuse of length 6. Use the Pythagorean theorem to find the length of the other leg, the distance from the center of the circle to the chord: $4^2 + x^2 = 6^2$, so $x = \sqrt{20}$.

**Step 3 — Select C.** $\sqrt{20}$

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\sqrt{28}$): Choice D ($\sqrt{28}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":160,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"67d896a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6ee74764-0142-4e0f-8952-c269c8064c33';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 230 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6efb450a-b9e8-4e11-8350-cb061e4f67c9';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 36 ft from the wall and the top is 43 ft high.',
  options = '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$79$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{36^2+43^2}=56$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 36 and 43.
**Step 2:** $c=\sqrt{36^2+43^2}=56$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6efcb2d4-4dcf-4092-adb2-089040bf0eb4';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 41 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{47}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{46}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{47}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{46}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 46 total. **Step 2:** P $=\\frac{5}{46}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 46.
**Step 2:** Conditional probability $=\frac{5}{46}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6f1bf245-2786-417b-ba6b-6a568e78110c';
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 44 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{50}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{49}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{50}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{49}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 49 total. **Step 2:** P $=\\frac{5}{49}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 49.
**Step 2:** Conditional probability $=\frac{5}{49}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6f46e5c1-e5fd-4bdb-9b38-c33992782ffc';
UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(5,14)$ and $(11,32)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{32-14}{11-5}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$32$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6f8df9e3-03c7-456c-9651-2667a01fb901';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 17$ and $x - y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 17$ and $x - y = 2$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination.  Multiplying the second equation by 3, we get $3x - 3y = 6$.  Adding this equation to the first equation, we get $5x = 23$.  Dividing both sides by 5, we get $x = \frac{23}{5}$, or 4.6. Since the question asks for the value of $x$, we round 4.6 to the nearest whole number, which is 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":701,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6f9c9330-493b-4650-878e-70242d05b55e';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 3x^2 - 5$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5","is_correct":false,"explanation":"Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 3x^2 - 5$. What is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the function: $f(2) = 3(2)^2 - 5 = 3(4) - 5 = 12 - 5 = 7$. Therefore, $f(2) = 7$.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-5): Choice B (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":745,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6fd709c2-11a7-4fa9-8410-e6fad7b3142a';
UPDATE public.questions SET
  question_text = 'In the $xy$-plane, a circle with center $(2,-3)$ is tangent to the line $y = 5$. What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, a circle with center $(2,-3)$ is tangent to the line $y = 5$. What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the perpendicular distance from the center of the circle to the tangent line.  Since the center of the circle is $(2,-3)$ and the tangent line is $y=5$, the radius is the difference between the y-coordinate of the center and the y-coordinate of the line, which is $5 - (-3) = 8$.  Therefore, the radius of the circle is 8.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":389,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"8976e141","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '70203653-eb13-4b2c-82f0-8f4ca9953a6c';
UPDATE public.questions SET
  question_text = 'If $x^{2} - 2x - 15 = 0$, what are the values of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3 and 5","is_correct":false,"explanation":"Choice A (-3 and 5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-5 and 3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3 and -5","is_correct":false,"explanation":"Choice C (3 and -5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5 and -3","is_correct":false,"explanation":"Choice D (5 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^{2} - 2x - 15 = 0$, what are the values of $x$?

**Step 2 — Solve.** The equation $x^{2} - 2x - 15 = 0$ can be factored as $(x - 5)(x + 3) = 0$.  Setting each factor equal to zero, we get $x - 5 = 0$ or $x + 3 = 0$.  Solving for $x$, we find that $x = 5$ or $x = -3$.

**Step 3 — Select B.** -5 and 3

**Distractor analysis:**
- **A** (-3 and 5): Choice A (-3 and 5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3 and -5): Choice C (3 and -5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5 and -3): Choice D (5 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":939,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '70257203-c416-4517-bcd9-2c8aceba379c';
UPDATE public.questions SET
  question_text = 'The function $f(x) = x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(2)$?

**Step 2 — Solve.** To find $f(2)$, we substitute 2 for $x$ in the function: $f(2) = 2^2 - 3(2) + 1 = 4 - 6 + 1 = -2 + 1 = 1$.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":499,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '7038bcee-8ad5-478d-8aa9-f159215ff6c2';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 185 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '70582b13-07ea-4053-93b3-a18ca3735c21';
UPDATE public.questions SET
  question_text = 'If $x^2 - 16 = 0$, what are the possible values of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-4 and 4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"-8 and 8","is_correct":false,"explanation":"Choice D (-8 and 8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 16 = 0$, what are the possible values of $x$?

**Step 2 — Solve.** The equation is a difference of squares. We can factor it as (x + 4)(x - 4) = 0.  For the product of two factors to equal zero, at least one of the factors must equal zero. Therefore, either x + 4 = 0 or x - 4 = 0. Solving for x in each equation gives us x = -4 or x = 4.

**Step 3 — Select C.** -4 and 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-8 and 8): Choice D (-8 and 8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1013,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '70a16337-ccc4-4686-b4fa-41723bb8b6ec';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(5)=31.40$."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$10.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(5)=31.40$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '70b31b0f-d75c-42fb-9471-0c550d929b37';
UPDATE public.questions SET
  question_text = 'If $3x - 5 = 10$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x - 5 = 10$, what is the value of $x$?

**Step 2 — Solve.** Adding 5 to both sides of the equation gives us  $3x = 15$. Dividing both sides by 3, we find that $x = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":341,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '70ed7eda-6626-4b16-ae65-6de622f2b289';

UPDATE public.questions SET
  question_text = 'Given $x+y=58$ and $2x-y=38$, what is $x$?',
  stimulus_text = 'At a fundraiser, 58 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 32 VIP and 26 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$32$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=96$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=58+38$ → $3x=96$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=26$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7156ce00-6441-4147-9f02-42db1324da0f';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 180 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '715faed4-8406-445d-97e2-48ab2e6b8fcc';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-7","is_correct":false,"explanation":"Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the given equation yields $f(-2) = 3(-2)^2 - 2(-2) + 1$. This simplifies to $f(-2) = 3(4) + 4 + 1$, or $f(-2) = 12 + 4 + 1$, or $f(-2) = 19$.

**Step 3 — Select D.** 19

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-7): Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":688,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '71fd3538-6be5-4cf7-8064-4912ef8eb3a6';
UPDATE public.questions SET
  question_text = 'After $t=41$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+38$.',
  options = '[{"id":"A","text":"$198$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=41$."},{"id":"B","text":"$202$","is_correct":true,"explanation":"**Step 1:** Substitute $t=41$. **Step 2:** $d=4(41)+38=202$."},{"id":"C","text":"$203$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=41$: $d=4(41)+38$.
**Step 2:** Compute: $d=202$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '72141420-0a02-44ab-93e3-ebc027fee55a';
UPDATE public.questions SET
  question_text = 'If the function $f(x) = x^2 - 3x + 2$ is graphed in the $xy$-plane, what is the $y$-intercept of the graph?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-1","is_correct":false,"explanation":"Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1","is_correct":false,"explanation":"Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = x^2 - 3x + 2$ is graphed in the $xy$-plane, what is the $y$-intercept of the graph?

**Step 2 — Solve.** The y-intercept of a graph occurs when $x = 0$. So, to find the y-intercept, we substitute 0 for $x$ in the function: $f(0) = 0^2 - 3(0) + 2 = 2$. Therefore, the y-intercept of the graph is (0, 2).

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-1): Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1): Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":346,"opensat_domain":"Advanced Math","opensat_raw_id":"f123a45f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '726c9ac6-1677-4b93-abec-f2177df737c0';
COMMIT;
