BEGIN;
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 36 ft from the wall and the top is 43 ft high.',
  options = '[{"id":"A","text":"$54$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$79$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$55$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$56$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{36^2+43^2}=56$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 36 and 43.
**Step 2:** $c=\sqrt{36^2+43^2}=56$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '3836c1b8-8ba9-4066-80df-1e569fea430d';

UPDATE public.questions SET
  question_text = 'The function $f$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-2","is_correct":false,"explanation":"Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f$ is defined by $f(x) = x^2 + 3x - 4$. What is the value of $f(2)$?

**Step 2 — Solve.** To find the value of $f(2)$, we substitute 2 for $x$ in the equation: $f(2) = 2^2 + 3(2) - 4$. Simplifying, we get $f(2) = 4 + 6 - 4$, or $f(2) = 6$. Therefore, the value of $f(2)$ is 6.

**Step 3 — Select D.** 10

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-2): Choice B (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":521,"opensat_domain":"Advanced Math","opensat_raw_id":"e404a748","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '38866a63-2f63-4ab4-91a8-e9442ef247ab';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\pi$","is_correct":false,"explanation":"Choice A ($\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$5\\pi$","is_correct":false,"explanation":"Choice B ($5\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$10\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$25\\pi$","is_correct":false,"explanation":"Choice D ($25\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle, in centimeters? (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  Substituting 5 for $r$, we get $C = 2\pi(5) = 10\pi$.

**Step 3 — Select C.** $10\pi$

**Distractor analysis:**
- **A** ($\pi$): Choice A ($\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($5\pi$): Choice B ($5\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($25\pi$): Choice D ($25\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":390,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"34652f15","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '38891835-c261-4958-afc9-646e7689f5e9';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of $10\pi$ centimeters. What is the area of the circle, in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $10\pi$ centimeters. What is the area of the circle, in square centimeters?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  We are given that the circumference is $10\pi$ centimeters, so $10\pi = 2\pi r$.  Dividing both sides by $2\pi$ gives us $r = 5$. The area of a circle is given by the formula $A = \pi r^2$, so the area of this circle is $A = \pi (5)^2 = 25\pi$ square centimeters.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":967,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '3920ed28-333d-4dd5-afdb-aca3fd6f5404';

UPDATE public.questions SET
  question_text = 'For what values of $x$ is the expression \(\frac{x^2 - 9}{x^2 + 3x - 10}\) undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 2 or x = 5","is_correct":false,"explanation":"Choice A (x = 2 or x = 5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"x = -5 or x = 2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x = -3 or x = 3","is_correct":false,"explanation":"Choice C (x = -3 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = -5 or x = 3","is_correct":false,"explanation":"Choice D (x = -5 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** For what values of $x$ is the expression \(\frac{x^2 - 9}{x^2 + 3x - 10}\) undefined?

**Step 2 — Solve.** A rational expression is undefined when the denominator equals 0. Factoring the denominator, we get \(x^2 + 3x - 10 = (x + 5)(x - 2)\).  The denominator is equal to zero when x = -5 or x = 2.

**Step 3 — Select B.** x = -5 or x = 2

**Distractor analysis:**
- **A** (x = 2 or x = 5): Choice A (x = 2 or x = 5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -3 or x = 3): Choice C (x = -3 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = -5 or x = 3): Choice D (x = -5 or x = 3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":904,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '394e03e3-dc2f-4b1f-a1e3-c231b1c1dd6e';

UPDATE public.questions SET
  question_text = 'A square has a side length of 6.  What is the length of the diagonal of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":false,"explanation":"Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6\\sqrt{2}","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12\\sqrt{2}","is_correct":false,"explanation":"Choice D (12\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 6.  What is the length of the diagonal of the square?

**Step 2 — Solve.** The diagonal of a square divides the square into two right triangles.  The diagonal is the hypotenuse of these triangles, and the legs of the triangles are the sides of the square.  Therefore, we can use the Pythagorean theorem to find the length of the diagonal.  Let the length of the diagonal be .  Then, .  Simplifying this equation gives .  Taking the square root of both sides gives .

**Step 3 — Select B.** 6\sqrt{2}

**Distractor analysis:**
- **A** (6): Choice A (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12\sqrt{2}): Choice D (12\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":519,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '39a867e8-5bdc-4314-81da-be0f41119dd5';

UPDATE public.questions SET
  question_text = 'A bakery sells two types of cookies: chocolate chip and peanut butter. On Tuesday, the bakery sold 150 cookies in total. If 60% of the cookies sold were chocolate chip, how many peanut butter cookies were sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"60","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"90","is_correct":false,"explanation":"Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"150","is_correct":false,"explanation":"Choice C (150…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"250","is_correct":false,"explanation":"Choice D (250…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A bakery sells two types of cookies: chocolate chip and peanut butter. On Tuesday, the bakery sold 150 cookies in total. If 60% of the cookies sold were chocolate chip, how many peanut butter cookies were sold?

**Step 2 — Solve.** If 60% of the 150 cookies were chocolate chip, then 60/100 * 150 = 90 chocolate chip cookies were sold.  Since the bakery sold 150 cookies in total, 150 - 90 = 60 peanut butter cookies were sold.

**Step 3 — Select A.** 60

**Distractor analysis:**
- **B** (90): Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (150): Choice C (150…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (250): Choice D (250…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":234,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '39ba90ea-711a-4c90-8bfb-7a6d602f41b2';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(4x+42)^2 - (4x-42)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$672x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=4x+42$, $v=4x-42$ → $672x$."},{"id":"B","text":"$8x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$168x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$16x^2+1764$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=4x+42$, $v=4x-42$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(8x)(84)=672x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.062Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '39da5e4f-080b-4c34-ac7f-cf9254bc0c97';

COMMIT;
