BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{1}{x^2 + 1}$ is defined for all real numbers. What is the value of $f(\frac{1}{2})$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{1}{5}$","is_correct":false,"explanation":"Inverts the ratio — a common probability error."},{"id":"B","text":"$\\frac{2}{5}$","is_correct":false,"explanation":"Choice B ($\\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{4}{5}$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\frac{5}{4}$","is_correct":false,"explanation":"Choice D ($\\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{1}{x^2 + 1}$ is defined for all real numbers. What is the value of $f(\frac{1}{2})$?

**Step 2 — Solve.** Substituting $x = \frac{1}{2}$ into the function, we get: $f(\frac{1}{2}) = \frac{1}{(\frac{1}{2})^2 + 1}$. Simplifying the denominator, we have: $f(\frac{1}{2}) = \frac{1}{\frac{1}{4} + 1} = \frac{1}{\frac{5}{4}} = \frac{4}{5}$.

**Step 3 — Select C.** $\frac{4}{5}$

**Distractor analysis:**
- **A** ($\frac{1}{5}$): Inverts the ratio — a common probability error.
- **B** ($\frac{2}{5}$): Choice B ($\frac{2}{5}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{5}{4}$): Choice D ($\frac{5}{4}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":498,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'b90e637d-5a2c-4e66-af09-cbfcf22bc8dd';

UPDATE public.questions SET
  question_text = 'After $t=15$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+12$.',
  options = '[{"id":"A","text":"$82$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=15$."},{"id":"B","text":"$87$","is_correct":true,"explanation":"**Step 1:** Substitute $t=15$. **Step 2:** $d=5(15)+12=87$."},{"id":"C","text":"$88$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=15$: $d=5(15)+12$.
**Step 2:** Compute: $d=87$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b94f7d91-85e5-4319-8776-206ecbfbd480';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation $3x+2 = 14$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation $3x+2 = 14$?

**Step 2 — Solve.** Subtracting 2 from both sides of the equation gives $3x = 12$. Dividing both sides of the equation by 3 gives $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":420,"opensat_domain":"Algebra","opensat_raw_id":"67a37043","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'b95dbc0b-be43-4411-acd5-3efbd2611c02';

UPDATE public.questions SET
  question_text = 'A square has a side length of 5.  What is the length of the diagonal of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5\\sqrt{2}","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{2}","is_correct":false,"explanation":"Choice D (10\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A square has a side length of 5.  What is the length of the diagonal of the square?

**Step 2 — Solve.** The diagonal of a square divides the square into two right triangles. The diagonal of the square is the hypotenuse of these right triangles. Since the sides of the square are the legs of the right triangles, we can use the Pythagorean Theorem: a^2 + b^2 = c^2, where a and b are the legs of the right triangle and c is the hypotenuse. In this case, a = 5 and b = 5, so we have 5^2 + 5^2 = c^2. Simplifying, we get 25 + 25 = c^2, or 50 = c^2. Taking the square root of both sides gives c = \sqrt{50} = \sqrt{25*2} = 5\sqrt{2}$. Therefore, the length of the diagonal of the square is 5\sqrt{2}.

**Step 3 — Select B.** 5\sqrt{2}

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{2}): Choice D (10\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":916,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"60eb6869","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b9e9d08e-5d28-4f01-bcfc-27e1bd58041a';

UPDATE public.questions SET
  question_text = 'If $3x + 5 = 14$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $3x + 5 = 14$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we first subtract 5 from both sides of the equation:  $3x + 5 - 5 = 14 - 5$, which simplifies to $3x = 9$. Then, we divide both sides of the equation by 3: $3x / 3 = 9 / 3$, which gives us $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":649,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'b9f9f055-d138-44f5-b8e7-34426e8614f1';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 10\pi.  What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 10\pi.  What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius of the circle.  We are given that the circumference is 10\pi, so 10\pi = 2\pi r.  Dividing both sides by 2\pi gives us r = 5.  The area of a circle is given by the formula A = \pi r^2.  Substituting 5 for r gives us A = \pi (5)^2 = 25\pi.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":626,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ba095814-c4ec-449f-aa41-add1bce89084';

UPDATE public.questions SET
  question_text = 'Which conclusion is best supported?',
  stimulus_text = 'Poll: 68% favor a policy, margin of error ±4 percentage points (95% confidence), $n=1200$.',
  options = '[{"id":"A","text":"Exactly 68% of all citizens favor the policy","is_correct":false,"explanation":"Sample statistics are not exact population values."},{"id":"B","text":"Plausible support is between 64% and 72%","is_correct":true,"explanation":"**Step 1:** Interval 64% to 72%. **Step 2:** This range is supported."},{"id":"C","text":"The sample proves every citizen was asked","is_correct":false,"explanation":"Only 1200 people were surveyed."},{"id":"D","text":"Margin of error makes the poll useless","is_correct":false,"explanation":"MOE quantifies uncertainty; it does not invalidate the poll."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Compute interval: 64% to 72%.
**Step 2:** At 95% confidence, true support likely falls in this range.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ba1cfa58-07ab-409a-8763-c26d80e24bdf';

UPDATE public.questions SET
  question_text = 'What is the value of  $\frac{3^4}{3^2}$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"27","is_correct":false,"explanation":"Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** What is the value of  $\frac{3^4}{3^2}$?

**Step 2 — Solve.** Using the rule of exponents that states $\frac{x^m}{x^n} = x^{m-n}$, we can simplify the expression as follows: $\frac{3^4}{3^2} = 3^{4-2} = 3^2 = 9$. Therefore, the value of $\frac{3^4}{3^2}$ is 9.

**Step 3 — Select C.** 9

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (27): Choice D (27…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":765,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c9","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ba210655-f8b3-4292-95af-5dcfee841351';

COMMIT;
