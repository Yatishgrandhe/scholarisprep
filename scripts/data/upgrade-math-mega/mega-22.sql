BEGIN;
UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 12x + 35 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$12$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-5)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-7)=0$.
**Step 2:** Roots $x=5$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f02628d5-e09c-4c68-993c-ee7ae14197f5';
UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates the $y$ term.  The result is $4x = 16$.  Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":563,"opensat_domain":"Algebra","opensat_raw_id":"a699428d","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'f06039be-847e-4a70-973b-1170a738fc5e';
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers x. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers x. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting $x = -2$ into the function, we get $f(-2) = 2(-2)^2 + 3(-2) - 5 = 8 - 6 - 5 = 11$.

**Step 3 — Select D.** 11

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":326,"opensat_domain":"Advanced Math","opensat_raw_id":"85a7b24c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f06c14c2-aeea-41fa-9cf9-0f9d00e8cf25';
UPDATE public.questions SET
  question_text = 'The function $f(x) = x^2 - 4x + 3$ is graphed in the xy-plane. What is the y-coordinate of the y-intercept of the graph of $f(x)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-1","is_correct":false,"explanation":"Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-3","is_correct":false,"explanation":"Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = x^2 - 4x + 3$ is graphed in the xy-plane. What is the y-coordinate of the y-intercept of the graph of $f(x)$?

**Step 2 — Solve.** The y-intercept of the graph of a function is the point where the graph crosses the y-axis. This occurs when $x=0$. Substituting 0 for $x$ in the equation $f(x) = x^2 - 4x + 3$ gives us $f(0) = 0^2 - 4(0) + 3$, or $f(0) = 3$. Therefore, the y-coordinate of the y-intercept of the graph of $f(x)$ is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-1): Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-3): Choice D (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":453,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_27","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f06fc996-6069-4944-9f30-8a253009e2d0';
UPDATE public.questions SET
  question_text = 'If $x+2y=7$ and $x-2y=1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x+2y=7$ and $x-2y=1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates $y$, giving us $2x=8$. Dividing both sides by 2, we get $x=4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":451,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f0a90f54-31a1-40ca-985f-0d6f45ddc270';
UPDATE public.questions SET
  question_text = 'A circle with center O has a radius of 5.  A chord AB of the circle has length 8.  What is the distance from O to the chord AB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with center O has a radius of 5.  A chord AB of the circle has length 8.  What is the distance from O to the chord AB?

**Step 2 — Solve.** Draw a segment from O perpendicular to chord AB, intersecting AB at point M.  Since the perpendicular from the center of a circle to a chord bisects the chord, AM = MB = 4.  Triangle OAM is a right triangle with OA as the hypotenuse and AM as a leg.  By the Pythagorean Theorem, .  Therefore, OM = 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":402,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f0b46463-8455-4e34-8a6b-7979cecdfa59';

UPDATE public.questions SET
  question_text = 'The perimeter of a square is 36 inches. What is the area of the square, in square inches?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"18","is_correct":false,"explanation":"Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36","is_correct":false,"explanation":"Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"81","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The perimeter of a square is 36 inches. What is the area of the square, in square inches?

**Step 2 — Solve.** The perimeter of a square is the total length of all its sides. Since a square has 4 equal sides, each side is 36 inches / 4 = 9 inches. The area of a square is the side length squared, so the area is 9 inches * 9 inches = 81 square inches.

**Step 3 — Select C.** 81

**Distractor analysis:**
- **A** (18): Choice A (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (36): Choice B (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":449,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"3682ab77","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f0c27527-250b-4d61-969a-41003f8c5ba3';
UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $4(x-6)+2k = 200$ have solution $x=53$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=53$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $4x-24+2k=200$ → $4x=212$ → $x=53$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$53$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=53$: $4(53-k)+2k=200$.
**Step 2:** Simplify: $212-4k+2k=200$ → $212+-2k=200$.
**Step 3:** Solve for $k$: $-2k=-12$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f0d76503-5b30-4d77-ba36-3832c7a60a4b';
UPDATE public.questions SET
  question_text = 'A survey of 100 students asked whether they prefer to study in a quiet or noisy environment. Of the students surveyed, 60% preferred to study in a quiet environment. How many of the students surveyed preferred to study in a noisy environment?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"60","is_correct":false,"explanation":"Choice B (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":false,"explanation":"Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"160","is_correct":false,"explanation":"Choice D (160…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students asked whether they prefer to study in a quiet or noisy environment. Of the students surveyed, 60% preferred to study in a quiet environment. How many of the students surveyed preferred to study in a noisy environment?

**Step 2 — Solve.** If 60% of the students surveyed preferred to study in a quiet environment, then 100% – 60% = 40% preferred to study in a noisy environment.  Since 40% of 100 is 40, 40 of the students surveyed preferred to study in a noisy environment.

**Step 3 — Select A.** 40

**Distractor analysis:**
- **B** (60): Choice B (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (100): Choice C (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (160): Choice D (160…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":685,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_f7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f13206e1-668b-468e-9c3e-396925f0d0c9';
UPDATE public.questions SET
  question_text = 'If 2x + 3y = 12 and 4x - 3y = 6, what is the value of x?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If 2x + 3y = 12 and 4x - 3y = 6, what is the value of x?

**Step 2 — Solve.** Adding the two equations together eliminates y: (2x + 3y) + (4x - 3y) = 12 + 6. This simplifies to 6x = 18. Dividing both sides by 6 gives x = 3.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":511,"opensat_domain":"Algebra","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f17cbc63-9704-4cb6-8a90-ca67a085a6e9';
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-49)^2+51$, where $t$ is seconds. What is $h(52)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(52)=2(52-49)^2+51=2(9)+51=69$."},{"id":"C","text":"$67$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=52$: $h(52)=2(52-49)^2+51$.
**Step 2:** $(52-49)^2=9$ → $h(52)=69$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f18309e1-87a7-423f-946a-e8da36f58ebc';
UPDATE public.questions SET
  question_text = 'What is the median of the seven data values shown? 2, 2, 3, 4, 4, 11',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the median of the seven data values shown? 2, 2, 3, 4, 4, 11

**Step 2 — Solve.** The median of a data set with an odd number of values is the middle value. The values are already presented in order from least to greatest, and there are 7 values. Therefore, the median is the fourth value in the list, which is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":93,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f890dc20","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'f1a9c0f7-a738-434f-9754-b24ecc867c89';
UPDATE public.questions SET
  question_text = 'The function *f* is defined by $f(x) = \frac{x^2 - 4}{x-2}$. For what value of *x* does the function *f* have a removable discontinuity?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by $f(x) = \frac{x^2 - 4}{x-2}$. For what value of *x* does the function *f* have a removable discontinuity?

**Step 2 — Solve.** A removable discontinuity occurs at a point where the function is undefined due to a zero in the denominator, but the limit of the function exists at that point. In this case, the function is undefined when  *x* = 2 because it results in a zero in the denominator. However, the function can be simplified by factoring the numerator:  $f(x) = \frac{x^2 - 4}{x-2} = \frac{(x+2)(x-2)}{x-2} = x+2$ for all *x* not equal to 2.  Therefore, the limit of *f* as *x* approaches 2 exists and is equal to 4.  Since the limit exists, the function has a removable discontinuity at *x* = 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":133,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f2123756-d69c-4e39-acdb-402483510f82';
UPDATE public.questions SET
  question_text = 'After $t=32$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+29$.',
  options = '[{"id":"A","text":"$153$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=32$."},{"id":"B","text":"$157$","is_correct":true,"explanation":"**Step 1:** Substitute $t=32$. **Step 2:** $d=4(32)+29=157$."},{"id":"C","text":"$158$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=32$: $d=4(32)+29$.
**Step 2:** Compute: $d=157$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f234ff68-e29e-46e2-a660-588243f56517';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(16,47)$ and $(22,65)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{65-47}{22-16}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$65$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1747770a-920c-4520-9546-6f9b3066df1c';
UPDATE public.questions SET
  question_text = 'The average of 5 numbers is 12.  If one of the numbers is removed, the average of the remaining 4 numbers is 10. What is the value of the number that was removed? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The average of 5 numbers is 12.  If one of the numbers is removed, the average of the remaining 4 numbers is 10. What is the value of the number that was removed? 

**Step 2 — Solve.** The sum of the original 5 numbers is 5 * 12 = 60. The sum of the remaining 4 numbers is 4 * 10 = 40. Therefore, the number that was removed is 60 - 40 = 20.

**Step 3 — Select D.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":757,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '17577415-fa6c-44e3-8cc4-69b26fadba7d';
UPDATE public.questions SET
  question_text = 'Given $x+y=64$ and $2x-y=41$, what is $x$?',
  stimulus_text = 'At a fundraiser, 64 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 35 VIP and 29 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$35$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=105$. **Step 2:** $x=35$."},{"id":"B","text":"$34$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$29$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$36$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=64+41$ → $3x=105$.
**Step 2:** $x=35$.
**Step 3:** Back-substitute: $y=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1769e153-7e33-48ff-90fd-6aebd076801f';
UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:7$ to make 108 milliliters of solution.',
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$44$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$45$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{12}$. **Step 2:** $\\frac{5}{12}×108=45$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{12}$ of 108.
**Step 2:** $\frac{5}{12}×108=45$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '17adc1f6-afdf-4248-8bc7-772969dec7d3';
UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = -5, x = 3","is_correct":false,"explanation":"Choice A (x = -5, x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = 5, x = -3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = -15, x = 1","is_correct":false,"explanation":"Choice C (x = -15, x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 15, x = -1","is_correct":false,"explanation":"Choice D (x = 15, x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?

**Step 2 — Solve.** To solve for $x$, we can factor the quadratic equation: $(x + 5)(x - 3) = 0$. For this equation to equal 0, either $(x + 5) = 0$ or $(x - 3) = 0$. Solving for $x$ in each case, we get $x = -5$ or $x = 3$.

**Step 3 — Select B.** x = 5, x = -3

**Distractor analysis:**
- **A** (x = -5, x = 3): Choice A (x = -5, x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -15, x = 1): Choice C (x = -15, x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 15, x = -1): Choice D (x = 15, x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":787,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '185b37c7-6ccd-45d3-b84b-218713606368';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"64","is_correct":false,"explanation":"Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = 8\sqrt{x}\). For what value of \(x\) does \(f(x) = 48\)?

**Step 2 — Solve.** To solve for x, we set the function equal to 48:  $8\sqrt{x} = 48$. Dividing both sides by 8, we get  $\sqrt{x} = 6$.  Squaring both sides gives us $x = 36$.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (64): Choice D (64…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":123,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '18828a6e-70a1-4949-99c8-4bcd468f151b';
UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(47)=43$ and $f(52)=63$, what is $f(-49)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-337$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-49$)."},{"id":"C","text":"$-344$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-341$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-49)=4(-49-47)+(43)=-341$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{63-43}{52-47}=4$.
**Step 2:** Point-slope: $f(-49)=4(-49-47)+(43)$.
**Step 3:** $f(-49)=-341$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '18b1f8ab-c4d6-42c8-bf02-9210a6611997';
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination.  Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x=3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":709,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '18ca3b23-4407-4d45-b84f-8fc34b6b4da9';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5 centimeters, the diameter is 10 centimeters. Therefore, the side length of the square is 10 centimeters, and the area of the square is 10 * 10 = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1011,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f2668ced-505b-44da-8206-46e53a415d6f';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Use 3.14 for $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5","is_correct":false,"explanation":"Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Use 3.14 for $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$.

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5): Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":778,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f277b03e-f1b4-43c1-b05d-17a1cd4926b9';
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2-1}{x+1}$.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2-1}{x+1}$.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for $x$ in the given function yields $f(-2) = \frac{(-2)^2 - 1}{-2 + 1}$.  Simplifying the expression gives us $f(-2) = \frac{4-1}{-1} = \frac{3}{-1} = -3$.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":763,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d12","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f277db34-ff58-4fc4-a6ce-49977e1f1abd';
UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 265 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f2947b54-7a1b-4e3d-92bc-c9e89e20ef44';
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 65% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 65% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 61% and 69%","is_correct":true,"explanation":"**Step 1:** Interval 61% to 69%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 61% to 69%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f2999465-cbb5-4f9b-bce4-40b6619110b2';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(x+2y) + (x-2y) = 6 + 4$, which simplifies to $2x = 10$.  Dividing both sides by 2, we get $x=5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":374,"opensat_domain":"Algebra","opensat_raw_id":"a934f7dd","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f2c34ee0-ecde-450d-a011-8761af3395f0';
UPDATE public.questions SET
  question_text = 'After $t=18$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+15$.',
  options = '[{"id":"A","text":"$100$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=18$."},{"id":"B","text":"$105$","is_correct":true,"explanation":"**Step 1:** Substitute $t=18$. **Step 2:** $d=5(18)+15=105$."},{"id":"C","text":"$106$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$20$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=18$: $d=5(18)+15$.
**Step 2:** Compute: $d=105$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f2cb2fb7-0a76-446b-a54f-d671ba7ef088';
UPDATE public.questions SET
  question_text = 'If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for x in the function:  $f(-2) = 2(-2)^2 + 3(-2) - 1$. Simplify the expression: $f(-2) = 2(4) -6 -1 = 8 - 6 - 1 = 1 - 1 = -9$.

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":303,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f2dd6921-f2a1-4ea0-8030-ff92cbc96230';

UPDATE public.questions SET
  question_text = 'If $2x + 3 = 11$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3 = 11$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we first subtract 3 from both sides of the equation: $2x + 3 - 3 = 11 - 3$, or $2x = 8$. Then, we divide both sides of the equation by 2: $\frac{2x}{2} = \frac{8}{2}$, or $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":342,"opensat_domain":"Algebra","opensat_raw_id":"a4321a76","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'f2e71314-5eca-4120-8d16-0fe1b3993148';
UPDATE public.questions SET
  question_text = 'If  \(2x + 3y = 12\) and  \(x - 2y = -1\), what is the value of  \(x + y\) ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(2x + 3y = 12\) and  \(x - 2y = -1\), what is the value of  \(x + y\) ?

**Step 2 — Solve.** To solve for \(x + y\), we can add the two equations together.  Adding the left-hand sides, we get \((2x + 3y) + (x - 2y) = 3x + y\). Adding the right-hand sides, we get \(12 + (-1) = 11\).  Therefore, \(3x + y = 11\).  Since the problem asks for the value of \(x + y\), we can divide both sides of this equation by 3 to get \(x + y = \frac{11}{3}\), or 3.67.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":296,"opensat_domain":"Algebra","opensat_raw_id":"84b5125c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f339aceb-0040-4007-a482-9cf34f9098f7';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the circumference of the circle, in units?  (Express your answer in terms of \pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the circumference of the circle, in units?  (Express your answer in terms of \pi.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where r is the radius of the circle.  Substituting 5 for r, we get  C = 2\pi (5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":607,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"981d5815","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f33b25e0-c069-4df8-9f74-f93e02cd3f1f';
UPDATE public.questions SET
  question_text = 'A store sells two types of cookies: chocolate chip and peanut butter.  The store sold 30 chocolate chip cookies and 40 peanut butter cookies.  If the store sold a total of 80 cookies, what percentage of the cookies sold were chocolate chip?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15%","is_correct":false,"explanation":"Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25%","is_correct":false,"explanation":"Choice B (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"37.5%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"62.5%","is_correct":false,"explanation":"Choice D (62.5%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of cookies: chocolate chip and peanut butter.  The store sold 30 chocolate chip cookies and 40 peanut butter cookies.  If the store sold a total of 80 cookies, what percentage of the cookies sold were chocolate chip?

**Step 2 — Solve.** The store sold 30 chocolate chip cookies out of a total of 80 cookies.  This represents 30/80 = 0.375, or 37.5% of the cookies sold.

**Step 3 — Select C.** 37.5%

**Distractor analysis:**
- **A** (15%): Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25%): Choice B (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (62.5%): Choice D (62.5%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":486,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f348d934-1e71-4865-884e-1c17f9c2db64';
UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square.  What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square.  What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5, the diameter is 10.  Therefore, the area of the square is 10^2 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":278,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f35403f8-7973-43b1-9d43-59357f522104';
COMMIT;
