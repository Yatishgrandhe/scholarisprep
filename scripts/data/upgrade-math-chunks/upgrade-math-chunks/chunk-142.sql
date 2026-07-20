BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $\frac{x^2 - 4}{x-2} = 6$ has one extraneous solution. What is the extraneous solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $\frac{x^2 - 4}{x-2} = 6$ has one extraneous solution. What is the extraneous solution?

**Step 2 — Solve.** The equation can be simplified by multiplying both sides by $x-2$ to get  $x^2 - 4 = 6x - 12$.  Rearranging the terms, we get $x^2 - 6x + 8 = 0$.  Factoring, we have $(x-2)(x-4)=0$.  Therefore, the solutions to the equation are $x=2$ and $x=4$. However, the original expression is undefined when $x=2$, as this would result in division by zero. Therefore, $x=2$ is the extraneous solution.

**Step 3 — Select B.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":247,"opensat_domain":"Advanced Math","opensat_raw_id":"e37429b7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3089fec-020f-4c63-9ef4-fdc5114bc4fe';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(9)=5$ and $f(14)=25$, what is $f(-11)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-71$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-11$)."},{"id":"C","text":"$-78$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-75$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-11)=4(-11-9)+(5)=-75$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{25-5}{14-9}=4$.
**Step 2:** Point-slope: $f(-11)=4(-11-9)+(5)$.
**Step 3:** $f(-11)=-75$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c383abba-b20b-4ecc-8348-740a4a461762';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(45)=41$ and $f(50)=61$, what is $f(-47)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-323$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-47$)."},{"id":"C","text":"$-330$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-327$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-47)=4(-47-45)+(41)=-327$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{61-41}{50-45}=4$.
**Step 2:** Point-slope: $f(-47)=4(-47-45)+(41)$.
**Step 3:** $f(-47)=-327$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c383fd22-ec02-4666-aafb-6e76caef7aad';

UPDATE public.questions SET
  question_text = 'A store sells apples for $1.50 per pound and oranges for $2.25 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, how much does the customer spend in total?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5.25","is_correct":false,"explanation":"Choice A ($5.25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$6.75","is_correct":false,"explanation":"Choice B ($6.75…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$7.50","is_correct":false,"explanation":"Choice C ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$9.00","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.50 per pound and oranges for $2.25 per pound.  If a customer buys 3 pounds of apples and 2 pounds of oranges, how much does the customer spend in total?

**Step 2 — Solve.** The customer spends 3 * $1.50 = $4.50 on apples and 2 * $2.25 = $4.50 on oranges. The total cost is $4.50 + $4.50 = $9.00.

**Step 3 — Select D.** $9.00

**Distractor analysis:**
- **A** ($5.25): Choice A ($5.25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($6.75): Choice B ($6.75…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($7.50): Choice C ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":923,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c38785c6-602a-43f3-a8ac-639880caedfe';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 has a chord of length 8. What is the distance, in units, from the center of the circle to the midpoint of the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 has a chord of length 8. What is the distance, in units, from the center of the circle to the midpoint of the chord?

**Step 2 — Solve.** A chord of a circle and the radius drawn to the midpoint of the chord form a right triangle. The radius is the hypotenuse of this triangle. The midpoint of the chord divides the chord into two equal segments of length 4.  Therefore, the distance from the center of the circle to the midpoint of the chord is one leg of a right triangle with hypotenuse of length 5 and the other leg of length 4. Using the Pythagorean Theorem, we have  or . Therefore, the distance is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":842,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3b4cf6c-1ce3-430c-8d8a-a23626fedb2d';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"17","is_correct":false,"explanation":"Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"19","is_correct":false,"explanation":"Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":false,"explanation":"Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse of this triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs. In this case, the hypotenuse squared is equal to 5 squared + 12 squared, or 169. The square root of 169 is 13, so the hypotenuse is 13 units long.

**Step 3 — Select A.** 13

**Distractor analysis:**
- **B** (17): Choice B (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (19): Choice C (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (21): Choice D (21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":336,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c3d17ff9-94ad-49c3-b04b-30db50bf2026';

UPDATE public.questions SET
  question_text = 'A square has side length $s$.  A rectangle has length $2s$ and width $s$. What is the ratio of the area of the rectangle to the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{2}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"1","is_correct":false,"explanation":"Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A square has side length $s$.  A rectangle has length $2s$ and width $s$. What is the ratio of the area of the rectangle to the area of the square?

**Step 2 — Solve.** The area of the square is $s^2$. The area of the rectangle is $(2s)(s) = 2s^2$. The ratio of the area of the rectangle to the area of the square is $\frac{2s^2}{s^2} = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** ($\frac{1}{2}$): Inverts the ratio — a common probability error.
- **B** (1): Choice B (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":376,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"b8e213d6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c3d88a78-2f9a-4f42-8fe6-ebf604732b4c';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 30 ft from the wall and the top is 37 ft high.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$48$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{30^2+37^2}=48$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 30 and 37.
**Step 2:** $c=\sqrt{30^2+37^2}=48$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c3ddd45b-cc81-4e61-ac27-a3d657f3defd';

COMMIT;
