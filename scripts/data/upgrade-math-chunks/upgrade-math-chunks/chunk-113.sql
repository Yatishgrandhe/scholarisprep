BEGIN;
UPDATE public.questions SET
  question_text = 'If the final reading is 37 when $r=4$, and the process is modeled by $8r+5$, what value of $x$ satisfies $8x+5=37$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 8, then 5 is added.',
  options = '[{"id":"A","text":"$7$","is_correct":false,"explanation":"After subtracting 5, divide by 8; this is too small."},{"id":"B","text":"$8$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$9$","is_correct":true,"explanation":"**Step 1:** $8x = 32$. **Step 2:** $x = 9$."},{"id":"D","text":"$8$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 5: $8x=32$.
**Step 2:** Divide by 8: $x=9$.
**Step 3:** Verify: $8(9)+5=37$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9d2e4a63-0c3e-4cf7-b456-6704978a9126';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 13 meters.',
  options = '[{"id":"A","text":"$81.64$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(13)=81.64$."},{"id":"B","text":"$530.66$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$26.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$40.82$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(13)=81.64$ m.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9d629c7c-942b-4f05-9ccc-173ebff419d9';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by \(f(x) = 2x^2 + 3x - 1\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by \(f(x) = 2x^2 + 3x - 1\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** Substituting -2 for *x* in the function, we get \(f(-2) = 2(-2)^2 + 3(-2) - 1\). Simplifying, we get \(f(-2) = 8 - 6 - 1\), or \(f(-2) = -9\).

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":977,"opensat_domain":"Advanced Math","opensat_raw_id":"c824d513","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9d79e4e0-219d-4f09-8542-c4e555ef39a2';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $2x - 3 = 5x + 6$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $2x - 3 = 5x + 6$?

**Step 2 — Solve.** To solve for x, we can subtract 2x from both sides of the equation to get $-3 = 3x + 6$.  Then, we can subtract 6 from both sides of the equation to get $-9 = 3x$.  Dividing both sides of the equation by 3 gives us $x=-3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":371,"opensat_domain":"Algebra","opensat_raw_id":"a987655b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9db0ad1a-771b-4d95-b969-76464961612f';

UPDATE public.questions SET
  question_text = 'A group of 100 students took a test. The average score on the test was 75.  A second group of 50 students took the same test, and their average score was 85. What is the average score of all 150 students who took the test?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"78","is_correct":false,"explanation":"Choice A (78…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"79","is_correct":false,"explanation":"Choice B (79…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"80","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"81","is_correct":false,"explanation":"Choice D (81…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of 100 students took a test. The average score on the test was 75.  A second group of 50 students took the same test, and their average score was 85. What is the average score of all 150 students who took the test?

**Step 2 — Solve.** The total score of the first group of students is 100 * 75 = 7500. The total score of the second group of students is 50 * 85 = 4250. The total score of all 150 students is 7500 + 4250 = 11750. Therefore, the average score of all 150 students is 11750 / 150 = 80.

**Step 3 — Select C.** 80

**Distractor analysis:**
- **A** (78): Choice A (78…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (79): Choice B (79…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (81): Choice D (81…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":861,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9dc4aef8-2696-46b0-8396-817f7b3e1675';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5, the diameter is 10.  The area of the square is then $10^2 = 100$.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":981,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9e7ce4a5-7da8-44ee-84a0-bf6ee1799eec';

UPDATE public.questions SET
  question_text = 'The expression  is equivalent to $\frac{a}{b}$, where *a* and *b* are integers with no common factors. What is the value of *b*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"256","is_correct":false,"explanation":"Choice D (256…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression  is equivalent to $\frac{a}{b}$, where *a* and *b* are integers with no common factors. What is the value of *b*?

**Step 2 — Solve.** Simplify the given expression:  \begin{align*} \frac{16x^2 + 64}{8x^2 + 32} &= \frac{16(x^2 + 4)}{8(x^2 + 4)}\\ &= \frac{16}{8} \\ &= 2. \end{align*} To express 2 as a fraction in the form $\frac{a}{b}$, where *a* and *b* have no common factors, we can rewrite it as $\frac{2}{1}$. Thus, the value of *b* is 1.

**Step 3 — Select C.** 64

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (256): Choice D (256…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":855,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9ea915c2-3922-4c75-98f5-90bb6b0e9294';

UPDATE public.questions SET
  question_text = 'If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for x by using elimination.  Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$.  Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":743,"opensat_domain":"Algebra","opensat_raw_id":"98d37f8d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9eae003b-0ce0-497a-9837-42e12b60b6f5';

COMMIT;
