BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 29, 33, 37, 41, and one score $x$ is missing. The mean is 33.4.',
  options = '[{"id":"A","text":"$25$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$27$","is_correct":true,"explanation":"**Step 1:** Sum needed $=33.4×5=167$. **Step 2:** $x=167-140=27$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$33$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=33.4×5=167$.
**Step 2:** $x=167-140=27$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fbdd8058-bab5-42c0-94f3-1e6c841ac459';

UPDATE public.questions SET
  question_text = 'A function $f(x)$ is defined as $f(x) = 2x^2 - 3x + 1$.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-17","is_correct":false,"explanation":"Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"17","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A function $f(x)$ is defined as $f(x) = 2x^2 - 3x + 1$.  What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for $x$ in the function: $f(-2) = 2(-2)^2 - 3(-2) + 1$. Simplify: $f(-2) = 2(4) + 6 + 1$, or $f(-2) = 8 + 6 + 1 = 15$. Therefore, the value of f(-2) is 15.

**Step 3 — Select D.** 17

**Distractor analysis:**
- **A** (-17): Choice A (-17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":852,"opensat_domain":"Advanced Math","opensat_raw_id":"f4b36293","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fc569c04-1a35-4d01-b928-83f7e2e4cc70';

UPDATE public.questions SET
  question_text = 'A line passes through the points $(-2, 5)$ and $(4, -3)$. What is the slope of this line?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A line passes through the points $(-2, 5)$ and $(4, -3)$. What is the slope of this line?

**Step 2 — Solve.** The slope of a line passing through points $(x_1, y_1)$ and $(x_2, y_2)$ is given by the formula: $\frac{y_2 - y_1}{x_2 - x_1}$.  Substituting the given points into the formula, we get: $\frac{-3 - 5}{4 - (-2)} = \frac{-8}{6} = -\frac{4}{3}$.  Therefore, the slope of the line is $-\frac{4}{3}$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":877,"opensat_domain":"Algebra","opensat_raw_id":"d42b6e8f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fcb83cf7-0d87-450d-8843-684e440dc788';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 30 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$6$","is_correct":true,"explanation":"**Step 1:** Factor $(x-6)(x-5)=0$. **Step 2:** Positive root is $6$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-5)=0$.
**Step 2:** Roots $x=6$ and $x=5$.
**Step 3:** Positive solution: $6$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'fcf4d495-7b95-47a0-b3ab-8ba55db3d143';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 43, 47, 51, 55, and one score $x$ is missing. The mean is 47.4.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$41$","is_correct":true,"explanation":"**Step 1:** Sum needed $=47.4×5=237$. **Step 2:** $x=237-196=41$."},{"id":"C","text":"$43$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$47$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=47.4×5=237$.
**Step 2:** $x=237-196=41$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'fd42f4fe-8044-41f5-b2a1-aeeeec4fcf94';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $3:6$ to make 222 milliliters of solution.',
  options = '[{"id":"A","text":"$71$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$73$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$74$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{3}{9}$. **Step 2:** $\\frac{3}{9}×222=74$."},{"id":"D","text":"$222$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{3}{9}$ of 222.
**Step 2:** $\frac{3}{9}×222=74$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fd5fcbb2-c541-493e-b0cd-5b23bb00786f';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"17","is_correct":false,"explanation":"Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of the triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, we have: $5^2 + 12^2 = 25 + 144 = 169$.  The square root of 169 is 13, so the length of the hypotenuse is 13.

**Step 3 — Select A.** 13

**Distractor analysis:**
- **B** (17): Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":714,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'fd61df7d-55c9-4e80-8ddb-366adfab5459';

UPDATE public.questions SET
  question_text = 'A square has a side length of 5 units. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 5 units. What is the area of the square?

**Step 2 — Solve.** The area of a square is found by squaring the side length.  Therefore, the area of the square is 5² = 25 square units.

**Step 3 — Select D.** 25

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":679,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_5","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'fd7bb8f0-af26-4e3e-92e6-c0fd33f1200b';

COMMIT;
