BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":false,"explanation":"Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"15","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 - 3x + 1$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** Substitute -2 for *x* in the function: f(-2) = 2(-2)^2 - 3(-2) + 1.  Simplify: f(-2) = 2(4) + 6 + 1 = 8 + 6 + 1 = 15.

**Step 3 — Select D.** 15

**Distractor analysis:**
- **A** (-15): Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":458,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd57fa42b-bfc5-49ce-8c0e-c2b2b6a0f271';

UPDATE public.questions SET
  question_text = 'A survey asked a group of 100 people about their favorite color. 25 people said their favorite color was blue, 30 people said their favorite color was green, and the rest said their favorite color was red.  What percentage of the people surveyed said their favorite color was red?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"35%","is_correct":false,"explanation":"Choice A (35%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"45%","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"55%","is_correct":false,"explanation":"Choice C (55%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"65%","is_correct":false,"explanation":"Choice D (65%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey asked a group of 100 people about their favorite color. 25 people said their favorite color was blue, 30 people said their favorite color was green, and the rest said their favorite color was red.  What percentage of the people surveyed said their favorite color was red?

**Step 2 — Solve.** First find the number of people who said their favorite color was red: 100 people - 25 people - 30 people = 45 people.  Then divide the number of people who said red by the total number of people surveyed, and multiply by 100% to express the result as a percentage: (45 people / 100 people) * 100% = 45%.

**Step 3 — Select B.** 45%

**Distractor analysis:**
- **A** (35%): Choice A (35%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (55%): Choice C (55%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (65%): Choice D (65%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":26,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"734eb82c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd5a7094a-25c3-4dc4-b6c9-e26e2fc1d1be';

UPDATE public.questions SET
  question_text = 'If  $x + 3 = 7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"14","is_correct":false,"explanation":"Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If  $x + 3 = 7$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we subtract 3 from both sides of the equation: $x + 3 - 3 = 7 - 3$.  This gives us $x = 4$.

**Step 3 — Select A.** 4

**Distractor analysis:**
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (14): Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":732,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd5c177bf-0ea8-4a41-8993-a923ed3aea12';

UPDATE public.questions SET
  question_text = 'If  $x^2 - 6x + 8 = 0$, what is the sum of the solutions to this equation?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-6","is_correct":false,"explanation":"Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-8","is_correct":false,"explanation":"Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If  $x^2 - 6x + 8 = 0$, what is the sum of the solutions to this equation?

**Step 2 — Solve.** Factoring the quadratic equation, we get  (x - 2)(x - 4) = 0.  The solutions to this equation are x = 2 and x = 4. The sum of these solutions is 2 + 4 = 6.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (-6): Choice A (-6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-8): Choice B (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":552,"opensat_domain":"Algebra","opensat_raw_id":"random_id_1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd5f0403b-93b5-499a-b677-37e57e0bda6c';

UPDATE public.questions SET
  question_text = 'If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $f(x) = 2x^2 + 3x - 1$, what is the value of $f(-2)$?

**Step 2 — Solve.** Substituting -2 for x in the expression for f(x) gives:  

 f(-2) = 2(-2)^2 + 3(-2) - 1 = 2(4) - 6 - 1 = 8 - 6 - 1 = -9

**Step 3 — Select A.** -9

**Distractor analysis:**
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":662,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd6383e5a-d8fa-4fe8-97a5-33106fd5b86d';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60% of them prefer apples, 30% prefer oranges, and 10% prefer bananas. If 20 more people are surveyed, and the same percentages of people prefer each fruit, how many of the 120 people surveyed would prefer oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"24","is_correct":false,"explanation":"Choice A (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"30","is_correct":false,"explanation":"Choice B (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"42","is_correct":false,"explanation":"Choice D (42…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60% of them prefer apples, 30% prefer oranges, and 10% prefer bananas. If 20 more people are surveyed, and the same percentages of people prefer each fruit, how many of the 120 people surveyed would prefer oranges?

**Step 2 — Solve.** Since 30% of the 100 people surveyed prefer oranges, 30 people prefer oranges.  If the same percentage of people prefer oranges out of 120 people, then 30% of 120 people prefer oranges.  30% of 120 is 0.30 * 120 = 36.

**Step 3 — Select C.** 36

**Distractor analysis:**
- **A** (24): Choice A (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (30): Choice B (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (42): Choice D (42…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":635,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd649fcd0-7ec8-416e-8432-4191cc42773f';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{1}{x^2+1}$.  What is the value of $f(\frac{1}{2})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{5}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{2}{5}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{4}{5}$","is_correct":false,"explanation":"Choice C ($\\frac{4}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{5}{4}$","is_correct":false,"explanation":"Choice D ($\\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{1}{x^2+1}$.  What is the value of $f(\frac{1}{2})$?

**Step 2 — Solve.** Substituting $\frac{1}{2}$ for $x$ in the equation $f(x) = \frac{1}{x^2+1}$ yields $f(\frac{1}{2}) = \frac{1}{(\frac{1}{2})^2+1}$. Simplifying the denominator gives us $f(\frac{1}{2}) = \frac{1}{\frac{1}{4}+1}$, or $f(\frac{1}{2}) = \frac{1}{\frac{5}{4}}$. Dividing 1 by $\frac{5}{4}$ is the same as multiplying by $\frac{4}{5}$, so $f(\frac{1}{2}) = \frac{4}{5}$.

**Step 3 — Select A.** $\frac{1}{5}$

**Distractor analysis:**
- **B** ($\frac{2}{5}$): Choice B ($\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{4}{5}$): Choice C ($\frac{4}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{5}{4}$): Choice D ($\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":783,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd652a4b0-e959-4d4e-afaa-89b1aa3d17d6';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(24,71)$ and $(30,89)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{89-71}{30-24}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$89$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd65bac45-b68c-4a61-a5cd-da8e3dc8dc71';

COMMIT;
