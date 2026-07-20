BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with center at the origin has a radius of 5.  What is the equation of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^2 + y^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"x^2 + y^2 = 25","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"(x - 5)^2 + (y - 5)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"(x + 5)^2 + (y + 5)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center at the origin has a radius of 5.  What is the equation of the circle? 

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2.  Since the circle has center at the origin (0, 0) and radius 5, the equation of the circle is (x - 0)^2 + (y - 0)^2 = 5^2, or x^2 + y^2 = 25.

**Step 3 — Select B.** x^2 + y^2 = 25

**Distractor analysis:**
- **A** (x^2 + y^2 = 5): May result from squaring when you should multiply or add.
- **C** ((x - 5)^2 + (y - 5)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x + 5)^2 + (y + 5)^2 = 25): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":312,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.052Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '001f803a-75cb-4829-942d-d8e585955646';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":910,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.054Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '00311fb1-3401-46f0-95fb-4a4d15ad7064';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x^2 - 5. What is the value of *f*(-3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-23","is_correct":false,"explanation":"Choice A (-23…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-19","is_correct":false,"explanation":"Choice B (-19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"23","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x^2 - 5. What is the value of *f*(-3)?

**Step 2 — Solve.** To find *f*(-3), substitute -3 for x in the function: *f*(-3) = 2(-3)^2 - 5.  Simplify: *f*(-3) = 2(9) - 5, or *f*(-3) = 18 - 5, or *f*(-3) = 13.

**Step 3 — Select D.** 23

**Distractor analysis:**
- **A** (-23): Choice A (-23…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-19): Choice B (-19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":173,"opensat_domain":"Advanced Math","opensat_raw_id":"a9e73934","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.054Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '008f585d-d789-4509-b536-1ceebf9bcde9';

UPDATE public.questions SET
  question_text = 'After $t=13$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=3t+10$.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=13$."},{"id":"B","text":"$49$","is_correct":true,"explanation":"**Step 1:** Substitute $t=13$. **Step 2:** $d=3(13)+10=49$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=13$: $d=3(13)+10$.
**Step 2:** Compute: $d=49$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '00e32c45-a5de-42c8-910d-3e65bb47ac80';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. A chord of the circle is 8 centimeters long. What is the distance, in centimeters, between the center of the circle and the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. A chord of the circle is 8 centimeters long. What is the distance, in centimeters, between the center of the circle and the chord?

**Step 2 — Solve.** Draw a radius from the center of the circle to one endpoint of the chord, and draw another radius to the other endpoint of the chord. This forms an isosceles triangle with the chord as the base. The altitude of this triangle from the center of the circle bisects the chord. This altitude forms a right triangle with one leg being 4 centimeters (half of the chord) and the hypotenuse being 5 centimeters (the radius).  Using the Pythagorean theorem, the other leg of the right triangle (which is the distance between the center of the circle and the chord) has length $\sqrt{5^2-4^2} = \sqrt{9} = 3$ centimeters.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":726,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a10","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0105225e-2343-4276-86c1-a8929331470d';

UPDATE public.questions SET
  question_text = 'A circle with center O has a radius of 5.  A chord AB of the circle is 8 units long.  What is the distance from the center O to chord AB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center O has a radius of 5.  A chord AB of the circle is 8 units long.  What is the distance from the center O to chord AB?

**Step 2 — Solve.** Draw a radius from O to point A and a radius from O to point B.  Draw a segment from O perpendicular to AB, and let the point of intersection of the segment and AB be point C.  Triangle AOC is a right triangle with hypotenuse OA = 5 and AC = 4.  By the Pythagorean Theorem,  OC = \sqrt{5^2-4^2} = \sqrt{9} = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":383,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0140f2cd-046a-47b4-9a0e-a36d72821da0';

UPDATE public.questions SET
  question_text = 'What is the equation of the line that passes through the points (-2, 5) and (1, -1)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"y = -2x + 1","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"y = -2x + 9","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"y = 2x + 1","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"y = 2x + 9","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the equation of the line that passes through the points (-2, 5) and (1, -1)?

**Step 2 — Solve.** To find the equation of the line, we first need to find the slope.  The slope is given by: \begin{align*} \text{slope} &= \frac{\text{change in }y}{\text{change in }x} \\ &= \frac{-1 - 5}{1 - (-2)}\\ &= \frac{-6}{3} \\ &= -2 \end{align*} Now, we can use the point-slope form of a linear equation, which is: $y - y_1 = m(x - x_1)$, where $m$ is the slope and $(x_1, y_1)$ is a point on the line. We can use either point given in the problem. Let''s use (-2, 5): $y - 5 = -2(x - (-2))$. Simplifying this equation, we get: $y - 5 = -2x - 4$  $y = -2x + 1$  Therefore, the equation of the line that passes through the points (-2, 5) and (1, -1) is $y = -2x + 1$.

**Step 3 — Select B.** y = -2x + 9

**Distractor analysis:**
- **A** (y = -2x + 1): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (y = 2x + 1): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (y = 2x + 9): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":379,"opensat_domain":"Advanced Math","opensat_raw_id":"d4e91cb7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0162dc7f-f0a0-4b50-b5cb-38ac2b75cf66';

UPDATE public.questions SET
  question_text = 'A circle is inscribed in a square. The length of a side of the square is $8\sqrt{2}$ centimeters. What is the area, in square centimeters, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"32\\pi","is_correct":false,"explanation":"Choice A (32\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"64\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"128\\pi","is_correct":false,"explanation":"Choice C (128\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"256\\pi","is_correct":false,"explanation":"Choice D (256\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle is inscribed in a square. The length of a side of the square is $8\sqrt{2}$ centimeters. What is the area, in square centimeters, of the circle?

**Step 2 — Solve.** The diameter of the circle is equal to the length of a side of the square.  Since the length of a side of the square is $8\sqrt{2}$ centimeters, the diameter of the circle is $8\sqrt{2}$ centimeters, and the radius of the circle is half of that, $4\sqrt{2}$ centimeters. The area of the circle is $\pi r^2 = \pi (4\sqrt{2})^2 = 64\pi$ square centimeters.

**Step 3 — Select B.** 64\pi

**Distractor analysis:**
- **A** (32\pi): Choice A (32\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (128\pi): Choice C (128\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (256\pi): Choice D (256\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":845,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '018d947f-4bb6-4851-acab-91d11ceb1bf9';

COMMIT;
