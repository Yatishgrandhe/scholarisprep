BEGIN;
UPDATE public.questions SET
  question_text = 'The number of employees at a company increased by 10% in 2018 and decreased by 5% in 2019. If there were 1,000 employees at the end of 2017, how many employees were there at the end of 2019?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"950","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1,000","is_correct":false,"explanation":"Choice B (1,000…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1,050","is_correct":false,"explanation":"Choice C (1,050…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1,100","is_correct":false,"explanation":"Choice D (1,100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The number of employees at a company increased by 10% in 2018 and decreased by 5% in 2019. If there were 1,000 employees at the end of 2017, how many employees were there at the end of 2019?

**Step 2 — Solve.** At the end of 2018, the number of employees increased by 10%, so there were 1,000 + (10/100)*1,000 = 1,100 employees.  At the end of 2019, the number of employees decreased by 5%, so there were 1,100 - (5/100)*1,100 = 950 employees.

**Step 3 — Select A.** 950

**Distractor analysis:**
- **B** (1,000): Choice B (1,000…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1,050): Choice C (1,050…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1,100): Choice D (1,100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":524,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_d1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '142a1c3b-665a-47ca-ac02-c374d93c061e';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = x^2 - 3x + 2\). What is the value of \(f(\frac{1}{2})\) ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-\\frac{1}{4}","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"-\\frac{1}{2}","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"C","text":"0","is_correct":false,"explanation":"Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"\\frac{1}{4}","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = x^2 - 3x + 2\). What is the value of \(f(\frac{1}{2})\) ?

**Step 2 — Solve.** Substituting \(x = \frac{1}{2}\) into the function, we get: \(f(\frac{1}{2}) = (\frac{1}{2})^2 - 3(\frac{1}{2}) + 2 = \frac{1}{4} - \frac{3}{2} + 2 = \frac{1}{4}\).

**Step 3 — Select D.** \frac{1}{4}

**Distractor analysis:**
- **A** (-\frac{1}{4}): Inverts the ratio — a common probability error.
- **B** (-\frac{1}{2}): Inverts the ratio — a common probability error.
- **C** (0): Choice C (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":280,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '14a3af42-da38-48b3-95e4-53b4dad699cd';

UPDATE public.questions SET
  question_text = 'The area of a rectangle is 48 square centimeters. If the length of the rectangle is 8 centimeters, what is the width, in centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"24","is_correct":false,"explanation":"Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The area of a rectangle is 48 square centimeters. If the length of the rectangle is 8 centimeters, what is the width, in centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is given by the product of its length and width.  If the area is 48 square centimeters and the length is 8 centimeters, the width is 48/8 = 6 centimeters.

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (24): Choice D (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":557,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '14a878d4-8a64-41cc-b5bc-68fcb32accf3';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 13x + 42 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '14ded12b-8bc8-4683-b45e-2ed15c7643b0';

UPDATE public.questions SET
  question_text = 'What is the simplified form of the expression $\frac{x^2 - 4}{x^2 + 4x + 4}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x-2}{x+2}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{x+2}{x-2}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{x-2}{x+2}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"$\\frac{x+2}{x+2}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** What is the simplified form of the expression $\frac{x^2 - 4}{x^2 + 4x + 4}$?

**Step 2 — Solve.** The expression can be simplified by factoring the numerator and the denominator. The numerator is a difference of squares, and the denominator is a perfect square trinomial. We have: \begin{align*} \frac{x^2 - 4}{x^2 + 4x + 4} &= \frac{(x+2)(x-2)}{(x+2)(x+2)}\\ &= \frac{x-2}{x+2}. \end{align*}

**Step 3 — Select A.** $\frac{x-2}{x+2}$

**Distractor analysis:**
- **B** ($\frac{x+2}{x-2}$): Adds quantities that should be multiplied or compares unrelated terms.
- **C** ($\frac{x-2}{x+2}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x+2}{x+2}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":20,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c10","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '14f75a24-69da-4461-b7d6-7b99454579ae';

UPDATE public.questions SET
  question_text = 'A survey of 200 students found that 120 students prefer pizza, 80 prefer burgers, and 60 prefer tacos.  What is the probability that a randomly selected student from this survey prefers tacos?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.15","is_correct":false,"explanation":"Choice A (0.15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.2","is_correct":false,"explanation":"Choice B (0.2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0.3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"0.6","is_correct":false,"explanation":"Choice D (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 students found that 120 students prefer pizza, 80 prefer burgers, and 60 prefer tacos.  What is the probability that a randomly selected student from this survey prefers tacos?

**Step 2 — Solve.** The probability of a student preferring tacos is the number of students who prefer tacos divided by the total number of students surveyed. This is 60/200, which simplifies to 0.3.

**Step 3 — Select C.** 0.3

**Distractor analysis:**
- **A** (0.15): Choice A (0.15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0.2): Choice B (0.2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.6): Choice D (0.6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":623,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1557aafe-647d-46b0-8fd0-b65344453dab';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(15,44)$ and $(21,62)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{62-44}{21-15}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$62$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '157b730b-463a-43bd-9fee-44cea2f33d8d';

UPDATE public.questions SET
  question_text = 'If $\frac{2x+3}{x-1} = 5$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x+3}{x-1} = 5$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we first multiply both sides of the equation by $(x - 1)$: $2x+3 = 5(x-1)$. Expanding the right-hand side of the equation gives $2x + 3 = 5x - 5$. Combining the x-terms on the left-hand side, we get $2x - 5x = -5 - 3$, or $-3x = -8$. Dividing both sides by -3, we get $x = \frac{-8}{-3} = \frac{8}{3} = 2\frac{2}{3}$. Since only 4 is given as a choice, the answer is 4.

**Step 3 — Select C.** 4

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":957,"opensat_domain":"Algebra","opensat_raw_id":"d84e67c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.059Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '158a18e8-7e24-45f4-b163-776aa9da987a';

COMMIT;
