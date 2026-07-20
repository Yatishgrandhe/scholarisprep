BEGIN;
UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x + y$, we can use elimination.  Multiplying the second equation by 3 gives us $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$.  Dividing both sides by 5, we find $x = 3$.  Substituting 3 for $x$ in the equation $x - y = 1$, we get $3 - y = 1$.  Subtracting 3 from both sides and multiplying by -1 gives us $y = 2$.  Therefore, $x + y = 3 + 2 = 5$.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":306,"opensat_domain":"Algebra","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd46b2744-5db3-4e00-9bda-2c597ed1016d';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":false,"explanation":"Choice B (10$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25$\\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100$\\pi$","is_correct":false,"explanation":"Choice D (100$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $\pi r^2$, where $r$ is the radius.  Substituting 5 for $r$, we get $\pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10$\pi$): Choice B (10$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100$\pi$): Choice D (100$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":79,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"842454c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd4709b9c-b978-4262-b719-b9d1ebd27fb2';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 50, 54, 58, 62, and one score $x$ is missing. The mean is 54.4.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$48$","is_correct":true,"explanation":"**Step 1:** Sum needed $=54.4×5=272$. **Step 2:** $x=272-224=48$."},{"id":"C","text":"$50$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$54$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=54.4×5=272$.
**Step 2:** $x=272-224=48$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd47214b9-8c5d-4d76-9ba4-1ebca1703d0c';

UPDATE public.questions SET
  question_text = 'If $x \neq 0$, what is the value of the expression $\frac{1}{x} + \frac{1}{x+1}$ expressed as a single fraction?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{x(x+1)}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{x(x+1)}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{2x+1}{x(x+1)}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{x+2}{x(x+1)}$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x \neq 0$, what is the value of the expression $\frac{1}{x} + \frac{1}{x+1}$ expressed as a single fraction?

**Step 2 — Solve.** To add fractions, they must have a common denominator.  The least common denominator for $x$ and $x+1$ is $x(x+1)$.  Multiplying the first fraction by $\frac{x+1}{x+1}$ and the second fraction by $\frac{x}{x}$, we get: $\frac{1}{x} + \frac{1}{x+1} = \frac{1}{x} \cdot \frac{x+1}{x+1} + \frac{1}{x+1} \cdot \frac{x}{x} = \frac{x+1}{x(x+1)} + \frac{x}{x(x+1)}$.  Adding the numerators gives us $\frac{x+1 + x}{x(x+1)} = \frac{2x+1}{x(x+1)}$.

**Step 3 — Select C.** $\frac{2x+1}{x(x+1)}$

**Distractor analysis:**
- **A** ($\frac{1}{x(x+1)}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{x(x+1)}$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($\frac{x+2}{x(x+1)}$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":740,"opensat_domain":"Algebra","opensat_raw_id":"d3897f3e","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd48a3917-401e-4c95-9ff7-cbe0a20b8233';

UPDATE public.questions SET
  question_text = 'A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2% less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, \(f(x)\), and the number of years after 2015, x ?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"\\(f(x) = 3,000(0.02)^x\\)","is_correct":false,"explanation":"Choice A (\\(f(x) = 3,000(0.02)^x\\)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"\\(f(x) = 0.98(3,000)^x\\)","is_correct":false,"explanation":"Choice B (\\(f(x) = 0.98(3,000)^x\\)…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"\\(f(x) = 3,000(0.98)^x\\)","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"\\(f(x) = 3,000(1.002)^x\\)","is_correct":false,"explanation":"Choice D (\\(f(x) = 3,000(1.002)^x\\)…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2% less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, \(f(x)\), and the number of years after 2015, x ?

**Step 2 — Solve.** Because the change in the number of students decreases by the same percentage each year, the relationship between the number of students and the number of years can be modeled with a decreasing exponential function in the form \(f(x) = a(1 - r)^x\) where \(f(x)\) is the number of students, a is the number of students in 2015, r is the rate of decrease each year, and x is the number of years since 2015. It''s given that 3,000 students were enrolled in 2015 and that the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields \(f(x) = 3,000(1 - 0.02)^x\), which is equivalent to \(f(x) = 3,000(0.98)^x\).

**Step 3 — Select C.** \(f(x) = 3,000(0.98)^x\)

**Distractor analysis:**
- **A** (\(f(x) = 3,000(0.02)^x\)): Choice A (\(f(x) = 3,000(0.02)^x\)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (\(f(x) = 0.98(3,000)^x\)): Choice B (\(f(x) = 0.98(3,000)^x\)…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (\(f(x) = 3,000(1.002)^x\)): Choice D (\(f(x) = 3,000(1.002)^x\)…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"INE","domain_id":"algebra","opensat_index":251,"opensat_domain":"Algebra","opensat_raw_id":"281a4f3b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd49dcf20-e816-40d1-8753-9bb06b16dd5d';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 2x^2 - 5x + 3.  What is the value of *f*(-2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-21","is_correct":false,"explanation":"Choice A (-21…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-11","is_correct":false,"explanation":"Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"11","is_correct":false,"explanation":"Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 2x^2 - 5x + 3.  What is the value of *f*(-2)?

**Step 2 — Solve.** Substituting -2 for *x* in the function *f*(x) = 2x^2 - 5x + 3 yields *f*(-2) = 2(-2)^2 - 5(-2) + 3 = 8 + 10 + 3 = 21.

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-21): Choice A (-21…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-11): Choice B (-11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (11): Choice C (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":468,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd4c76f9b-47ad-454f-a42c-2b12ee86f9ff';

UPDATE public.questions SET
  question_text = 'A rectangular garden is to be enclosed with fencing.  The length of the garden is 12 meters, and the area of the garden is 72 square meters.  What is the width, in meters, of the garden?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"18","is_correct":false,"explanation":"Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A rectangular garden is to be enclosed with fencing.  The length of the garden is 12 meters, and the area of the garden is 72 square meters.  What is the width, in meters, of the garden?

**Step 2 — Solve.** The area of a rectangle is given by the product of its length and width.  Let the width of the garden be w meters.  We have the equation 12w = 72.  Dividing both sides of the equation by 12 gives w = 6.

**Step 3 — Select A.** 6

**Distractor analysis:**
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (18): Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":143,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd4dacfdb-4f43-4087-847d-b1dcb064930d';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 29 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{34}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{35}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{34}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 34 total. **Step 2:** P $=\\frac{5}{34}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 34.
**Step 2:** Conditional probability $=\frac{5}{34}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd551aefe-ef32-4e02-bbbe-f81770d299eb';

COMMIT;
