BEGIN;
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

COMMIT;
