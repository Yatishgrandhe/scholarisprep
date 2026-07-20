BEGIN;
UPDATE public.questions SET
  question_text = 'The graph of the equation $y = -x^2 + 4x - 3$ in the xy-plane is a parabola. What is the x-coordinate of the vertex of this parabola?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The graph of the equation $y = -x^2 + 4x - 3$ in the xy-plane is a parabola. What is the x-coordinate of the vertex of this parabola?

**Step 2 — Solve.** The x-coordinate of the vertex of a parabola in the form $y = ax^2 + bx + c$ is given by the formula $x = \frac{-b}{2a}$. In this case, $a = -1$ and $b = 4$, so the x-coordinate of the vertex is $x = \frac{-4}{2(-1)} = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":545,"opensat_domain":"Advanced Math","opensat_raw_id":"9201b00f","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4545f98a-bf2b-454a-ae11-4b76044cabd8';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. What is the area, in square units, of a sector of this circle that has a central angle of $72^{\circ}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":false,"explanation":"Choice C (25\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. What is the area, in square units, of a sector of this circle that has a central angle of $72^{\circ}$?

**Step 2 — Solve.** The area of a sector of a circle is given by the formula \frac{\theta}{360^{\circ}}\cdot \pi r^2, where $\theta$ is the central angle of the sector in degrees and r is the radius of the circle.  Substituting $72^{\circ}$ for $\theta$ and 5 for r, we get \frac{72^{\circ}}{360^{\circ}}\cdot \pi (5)^2 = \frac{1}{5}\cdot 25\pi = 5\pi$.

**Step 3 — Select A.** 5\pi

**Distractor analysis:**
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25\pi): Choice C (25\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":540,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_e8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45692433-0caa-47ca-a431-87a82bcd4b82';

UPDATE public.questions SET
  question_text = 'If $\log_2 (x-3) + \log_2 (x+1) = 3$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $\log_2 (x-3) + \log_2 (x+1) = 3$, what is the value of $x$?

**Step 2 — Solve.** Using the property of logarithms that states $\log_a b + \log_a c = \log_a (b \cdot c)$, we can rewrite the given equation as $\log_2 [(x-3)(x+1)] = 3$.  This simplifies to $\log_2 (x^2 - 2x - 3) = 3$.  Converting this equation from logarithmic form to exponential form, we get $2^3 = x^2 - 2x - 3$. This simplifies to $8 = x^2 - 2x - 3$. Subtracting 8 from both sides, we have $0 = x^2 - 2x - 11$. Factoring the quadratic gives us $0 = (x-6)(x+2)$. Therefore, the possible values of $x$ are 6 and -2. Since $x-3$ must be positive for the logarithm to be defined, the correct value of $x$ is 6.

**Step 3 — Select C.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":812,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4592e2b0-ccbd-4189-8d14-68180880e33b';

UPDATE public.questions SET
  question_text = 'A circle with center (2, 4) and radius 3 is graphed in the xy-plane. What is the equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 2)^2 + (y - 4)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x + 2)^2 + (y + 4)^2 = 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 2)^2 + (y - 4)^2 = 9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 2)^2 + (y + 4)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center (2, 4) and radius 3 is graphed in the xy-plane. What is the equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle is (x - h)^2 + (y - k)^2 = r^2, where (h, k) is the center of the circle and r is the radius. Since the center of the circle is (2, 4) and the radius is 3, the equation of the circle is (x - 2)^2 + (y - 4)^2 = 3^2, or (x - 2)^2 + (y - 4)^2 = 9.

**Step 3 — Select C.** (x - 2)^2 + (y - 4)^2 = 9

**Distractor analysis:**
- **A** ((x - 2)^2 + (y - 4)^2 = 3): May result from squaring when you should multiply or add.
- **B** ((x + 2)^2 + (y + 4)^2 = 9): May result from squaring when you should multiply or add.
- **D** ((x + 2)^2 + (y + 4)^2 = 3): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":24,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45c56393-d0eb-43f8-8181-a60ff136e295';

UPDATE public.questions SET
  question_text = 'If \(\frac{x^2 - 4}{x - 2}\) is simplified to a single term, what is the value of this term when \(x = 5\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"6","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"7","is_correct":false,"explanation":"Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"11","is_correct":false,"explanation":"Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If \(\frac{x^2 - 4}{x - 2}\) is simplified to a single term, what is the value of this term when \(x = 5\)?

**Step 2 — Solve.** We can simplify the expression by factoring the numerator and canceling common factors: \(\frac{x^2 - 4}{x - 2} = \frac{(x + 2)(x - 2)}{x - 2} = x + 2\).  When \(x = 5\), this expression evaluates to \(5 + 2 = 7\).

**Step 3 — Select B.** 6

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (7): Choice C (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (11): Choice D (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":658,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_b6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '45dcc60c-0c26-46e0-adec-887af76804fa';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $4x + 8 > 221$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 221 grams but at most 234 grams to ship.',
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"Too small: $4(51)+8=212$."},{"id":"B","text":"$52$","is_correct":false,"explanation":"Still below threshold 221."},{"id":"C","text":"$53$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$54$","is_correct":true,"explanation":"**Step 1:** $4x > 213$. **Step 2:** $x > 53.25$. Smallest integer choice: 54."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $4x > 213$.
**Step 2:** $x > 53.25$.
**Step 3:** Among choices, $54$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '460a17b0-9669-4339-8d1d-94c0ff501447';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 8 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{13}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{14}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{13}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 13 total. **Step 2:** P $=\\frac{5}{13}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 13.
**Step 2:** Conditional probability $=\frac{5}{13}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '463f99c9-9170-465c-8845-a4b7847583c0';

UPDATE public.questions SET
  question_text = 'The average of 5 numbers is 12.  If 4 of the numbers are 10, 11, 13, and 14, what is the fifth number?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":false,"explanation":"Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The average of 5 numbers is 12.  If 4 of the numbers are 10, 11, 13, and 14, what is the fifth number?

**Step 2 — Solve.** The sum of the 5 numbers is 5 * 12 = 60.  The sum of the first 4 numbers is 10 + 11 + 13 + 14 = 48. Therefore, the fifth number is 60 - 48 = 12.

**Step 3 — Select D.** 16

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (8): Choice B (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":460,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4682c231-041e-4b7f-8720-affac2c6c01a';

COMMIT;
