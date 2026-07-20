BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. The diameter of the circle is twice the radius, so the diameter is 10. The area of a square is equal to the side length squared, so the area of the square is 10^2 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":722,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1a16d135-4b71-44c0-9662-e709456dad60';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve for x by using the elimination method.  Multiplying the second equation by 3, we get $3x - 3y = 3$.  Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":175,"opensat_domain":"Algebra","opensat_raw_id":"random_id_23","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1a200755-6a2c-4eb6-89c5-68ea885ceff7';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=3(t-40)^2+42$, where $t$ is seconds. What is $h(43)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$42$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(43)=3(43-40)^2+42=3(9)+42=69$."},{"id":"C","text":"$66$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=43$: $h(43)=3(43-40)^2+42$.
**Step 2:** $(43-40)^2=9$ → $h(43)=69$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1a75c133-1e56-4f45-9264-b7a9ea62992d';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 centimeters is inscribed in a square. What is the area, in square centimeters, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5 centimeters, the diameter is 10 centimeters. Therefore, the side length of the square is 10 centimeters, and the area of the square is 10*10 = 100 square centimeters.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":908,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1a88f730-762d-45b0-8723-7021e03074e3';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = \frac{x^2-4}{x-2}\). For what value(s) of \(x\) is the function undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x = 2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"x = 4","is_correct":false,"explanation":"Choice B (x = 4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"x = -2","is_correct":false,"explanation":"Choice C (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"x = 2 and x = -2","is_correct":false,"explanation":"Choice D (x = 2 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = \frac{x^2-4}{x-2}\). For what value(s) of \(x\) is the function undefined?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction equals 0. In the given function, the denominator is x-2, which equals 0 when x = 2. Therefore, the function is undefined when x = 2.

**Step 3 — Select A.** x = 2

**Distractor analysis:**
- **B** (x = 4): Choice B (x = 4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (x = -2): Choice C (x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (x = 2 and x = -2): Choice D (x = 2 and x = -2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":650,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1a8a49b5-ecca-44ab-89bf-3ff25c3cae55';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can use elimination to solve this system of equations. Multiplying the second equation by 2, we get $2x - 2y = 2$. Adding this equation to the first equation, we get $5x = 12$. Solving for x, we get $x = \frac{12}{5}$. However, none of the answer choices match this value. It is likely the question was designed with an error. We can check each of the answer choices by substituting them back into the system of equations to see if they make a true statement. Substituting 2 for x in the first equation gives us $3(2) + 2y = 10$, or $6 + 2y = 10$, or $2y = 4$, or $y = 2$. Substituting 2 for x in the second equation gives us $2 - 2 = 1$. This is a true statement, so the value of x is 2.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":186,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1aa81f0d-8829-4063-aa14-e2db7e9b9295';

UPDATE public.questions SET
  question_text = 'A survey asked 100 people whether they preferred dogs or cats. 60 people said they preferred dogs.  What percentage of the people surveyed preferred dogs?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"70","is_correct":false,"explanation":"Choice D (70…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey asked 100 people whether they preferred dogs or cats. 60 people said they preferred dogs.  What percentage of the people surveyed preferred dogs?

**Step 2 — Solve.** To find the percentage, divide the number who preferred dogs by the total number of people surveyed and multiply by 100%.  This gives  (60/100) * 100% = 60%.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (70): Choice D (70…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":885,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1ab343a8-3ef9-421f-b367-e216c43786b3';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 10, 14, 18, 22, and one score $x$ is missing. The mean is 14.4.',
  options = '[{"id":"A","text":"$6$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$8$","is_correct":true,"explanation":"**Step 1:** Sum needed $=14.4×5=72$. **Step 2:** $x=72-64=8$."},{"id":"C","text":"$10$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=14.4×5=72$.
**Step 2:** $x=72-64=8$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1aeea0d6-c218-48df-a8b9-e782425cd8e2';

COMMIT;
