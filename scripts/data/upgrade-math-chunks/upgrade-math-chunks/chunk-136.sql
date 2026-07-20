BEGIN;
UPDATE public.questions SET
  question_text = 'If \(x + y = 7\) and \(x - y = 3\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If \(x + y = 7\) and \(x - y = 3\), what is the value of \(x\)?

**Step 2 — Solve.** Adding the two equations together, we get \(2x = 10\). Dividing both sides by 2, we find that \(x = 5\).

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":354,"opensat_domain":"Algebra","opensat_raw_id":"e4e2398f","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bae3be9a-c5c8-43e9-84b2-7a9caf552ab1';

UPDATE public.questions SET
  question_text = 'If $x^2 + 3x - 10 = (x + 5)(x + k)$, what is the value of $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-5","is_correct":false,"explanation":"Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 3x - 10 = (x + 5)(x + k)$, what is the value of $k$?

**Step 2 — Solve.** We can solve for *k* by expanding the right side of the equation and then comparing coefficients. Expanding the right side, we get $(x+5)(x+k) = x^2 + (k+5)x + 5k$. For this to be equivalent to the left side, $x^2 + 3x - 10$, we need the coefficients of *x* to match. This means $k+5 = 3$, so $k = -2$.

**Step 3 — Select A.** -2

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-5): Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":315,"opensat_domain":"Algebra","opensat_raw_id":"random_id_b10","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bb1d3e52-7305-418e-b130-bf493f04546a';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 28 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{32}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{33}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{32}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 32 total. **Step 2:** P $=\\frac{4}{32}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 32.
**Step 2:** Conditional probability $=\frac{4}{32}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bb56d3ca-f99e-4704-9761-3f0264208edb';

UPDATE public.questions SET
  question_text = 'If the original price is $280$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 10%.',
  options = '[{"id":"A","text":"$328$","is_correct":true,"explanation":"**Step 1:** $280×1.3=364$. **Step 2:** $364×0.9=328$."},{"id":"B","text":"$280$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$364$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$338$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $280×(1+30/100)=364$.
**Step 2:** Discount: $364×(1-10/100)=328$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bb5bf5e3-223a-42f7-9ff8-ed92c17af6d0';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-33)^2+35$, where $t$ is seconds. What is $h(36)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$35$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$53$","is_correct":true,"explanation":"**Step 1:** $h(36)=2(36-33)^2+35=2(9)+35=53$."},{"id":"C","text":"$51$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$37$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=36$: $h(36)=2(36-33)^2+35$.
**Step 2:** $(36-33)^2=9$ → $h(36)=53$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'bb62ac82-72f0-473e-adf2-c4b8145617ae';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 34 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{39}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{38}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{39}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{38}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 38 total. **Step 2:** P $=\\frac{4}{38}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 38.
**Step 2:** Conditional probability $=\frac{4}{38}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bb7ed5cc-69d2-4a29-9eb5-f1f7010026fe';

UPDATE public.questions SET
  question_text = 'If  \(2x + 3y = 10\) and \(x - y = 2\), what is the value of \(x + y\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  \(2x + 3y = 10\) and \(x - y = 2\), what is the value of \(x + y\)?

**Step 2 — Solve.** To solve for x + y, we can add the two equations together. Notice that the y terms will cancel out. The result is: (2x + 3y) + (x - y) = 10 + 2. Combining like terms, we get 3x + 2y = 12.  Since we are looking for x + y, we can''t simplify further.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":483,"opensat_domain":"Algebra","opensat_raw_id":"87676666","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bb9e241f-525b-419f-a068-f9e4c13f76c0';

UPDATE public.questions SET
  question_text = 'After $t=9$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+6$.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=9$."},{"id":"B","text":"$51$","is_correct":true,"explanation":"**Step 1:** Substitute $t=9$. **Step 2:** $d=5(9)+6=51$."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=9$: $d=5(9)+6$.
**Step 2:** Compute: $d=51$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bbcee4f1-0772-4f23-bdf1-3d4c7e6dcbbd';

COMMIT;
