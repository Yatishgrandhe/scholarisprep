BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\frac{1}{2})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{5}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{5}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{4}{5}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{1}{x^2 + 1}$. What is the value of $f(\frac{1}{2})$?

**Step 2 — Solve.** To find the value of f(1/2), we substitute 1/2 for x in the function: \begin{align*} f(\frac{1}{2}) &= \frac{1}{(\frac{1}{2})^2 + 1} \\ &= \frac{1}{\frac{1}{4} + 1} \\ &= \frac{1}{\frac{5}{4}} \\ &= \frac{4}{5} \end{align*} Therefore, the value of f(1/2) is 4/5.

**Step 3 — Select C.** $\frac{4}{5}$

**Distractor analysis:**
- **A** ($\frac{1}{5}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{5}$): Choice B ($\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":283,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b0a01981-2084-4c61-909f-fc3ed9050b0b';

UPDATE public.questions SET
  question_text = 'A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2% less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, *f(x)*, and the number of years after 2015, *x*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"f(x) = 3,000(0.02)^x","is_correct":false,"explanation":"Choice A (f(x) = 3,000(0.02)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"f(x) = 0.98(3,000)^x","is_correct":false,"explanation":"Choice B (f(x) = 0.98(3,000)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"f(x) = 3,000(0.002)^x","is_correct":false,"explanation":"Choice C (f(x) = 3,000(0.002)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"f(x) = 3,000(0.98)^x","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A certain college had 3,000 students enrolled in 2015. The college predicts that after 2015, the number of students enrolled each year will be 2% less than the number of students enrolled the year before. Which of the following functions models the relationship between the number of students enrolled, *f(x)*, and the number of years after 2015, *x*?

**Step 2 — Solve.** Because the change in the number of students decreases by the same percentage each year, the relationship between the number of students and the number of years can be modeled with a decreasing, exponential function in the form *f(x) = a(1 - r)^x*, where *f(x)* is the number of students, *a* is the number of students in 2015, *r* is the rate of decrease each year, and *x* is the number of years since 2015. It’s given that 3,000 students were enrolled in 2015 and that the rate of decrease is predicted to be 2%, or 0.02. Substituting these values into the decreasing exponential function yields f(x) = 3,000(1 - 0.02)^x, which is equivalent to f(x) = 3,000(0.98)^x.

**Step 3 — Select D.** f(x) = 3,000(0.98)^x

**Distractor analysis:**
- **A** (f(x) = 3,000(0.02)^x): Choice A (f(x) = 3,000(0.02)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (f(x) = 0.98(3,000)^x): Choice B (f(x) = 0.98(3,000)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (f(x) = 3,000(0.002)^x): Choice C (f(x) = 3,000(0.002)^x…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":0,"opensat_domain":"Advanced Math","opensat_raw_id":"281a4f3b","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b0c1b3ab-4e0b-4513-8680-1deb57093b56';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the circumference of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the circumference of the circle? 

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius. Substituting 5 for r, we get C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":43,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b12b3361-e4f6-41ab-becf-a4cc15c36c86';

UPDATE public.questions SET
  question_text = 'A circle with center (2, -1) is tangent to the x-axis. What is the radius of this circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, -1) is tangent to the x-axis. What is the radius of this circle? 

**Step 2 — Solve.** Since the circle is tangent to the x-axis, the distance from the center of the circle to the x-axis is equal to the radius. The y-coordinate of the center is -1, so the radius of the circle is 1.

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":405,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"97fb89f7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b1b1edd3-1a2e-416b-a702-6b4af4d2a49a';

UPDATE public.questions SET
  question_text = 'The function \(f(x)\) is defined by \(f(x) = 2x^2 + 5x - 3\). What is the value of \(f(-2)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":false,"explanation":"Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function \(f(x)\) is defined by \(f(x) = 2x^2 + 5x - 3\). What is the value of \(f(-2)\)?

**Step 2 — Solve.** To find \(f(-2)\), we substitute -2 for x in the function: \(f(-2) = 2(-2)^2 + 5(-2) - 3\). Simplifying, we get \(f(-2) = 2(4) - 10 - 3 = 8 - 10 - 3 = -5\). Therefore, the value of \(f(-2)\) is -5.

**Step 3 — Select A.** -15

**Distractor analysis:**
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11): Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":202,"opensat_domain":"Advanced Math","opensat_raw_id":"837421b1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b1d2b7a5-1f5a-49f0-ac92-a236d6c2f619';

UPDATE public.questions SET
  question_text = 'The equation $\frac{2x+1}{x-3} = 4$ is equivalent to which of the following equations?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2x + 1 = 4x - 12$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"$2x + 1 = 4$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$2x + 1 = 4(x - 3)$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$2x + 1 = 4x - 3$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The equation $\frac{2x+1}{x-3} = 4$ is equivalent to which of the following equations?

**Step 2 — Solve.** To solve for x, we multiply both sides of the equation by (x-3). This gives us $2x + 1 = 4(x - 3)$.  The other options are incorrect and may result from errors in distributing the 4 on the right-hand side of the equation.

**Step 3 — Select C.** $2x + 1 = 4(x - 3)$

**Distractor analysis:**
- **A** ($2x + 1 = 4x - 12$): Adds quantities that should be multiplied or compares unrelated terms.
- **B** ($2x + 1 = 4$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($2x + 1 = 4x - 3$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":862,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b215d654-1a7c-42a9-8026-ff19a4a4dce3';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7 cm","is_correct":false,"explanation":"Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4 cm","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5 cm","is_correct":false,"explanation":"Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157 cm","is_correct":false,"explanation":"Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. Substituting 5 cm for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$ cm.

**Step 3 — Select B.** 31.4 cm

**Distractor analysis:**
- **A** (15.7 cm): Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5 cm): Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157 cm): Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":982,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b227b88d-89f0-4eec-bc42-359679290831';

UPDATE public.questions SET
  question_text = 'The equation  $\frac{1}{2}(x + 4) = 3$  has the same solution as which of the following equations?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$x + 4 = 6$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$x + 4 = 12$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"$\\frac{1}{2}x + 2 = 3$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"D","text":"$\\frac{1}{2}x + 4 = 6$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation  $\frac{1}{2}(x + 4) = 3$  has the same solution as which of the following equations?

**Step 2 — Solve.** Multiplying both sides of the given equation by 2 gives $x + 4 = 6$.

**Step 3 — Select A.** $x + 4 = 6$

**Distractor analysis:**
- **B** ($x + 4 = 12$): Adds quantities that should be multiplied or compares unrelated terms.
- **C** ($\frac{1}{2}x + 2 = 3$): Inverts the ratio — a common probability error.
- **D** ($\frac{1}{2}x + 4 = 6$): Inverts the ratio — a common probability error.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":773,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b23d6b7e-7f0d-4b88-94e7-b66a528abfea';

COMMIT;
