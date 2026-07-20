BEGIN;
UPDATE public.questions SET
  question_text = 'Given $x+y=58$ and $2x-y=38$, what is $x$?',
  stimulus_text = 'At a fundraiser, 58 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 32 VIP and 26 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$32$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=96$. **Step 2:** $x=32$."},{"id":"B","text":"$31$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$26$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$33$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=58+38$ → $3x=96$.
**Step 2:** $x=32$.
**Step 3:** Back-substitute: $y=26$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '7156ce00-6441-4147-9f02-42db1324da0f';

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 180 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '715faed4-8406-445d-97e2-48ab2e6b8fcc';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-7","is_correct":false,"explanation":"Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = 3x^2 - 2x + 1$. What is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the given equation yields $f(-2) = 3(-2)^2 - 2(-2) + 1$. This simplifies to $f(-2) = 3(4) + 4 + 1$, or $f(-2) = 12 + 4 + 1$, or $f(-2) = 19$.

**Step 3 — Select D.** 19

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-7): Choice B (-7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":688,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '71fd3538-6be5-4cf7-8064-4912ef8eb3a6';

UPDATE public.questions SET
  question_text = 'After $t=41$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+38$.',
  options = '[{"id":"A","text":"$198$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=41$."},{"id":"B","text":"$202$","is_correct":true,"explanation":"**Step 1:** Substitute $t=41$. **Step 2:** $d=4(41)+38=202$."},{"id":"C","text":"$203$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$42$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=41$: $d=4(41)+38$.
**Step 2:** Compute: $d=202$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '72141420-0a02-44ab-93e3-ebc027fee55a';

UPDATE public.questions SET
  question_text = 'If the function $f(x) = x^2 - 3x + 2$ is graphed in the $xy$-plane, what is the $y$-intercept of the graph?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-1","is_correct":false,"explanation":"Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1","is_correct":false,"explanation":"Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = x^2 - 3x + 2$ is graphed in the $xy$-plane, what is the $y$-intercept of the graph?

**Step 2 — Solve.** The y-intercept of a graph occurs when $x = 0$. So, to find the y-intercept, we substitute 0 for $x$ in the function: $f(0) = 0^2 - 3(0) + 2 = 2$. Therefore, the y-intercept of the graph is (0, 2).

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-1): Choice C (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1): Choice D (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":346,"opensat_domain":"Advanced Math","opensat_raw_id":"f123a45f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '726c9ac6-1677-4b93-abec-f2177df737c0';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radii to the endpoints of the chord. This creates an isosceles triangle where the chord is the base and the two radii are the legs.  The distance from the center of the circle to the chord is the height of this triangle.  Since the triangle is isosceles, the height bisects the base, making two right triangles with legs of length 4 units and a hypotenuse of length 5 units. Using the Pythagorean theorem, the height of the triangle is 3 units, which is the distance from the center of the circle to the chord.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":240,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '727857ce-110e-47b1-b4c9-9935b2bef88b';

UPDATE public.questions SET
  question_text = 'If $3x - 2y = 5$ and $x + 2y = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x - 2y = 5$ and $x + 2y = 7$, what is the value of $x$?

**Step 2 — Solve.** Notice that the $y$ terms have opposite signs in the two equations. Adding the two equations together, we get $(3x - 2y) + (x + 2y) = 5 + 7$. This simplifies to $4x = 12$, so $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":590,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '72991072-444c-4b7c-bfa0-ac86af8bef06';

UPDATE public.questions SET
  question_text = 'If the original price is $490$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 15%.',
  options = '[{"id":"A","text":"$541$","is_correct":true,"explanation":"**Step 1:** $490×1.3=637$. **Step 2:** $637×0.85=541$."},{"id":"B","text":"$490$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$637$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$551$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $490×(1+30/100)=637$.
**Step 2:** Discount: $637×(1-15/100)=541$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.065Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '729e127a-efed-4bc7-b5b8-99be3eacd32f';

COMMIT;
