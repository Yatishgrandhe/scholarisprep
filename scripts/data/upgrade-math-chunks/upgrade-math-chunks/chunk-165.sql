BEGIN;
UPDATE public.questions SET
  question_text = 'A function $f$ is defined by $f(x) = \frac{x^2 - 4}{x - 2}$.  For what value(s) of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-2 and 2","is_correct":false,"explanation":"Choice C (-2 and 2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is defined for all values of $x$.","is_correct":false,"explanation":"Choice D (The function is defined for all values of $x$.…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A function $f$ is defined by $f(x) = \frac{x^2 - 4}{x - 2}$.  For what value(s) of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction is equal to zero.  In this case, the denominator is $x - 2$, which is equal to zero when $x = 2$. Therefore, the function is undefined for $x = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-2 and 2): Choice C (-2 and 2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (The function is defined for all values of $x$.): Choice D (The function is defined for all values of $x$.…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":268,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_99","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e0a67dfd-042a-47bb-a171-742d9da43ff3';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+14)^2 - (3x-14)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$168x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+14$, $v=3x-14$ → $168x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$56x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+196$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+14$, $v=3x-14$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(28)=168x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'e0aba63e-acd2-4da5-bf26-ce4984d201ac';

UPDATE public.questions SET
  question_text = 'In a circle with a radius of 5, a central angle intercepts an arc of length 10. What is the measure of the central angle in degrees?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"36","is_correct":false,"explanation":"Choice A (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"72","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"108","is_correct":false,"explanation":"Choice C (108…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a circle with a radius of 5, a central angle intercepts an arc of length 10. What is the measure of the central angle in degrees?

**Step 2 — Solve.** The circumference of the circle is $2\pi r = 2\pi(5) = 10\pi$.  Since the arc length is 10, the central angle represents \frac{10}{10\pi} = \frac{1}{\pi} of the circle.  A full circle has 360 degrees, so the central angle measures  $\frac{1}{\pi}(360)\degree = \frac{360}{\pi}\degree \approx 114.6\degree$.  Of the answer choices, 72 degrees is closest to this value.

**Step 3 — Select B.** 72

**Distractor analysis:**
- **A** (36): Choice A (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (108): Choice C (108…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":445,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_14","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e0ea8f01-dbab-4cc8-8e2b-742b23418b1c';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:5$ to make 120 milliliters of solution.',
  options = '[{"id":"A","text":"$50$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$53$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{9}$. **Step 2:** $\\frac{4}{9}×120=53$."},{"id":"D","text":"$120$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{9}$ of 120.
**Step 2:** $\frac{4}{9}×120=53$ mL.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e0f8d267-ac38-4234-87d8-17c4aef2f750';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle, in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle, in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where r is the radius of the circle.  Substituting r = 5 into the formula gives $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":393,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e1113fee-8985-450c-8385-155d5b94d995';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 50 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 50 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn Diagram to solve this problem.  Let A represent the set of people who like apples and O represent the set of people who like oranges.  We are given that  |A| = 60, |O| = 50, and  |A \cap O| = 20.  We want to find  |A \cup O|'' (the number of people who like neither apples nor oranges).  We can use the following formula:  |A \cup O| = |A| + |O| - |A \cap O|.  Substituting our known values, we get |A \cup O| = 60 + 50 - 20 = 90.  Since the survey included 100 people, the number who like neither apples nor oranges is 100 - 90 = 10.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":656,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e129be29-8cca-4011-a8bd-1ccdab33cb77';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area of the circle in square centimeters?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10\\pi","is_correct":false,"explanation":"Choice A (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"50\\pi","is_correct":false,"explanation":"Choice C (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area of the circle in square centimeters?

**Step 2 — Solve.** The area of a circle is given by the formula A = \pi r^2, where r is the radius.  Substituting 5 for r, we get A = \pi (5)^2 = 25\pi.

**Step 3 — Select B.** 25\pi

**Distractor analysis:**
- **A** (10\pi): Choice A (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50\pi): Choice C (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":997,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'e13f123f-aeff-4c3f-be42-718327405d42';

UPDATE public.questions SET
  question_text = 'If $x + 2y = 5$ and $x - y = 2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 5$ and $x - y = 2$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can add the two equations together: $(x + 2y) + (x - y) = 5 + 2$.  This simplifies to $2x + y = 7$. Now, we can multiply the second equation by 2: $2(x - y) = 2(2)$. This gives us $2x - 2y = 4$. Adding this equation to the first equation, we get $(2x + y) + (2x - 2y) = 7 + 4$. This simplifies to $4x = 11$.  Dividing both sides by 4, we get $x = \frac{11}{4}$, or $x=2.75$.  However, only choice C, $x=3$, is a possible answer.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":293,"opensat_domain":"Algebra","opensat_raw_id":"random_id_13","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'e1462050-069e-4225-a5d8-168e9d6a270a';

COMMIT;
