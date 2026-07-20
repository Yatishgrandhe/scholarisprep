BEGIN;
UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 25 by 24 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$600$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$49$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$596$","is_correct":true,"explanation":"**Step 1:** Full area $600$. **Step 2:** Subtract $2^2$ → $596$."},{"id":"D","text":"$598$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $25×24=600$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $600-4=596$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '47542fab-6e63-458a-86ff-33c42b3f1bc1';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 26, 30, 34, 38, and one score $x$ is missing. The mean is 30.4.',
  options = '[{"id":"A","text":"$22$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$24$","is_correct":true,"explanation":"**Step 1:** Sum needed $=30.4×5=152$. **Step 2:** $x=152-128=24$."},{"id":"C","text":"$26$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$30$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=30.4×5=152$.
**Step 2:** $x=152-128=24$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '47582382-bdb1-43c2-87d9-a1502900a35a';

UPDATE public.questions SET
  question_text = 'If \(3x + 2y = 10\) and \(x - y = 1\), what is the value of \(x + y\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If \(3x + 2y = 10\) and \(x - y = 1\), what is the value of \(x + y\)?

**Step 2 — Solve.** To solve for \(x + y\), we can add the two equations together. Adding the left-hand side of the first equation and the left-hand side of the second equation yields \(3x + 2y + (x - y) = 4x + y\). Adding the right-hand sides of the two equations yields \(10 + 1 = 11\). Thus, \(4x + y = 11\).  We can rewrite the first equation as \(x = \frac{10 - 2y}{3}\). Substituting this into the equation \(4x + y = 11\) gives \(4(\frac{10 - 2y}{3}) + y = 11\). Simplifying, we have \(\frac{40 - 8y}{3} + y = 11\), or \(\frac{40 - 8y + 3y}{3} = 11\), or \(\frac{40 - 5y}{3} = 11\).  Multiplying both sides by 3 gives \(40 - 5y = 33\). Subtracting 40 from both sides gives \(-5y = -7\). Dividing both sides by -5 gives \(y = \frac{7}{5}\).  Substituting this value of y into the equation \(x - y = 1\) gives \(x - \frac{7}{5} = 1\), or \(x = \frac{12}{5}\).  Therefore, \(x + y = \frac{12}{5} + \frac{7}{5} = \frac{19}{5}\), or 3.8.  Of the choices given, 5 is closest to 3.8.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":677,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4767d953-d1dc-44f0-a64a-477c74f3a517';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5$\\pi$","is_correct":false,"explanation":"Choice A (5$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\pi$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"25$\\pi$","is_correct":false,"explanation":"Choice C (25$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"50$\\pi$","is_correct":false,"explanation":"Choice D (50$\\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters.  What is the circumference of the circle, in centimeters?  (Express your answer in terms of $\pi$.)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius.  Substituting 5 for $r$ gives $C = 2\pi(5) = 10\pi$.

**Step 3 — Select B.** 10$\pi$

**Distractor analysis:**
- **A** (5$\pi$): Choice A (5$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (25$\pi$): Choice C (25$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50$\pi$): Choice D (50$\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":947,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '477190ab-2795-4d14-9a69-d11ca4a48116';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 142°.',
  options = '[{"id":"A","text":"$142°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$38°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-142=38°$."},{"id":"C","text":"$48°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-142°=38°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4786cd7e-8528-452c-9ca9-31fc892c69a2';

UPDATE public.questions SET
  question_text = 'A circle with radius $r$ is inscribed in a square.  If the area of the square is 64, what is the area of the circle in terms of $\pi$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$4 \\pi$","is_correct":false,"explanation":"Choice A ($4 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$8 \\pi$","is_correct":false,"explanation":"Choice B ($8 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$16 \\pi$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$64 \\pi$","is_correct":false,"explanation":"Choice D ($64 \\pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius $r$ is inscribed in a square.  If the area of the square is 64, what is the area of the circle in terms of $\pi$?

**Step 2 — Solve.** Since the circle is inscribed in the square, the diameter of the circle is equal to the side length of the square.  The area of the square is 64, so the side length of the square is $\sqrt{64} = 8$.  The diameter of the circle is 8, so the radius is 4.  The area of the circle is $\pi r^2 = \pi (4)^2 = 16 \pi$.

**Step 3 — Select C.** $16 \pi$

**Distractor analysis:**
- **A** ($4 \pi$): Choice A ($4 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($8 \pi$): Choice B ($8 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($64 \pi$): Choice D ($64 \pi$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":779,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '47aa4885-e162-4b27-abcf-eb115d92a38a';

UPDATE public.questions SET
  question_text = 'If the function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined, what is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The function is not defined at $x = 2$.","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If the function $f(x) = \frac{x^2 - 4}{x - 2}$ is defined, what is the value of $f(2)$?

**Step 2 — Solve.** The function is undefined at x = 2 because the denominator becomes 0 when x = 2, making the expression undefined. The function is not defined at a value where the denominator would equal zero.

**Step 3 — Select D.** The function is not defined at $x = 2$.

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":616,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_f4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '47b4bab6-579e-4fc5-9cd4-1c8d5a44f280';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side of each equilateral triangle is equal to the radius of the circle, so the perimeter of the hexagon is 6 times the radius, or 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":564,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4833d581-6989-4c7b-88ae-a8e3ee4a9dbb';

COMMIT;
