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

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem: [Venn Diagram] The 20 people who like both apples and oranges are in the overlap of the two circles.  Since 60 people like apples, and 20 of those like oranges, 60 - 20 = 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":475,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '018fd0c1-1a41-4234-86c0-5977d3ae6593';
UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 inches and a width of 5 inches. What is the area, in square inches, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 inches and a width of 5 inches. What is the area, in square inches, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width. So, the area is 12 inches * 5 inches = 60 square inches.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":480,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '01b38ff4-2584-44a7-adde-ef00a8389757';
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 182°.',
  options = '[{"id":"A","text":"$182°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$-2°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-182=-2°$."},{"id":"C","text":"$8°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-182°=-2°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '01b6f3f5-9c16-4adf-93f1-cbbda0f5c5e5';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5 gives us $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":427,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '01c1c54b-a970-4001-9408-d60934a95c92';
UPDATE public.questions SET
  question_text = 'A circle in the $xy$-plane has center $(1,2)$ and radius 3.  Which of the following is an equation of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 1)^2 + (y + 2)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x - 1)^2 + (y - 2)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 1)^2 + (y - 2)^2 = 9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 1)^2 + (y + 2)^2 = 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle in the $xy$-plane has center $(1,2)$ and radius 3.  Which of the following is an equation of the circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center $(h,k)$ and radius $r$ is $(x - h)^2 + (y - k)^2 = r^2$.  Substituting the given values, we get $(x - 1)^2 + (y - 2)^2 = 3^2$, or $(x - 1)^2 + (y - 2)^2 = 9$.

**Step 3 — Select C.** (x - 1)^2 + (y - 2)^2 = 9

**Distractor analysis:**
- **A** ((x + 1)^2 + (y + 2)^2 = 3): May result from squaring when you should multiply or add.
- **B** ((x - 1)^2 + (y - 2)^2 = 3): May result from squaring when you should multiply or add.
- **D** ((x + 1)^2 + (y + 2)^2 = 9): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":77,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '02154eb1-882d-4ae3-88c8-9c1af8f0c36c';
UPDATE public.questions SET
  question_text = 'A group of friends went to a restaurant. The bill was $\$100.00. They decided to split the bill evenly among themselves. If each person paid $\$20.00, how many people were in the group?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends went to a restaurant. The bill was $\$100.00. They decided to split the bill evenly among themselves. If each person paid $\$20.00, how many people were in the group?

**Step 2 — Solve.** To find the number of people in the group, we divide the total bill by the amount each person paid: $\$100.00 / $\$20.00 = 5 people.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":436,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '023b4cc0-8d70-4eeb-92b7-007d382d7061';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$636x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+53$, $v=3x-53$ → $636x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$212x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2809$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+53$, $v=3x-53$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(106)=636x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '02cbab1e-2239-4767-9e23-c660623de569';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 52, 56, 60, 64, and one score $x$ is missing. The mean is 56.4.',
  options = '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"**Step 1:** Sum needed $=56.4×5=282$. **Step 2:** $x=282-232=50$."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$56$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=56.4×5=282$.
**Step 2:** $x=282-232=50$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03315d96-8584-410b-b9cd-53b8d9bbf603';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 166°.',
  options = '[{"id":"A","text":"$166°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$14°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-166=14°$."},{"id":"C","text":"$24°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-166°=14°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '033c19e6-a1e1-49cb-aad9-e3f811a6e484';
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":589,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b24","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03457b63-ffff-46cd-96c4-97a8f839f393';
UPDATE public.questions SET
  question_text = 'A survey asked 100 people if they liked apples, oranges, or both. The results showed that 60 people liked apples, 50 people liked oranges, and 20 people liked both.  How many people liked apples but not oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people if they liked apples, oranges, or both. The results showed that 60 people liked apples, 50 people liked oranges, and 20 people liked both.  How many people liked apples but not oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem: [Venn diagram with two overlapping circles, one for apples and one for oranges.  The intersection of the circles is labeled 20. The apple circle is labeled 60, and the orange circle is labeled 50. The rest of the apple circle is labeled 40, and the rest of the orange circle is labeled 30.]  Since 20 people liked both, 60 - 20 = 40 people liked apples but not oranges.

**Step 3 — Select C.** 40

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":139,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"4353498f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03764c9d-6d23-4fca-a102-f365836d7529';
UPDATE public.questions SET
  question_text = 'A circle with center $O$ has a radius of 5.  Point $A$ lies on the circle, and the measure of angle $AOB$ is 60 degrees.  What is the length of chord $AB$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5\\sqrt{3}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice D (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center $O$ has a radius of 5.  Point $A$ lies on the circle, and the measure of angle $AOB$ is 60 degrees.  What is the length of chord $AB$?

**Step 2 — Solve.** Angle $AOB$ is a central angle of the circle, so triangle $AOB$ is an equilateral triangle.  Therefore, chord $AB$ has the same length as the radius of the circle, 5.  The height of triangle $AOB$ is  $5\sqrt{3}$, and this is also the length of the altitude from point $O$ to chord $AB$, which divides chord $AB$ into two congruent segments.  Since the altitude bisects chord $AB$, the length of chord $AB$ is $2(5\sqrt{3}) = 5\sqrt{3}$.

**Step 3 — Select C.** 5\sqrt{3}

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{3}): Choice D (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":793,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"83a1729c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03820c58-9429-42f5-91fe-79351fcb50e6';
UPDATE public.questions SET
  question_text = 'A circle has a diameter of 10.  What is the area of the circle, in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":false,"explanation":"Choice B (10$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25$\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100$\\pi$","is_correct":false,"explanation":"Choice D (100$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a diameter of 10.  What is the area of the circle, in terms of $\pi$?

**Step 2 — Solve.** The radius of a circle is half its diameter.  So, the radius of this circle is 5.  The area of a circle is $\pi r^2$, so the area of this circle is $\pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10$\pi$): Choice B (10$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100$\pi$): Choice D (100$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":737,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '03903c52-942a-42db-8466-d94b219d28cc';
UPDATE public.questions SET
  question_text = 'After $t=44$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+41$.',
  options = '[{"id":"A","text":"$213$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=44$."},{"id":"B","text":"$217$","is_correct":true,"explanation":"**Step 1:** Substitute $t=44$. **Step 2:** $d=4(44)+41=217$."},{"id":"C","text":"$218$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=44$: $d=4(44)+41$.
**Step 2:** Compute: $d=217$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03cac40a-5034-411a-8054-6907e7910fe0';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 63% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 63% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 59% and 67%","is_correct":true,"explanation":"**Step 1:** Interval 59% to 67%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 59% to 67%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0412978e-aaf0-42be-9736-bbd67ce32ae0';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get  $2x = 16$. Dividing both sides of this equation by 2, we get $x = 8$.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":50,"opensat_domain":"Algebra","opensat_raw_id":"9479c17e","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '04169b99-36d3-4c87-954e-5f1ae8349d44';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 8 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"96","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"192","is_correct":false,"explanation":"Choice D (192…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 8 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying its length and width.  Therefore, the area of this rectangle is 12 cm * 8 cm = 96 square centimeters.

**Step 3 — Select C.** 96

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (192): Choice D (192…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":146,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '048a4aa8-2008-4bc6-a81b-a7081dd0b885';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use the elimination method.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$, which means $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":456,"opensat_domain":"Algebra","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '04b7d39f-28c3-42c7-99bf-a72133005fb6';
UPDATE public.questions SET
  question_text = 'A survey of 100 students found that 60 students liked apples, 40 students liked bananas, and 10 students liked both apples and bananas. How many students liked only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students found that 60 students liked apples, 40 students liked bananas, and 10 students liked both apples and bananas. How many students liked only apples?

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem.  Since 10 students liked both apples and bananas, 60 - 10 = 50 students liked only apples.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":422,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '04dafa33-1d18-4567-805a-6c6f6f6243e3';
UPDATE public.questions SET
  question_text = 'What is the value of  $\frac{x^2 + 2x + 1}{x^2 - 1}$ when $x=3$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the value of  $\frac{x^2 + 2x + 1}{x^2 - 1}$ when $x=3$?

**Step 2 — Solve.** We can simplify the expression first by factoring the numerator and denominator:  $\frac{x^2 + 2x + 1}{x^2 - 1} = \frac{(x+1)(x+1)}{(x+1)(x-1)}$.  Since $x=3$, we can substitute to get $\frac{(3+1)(3+1)}{(3+1)(3-1)} = \frac{(4)(4)}{(4)(2)} = \frac{16}{8} = 2$.

**Step 3 — Select A.** 2

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":103,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '05080631-f434-4bbb-9c5f-360817c795b7';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\) for $x \neq 2$. What is the value of \(f(3)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{x^2 - 4}{x - 2}\) for $x \neq 2$. What is the value of \(f(3)\)?

**Step 2 — Solve.** To find \(f(3)\), we substitute 3 for *x* in the function: \(f(3) = \frac{3^2 - 4}{3 - 2}\) = \(\frac{9 - 4}{1}\) = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":448,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0513703d-777d-4eb2-9c90-e65bf95e0c69';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 45 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":false,"explanation":"Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 45 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn diagram to solve this.  Let the number of people who like only apples be represented by x.  
[asy] 
label("Apples",(1.5,1.5));
label("Oranges",(2.5,1.5));
label("x",(1,1));
label("20",(2,1));
label("25",(3,1));
draw(Circle((1,1),1));
draw(Circle((2,1),1));
draw((0.5,0)--(3.5,0));
draw((0,0.5)--(0,2.5));
[/asy]  The number of people who like oranges is 45, so 20 + 25 = 45. Therefore, the number of people who like only apples is 40.

**Step 3 — Select B.** 40

**Distractor analysis:**
- **A** (20): Choice A (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":990,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '052dcad8-12be-4645-80f1-f9cded778ef4';
UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30-degree angle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice C (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice D (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30-degree angle?

**Step 2 — Solve.** A 30-60-90 right triangle has sides in the ratio of 1:√3:2. Since the hypotenuse has a length of 10, the side opposite the 30-degree angle has a length of 10 / 2 = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5\sqrt{3}): Choice C (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{3}): Choice D (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":87,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0573c643-bbcf-47b9-aae1-1c8164c08c65';
UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 12 meters.',
  options = '[{"id":"A","text":"$75.36$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(12)=75.36$."},{"id":"B","text":"$452.16$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$24.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$37.68$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(12)=75.36$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '05c2f326-a3ea-468a-9b75-f83e5cde62c1';

UPDATE public.questions SET
  question_text = 'If the original price is $550$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 25%.',
  options = '[{"id":"A","text":"$536$","is_correct":true,"explanation":"**Step 1:** $550×1.3=715$. **Step 2:** $715×0.75=536$."},{"id":"B","text":"$550$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$715$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$546$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $550×(1+30/100)=715$.
**Step 2:** Discount: $715×(1-25/100)=536$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '06301850-76dd-430c-a371-2110165347ef';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = 8\sqrt{x}\).  For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = 8\sqrt{x}\).  For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for x, we substitute 48 for f(x) in the equation f(x) = 8√x. This gives us 48 = 8√x. Dividing both sides of this equation by 8 yields 6 = √x. This can be rewritten as √x = 6. Squaring both sides of this equation yields x = 36. Therefore, the value of x for which f(x) = 48 is 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":48,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '067b5c49-586c-4b69-848a-97d01d0bf556';
UPDATE public.questions SET
  question_text = 'A function is defined by the equation \(f(x) = 2x^2 + 3x - 5\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A function is defined by the equation \(f(x) = 2x^2 + 3x - 5\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** To find f(-2), we substitute -2 for x in the equation: \(f(-2) = 2(-2)^2 + 3(-2) - 5\). Simplifying, we get \(f(-2) = 8 - 6 - 5\), or \(f(-2) = -3\).

**Step 3 — Select B.** -9

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":985,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '067d429a-c830-466a-945a-43d62f4c201a';
COMMIT;
