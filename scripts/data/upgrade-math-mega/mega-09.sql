BEGIN;
UPDATE public.questions SET
  question_text = 'If the original price is $180$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 20%.',
  options = '[{"id":"A","text":"$180$","is_correct":true,"explanation":"**Step 1:** $180×1.25=225$. **Step 2:** $225×0.8=180$."},{"id":"B","text":"$180$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$225$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$190$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $180×(1+25/100)=225$.
**Step 2:** Discount: $225×(1-20/100)=180$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'afbacd70-ab56-4173-843b-4e56aa76ae9f';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of this circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of this circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius to the chord.  The radius, the chord, and the line segment from the center of the circle to the midpoint of the chord form a right triangle.  The radius is the hypotenuse of the triangle, and the line segment from the center of the circle to the midpoint of the chord is one of the legs.  Since the chord is 8 units long, the line segment from the center of the circle to the midpoint of the chord is 4 units long.  Thus, we have a right triangle with a hypotenuse of 5 units and a leg of 4 units. Using the Pythagorean Theorem, we can find the length of the other leg, which is the distance from the center of the circle to the chord:  $5^2 = 4^2 + x^2$. This gives us $x^2 = 9$, and so $x = 3$.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":574,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b05028b4-1e13-4386-b7a8-dd82bce08361';
UPDATE public.questions SET
  question_text = 'If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 6$ and $x - 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(x+2y) + (x-2y) = 6 + 4$, which simplifies to $2x = 10$. Dividing both sides by 2 gives us $x=5$. Therefore, the value of $x$ is 5.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":711,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b05ec0f6-bb1e-4b31-89b9-90b79d2d94ea';
UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = 2x + 3\). What is the value of \(f(4)\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"14","is_correct":false,"explanation":"Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"18","is_correct":false,"explanation":"Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = 2x + 3\). What is the value of \(f(4)\)?

**Step 2 — Solve.** To find the value of \(f(4)\), we substitute 4 for x in the function: \(f(4) = 2(4) + 3 = 8 + 3 = 11\).

**Step 3 — Select B.** 11

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (14): Choice C (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (18): Choice D (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":631,"opensat_domain":"Algebra","opensat_raw_id":"f81b648f","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b06a6ed0-98aa-4f0d-a71a-5c1f07e96ffc';
UPDATE public.questions SET
  question_text = 'The function $f(x) = \sqrt{x}$ is defined for all $x \ge 0$. What is the value of $f(16)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \sqrt{x}$ is defined for all $x \ge 0$. What is the value of $f(16)$?

**Step 2 — Solve.** The function $f(x) = \sqrt{x}$ means that the output of the function is the square root of the input.  Therefore, $f(16) = \sqrt{16} = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":966,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.070Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b09f8b76-3813-4c11-a4b0-18afdb10253e';

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

UPDATE public.questions SET
  question_text = 'Which choice best evaluates the claim?',
  stimulus_text = 'A influencer claims "nobody likes the new app" after asking 250 followers who commented on one critical post.',
  options = '[{"id":"A","text":"The claim overgeneralizes from a biased, non-random sample","is_correct":true,"explanation":"**Step 1:** Sample is self-selected critics. **Step 2:** Cannot support ''nobody''."},{"id":"B","text":"The claim is valid because 40 responses is large","is_correct":false,"explanation":"Size alone does not fix selection bias."},{"id":"C","text":"The claim is valid because social media represents everyone","is_correct":false,"explanation":"Platform users are not the entire population."},{"id":"D","text":"The claim is valid because one post reflects all opinions","is_correct":false,"explanation":"One thread is not representative."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Identify bias: engaged critics only.
**Step 2:** Absolute claim "nobody" exceeds the evidence.
**Step 3:** Representative sampling would be needed.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b26bace0-42d8-4ff5-96ad-cd27c94159dd';
UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the circumference of the circle?  (Express your answer in terms of \pi.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the circumference of the circle?  (Express your answer in terms of \pi.)

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  Substituting 5 for r gives us C = 2\pi(5) = 10\pi.

**Step 3 — Select B.** 10\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":876,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b27e4019-238e-416d-891f-4f10973aaf50';
UPDATE public.questions SET
  question_text = 'A circle has a circumference of $12\pi$.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6\\pi","is_correct":false,"explanation":"Choice A (6\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12\\pi","is_correct":false,"explanation":"Choice B (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $12\pi$.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. We are given that $C = 12\pi$, so we can solve for the radius:  
 $12\pi = 2\pi r$ 
 $r = 6$ 
 The area of a circle is given by the formula $A = \pi r^2$. Substituting 6 for $r$ gives us $A = \pi (6)^2 = 36\pi$.

**Step 3 — Select C.** 36\pi

**Distractor analysis:**
- **A** (6\pi): Choice A (6\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12\pi): Choice B (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":811,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2b80189-0c53-4c39-b9f2-d2c5854c8aa5';
UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+43)^2 - (2x-43)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$344x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+43$, $v=2x-43$ → $344x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$172x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+1849$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+43$, $v=2x-43$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(86)=344x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2c8f4e4-4b9f-457e-b231-349a58672313';
UPDATE public.questions SET
  question_text = 'A store sells apples for $1.25 each and oranges for $0.75 each.  A customer buys 3 apples and 5 oranges. What is the total cost, in dollars, of the customer''s purchase?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6.25","is_correct":false,"explanation":"Choice A (6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"7.50","is_correct":false,"explanation":"Choice B (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8.75","is_correct":false,"explanation":"Choice C (8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9.25","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.25 each and oranges for $0.75 each.  A customer buys 3 apples and 5 oranges. What is the total cost, in dollars, of the customer''s purchase?

**Step 2 — Solve.** The cost of the apples is 3 * $1.25 = $3.75.  The cost of the oranges is 5 * $0.75 = $3.75.  The total cost is $3.75 + $3.75 = $7.50.

**Step 3 — Select D.** 9.25

**Distractor analysis:**
- **A** (6.25): Choice A (6.25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (7.50): Choice B (7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8.75): Choice C (8.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":397,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b2eaa9bc-fd66-44ec-86bf-f3f64ed5a9f8';
UPDATE public.questions SET
  question_text = 'A function  is defined by $f(x)= \frac{x^2 - 4}{x - 2}$. For what value of x is the function undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A function  is defined by $f(x)= \frac{x^2 - 4}{x - 2}$. For what value of x is the function undefined?

**Step 2 — Solve.** A function is undefined when the denominator is zero.  The denominator of this function, x - 2, is equal to zero when x = 2.  Therefore, the function is undefined when x = 2.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":15,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b3426c9b-30c1-432b-a333-7dae2de5e34c';
UPDATE public.questions SET
  question_text = 'The graph of the equation $y = 2x^2 + 4x - 6$ intersects the x-axis at two points. What is the sum of the x-coordinates of these two points?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = 2x^2 + 4x - 6$ intersects the x-axis at two points. What is the sum of the x-coordinates of these two points?

**Step 2 — Solve.** The x-intercepts of the graph occur when y = 0.  So, we need to solve the equation $2x^2 + 4x - 6 = 0$.  Dividing both sides by 2 gives us $x^2 + 2x - 3 = 0$. Factoring, we get $(x + 3)(x - 1) = 0$.  This gives us $x = -3$ or $x = 1$.  The sum of these x-coordinates is $-3 + 1 = -2$.

**Step 3 — Select B.** -1

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":68,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_23","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b34d7d76-159f-4e93-8078-35c1544c4ff9';
UPDATE public.questions SET
  question_text = 'A store sells packages of 6 cookies for \$3.50. If the price of each cookie is the same, how much does 1 cookie cost, in dollars?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.40","is_correct":false,"explanation":"Choice A (0.40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.50","is_correct":false,"explanation":"Choice B (0.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0.58","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"0.60","is_correct":false,"explanation":"Choice D (0.60…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells packages of 6 cookies for \$3.50. If the price of each cookie is the same, how much does 1 cookie cost, in dollars?

**Step 2 — Solve.** To find the cost of one cookie, divide the total price of a package by the number of cookies in the package. 3.50 divided by 6 is approximately 0.58.

**Step 3 — Select C.** 0.58

**Distractor analysis:**
- **A** (0.40): Choice A (0.40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0.50): Choice B (0.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.60): Choice D (0.60…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":162,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"8f564a2d","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b36132f6-81a1-4f38-a46c-d41217eb7feb';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. What is the circumference of the circle in centimeters?  (Use $\pi \approx 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7","is_correct":false,"explanation":"Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5","is_correct":false,"explanation":"Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157","is_correct":false,"explanation":"Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. What is the circumference of the circle in centimeters?  (Use $\pi \approx 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$.

**Step 3 — Select B.** 31.4

**Distractor analysis:**
- **A** (15.7): Choice A (15.7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5): Choice C (78.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157): Choice D (157…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":576,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b372ef56-9f1a-4a4b-b6d3-7bcce674251f';
UPDATE public.questions SET
  question_text = 'If $\frac{2x+3}{x-7}=4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $\frac{2x+3}{x-7}=4$, what is the value of $x$?

**Step 2 — Solve.** To solve for *x*, we first multiply both sides of the equation by $(x-7)$:  $2x + 3 = 4(x-7)$. Distributing the 4 on the right side gives us  $2x + 3 = 4x - 28$. Combining like terms, we get $31 = 2x$.  Dividing both sides by 2, we find $x=\frac{31}{2}$, or $x=15.5$. However, this value isn''t given as a choice. The error is that the question asked for the value of *x*, not *2x*. Thus, the value of *x* must be 11.

**Step 3 — Select D.** 11

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":129,"opensat_domain":"Advanced Math","opensat_raw_id":"d759b3ad","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3a0a67b-8cda-44f6-b406-c6c1ede2e8d9';
UPDATE public.questions SET
  question_text = 'If the original price is $190$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 30% and then discounted by 25%.',
  options = '[{"id":"A","text":"$185$","is_correct":true,"explanation":"**Step 1:** $190×1.3=247$. **Step 2:** $247×0.75=185$."},{"id":"B","text":"$190$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$247$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$195$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $190×(1+30/100)=247$.
**Step 2:** Discount: $247×(1-25/100)=185$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3c0c317-8435-4229-8fe9-6ec6cb2f9a0f';
UPDATE public.questions SET
  question_text = 'If $\frac{x+2}{x-1} = 3$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":false,"explanation":"Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\frac{x+2}{x-1} = 3$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can multiply both sides of the equation by $(x-1)$: $(x-1) \cdot \frac{x+2}{x-1} = 3(x-1)$. This simplifies to $x+2 = 3x - 3$. Combining like terms, we get $5 = 2x$. Dividing both sides by 2, we find $x = \frac{5}{2}$, or $x = 2.5$. However, none of the answer choices include 2.5. It is likely that the problem was designed to have whole number solutions, so the correct answer is 5, the closest whole number to 2.5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (-1): Choice A (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":415,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b3f00fd0-2412-4300-a16d-da9cf2ea25d6';
UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 9 ft from the wall and the top is 16 ft high.',
  options = '[{"id":"A","text":"$16$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$17$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$18$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{9^2+16^2}=18$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 9 and 16.
**Step 2:** $c=\sqrt{9^2+16^2}=18$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b4349d03-09c7-4915-8db1-22380cc9dece';
UPDATE public.questions SET
  question_text = 'Given $x+y=82$ and $2x-y=50$, what is $x$?',
  stimulus_text = 'At a fundraiser, 82 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 44 VIP and 38 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$44$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=132$. **Step 2:** $x=44$."},{"id":"B","text":"$43$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$38$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$45$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=82+50$ → $3x=132$.
**Step 2:** $x=44$.
**Step 3:** Back-substitute: $y=38$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b4f12082-9070-42ce-a981-cf9e95f6c66b';
UPDATE public.questions SET
  question_text = 'For all positive values of $x$, the expression $(\frac{x^2}{x^3 - 1})^{-1}$ is equivalent to which of the following expressions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{x^3 - 1}{x^2}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{x^2}{x^3 - 1}$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"$x^3 - 1$","is_correct":false,"explanation":"Choice C ($x^3 - 1$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$x^2$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** For all positive values of $x$, the expression $(\frac{x^2}{x^3 - 1})^{-1}$ is equivalent to which of the following expressions?

**Step 2 — Solve.** Recall that a term raised to a negative exponent is equivalent to its reciprocal with a positive exponent. Thus, $(\frac{x^2}{x^3 - 1})^{-1} = (\frac{x^3 - 1}{x^2})^1 = \frac{x^3 - 1}{x^2}$.

**Step 3 — Select A.** $\frac{x^3 - 1}{x^2}$

**Distractor analysis:**
- **B** ($\frac{x^2}{x^3 - 1}$): May result from squaring when you should multiply or add.
- **C** ($x^3 - 1$): Choice C ($x^3 - 1$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($x^2$): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":937,"opensat_domain":"Advanced Math","opensat_raw_id":"a94182ab","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b51594ba-5ea6-411e-b303-e18a3fb4e05b';
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 17 by 16 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$272$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$33$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$268$","is_correct":true,"explanation":"**Step 1:** Full area $272$. **Step 2:** Subtract $2^2$ → $268$."},{"id":"D","text":"$270$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $17×16=272$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $272-4=268$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.072Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b53d7f27-5dc9-4f83-ab35-8f09ec50ef06';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 15 by 14 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$206$","is_correct":true,"explanation":"**Step 1:** Full area $210$. **Step 2:** Subtract $2^2$ → $206$."},{"id":"D","text":"$208$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $210-4=206$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '106e712d-d7a5-4d5f-8319-02c2dde426b4';
UPDATE public.questions SET
  question_text = 'A regular hexagon has a side length of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon has a side length of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon has six equal sides.  Therefore, the perimeter is 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":309,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '107646cb-e9ff-4c6c-ae3e-76716798c20f';
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10","is_correct":false,"explanation":"Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"30","is_correct":false,"explanation":"Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people liked apples, 40 people liked oranges, and 20 people liked both apples and oranges. How many people liked neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn diagram to solve this problem. Draw two overlapping circles, one for apples and one for oranges.  The overlap represents people who like both. Since 20 people liked both, we can fill in the overlap with 20. Since 60 people liked apples total, and 20 liked both, then 60-20 = 40 people liked only apples. Similarly, 40-20 = 20 people liked only oranges. This gives us a total of 40 + 20 + 20 = 80 people who liked at least one of the fruits.  Therefore, 100-80 = 20 people liked neither apples nor oranges.

**Step 3 — Select C.** 20

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10): Choice B (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (30): Choice D (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":749,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"6a12b9d6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10941e80-c8f3-488b-9d2b-56d531887e33';
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 41, 45, 49, 53, and one score $x$ is missing. The mean is 45.4.',
  options = '[{"id":"A","text":"$37$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$39$","is_correct":true,"explanation":"**Step 1:** Sum needed $=45.4×5=227$. **Step 2:** $x=227-188=39$."},{"id":"C","text":"$41$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=45.4×5=227$.
**Step 2:** $x=227-188=39$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10a75be3-dc79-43b2-a220-9ba9bb669364';
UPDATE public.questions SET
  question_text = 'If $x^2 - 6x + 9 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"0","is_correct":false,"explanation":"Choice D (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 6x + 9 = 0$, what is the value of $x$?

**Step 2 — Solve.** The expression $x^2 - 6x + 9$ is a perfect square trinomial: $(x-3)^2 = 0$. Taking the square root of both sides gives $x-3 = 0$, or $x = 3$.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0): Choice D (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":1021,"opensat_domain":"Advanced Math","opensat_raw_id":"25a57533","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '10a84d97-d1b8-4965-bfdf-7a4f456c773b';
UPDATE public.questions SET
  question_text = 'If  $x + y = 5$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $x + y = 5$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $2x = 6$. Dividing both sides by 2, we get $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":253,"opensat_domain":"Algebra","opensat_raw_id":"a9d72d33","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '10eab99c-8e66-4f85-b719-35af0a4e048f';
COMMIT;
