BEGIN;
UPDATE public.questions SET
  question_text = 'After $t=44$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+41$.',
  options = '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=44$."},{"id":"B","text":"$217$","is_correct":true,"explanation":"**Step 1:** Substitute $t=44$. **Step 2:** $d=4(44)+41=217$."},{"id":"C","text":"$218$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=44$: $d=4(44)+41$.
**Step 2:** Compute: $d=217$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f5800946-3769-4029-bd07-a0b223ea409e';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 8 centimeters and a width of 5 centimeters. What is the area of the rectangle, in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":false,"explanation":"Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"26","is_correct":false,"explanation":"Choice B (26…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 8 centimeters and a width of 5 centimeters. What is the area of the rectangle, in square centimeters?

**Step 2 — Solve.** The area of a rectangle is equal to its length times its width. Therefore, the area of the rectangle is 8 centimeters x 5 centimeters = 40 square centimeters.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (13): Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (26): Choice B (26…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":167,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f5b34a94-1c10-4365-b4f8-45ee9ea555d4';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area, in square units, of a sector of this circle that has a central angle of 72 degrees?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5 \\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10 \\pi","is_correct":false,"explanation":"Choice B (10 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20 \\pi","is_correct":false,"explanation":"Choice C (20 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50 \\pi","is_correct":false,"explanation":"Choice D (50 \\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area, in square units, of a sector of this circle that has a central angle of 72 degrees?

**Step 2 — Solve.** The area of a sector of a circle is given by the formula $\frac{\theta}{360} \pi r^2$, where $\theta$ is the central angle in degrees and $r$ is the radius. In this case, we have $\theta = 72$ and $r = 5$, so the area of the sector is $\frac{72}{360} \pi (5^2) = \frac{1}{5} \pi (25) = 5\pi$ square units.

**Step 3 — Select A.** 5 \pi

**Distractor analysis:**
- **B** (10 \pi): Choice B (10 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20 \pi): Choice C (20 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50 \pi): Choice D (50 \pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":166,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9462ef8d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f5b61925-396d-4d46-8637-4f40ba41d5c9';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \sqrt{x} - 4$. For what value of $x$ does $f(x) = 9$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":false,"explanation":"Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"81","is_correct":false,"explanation":"Choice B (81…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"169","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"289","is_correct":false,"explanation":"Choice D (289…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \sqrt{x} - 4$. For what value of $x$ does $f(x) = 9$?

**Step 2 — Solve.** To solve for $x$, we set the function equal to 9: $\sqrt{x} - 4 = 9$. Adding 4 to both sides gives us $\sqrt{x} = 13$. Squaring both sides, we get $x = 13^2$, or $x = 169$.

**Step 3 — Select C.** 169

**Distractor analysis:**
- **A** (13): Choice A (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (81): Choice B (81…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (289): Choice D (289…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":388,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f5c42f11-5328-4bbd-a645-c773d9fd0de1';

UPDATE public.questions SET
  question_text = 'If $f(x) = \frac{1}{x+2}$, what is the value of $f(3)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{1}{5}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"1","is_correct":false,"explanation":"Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = \frac{1}{x+2}$, what is the value of $f(3)$?

**Step 2 — Solve.** To find the value of $f(3)$, we substitute 3 for $x$ in the function: $f(3) = \frac{1}{3+2} = \frac{1}{5}$.

**Step 3 — Select C.** $\frac{1}{5}$

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1): Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":716,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f5fc1972-1db5-46f8-85cd-8b9e7ff2a928';

UPDATE public.questions SET
  question_text = 'A line in the xy-plane passes through the points $(2, -3)$ and $(5, 6)$. What is the slope of the line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A line in the xy-plane passes through the points $(2, -3)$ and $(5, 6)$. What is the slope of the line?

**Step 2 — Solve.** The slope of a line passing through two points $(x_1, y_1)$ and $(x_2, y_2)$ can be calculated using the formula: $\frac{y_2 - y_1}{x_2 - x_1}$. Plugging in the given points, we get: $\frac{6 - (-3)}{5 - 2} = \frac{9}{3} = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LEQ","domain_id":"algebra","opensat_index":356,"opensat_domain":"Algebra","opensat_raw_id":"f5c91883","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f63d18bd-0f5d-4513-aed9-89f05aefe9dc';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 6 meters.',
  options = '[{"id":"A","text":"$37.68$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(6)=37.68$."},{"id":"B","text":"$113.04$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$12.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$18.84$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(6)=37.68$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'f67f5fde-75df-40e4-b0a4-9f3578be5bc5';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle, in terms of pi?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5π","is_correct":false,"explanation":"Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10π","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25π","is_correct":false,"explanation":"Choice C (25π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50π","is_correct":false,"explanation":"Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle, in terms of pi?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius. Substituting 5 for r, we get C = 2π(5) = 10π.

**Step 3 — Select B.** 10π

**Distractor analysis:**
- **A** (5π): Choice A (5π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25π): Choice C (25π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50π): Choice D (50π…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":898,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f68c9efb-f8c5-4715-b300-e1254c398edc';

COMMIT;
