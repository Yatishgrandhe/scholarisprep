BEGIN;
UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 52% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 52% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 48% and 56%","is_correct":true,"explanation":"**Step 1:** Interval 48% to 56%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 48% to 56%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '112234e4-6ee2-4fb7-9660-a42128db8ad9';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 3, we get  $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":308,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '11259cf9-3cfe-43d9-9870-25117beced80';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples and 40 people liked oranges. Of those who liked apples, 20 also liked oranges. What is the probability that a randomly selected person from this group liked oranges, given that they liked apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1/3","is_correct":false,"explanation":"Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1/2","is_correct":false,"explanation":"Choice B (1/2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2/3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3/5","is_correct":false,"explanation":"Choice D (3/5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples and 40 people liked oranges. Of those who liked apples, 20 also liked oranges. What is the probability that a randomly selected person from this group liked oranges, given that they liked apples?

**Step 2 — Solve.** The probability that a randomly selected person from this group liked oranges, given that they liked apples, is the number of people who liked both apples and oranges divided by the number of people who liked apples. From the given information, 20 people liked both apples and oranges, and 60 people liked apples. Thus, the probability is 20/60, or 1/3.

**Step 3 — Select C.** 2/3

**Distractor analysis:**
- **A** (1/3): Choice A (1/3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1/2): Choice B (1/2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3/5): Choice D (3/5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":195,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"5464496a","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '116fd9ef-17ce-416b-be25-f267b8427bf1';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:6$ to make 318 milliliters of solution.',
  options = '[{"id":"A","text":"$124$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$126$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$127$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{10}$. **Step 2:** $\\frac{4}{10}×318=127$."},{"id":"D","text":"$318$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{10}$ of 318.
**Step 2:** $\frac{4}{10}×318=127$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '11a64899-007c-43fd-bd27-0f5f605d4399';

UPDATE public.questions SET
  question_text = 'If the original price is $280$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 10%.',
  options = '[{"id":"A","text":"$328$","is_correct":true,"explanation":"**Step 1:** $280×1.3=364$. **Step 2:** $364×0.9=328$."},{"id":"B","text":"$280$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$364$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$338$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $280×(1+30/100)=364$.
**Step 2:** Discount: $364×(1-10/100)=328$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '11d44383-956e-4809-8cc1-f19d79f51f69';

UPDATE public.questions SET
  question_text = 'A system of linear equations is graphed in the xy-plane. The equations are $x + 2y = 1$ and $x - 2y = -1$. Which of the following points represents a solution to the system? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(-1, 1)","is_correct":false,"explanation":"Choice A ((-1, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"(0, 1)","is_correct":false,"explanation":"Choice B ((0, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"(1, -1)","is_correct":false,"explanation":"Choice C ((1, -1)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(1, 0)","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A system of linear equations is graphed in the xy-plane. The equations are $x + 2y = 1$ and $x - 2y = -1$. Which of the following points represents a solution to the system? 

**Step 2 — Solve.** To solve the system of equations, we can use the elimination method.  Adding the two equations together, we get 2x = 0, which means x = 0.  Substituting 0 for x in either equation, we get 2y = 1, or y = 1/2. The solution to the system is (0, 1/2), but that point isn''t listed as an answer choice.  The point (1, 0) satisfies both equations, and therefore represents a solution to the system.

**Step 3 — Select D.** (1, 0)

**Distractor analysis:**
- **A** ((-1, 1)): Choice A ((-1, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ((0, 1)): Choice B ((0, 1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((1, -1)): Choice C ((1, -1)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"SYS","domain_id":"algebra","opensat_index":945,"opensat_domain":"Algebra","opensat_raw_id":"77814f0c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '120efc2c-792d-4311-a7e0-68f20347571d';

UPDATE public.questions SET
  question_text = 'A function f is defined by \(f(x) = \frac{x^2 - 4}{x + 2}\).  For what value of x does f(x) = 4?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function f is defined by \(f(x) = \frac{x^2 - 4}{x + 2}\).  For what value of x does f(x) = 4?

**Step 2 — Solve.** To find the value of x for which f(x) = 4, we set \(\frac{x^2 - 4}{x + 2}\) equal to 4 and solve for x: \begin{aligned} \frac{x^2 - 4}{x + 2} &= 4\\ x^2 - 4 &= 4(x + 2)\\ x^2 - 4 &= 4x + 8\\ x^2 - 4x - 12 &= 0\\ (x - 6)(x + 2) &= 0\\ x &= 6, -2 \end{aligned} Since the function is undefined when x = -2, the only solution is x = 6.

**Step 3 — Select D.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":953,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a12","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '125f87e2-4f74-4667-92f3-bbf446fec2da';

UPDATE public.questions SET
  question_text = 'If \(3x + 2y = 10\) and \(x - 2y = 6\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If \(3x + 2y = 10\) and \(x - 2y = 6\), what is the value of \(x\)?

**Step 2 — Solve.** We can solve this system of equations by elimination. Adding the two equations together, we get \(4x = 16\). Dividing both sides by 4, we find that \(x = 4\).

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":767,"opensat_domain":"Algebra","opensat_raw_id":"6835116d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '12e12293-d795-445a-892d-3afb1119332f';

COMMIT;
