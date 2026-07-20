BEGIN;
UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 8 > 263$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 263 grams but at most 276 grams to ship.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Too small: $6(40)+8=248$."},{"id":"B","text":"$41$","is_correct":false,"explanation":"Still below threshold 263."},{"id":"C","text":"$42$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$43$","is_correct":true,"explanation":"**Step 1:** $6x > 255$. **Step 2:** $x > 42.5$. Smallest integer choice: 43."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 255$.
**Step 2:** $x > 42.50$.
**Step 3:** Among choices, $43$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'c3ef5981-e79e-4141-a748-6eacfc1d3b79';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 150°.',
  options = '[{"id":"A","text":"$150°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$30°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-150=30°$."},{"id":"C","text":"$40°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-150°=30°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c42aa453-cdfa-4445-ae14-8791e826644d';

UPDATE public.questions SET
  question_text = 'If the function $f(x) = 2x^2 + 3x - 1$ is graphed in the $xy$-plane, what is the $y$-coordinate of the $y$-intercept of the graph?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = 2x^2 + 3x - 1$ is graphed in the $xy$-plane, what is the $y$-coordinate of the $y$-intercept of the graph?

**Step 2 — Solve.** The y-intercept of a graph is the point where the graph crosses the y-axis. This occurs when $x=0$.  Substituting 0 for $x$ in the function $f(x) = 2x^2 + 3x - 1$, we get $f(0) = 2(0)^2 + 3(0) - 1 = -1$. Therefore, the y-coordinate of the y-intercept is -1.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":263,"opensat_domain":"Advanced Math","opensat_raw_id":"a987f231","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c46590e6-3bf8-4af1-8d7e-8a94d8ba453f';

UPDATE public.questions SET
  question_text = 'If $y=2x-1$ and $x=3$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $y=2x-1$ and $x=3$, what is the value of $y$?

**Step 2 — Solve.** Substituting 3 for $x$ in the equation $y=2x-1$ gives us $y = 2(3) - 1$, or $y=6-1$, which simplifies to $y=5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":512,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c476ecc9-e0ba-48c3-a456-a713fa7761ae';

UPDATE public.questions SET
  question_text = 'The function *g* is defined by *g*(x) = 10x + 8. What is the value of *g*(x) when x = 8?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"88","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *g* is defined by *g*(x) = 10x + 8. What is the value of *g*(x) when x = 8?

**Step 2 — Solve.** To find the value of *g*(x) when x = 8, we substitute 8 for x in the given equation *g*(x) = 10x + 8. This yields *g*(8) = 10(8) + 8, or *g*(8) = 88. Therefore, when x = 8, the value of *g*(x) is 88.

**Step 3 — Select D.** 88

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":666,"opensat_domain":"Algebra","opensat_raw_id":"173a5c22","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c47c206d-7798-4238-8e0b-de23795cc5aa';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6.  What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6.  What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side of each equilateral triangle is equal to the radius of the circle, so the perimeter of the hexagon is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":153,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c4806e8f-bc7f-4e25-97d7-bd4bbb7649d8';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people prefer brand A and 40 people prefer brand B. What percentage of the people surveyed prefer brand A?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40%","is_correct":false,"explanation":"Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"80%","is_correct":false,"explanation":"Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100%","is_correct":false,"explanation":"Choice D (100%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people prefer brand A and 40 people prefer brand B. What percentage of the people surveyed prefer brand A?

**Step 2 — Solve.** The percentage of people who prefer brand A can be found by dividing the number of people who prefer brand A by the total number of people surveyed and multiplying by 100%.  This gives (60/100) * 100% = 60%.

**Step 3 — Select B.** 60%

**Distractor analysis:**
- **A** (40%): Choice A (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80%): Choice C (80%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100%): Choice D (100%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":819,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c4bd62f2-9697-4395-976f-cad9c711f27c';

UPDATE public.questions SET
  question_text = 'A square has a side length of 8. What is the length of the diagonal of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"8\\sqrt{2}","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8\\sqrt{3}","is_correct":false,"explanation":"Choice C (8\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 8. What is the length of the diagonal of the square?

**Step 2 — Solve.** The diagonal of a square divides the square into two 45-45-90 right triangles.  The ratio of the length of the hypotenuse to the length of a leg in a 45-45-90 right triangle is $\sqrt{2}$:1.  Since the side length of the square is 8, the length of the diagonal is $8\sqrt{2}$.

**Step 3 — Select A.** 8\sqrt{2}

**Distractor analysis:**
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8\sqrt{3}): Choice C (8\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":807,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c5467bf8-b1c0-47f1-aee6-0ab9d4020f31';

COMMIT;
