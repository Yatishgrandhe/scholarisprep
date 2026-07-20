BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 5x + 6 = 0$, what is the sum of the solutions to the equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-5","is_correct":false,"explanation":"Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-6","is_correct":false,"explanation":"Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 5x + 6 = 0$, what is the sum of the solutions to the equation?

**Step 2 — Solve.** The sum of the solutions to the quadratic equation ax^2 + bx + c = 0 is equal to -b/a.  In this case, the sum of the solutions is -(-5)/1 = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (-5): Choice A (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-6): Choice C (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":271,"opensat_domain":"Algebra","opensat_raw_id":"94772ea2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5fa6e580-3eff-487b-a1a7-68a044eee3f9';

UPDATE public.questions SET
  question_text = 'If $x^2-4x+3 = 0$, what is the sum of the solutions of this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2-4x+3 = 0$, what is the sum of the solutions of this equation?

**Step 2 — Solve.** We can factor the quadratic equation: $(x-1)(x-3)=0$.  This tells us that the solutions to the equation are $x=1$ and $x=3$. The sum of these solutions is $1+3 = 4$.

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":975,"opensat_domain":"Advanced Math","opensat_raw_id":"2466792a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5fb30d75-26b3-4cdd-b60f-bc681b04472c';

UPDATE public.questions SET
  question_text = 'If the final reading is 61 when $r=8$, and the process is modeled by $7r+5$, what value of $x$ satisfies $7x+5=61$?',
  stimulus_text = 'A technician adjusts a sensor reading. First the raw value $r$ is scaled by 7, then 5 is added.',
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"After subtracting 5, divide by 7; this is too small."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the correct value."},{"id":"C","text":"$13$","is_correct":true,"explanation":"**Step 1:** $7x = 56$. **Step 2:** $x = 13$."},{"id":"D","text":"$7$","is_correct":false,"explanation":"That is the scale factor, not $x$."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Subtract 5: $7x=56$.
**Step 2:** Divide by 7: $x=13$.
**Step 3:** Verify: $7(13)+5=61$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5fdbe812-9d72-43c0-9b21-d70e817a2aa7';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $4(x-3)+2k = 14$ have solution $x=5$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=5$."},{"id":"B","text":"$3$","is_correct":true,"explanation":"Expand: $4x-12+2k=14$ → $4x=20$ → $x=5$ when $k=3$."},{"id":"C","text":"$4$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$5$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=5$: $4(5-k)+2k=14$.
**Step 2:** Simplify: $20-4k+2k=14$ → $20+-2k=14$.
**Step 3:** Solve for $k$: $-2k=-6$ → $k=3$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5fe4cdc8-d841-4e33-a3c4-e991aa37ece2';

UPDATE public.questions SET
  question_text = 'A survey of 200 people found that 120 of them prefer to drink coffee in the morning. What percentage of the people surveyed prefer to drink coffee in the morning?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30%","is_correct":false,"explanation":"Choice A (30%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40%","is_correct":false,"explanation":"Choice B (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120%","is_correct":false,"explanation":"Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 people found that 120 of them prefer to drink coffee in the morning. What percentage of the people surveyed prefer to drink coffee in the morning?

**Step 2 — Solve.** To find the percentage, divide the number who prefer coffee (120) by the total number surveyed (200) and multiply by 100%: (120/200) * 100% = 60%.

**Step 3 — Select C.** 60%

**Distractor analysis:**
- **A** (30%): Choice A (30%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40%): Choice B (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120%): Choice D (120%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":119,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5ff0d9a6-7195-431d-b683-0dc4bc8b906d';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 126°.',
  options = '[{"id":"A","text":"$126°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$54°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-126=54°$."},{"id":"C","text":"$64°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-126°=54°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '6011b208-0281-45a7-a4ff-18077961912b';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives us $A = \pi(5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":180,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '6012ec8f-6744-4576-b7c8-8d11f78a5053';

UPDATE public.questions SET
  question_text = 'What is the value of the expression  $$\frac{3^{12} \cdot 9^4}{27^3}$$? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3^9","is_correct":false,"explanation":"Choice A (3^9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3^{12}","is_correct":false,"explanation":"Choice B (3^{12}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3^{15}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3^{18}","is_correct":false,"explanation":"Choice D (3^{18}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of the expression  $$\frac{3^{12} \cdot 9^4}{27^3}$$? 

**Step 2 — Solve.** The expression can be rewritten as $\frac{3^{12} \cdot (3^2)^4}{(3^3)^3}$. Applying the rules of exponents, we have $\frac{3^{12} \cdot 3^8}{3^9}$, which simplifies to $3^{12+8-9} = 3^{11}$.

**Step 3 — Select C.** 3^{15}

**Distractor analysis:**
- **A** (3^9): Choice A (3^9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3^{12}): Choice B (3^{12}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3^{18}): Choice D (3^{18}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":220,"opensat_domain":"Advanced Math","opensat_raw_id":"26f856bf","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '60441817-3c99-4e6b-b6cc-9c5d4e390b09';

COMMIT;
