BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** A chord of a circle is a line segment whose endpoints lie on the circle.  The distance from the center of the circle to a chord is the length of the perpendicular segment from the center to the chord. This perpendicular segment bisects the chord. Thus, we have a right triangle with legs of length 4 and a hypotenuse of length 5. Using the Pythagorean Theorem, we can find the length of the third side:  4^2 + x^2 = 5^2. Solving for x, we get x = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":487,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"4793902d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '57824f60-401e-450c-91be-6d0d3c0e8109';

UPDATE public.questions SET
  question_text = 'In the $xy$-plane, line $k$ passes through the points $(2,-1)$ and $(4,3)$. What is the slope of line $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In the $xy$-plane, line $k$ passes through the points $(2,-1)$ and $(4,3)$. What is the slope of line $k$?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ can be calculated using the formula: $m = \frac{y_2 - y_1}{x_2 - x_1}$.  Substituting the points (2, -1) and (4, 3) into the formula, we get: $m = \frac{3 - (-1)}{4 - 2} = \frac{4}{2} = 2$. Therefore, the slope of line $k$ is 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":992,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"1453c4d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '57dbc0f7-beb9-4ff9-b397-ba31a1301780';

UPDATE public.questions SET
  question_text = 'A circle with center $O$ has radius 10.  Points $A$ and $B$ lie on the circle, and the measure of central angle $AOB$ is 120 degrees.  What is the area of sector $AOB$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{100\\pi}{3}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{50\\pi}{3}$","is_correct":false,"explanation":"Choice B ($\\frac{50\\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$100\\pi$","is_correct":false,"explanation":"Choice C ($100\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$50\\pi$","is_correct":false,"explanation":"Choice D ($50\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with center $O$ has radius 10.  Points $A$ and $B$ lie on the circle, and the measure of central angle $AOB$ is 120 degrees.  What is the area of sector $AOB$?

**Step 2 — Solve.** The area of a sector of a circle is given by the formula  $\frac{\theta}{360} \pi r^2$, where $\theta$ is the measure of the central angle in degrees and r is the radius of the circle. In this case, $\theta = 120$ and $r = 10$, so the area of sector $AOB$ is $\frac{120}{360} \pi (10)^2 = \frac{100\pi}{3}$.

**Step 3 — Select A.** $\frac{100\pi}{3}$

**Distractor analysis:**
- **B** ($\frac{50\pi}{3}$): Choice B ($\frac{50\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($100\pi$): Choice C ($100\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($50\pi$): Choice D ($50\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":942,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '580b0fec-28f6-4b99-a848-bf53574202fb';

UPDATE public.questions SET
  question_text = 'What is the value of $x$ in the equation $2^{x+1} = 8$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the value of $x$ in the equation $2^{x+1} = 8$?

**Step 2 — Solve.** Since 8 is equal to 2 cubed (2 x 2 x 2 = 8), we can rewrite the equation as  2^(x + 1) = 2^3.  Since the bases are the same, the exponents must be equal:  x + 1 = 3.  Subtracting 1 from both sides gives x = 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":669,"opensat_domain":"Advanced Math","opensat_raw_id":"a8e9d4f2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '58153ee3-e208-47de-a6f5-9c6fd34b6e5e';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 69% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 69% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 65% and 73%","is_correct":true,"explanation":"**Step 1:** Interval 65% to 73%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 65% to 73%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5868a85e-7309-4b5a-a289-a7d4beb5b91f';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 118°.',
  options = '[{"id":"A","text":"$118°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$62°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-118=62°$."},{"id":"C","text":"$72°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-118°=62°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '589569eb-4ddc-4ba2-8c17-a8d9d46d699f';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** The sum of the solutions to a quadratic equation in the form $ax^2 + bx + c = 0$ is given by $-b/a$.  In this case, the sum of the solutions is $-2/1 = -2$.  Therefore, the sum of the solutions to the equation $x^2 + 2x - 15 = 0$ is -2.

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":467,"opensat_domain":"Advanced Math","opensat_raw_id":"8a4e419b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '58afbaf8-a163-40e6-8382-0d0968bcd74d';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r, we get C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":643,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '58b8a915-9e51-49a9-9eff-01c3edc7a54c';

COMMIT;
