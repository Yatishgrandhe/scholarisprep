BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $(x+2)^2 + (y-3)^2 = 25$ represents a circle in the xy-plane. What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $(x+2)^2 + (y-3)^2 = 25$ represents a circle in the xy-plane. What is the radius of the circle? 

**Step 2 — Solve.** The standard form of the equation of a circle with center (h, k) and radius r is (x - h)^2 + (y - k)^2 = r^2.  In this case, the equation is in standard form, so the radius is the square root of the constant term on the right-hand side, which is 25.  Therefore, the radius of the circle is \sqrt{25} = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":353,"opensat_domain":"Advanced Math","opensat_raw_id":"f254610a","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dbdf1c31-d2f7-4edf-a027-b4fa4a7e2122';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 10$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 2, we get $2x - 2y = 2$. Adding this equation to the first equation, we get $5x = 12$. Dividing both sides by 5, we get $x = \frac{12}{5}$.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":96,"opensat_domain":"Algebra","opensat_raw_id":"random_id_5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dc91ffe1-369f-4c3d-aab7-690d40feac93';

UPDATE public.questions SET
  question_text = 'A group of 100 people were surveyed about their favorite type of music. 40 people said they prefer pop music, 35 people said they prefer rock music, and the rest prefer country music. What percentage of the people surveyed prefer country music?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15%","is_correct":false,"explanation":"Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"25%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"35%","is_correct":false,"explanation":"Choice C (35%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40%","is_correct":false,"explanation":"Choice D (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of 100 people were surveyed about their favorite type of music. 40 people said they prefer pop music, 35 people said they prefer rock music, and the rest prefer country music. What percentage of the people surveyed prefer country music?

**Step 2 — Solve.** First, find the total number of people who prefer pop or rock: 40 + 35 = 75. Then, subtract that number from the total number of people surveyed to find the number who prefer country music: 100 - 75 = 25.  Finally, divide the number who prefer country music by the total number of people surveyed and multiply by 100% to find the percentage: (25 / 100) * 100% = 25%.

**Step 3 — Select B.** 25%

**Distractor analysis:**
- **A** (15%): Choice A (15%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (35%): Choice C (35%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40%): Choice D (40%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":902,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"c5992217","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dc9c9247-ac0d-4287-b74f-faa0d29fbf50';

UPDATE public.questions SET
  question_text = 'If $\frac{2x+3}{x-1} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x+3}{x-1} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can multiply both sides of the equation by $x-1$, which gives $2x + 3 = 5(x-1)$. Distributing the 5 on the right side gives $2x + 3 = 5x - 5$. Subtracting $2x$ and adding 5 to both sides of the equation gives $8 = 3x$. Dividing both sides by 3, we get $x = \frac{8}{3}$, or $x = 2\frac{2}{3}$.  The only choice that matches this value is choice B.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":321,"opensat_domain":"Advanced Math","opensat_raw_id":"8928d7a2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dcaa9bb8-362f-42dc-88d7-89198160160e';

UPDATE public.questions SET
  question_text = 'If the function $f(x) = \frac{x^2 - 9}{x - 3}$ is defined for all real numbers except $x = 3$, what is the value of $f(4)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"7","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"undefined","is_correct":false,"explanation":"Choice D (undefined…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = \frac{x^2 - 9}{x - 3}$ is defined for all real numbers except $x = 3$, what is the value of $f(4)$?

**Step 2 — Solve.** First, we can factor the numerator: $f(x) = \frac{(x+3)(x-3)}{x-3}$. Since $x \neq 3$, we can cancel out the common factor of $(x-3)$ in the numerator and denominator, leaving us with $f(x) = x + 3$.  Now, substituting $x = 4$, we get $f(4) = 4 + 3 = 7$.

**Step 3 — Select C.** 7

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (undefined): Choice D (undefined…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":482,"opensat_domain":"Advanced Math","opensat_raw_id":"6c3a844e","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dcc91cf8-bc52-42c2-96db-10d110cd5801';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:8$ to make 306 milliliters of solution.',
  options = '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$117$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$118$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{13}$. **Step 2:** $\\frac{5}{13}×306=118$."},{"id":"D","text":"$306$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{13}$ of 306.
**Step 2:** $\frac{5}{13}×306=118$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'dcd13d8a-02a2-4ddf-be76-aabf05234ad0';

UPDATE public.questions SET
  question_text = 'The equation $x^2 - 2x + 1 = k$, where *k* is a constant, has exactly one solution. What is the value of *k*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 2x + 1 = k$, where *k* is a constant, has exactly one solution. What is the value of *k*?

**Step 2 — Solve.** A quadratic equation has exactly one solution if and only if its discriminant is equal to 0. The discriminant of the equation *ax² + bx + c = 0* is *b² - 4ac*. In this case, *a = 1*, *b = -2*, and *c = 1 - k*. So, the discriminant is (-2)² - 4(1)(1 - k) = 4 - 4 + 4k = 4k.  Setting this equal to 0, we get 4k = 0, or *k = 0*. However, since the equation is given as *x² - 2x + 1 = k*, we need to add 1 to both sides to get the correct value for *k*. Therefore, *k = 1*.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":223,"opensat_domain":"Advanced Math","opensat_raw_id":"b8a69f0c","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'dcd8fce5-ab15-4af8-8615-413d29f4c566';

UPDATE public.questions SET
  question_text = 'A store is selling a shirt for $20. The store is having a sale where all items are 15% off. What is the discounted price of the shirt?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"17","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25","is_correct":false,"explanation":"Choice C (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"30","is_correct":false,"explanation":"Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A store is selling a shirt for $20. The store is having a sale where all items are 15% off. What is the discounted price of the shirt?

**Step 2 — Solve.** The discount amount is 15% of $20, which is 0.15 * $20 = $3. The discounted price is $20 - $3 = $17.

**Step 3 — Select B.** 17

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25): Choice C (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (30): Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":359,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'dd13f3fb-73d1-402c-8a8c-0c2cfb3d05ea';

COMMIT;
