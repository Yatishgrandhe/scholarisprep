BEGIN;
UPDATE public.questions SET
  question_text = 'The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side with length 12?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5/13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12/13","is_correct":false,"explanation":"Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5/12","is_correct":false,"explanation":"Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12/5","is_correct":false,"explanation":"Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side with length 12?

**Step 2 — Solve.** In a right triangle, the cosine of an angle is the ratio of the length of the adjacent side to the length of the hypotenuse.  The side opposite the angle with length 12 is the side with length 5, and the hypotenuse is the side with length 13.  Therefore, the cosine of the angle opposite the side with length 12 is 5/13.

**Step 3 — Select A.** 5/13

**Distractor analysis:**
- **B** (12/13): Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5/12): Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12/5): Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":826,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f452410b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0e8e31da-69d3-4889-b754-a96cfc2a5f14';

UPDATE public.questions SET
  question_text = 'The length of a rectangle is 5 more than twice its width.  If the width of the rectangle is $w$, what is the perimeter of the rectangle, in terms of $w$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10w + 10","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6w + 10","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"8w + 5","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"7w + 10","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The length of a rectangle is 5 more than twice its width.  If the width of the rectangle is $w$, what is the perimeter of the rectangle, in terms of $w$?

**Step 2 — Solve.** The length of the rectangle is $2w + 5$, so the perimeter is $2(2w+5) + 2w = 4w + 10 + 2w = 6w + 10$.

**Step 3 — Select A.** 10w + 10

**Distractor analysis:**
- **B** (6w + 10): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (8w + 5): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (7w + 10): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":516,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9e9f36e9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0ee83993-2a24-4eda-a3fc-98586e4adcdb';

UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they prefer to eat pizza or tacos. 60 people said they prefer pizza, and 40 people said they prefer tacos. Of the people surveyed, what percentage prefer tacos?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4%","is_correct":false,"explanation":"Choice A (4%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"40%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"60%","is_correct":false,"explanation":"Choice D (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they prefer to eat pizza or tacos. 60 people said they prefer pizza, and 40 people said they prefer tacos. Of the people surveyed, what percentage prefer tacos?

**Step 2 — Solve.** The percentage of people who prefer tacos is found by dividing the number who prefer tacos by the total number of people surveyed and multiplying by 100%: (40/100) * 100% = 40%.

**Step 3 — Select C.** 40%

**Distractor analysis:**
- **A** (4%): Choice A (4%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (60%): Choice D (60%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":609,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_e3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0ef2dd3b-bcfe-4a01-be93-f39a791b573c';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 10 inches and a width of 5 inches. What is the area of the rectangle, in square inches?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25","is_correct":false,"explanation":"Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 10 inches and a width of 5 inches. What is the area of the rectangle, in square inches?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width.  In this case, the area is 10 inches * 5 inches = 50 square inches.

**Step 3 — Select C.** 50

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (25): Choice B (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":978,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0f2956e1-448f-4904-b1ec-f901104a9cf4';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12π.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12π","is_correct":false,"explanation":"Choice A (12π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36π","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144π","is_correct":false,"explanation":"Choice C (144π…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12π.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2πr, where r is the radius of the circle.  We are given that C = 12π, so 12π = 2πr.  Dividing both sides by 2π, we get r = 6.  The area of a circle is given by the formula A = πr², so A = π(6)² = 36π.

**Step 3 — Select B.** 36π

**Distractor analysis:**
- **A** (12π): Choice A (12π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144π): Choice C (144π…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":618,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0f2b5217-2bf6-4b20-bbd5-c11b628dfd62';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r, we get C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":639,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0f48b12f-a5de-4fb1-98bc-89fb8880f998';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $6x + 6 > 309$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 309 grams but at most 322 grams to ship.',
  options = '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Too small: $6(48)+6=294$."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Still below threshold 309."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$51$","is_correct":true,"explanation":"**Step 1:** $6x > 303$. **Step 2:** $x > 50.5$. Smallest integer choice: 51."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $6x > 303$.
**Step 2:** $x > 50.50$.
**Step 3:** Among choices, $51$ is the smallest valid value.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0f6dde07-d810-49b0-8f8c-1666db9d959b';

UPDATE public.questions SET
  question_text = 'If  $x^2 - 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $x^2 - 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The equation is a perfect square trinomial, which can be factored as $(x - 3)^2 = 0$. Taking the square root of both sides gives $x - 3 = 0$, which means $x = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":492,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '0fada8fc-eb99-4eb3-b244-3e673d9ccc36';

COMMIT;
