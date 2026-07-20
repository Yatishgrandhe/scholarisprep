BEGIN;
UPDATE public.questions SET
  question_text = 'In the figure below, $\triangle ABC$ is a right triangle with right angle at $C$. If $AC=4$ and $BC=3$, what is the length of $AB$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the figure below, $\triangle ABC$ is a right triangle with right angle at $C$. If $AC=4$ and $BC=3$, what is the length of $AB$?

**Step 2 — Solve.** Since $\triangle ABC$ is a right triangle, we can use the Pythagorean Theorem to find the length of the hypotenuse, $AB$. The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides.  Therefore, $AB^2 = AC^2 + BC^2 = 4^2 + 3^2 = 16 + 9 = 25$. Taking the square root of both sides, we find $AB = \sqrt{25} = 5$.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":670,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"21f24749","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '075c8292-ab3d-455a-9f39-60f1e2a49121';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of the circle?  ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of the circle?  

**Step 2 — Solve.** The area of a circle is given by the formula A = \pi r^2, where r is the radius of the circle.  Substituting r = 5 into the formula gives A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":822,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0796f0f8-2f9c-4fda-a2af-10978c4c7d4b';

UPDATE public.questions SET
  question_text = 'If the original price is $350$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 25%.',
  options = '[{"id":"A","text":"$315$","is_correct":true,"explanation":"**Step 1:** $350×1.2=420$. **Step 2:** $420×0.75=315$."},{"id":"B","text":"$350$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$420$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$325$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $350×(1+20/100)=420$.
**Step 2:** Discount: $420×(1-25/100)=315$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '07ad46f6-d18a-45ad-bfb2-ce275f3d4bc7';

UPDATE public.questions SET
  question_text = 'If the original price is $300$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 20%.',
  options = '[{"id":"A","text":"$300$","is_correct":true,"explanation":"**Step 1:** $300×1.25=375$. **Step 2:** $375×0.8=300$."},{"id":"B","text":"$300$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$375$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $300×(1+25/100)=375$.
**Step 2:** Discount: $375×(1-20/100)=300$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '07c3ecaf-0146-474d-ae7d-b46887b230e2';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = x^2 + 3x - 10. What is the value of *f*(-5) ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-20","is_correct":false,"explanation":"Choice A (-20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-10","is_correct":false,"explanation":"Choice B (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0","is_correct":false,"explanation":"Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = x^2 + 3x - 10. What is the value of *f*(-5) ?

**Step 2 — Solve.** Substituting -5 for x in the function, we get f(-5) = (-5)^2 + 3(-5) - 10. Simplifying, we get f(-5) = 25 - 15 - 10 = 10.

**Step 3 — Select D.** 10

**Distractor analysis:**
- **A** (-20): Choice A (-20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-10): Choice B (-10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (0): Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1014,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '07e2964b-0ab1-4ab9-9ff2-3a55282e38fa';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area of the circle, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area of the circle, in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":684,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '081f0883-0c20-4f40-92df-a26bf9cddbd3';

UPDATE public.questions SET
  question_text = 'The graph of the function \(f(x) = x^2 + 2x - 3\) intersects the x-axis at two points. What are the coordinates of these points of intersection?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(1, 0) and (-3, 0)","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"(-1, 0) and (3, 0)","is_correct":false,"explanation":"Choice B ((-1, 0) and (3, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"(2, 0) and (-1, 0)","is_correct":false,"explanation":"Choice C ((2, 0) and (-1, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"(-2, 0) and (1, 0)","is_correct":false,"explanation":"Choice D ((-2, 0) and (1, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The graph of the function \(f(x) = x^2 + 2x - 3\) intersects the x-axis at two points. What are the coordinates of these points of intersection?

**Step 2 — Solve.** The x-intercepts of a function occur where the graph intersects the x-axis, meaning when y = 0. So, we need to solve the equation \(0 = x^2 + 2x - 3\). Factoring the quadratic, we get \(0 = (x+3)(x-1)\), which means \(x = -3\) or \(x = 1\).  Since the y-coordinate at the x-intercept is always 0, the points of intersection are (1, 0) and (-3, 0).

**Step 3 — Select A.** (1, 0) and (-3, 0)

**Distractor analysis:**
- **B** ((-1, 0) and (3, 0)): Choice B ((-1, 0) and (3, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ((2, 0) and (-1, 0)): Choice C ((2, 0) and (-1, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ((-2, 0) and (1, 0)): Choice D ((-2, 0) and (1, 0)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":387,"opensat_domain":"Advanced Math","opensat_raw_id":"8436f365","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '082cc69d-5b4b-4c0b-92a9-476dbda2a77b';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 110°.',
  options = '[{"id":"A","text":"$110°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$70°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-110=70°$."},{"id":"C","text":"$80°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-110°=70°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.056Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '083a9429-188f-4648-ac27-6b5e4f270b72';

COMMIT;
