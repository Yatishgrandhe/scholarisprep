BEGIN;
UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-40)^2+42$, where $t$ is seconds. What is $h(43)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(43)=3(43-40)^2+42=3(9)+42=69$."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=43$: $h(43)=3(43-40)^2+42$.
**Step 2:** $(43-40)^2=9$ → $h(43)=69$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e8f3bbb8-0e85-4382-99c0-31d99e193b4b';

UPDATE public.questions SET
  question_text = 'If the original price is $270$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 25%.',
  options = '[{"id":"A","text":"$254$","is_correct":true,"explanation":"**Step 1:** $270×1.25=338$. **Step 2:** $338×0.75=254$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$338$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$264$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $270×(1+25/100)=338$.
**Step 2:** Discount: $338×(1-25/100)=254$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e8f48bfa-7e6b-4853-b55d-b8dc1b2d53a8';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-4)^2+6$, where $t$ is seconds. What is $h(7)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$33$","is_correct":true,"explanation":"**Step 1:** $h(7)=3(7-4)^2+6=3(9)+6=33$."},{"id":"C","text":"$30$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=7$: $h(7)=3(7-4)^2+6$.
**Step 2:** $(7-4)^2=9$ → $h(7)=33$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e91e9bef-3ea9-4ff6-b37e-87e1d714f661';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 6, 10, 14, 18, and one score $x$ is missing. The mean is 10.4.',
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$4$","is_correct":true,"explanation":"**Step 1:** Sum needed $=10.4×5=52$. **Step 2:** $x=52-48=4$."},{"id":"C","text":"$6$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$10$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=10.4×5=52$.
**Step 2:** $x=52-48=4$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e9356407-f8f9-4439-96c7-877a768d4670';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 150°.',
  options = '[{"id":"A","text":"$150°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$30°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-150=30°$."},{"id":"C","text":"$40°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-150°=30°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e968812c-62af-4f7c-8b66-deb0f81c3a5e';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 175 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e96b51ce-e5e6-4ee9-acb2-d50d90045a81';

UPDATE public.questions SET
  question_text = 'What is the value of  $x$ in the equation  $\frac{2x+1}{x-1} = \frac{3x-1}{x-2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** What is the value of  $x$ in the equation  $\frac{2x+1}{x-1} = \frac{3x-1}{x-2}$?

**Step 2 — Solve.** To solve for $x$, we can cross-multiply: $(2x+1)(x-2) = (3x-1)(x-1)$. Expanding both sides gives us $2x^2 - 3x - 2 = 3x^2 - 4x + 1$. Combining like terms, we have $0 = x^2 - x + 3$. This quadratic equation doesn''t factor easily, so we can use the quadratic formula: \begin{align*} x &= \frac{-b \pm \sqrt{b^2 - 4ac}}{2a} \\\ &= \frac{1 \pm \sqrt{(-1)^2 - 4(1)(3)}}{2(1)} \\\ &= \frac{1 \pm \sqrt{-11}}{2} \end{align*} Since the discriminant is negative, the equation has no real solutions.  Therefore, the only possible value of $x$ is 3.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":66,"opensat_domain":"Advanced Math","opensat_raw_id":"89f638d2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e9c7a1b9-f9c8-4311-a3b8-f879552e2bdb';

UPDATE public.questions SET
  question_text = 'A triangle has angles that measure 60 degrees, 60 degrees, and 60 degrees. What is the area of the triangle if the length of one side is 4?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4\\sqrt{3}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A triangle has angles that measure 60 degrees, 60 degrees, and 60 degrees. What is the area of the triangle if the length of one side is 4?

**Step 2 — Solve.** A triangle with all angles equal to 60 degrees is an equilateral triangle.  The area of an equilateral triangle with side length s is given by $\frac{\sqrt{3}}{4}s^2$. Substituting s = 4 gives $\frac{\sqrt{3}}{4}(4)^2 = 4\sqrt{3}$.  Therefore, the area of the triangle is $4\sqrt{3}$.

**Step 3 — Select C.** 4\sqrt{3}

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":199,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ea0efcdb-e6fe-4e09-8490-4dbbecd876bc';

COMMIT;
