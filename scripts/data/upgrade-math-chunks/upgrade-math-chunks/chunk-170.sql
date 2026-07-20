BEGIN;
UPDATE public.questions SET
  question_text = 'If the function *f* is defined by *f*(x) = \sqrt{x} + 4, what is the value of *f*(16)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If the function *f* is defined by *f*(x) = \sqrt{x} + 4, what is the value of *f*(16)?

**Step 2 — Solve.** To find *f*(16), we substitute 16 for *x* in the function: *f*(16) = \sqrt{16} + 4.  Since \sqrt{16} = 4, *f*(16) = 4 + 4 = 8.

**Step 3 — Select C.** 12

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":634,"opensat_domain":"Advanced Math","opensat_raw_id":"49e85755","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e6a08a0d-acd9-4bad-a933-bf25b8412d0d';

UPDATE public.questions SET
  question_text = 'If the function $f(x)=x^2 + 3x - 1$ is defined for all real numbers, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x)=x^2 + 3x - 1$ is defined for all real numbers, what is the value of $f(-2)$?

**Step 2 — Solve.** To find the value of f(-2), we substitute -2 for $x$ in the function: $f(-2) = (-2)^2 + 3(-2) - 1 = 4 - 6 - 1 = -3$. Therefore, the value of f(-2) is -3.

**Step 3 — Select A.** -7

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":629,"opensat_domain":"Advanced Math","opensat_raw_id":"2795ab32","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e73ae8e4-202f-449a-848c-f3c6e0c4cf10';

UPDATE public.questions SET
  question_text = 'A survey of 200 students found that 120 students prefer pizza, 80 students prefer tacos, and 50 students prefer both pizza and tacos. How many students prefer only pizza?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":false,"explanation":"Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"70","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 students found that 120 students prefer pizza, 80 students prefer tacos, and 50 students prefer both pizza and tacos. How many students prefer only pizza?

**Step 2 — Solve.** Since 50 students prefer both pizza and tacos, 120 - 50 = 70 students prefer only pizza.

**Step 3 — Select C.** 70

**Distractor analysis:**
- **A** (40): Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":854,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"834f21d4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e73e85a6-24b1-4d43-b1e4-70e43b7dc02e';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"18","is_correct":false,"explanation":"Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"48","is_correct":false,"explanation":"Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles. The side length of each equilateral triangle is equal to the radius of the circle, which is 6. Therefore, the perimeter of the hexagon is 6 times the side length of the equilateral triangle, or 6 * 6 = 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (18): Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (48): Choice D (48…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":257,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7570fe9-7b06-43cf-87f6-3267755117fc';

UPDATE public.questions SET
  question_text = 'If the system of equations $\begin{cases} 2x + 3y = 7 \\ x - 2y = 1 \end{cases}$ has solution $(x, y)$, what is the value of $x - y$ ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the system of equations $\begin{cases} 2x + 3y = 7 \\ x - 2y = 1 \end{cases}$ has solution $(x, y)$, what is the value of $x - y$ ?

**Step 2 — Solve.** To solve for $x - y$, we can multiply the second equation by 2, giving us $2x - 4y = 2$.  Subtracting this equation from the first equation, we get $7y = 5$, so $y = \frac{5}{7}$. Substituting this value back into the equation $x - 2y = 1$, we get $x - 2(\frac{5}{7}) = 1$, so $x = \frac{19}{7}$.  Therefore, $x - y = \frac{19}{7} - \frac{5}{7} = \frac{14}{7} = 2$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"SYS","domain_id":"algebra","opensat_index":721,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e78aa547-6cb5-4936-9b07-adf17a02bb7c';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+44)^2 - (3x-44)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$528x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+44$, $v=3x-44$ → $528x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$176x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+1936$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+44$, $v=3x-44$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(88)=528x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7a66733-b063-4fe1-801e-ba3509e68bb8';

UPDATE public.questions SET
  question_text = 'After $t=32$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+29$.',
  options = '[{"id":"A","text":"$153$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=32$."},{"id":"B","text":"$157$","is_correct":true,"explanation":"**Step 1:** Substitute $t=32$. **Step 2:** $d=4(32)+29=157$."},{"id":"C","text":"$158$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=32$: $d=4(32)+29$.
**Step 2:** Compute: $d=157$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e7d13e17-f74d-4dac-a47c-d5c608cdf69d';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e7d886a1-3523-4f17-9091-71c78423d992';

COMMIT;
