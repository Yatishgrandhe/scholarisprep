BEGIN;
UPDATE public.questions SET
  question_text = 'A square with side length 10 is inscribed in a circle. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25\\pi","is_correct":false,"explanation":"Choice A (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50\\pi","is_correct":false,"explanation":"Choice B (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200\\pi","is_correct":false,"explanation":"Choice D (200\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A square with side length 10 is inscribed in a circle. What is the area of the circle?

**Step 2 — Solve.** The diagonal of the square is also the diameter of the circle.  Since the sides of the square are 10, the diagonal is 10√2 by the Pythagorean theorem.  The radius of the circle is half the diameter, so the radius is 5√2, and the area of the circle is π(5√2)² = 50π = 100π.

**Step 3 — Select C.** 100\pi

**Distractor analysis:**
- **A** (25\pi): Choice A (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50\pi): Choice B (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200\pi): Choice D (200\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":361,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f711e94e","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'dd36835b-259d-40a4-9040-cec33487da12';

UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 8 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2 and -4","is_correct":false,"explanation":"Choice A (-2 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2 and 4","is_correct":false,"explanation":"Choice B (2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-2 and 4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"2 and -4","is_correct":false,"explanation":"Choice D (2 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 8 = 0$, what is the value of $x$?

**Step 2 — Solve.** To solve for the value of x, we can factor the expression:  $x^2 - 2x - 8 = (x-4)(x+2) = 0$. Setting each of these factors equal to zero, we get $x-4 = 0$ or $x+2 = 0$, which gives us the solutions $x=4$ or $x=-2$.

**Step 3 — Select C.** -2 and 4

**Distractor analysis:**
- **A** (-2 and -4): Choice A (-2 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2 and 4): Choice B (2 and 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2 and -4): Choice D (2 and -4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":507,"opensat_domain":"Advanced Math","opensat_raw_id":"9d3fa25f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ddab2866-ed5a-46bb-9bbe-4c540c56a2c1';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use the elimination method. Multiplying the second equation by 2, we get $2x - 2y = 2$. Adding this equation to the first equation, we get $5x = 12$. Dividing both sides by 5, we get $x = \frac{12}{5}$, or $x = 2.4$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":168,"opensat_domain":"Algebra","opensat_raw_id":"d66b53aa","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ddec2b31-12a8-41ea-9cc5-9b78364f647d';

UPDATE public.questions SET
  question_text = 'If $x+5=12$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x+5=12$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we subtract 5 from both sides of the equation:  *x* + 5 - 5 = 12 - 5, which simplifies to *x* = 7.

**Step 3 — Select B.** 7

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":959,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'de15b171-6797-4f26-835c-c4bbd2b9c049';

UPDATE public.questions SET
  question_text = 'The following data set represents the number of hours a group of students spent studying for an exam: 2, 2, 3, 4, 4, 4, 8, 8, 8, 13, 13. What is the median number of hours spent studying for the exam?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The following data set represents the number of hours a group of students spent studying for an exam: 2, 2, 3, 4, 4, 4, 8, 8, 8, 13, 13. What is the median number of hours spent studying for the exam?

**Step 2 — Solve.** To find the median, we must first order the data set from least to greatest: 2, 2, 3, 4, 4, 4, 8, 8, 8, 13, 13. Since there are 11 data points (an odd number), the median is the middle value, which is 8.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":933,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"52f9a246","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'de18602d-4f5e-4e37-b8bf-638df467f891';

UPDATE public.questions SET
  question_text = 'The vertices of a triangle are located at the points $(0,0)$, $(4,0)$, and $(0,3)$. What is the area of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"18","is_correct":false,"explanation":"Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The vertices of a triangle are located at the points $(0,0)$, $(4,0)$, and $(0,3)$. What is the area of the triangle?

**Step 2 — Solve.** The triangle is a right triangle with a base of 4 units and a height of 3 units. The area of a triangle is given by (1/2) * base * height, so the area of this triangle is (1/2) * 4 * 3 = 6 square units.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (18): Choice C (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":385,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'de3795e9-056c-4083-9895-a9fcae070dd5';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-13)^2+15$, where $t$ is seconds. What is $h(16)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$15$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$33$","is_correct":true,"explanation":"**Step 1:** $h(16)=2(16-13)^2+15=2(9)+15=33$."},{"id":"C","text":"$31$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=16$: $h(16)=2(16-13)^2+15$.
**Step 2:** $(16-13)^2=9$ → $h(16)=33$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'de545e2e-8fa7-49c5-a84d-1cc0ff0c31a4';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 7 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{12}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{11}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{12}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{11}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 11 total. **Step 2:** P $=\\frac{4}{11}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 11.
**Step 2:** Conditional probability $=\frac{4}{11}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'de8f7745-2957-4f29-9a91-ed39dad51a10';

COMMIT;
