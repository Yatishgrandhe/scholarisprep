BEGIN;
UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 158°.',
  options = '[{"id":"A","text":"$158°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$22°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-158=22°$."},{"id":"C","text":"$32°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-158°=22°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'da16ec58-e6dc-49f1-9d9b-a3dadac8709f';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 20 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{26}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{25}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{26}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{25}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 25 total. **Step 2:** P $=\\frac{5}{25}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 25.
**Step 2:** Conditional probability $=\frac{5}{25}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'da32a04a-3154-4447-af8a-55fbbf71569b';

UPDATE public.questions SET
  question_text = 'The expression  $\frac{x^2 - 16}{x^2 - 6x + 8}$ is equivalent to $\frac{x + 4}{x - 2}$ when $x \neq 2$ or $x \neq 4$. What is the simplified form of the expression  $\frac{x^2 - 16}{x^2 - 6x + 8}$ when $x \neq 2$ or $x \neq 4$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x+4}{x-2}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{x-4}{x-2}$","is_correct":false,"explanation":"Choice B ($\\frac{x-4}{x-2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{x+2}{x-4}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"$\\frac{x-2}{x+4}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The expression  $\frac{x^2 - 16}{x^2 - 6x + 8}$ is equivalent to $\frac{x + 4}{x - 2}$ when $x \neq 2$ or $x \neq 4$. What is the simplified form of the expression  $\frac{x^2 - 16}{x^2 - 6x + 8}$ when $x \neq 2$ or $x \neq 4$?

**Step 2 — Solve.** We begin by factoring the numerator and denominator: $\frac{x^2 - 16}{x^2 - 6x + 8} = \frac{(x + 4)(x - 4)}{(x - 2)(x - 4)}$. Because $x \neq 2$ or $x \neq 4$, we can cancel out the common factor of $(x - 4)$, leaving us with $\frac{x+4}{x-2}$.

**Step 3 — Select A.** $\frac{x+4}{x-2}$

**Distractor analysis:**
- **B** ($\frac{x-4}{x-2}$): Choice B ($\frac{x-4}{x-2}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{x+2}{x-4}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x-2}{x+4}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":408,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'da50dfd1-9b3a-4ba8-bd62-44c7a2ca984e';

UPDATE public.questions SET
  question_text = 'The function $f$ is defined by $f(x) = x^3 + 2x - 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f$ is defined by $f(x) = x^3 + 2x - 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting $-2$ for $x$ into the equation for $f(x)$ gives us: $f(-2) = (-2)^3 + 2(-2) - 1$. Simplifying, we get: $f(-2) = -8 - 4 - 1$, or $f(-2) = -13$.

**Step 3 — Select A.** -13

**Distractor analysis:**
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":243,"opensat_domain":"Advanced Math","opensat_raw_id":"76ab9e6b","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'da8e52bc-c15e-40e8-aa25-944f3363caf6';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only oranges?

**Step 2 — Solve.** We can use a Venn diagram to visualize the information. Since 20 people like both apples and oranges, 60 - 20 = 40 people like only apples and 40 - 20 = 20 people like only oranges.

**Step 3 — Select A.** 10

**Distractor analysis:**
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":395,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'daede6bd-b544-4439-b2b2-b52f2dbb893c';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-1)^2+3$, where $t$ is seconds. What is $h(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$21$","is_correct":true,"explanation":"**Step 1:** $h(4)=2(4-1)^2+3=2(9)+3=21$."},{"id":"C","text":"$19$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$5$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=4$: $h(4)=2(4-1)^2+3$.
**Step 2:** $(4-1)^2=9$ → $h(4)=21$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'dafad2cd-be11-45f3-9833-11203db09919';

UPDATE public.questions SET
  question_text = 'If the original price is $240$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 10%.',
  options = '[{"id":"A","text":"$270$","is_correct":true,"explanation":"**Step 1:** $240×1.25=300$. **Step 2:** $300×0.9=270$."},{"id":"B","text":"$240$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$300$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$280$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $240×(1+25/100)=300$.
**Step 2:** Discount: $300×(1-10/100)=270$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'db776fc0-c574-4b96-80dc-85b2629ec1bb';

UPDATE public.questions SET
  question_text = 'If  $x + 3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-4","is_correct":false,"explanation":"Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $x + 3 = 7$, what is the value of $x$?

**Step 2 — Solve.** Subtracting 3 from both sides of the equation, we get $x = 7 - 3$, or $x = 4$.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (-4): Choice A (-4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":434,"opensat_domain":"Algebra","opensat_raw_id":"random_id_2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'dbc63888-6da3-400a-9f70-53787f2ed56c';

COMMIT;
