BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area, in square units, of a sector of this circle that has a central angle of 72 degrees?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20\\pi","is_correct":false,"explanation":"Choice C (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area, in square units, of a sector of this circle that has a central angle of 72 degrees?

**Step 2 — Solve.** The area of a sector of a circle is given by (1/2) * r^2 * theta, where r is the radius and theta is the central angle in radians. We are given that the radius is 5 and the central angle is 72 degrees, which is equivalent to 72 * (\pi / 180) = 2\pi/5 radians.  Therefore, the area of the sector is (1/2) * 5^2 * (2\pi/5) = 5\pi square units.

**Step 3 — Select A.** 5\pi

**Distractor analysis:**
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20\pi): Choice C (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":40,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"627f145a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '361a843d-1949-4617-9e80-ee15b3d40bf3';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square cm?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"60","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"26","is_correct":false,"explanation":"Choice D (26…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square cm?

**Step 2 — Solve.** The area of a rectangle is given by the formula *length* × *width*. So, in this case, the area is 12 cm × 5 cm = 60 square cm.

**Step 3 — Select A.** 60

**Distractor analysis:**
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (26): Choice D (26…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":472,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"927383ac","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '36601de1-0e15-48a7-af9d-770c9c9bb3e8';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(5)=31.40$."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$10.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(5)=31.40$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '36745e58-c341-4025-a1df-2234e18ddbe6';

UPDATE public.questions SET
  question_text = 'After $t=24$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+21$.',
  options = '[{"id":"A","text":"$136$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=24$."},{"id":"B","text":"$141$","is_correct":true,"explanation":"**Step 1:** Substitute $t=24$. **Step 2:** $d=5(24)+21=141$."},{"id":"C","text":"$142$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$26$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=24$: $d=5(24)+21$.
**Step 2:** Compute: $d=141$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '36896add-dd19-40bc-be68-cee2324c3de1';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 8 > 263$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 263 grams but at most 276 grams to ship.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $6(40)+8=248$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Still below threshold 263."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$43$","is_correct":true,"explanation":"**Step 1:** $6x > 255$. **Step 2:** $x > 42.5$. Smallest integer choice: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 255$.
**Step 2:** $x > 42.50$.
**Step 3:** Among choices, $43$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '369475b0-9584-4956-a373-1b0d0cb99b1e';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+9)^2 - (4x-9)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$144x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+9$, $v=4x-9$ → $144x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$36x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+81$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+9$, $v=4x-9$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(18)=144x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '369d7d44-40c7-4931-9e99-98d1edb7dd27';

UPDATE public.questions SET
  question_text = 'If $x^{2} + y^{2} = 25$ and $x - y = 3$, what is the value of $x^{2} - y^{2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"75","is_correct":false,"explanation":"Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^{2} + y^{2} = 25$ and $x - y = 3$, what is the value of $x^{2} - y^{2}$?

**Step 2 — Solve.** We can factor $x^{2} - y^{2}$ as $(x + y)(x - y)$.  Since we''re given that $x - y = 3$, we need to find the value of $x + y$. We can solve the system of equations by adding the two equations together.  $x^{2} + y^{2} + (x - y) = 25 + 3$, which simplifies to $x^{2} + x + y^{2} - y = 28$.  Since $x^{2} + y^{2} = 25$, we can substitute that value into the equation.  $25 + x - y = 28$.  Since $x - y = 3$, we can substitute that value into the equation.  $25 + 3 = 28$.  Therefore, $x^{2} - y^{2} = (x + y)(x - y) = (28)(3) = 84$.  Since 84 is not a choice, we need to look for an equivalent expression.  We can factor out a 3 from 84:  $84 = 3(28) = 3(10 + 18) = 30 + 54$.  Therefore, the value of $x^{2} - y^{2}$ is equivalent to $30 + 54$ or $30$.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (75): Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":270,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '36a243f3-77be-4ef3-879c-d175454cf0b0';

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

COMMIT;
