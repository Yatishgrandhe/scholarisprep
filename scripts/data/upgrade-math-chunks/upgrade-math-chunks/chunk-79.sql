BEGIN;
UPDATE public.questions SET
  question_text = 'If the original price is $340$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 20%.',
  options = '[{"id":"A","text":"$354$","is_correct":true,"explanation":"**Step 1:** $340×1.3=442$. **Step 2:** $442×0.8=354$."},{"id":"B","text":"$340$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$442$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$364$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $340×(1+30/100)=442$.
**Step 2:** Discount: $442×(1-20/100)=354$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '6bdb9969-52f1-4d7c-b851-a8224ea6cf19';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined as f(x) = 2x^2 + 5. What is the value of f(3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"21","is_correct":false,"explanation":"Choice B (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"26","is_correct":false,"explanation":"Choice C (26…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"41","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as f(x) = 2x^2 + 5. What is the value of f(3)?

**Step 2 — Solve.** To find f(3), we substitute x = 3 into the function.  This gives us f(3) = 2(3)^2 + 5 = 2(9) + 5 = 18 + 5 = 23.

**Step 3 — Select D.** 41

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (21): Choice B (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (26): Choice C (26…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":771,"opensat_domain":"Advanced Math","opensat_raw_id":"90853d62","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6be2daf6-63df-416c-9623-bbd4ee148f0f';

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

COMMIT;
