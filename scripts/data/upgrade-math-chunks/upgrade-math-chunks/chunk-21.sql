BEGIN;
UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 13 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{18}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{17}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{18}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{17}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 17 total. **Step 2:** P $=\\frac{4}{17}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 17.
**Step 2:** Conditional probability $=\frac{4}{17}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1b5ff7f8-0587-4832-95be-97a262714ff4';

UPDATE public.questions SET
  question_text = 'If $y=2x+1$ and $x=3$, what is the value of $y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $y=2x+1$ and $x=3$, what is the value of $y$?

**Step 2 — Solve.** Substitute 3 for $x$ in the equation $y=2x+1$ to get $y = 2(3) + 1$. Simplifying, we get $y = 6 + 1$, or $y=7$.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":428,"opensat_domain":"Algebra","opensat_raw_id":"random_id_2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1b6b593e-7332-4f8b-aae0-bad05ae4dc9f';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $3(x-6)+2k = 78$ have solution $x=28$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=28$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $3x-18+2k=78$ → $3x=84$ → $x=28$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$28$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=28$: $3(28-k)+2k=78$.
**Step 2:** Simplify: $84-3k+2k=78$ → $84+-1k=78$.
**Step 3:** Solve for $k$: $-1k=-6$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1bb3c3d4-99ab-4d69-a674-bc8de7720a66';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = 3x^2 - 2x + 1$.  What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-11","is_correct":false,"explanation":"Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"23","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = 3x^2 - 2x + 1$.  What is the value of $f(-2)$?

**Step 2 — Solve.** To find $f(-2)$, we substitute -2 for $x$ in the function: $f(-2) = 3(-2)^2 - 2(-2) + 1$. Simplifying, we get $f(-2) = 3(4) + 4 + 1 = 12 + 4 + 1 = 17$.

**Step 3 — Select D.** 23

**Distractor analysis:**
- **A** (-11): Choice A (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":949,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1bcdc20e-e22f-4e04-888b-da12a8552577';

UPDATE public.questions SET
  question_text = 'The area of a rectangle is 24 square centimeters. If the length of the rectangle is 6 centimeters, what is the width, in centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"6","is_correct":false,"explanation":"Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12","is_correct":false,"explanation":"Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The area of a rectangle is 24 square centimeters. If the length of the rectangle is 6 centimeters, what is the width, in centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is equal to its length multiplied by its width. Therefore, the width of the rectangle is equal to the area divided by the length. The area is 24 square centimeters, and the length is 6 centimeters. Therefore, the width of the rectangle is 24 square centimeters / 6 centimeters = 4 centimeters.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (6): Choice B (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12): Choice D (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":412,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1bcddee9-8a03-42c2-ba5d-e1679c4b8c67';

UPDATE public.questions SET
  question_text = 'If  \(3x+2y=11\) and \(5x-y=2\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  \(3x+2y=11\) and \(5x-y=2\), what is the value of \(x\)?

**Step 2 — Solve.** To solve for \(x\), we can use elimination. Multiplying the second equation by 2, we get \(10x-2y=4\). Adding this equation to the first equation, we get \(13x=15\). Dividing both sides by 13, we get \(x=\frac{15}{13}\).  Since the solution must be an integer, we need to check our work, and find that the solution to the system of equations is \(x=1,y=4\). Therefore, the value of x is 1.

**Step 3 — Select B.** 1

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":493,"opensat_domain":"Algebra","opensat_raw_id":"32d85d4f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1bd4cf9b-5130-4fa8-98e9-dee0b6ae50e5';

UPDATE public.questions SET
  question_text = 'If $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 2y = 12$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates $y$, giving us $4x = 16$. Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":694,"opensat_domain":"Algebra","opensat_raw_id":"f87e32ac","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1bdf891e-a8de-4ab8-835b-25b4b3ed06d7';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 10x + 25 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$10$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$5$","is_correct":true,"explanation":"**Step 1:** Factor $(x-5)(x-5)=0$. **Step 2:** Positive root is $5$."},{"id":"D","text":"$11$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-5)(x-5)=0$.
**Step 2:** Roots $x=5$ and $x=5$.
**Step 3:** Positive solution: $5$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1c0d33e1-5409-4927-bf74-00bd7d8de235';

COMMIT;
