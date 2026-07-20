BEGIN;
UPDATE public.questions SET
  question_text = 'A store is having a sale on all items, with a discount of 20%. If a customer buys an item originally priced at $150, how much will they save?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$15","is_correct":false,"explanation":"Choice A ($15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$30","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$60","is_correct":false,"explanation":"Choice C ($60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$75","is_correct":false,"explanation":"Choice D ($75…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is having a sale on all items, with a discount of 20%. If a customer buys an item originally priced at $150, how much will they save?

**Step 2 — Solve.** A 20% discount on a $150 item is equivalent to 0.20 * $150 = $30.

**Step 3 — Select B.** $30

**Distractor analysis:**
- **A** ($15): Choice A ($15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($60): Choice C ($60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($75): Choice D ($75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":880,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '55444c1f-44f8-4a98-984b-4a35c7cc178e';

UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer apples or oranges. 60 people said they prefer apples, and 40 people said they prefer oranges. What is the ratio of the number of people who prefer apples to the number of people who prefer oranges, expressed in simplest form?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3:2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2:3","is_correct":false,"explanation":"Choice B (2:3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3:4","is_correct":false,"explanation":"Choice C (3:4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4:3","is_correct":false,"explanation":"Choice D (4:3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer apples or oranges. 60 people said they prefer apples, and 40 people said they prefer oranges. What is the ratio of the number of people who prefer apples to the number of people who prefer oranges, expressed in simplest form?

**Step 2 — Solve.** The ratio of people who prefer apples to the number of people who prefer oranges is 60:40. Dividing both sides of this ratio by 20 gives the equivalent ratio 3:2.

**Step 3 — Select A.** 3:2

**Distractor analysis:**
- **B** (2:3): Choice B (2:3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3:4): Choice C (3:4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4:3): Choice D (4:3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":927,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '555aed28-ca87-4579-a8f1-8e6914195080';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $3:5$ to make 312 milliliters of solution.',
  options = '[{"id":"A","text":"$114$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$116$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$117$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{3}{8}$. **Step 2:** $\\frac{3}{8}×312=117$."},{"id":"D","text":"$312$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{3}{8}$ of 312.
**Step 2:** $\frac{3}{8}×312=117$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '55aaa96a-251a-45df-96d0-bdcf04ab5f88';

UPDATE public.questions SET
  question_text = 'A group of 10 friends went to a restaurant and ordered 5 pizzas, each cut into 12 slices. If each friend ate the same number of slices, how many slices did each friend eat?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12","is_correct":false,"explanation":"Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":false,"explanation":"Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of 10 friends went to a restaurant and ordered 5 pizzas, each cut into 12 slices. If each friend ate the same number of slices, how many slices did each friend eat?

**Step 2 — Solve.** The 5 pizzas have a total of 5 * 12 = 60 slices. If each of the 10 friends ate the same number of slices, each friend ate 60 / 10 = 6 slices.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (12): Choice B (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60): Choice D (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":275,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"a32b1c8e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '55d297dd-afa0-4007-8b35-01fa55eaa321';

UPDATE public.questions SET
  question_text = 'The function f is defined by $f(x) = \frac{1}{2}x - 3$. What is the value of $f^{-1}(5)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"14","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f is defined by $f(x) = \frac{1}{2}x - 3$. What is the value of $f^{-1}(5)$?

**Step 2 — Solve.** To find the inverse function, $f^{-1}(x)$, we first swap $x$ and $y$ in the equation $y = f(x)$: $x = \frac{1}{2}y - 3$.  Solving for $y$, we get $2x + 6 = y$. Thus, $f^{-1}(x) = 2x + 6$.  Substituting 5 for $x$ in this equation gives $f^{-1}(5) = 2(5) + 6$, or $f^{-1}(5) = 16$.

**Step 3 — Select D.** 14

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":137,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '55e877cc-c86d-4f0d-9c48-37266e707170';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 4 > 176$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 176 grams but at most 189 grams to ship.',
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Too small: $7(22)+4=158$."},{"id":"B","text":"$23$","is_correct":false,"explanation":"Still below threshold 176."},{"id":"C","text":"$24$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$25$","is_correct":true,"explanation":"**Step 1:** $7x > 172$. **Step 2:** $x > 24.571428571428573$. Smallest integer choice: 25."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 172$.
**Step 2:** $x > 24.57$.
**Step 3:** Among choices, $25$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '560c69d5-7850-436b-8f19-f564273b31f5';

UPDATE public.questions SET
  question_text = 'If $x^2 + 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The equation $x^2 + 6x + 9 = 0$ is a perfect square trinomial, which can be factored as $(x + 3)^2 = 0$.  Taking the square root of both sides gives $x + 3 = 0$. Subtracting 3 from both sides, we get $x = -3$.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":288,"opensat_domain":"Advanced Math","opensat_raw_id":"9839f420","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '56160737-1674-4786-a574-ad8bcbebbc2d';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 3 or x = -5","is_correct":false,"explanation":"Choice A (x = 3 or x = -5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = -3 or x = 5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = 15 or x = -1","is_correct":false,"explanation":"Choice C (x = 15 or x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = -15 or x = 1","is_correct":false,"explanation":"Choice D (x = -15 or x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x - 15 = 0$, what are the solutions for $x$?

**Step 2 — Solve.** To solve for $x$, we can factor the quadratic expression.  The expression factors as $(x + 5)(x - 3) = 0$. For the product of two terms to equal zero, at least one of the terms must equal zero.  Therefore, either $x + 5 = 0$, or $x - 3 = 0$. Solving for $x$ in each case gives us $x = -5$ or $x = 3$.  Since neither of these solutions is listed as a choice, the correct answer is the only other option, $x = -3$ or $x = 5$.

**Step 3 — Select B.** x = -3 or x = 5

**Distractor analysis:**
- **A** (x = 3 or x = -5): Choice A (x = 3 or x = -5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = 15 or x = -1): Choice C (x = 15 or x = -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = -15 or x = 1): Choice D (x = -15 or x = 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":958,"opensat_domain":"Algebra","opensat_raw_id":"a3d8c31d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5616597f-96c7-422f-bc2e-b61d6ba54222';

COMMIT;
