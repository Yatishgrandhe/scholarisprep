BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 5x - 14 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 5x - 14 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** We can factor the quadratic equation as (x - 7)(x + 2) = 0.  The solutions to this equation are x = 7 and x = -2. The sum of these solutions is 7 + (-2) = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":21,"opensat_domain":"Algebra","opensat_raw_id":"random_id_f8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8edc1572-95cd-4247-b5a4-5ba411a82d7e';

UPDATE public.questions SET
  question_text = 'A circle with center (2, 3) passes through the point (5, 7). What is the radius of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, 3) passes through the point (5, 7). What is the radius of this circle?

**Step 2 — Solve.** The radius of a circle is the distance from the center of the circle to any point on the circle.  We can use the distance formula to find the distance between the points (2, 3) and (5, 7): \begin{align*} \sqrt{(5-2)^2 + (7-3)^2} &= \sqrt{3^2 + 4^2} \\ &= \sqrt{9+16} \\ &= \sqrt{25} \\ &= 5 \end{align*}  The radius of the circle is 5 units.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":242,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"321984ad","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8ee91f0a-d9f9-4ae0-8f33-0e3348afae3c';

UPDATE public.questions SET
  question_text = 'If $x+3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x+3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, subtract 3 from both sides of the equation:  x + 3 - 3 = 7 - 3.  This gives us x = 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":230,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8f136ec6-7f46-4e17-8894-d392ee0bce01';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations by elimination. Notice that the y terms have opposite coefficients. Adding the two equations together, we get $(3x + 2y) + (x - 2y) = 10 + 6$, which simplifies to $4x = 16$. Dividing both sides by 4, we find $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":44,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8f3871bb-ae12-4667-807c-51a8ca26a9e9';

UPDATE public.questions SET
  question_text = 'A group of friends went to a restaurant.  The bill came to \$120.  They agreed to split the bill evenly.  If each friend paid \$15, how many friends were in the group?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends went to a restaurant.  The bill came to \$120.  They agreed to split the bill evenly.  If each friend paid \$15, how many friends were in the group?

**Step 2 — Solve.** To find the number of friends, we divide the total bill by the amount each friend paid: 120 / 15 = 8.  Therefore, there were 8 friends in the group.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":582,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8f411985-9a23-4693-88fe-7fbe0f3f35fa';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x + 5 = 17$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x + 5 = 17$?

**Step 2 — Solve.** To solve for $x$, we first subtract 5 from both sides of the equation: $3x + 5 - 5 = 17 - 5$, or $3x = 12$. Next, we divide both sides by 3: $\frac{3x}{3} = \frac{12}{3}$, or $x = 4$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":659,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9034f6cd-7029-450f-b6b7-1b1a3d472cdb';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 134°.',
  options = '[{"id":"A","text":"$134°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$46°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-134=46°$."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-134°=46°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '9041276d-7af7-4220-8bf5-e9334ebc39a9';

UPDATE public.questions SET
  question_text = 'If $x^2 - 5x + 6 = 0$, what is the sum of the roots of the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-6","is_correct":false,"explanation":"Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 5x + 6 = 0$, what is the sum of the roots of the equation?

**Step 2 — Solve.** For a quadratic equation of the form $ax^2 + bx + c = 0$, the sum of the roots is given by $-b/a$. In this equation, $a = 1$ and $b = -5$, so the sum of the roots is $-(-5)/1 = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-6): Choice B (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":236,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '904f3624-1f79-4e3c-85cc-c4fc51ee409f';

COMMIT;
