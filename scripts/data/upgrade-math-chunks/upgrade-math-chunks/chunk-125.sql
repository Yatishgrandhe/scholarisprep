BEGIN;
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius.  Draw a perpendicular segment from the center of the circle to the chord.  This perpendicular segment bisects the chord, forming two right triangles. The hypotenuse of each right triangle is a radius of the circle (5 units), and one leg is half the length of the chord (4 units).  Using the Pythagorean Theorem, the other leg (the distance from the center of the circle to the chord) is $\sqrt{5^2 - 4^2} = \sqrt{9} = 3$ units.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":900,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ae33bae0-70f9-4c64-8762-4ce9f4561abd';

UPDATE public.questions SET
  question_text = 'The area of a triangle is 42 square units. If the base of the triangle has a length of 14 units, what is the length of the altitude to that base?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The area of a triangle is 42 square units. If the base of the triangle has a length of 14 units, what is the length of the altitude to that base?

**Step 2 — Solve.** The area of a triangle is given by the formula (1/2)bh, where b is the length of the base and h is the length of the altitude.  We know the area is 42 square units and the base is 14 units.  Substituting these values into the formula, we get 42 = (1/2)(14)h.  Simplifying, we get 42 = 7h.  Dividing both sides by 7, we get h = 6. Therefore, the length of the altitude is 6 units.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":414,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ae472447-3873-4e0d-8c45-c3069e861d62';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn diagram to visualize the information.  Since 20 people like both apples and oranges, 60 - 20 = 40 people like only apples, and 40 - 20 = 20 people like only oranges.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":952,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'af0fc3c3-a6e6-44ef-a4dc-7c1eacdb5609';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x + 1 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x + 1 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression on the left side of the equation is a perfect square trinomial: $(x + 1)^2 = 0$. Taking the square root of both sides gives $x + 1 = 0$. Subtracting 1 from both sides gives $x = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":285,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'af256cb9-d7cb-40a4-861a-12233066872e';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can add the two equations together.  This eliminates the $y$ terms, leaving us with $4x = 16$.  Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":358,"opensat_domain":"Algebra","opensat_raw_id":"e8460d41","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'af314cbe-eb55-4456-80c8-f2a8977dbe4a';

UPDATE public.questions SET
  question_text = 'If $x + 3y = 10$ and $x = 2y$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x + 3y = 10$ and $x = 2y$, what is the value of $y$?

**Step 2 — Solve.** Substitute $2y$ for $x$ in the first equation: $2y + 3y = 10$. Combine like terms: $5y = 10$.  Divide both sides by 5 to get $y = 2$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":587,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'af437a6a-1e0e-4dd6-8661-f83efbe1a372';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area of the circle, in square centimeters? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":false,"explanation":"Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"78.5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area of the circle, in square centimeters? (Use $\pi = 3.14$)

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius. Substituting $r = 5$ cm and $\pi = 3.14$, we get $A = 3.14 \cdot 5^2 = 3.14 \cdot 25 = 78.5$ square centimeters.

**Step 3 — Select C.** 78.5

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (31.4): Choice B (31.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":974,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_24","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'af7cefe5-be12-4d33-a8ea-82703589e700';

UPDATE public.questions SET
  question_text = 'After $t=5$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+2$.',
  options = '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=5$."},{"id":"B","text":"$22$","is_correct":true,"explanation":"**Step 1:** Substitute $t=5$. **Step 2:** $d=4(5)+2=22$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$6$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=5$: $d=4(5)+2$.
**Step 2:** Compute: $d=22$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'af84a285-ef7b-400d-baa3-0a7831e8a178';

COMMIT;
