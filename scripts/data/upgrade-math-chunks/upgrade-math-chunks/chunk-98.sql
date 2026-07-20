BEGIN;
UPDATE public.questions SET
  question_text = 'After $t=15$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+12$.',
  options = '[{"id":"A","text":"$82$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=15$."},{"id":"B","text":"$87$","is_correct":true,"explanation":"**Step 1:** Substitute $t=15$. **Step 2:** $d=5(15)+12=87$."},{"id":"C","text":"$88$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$17$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=15$: $d=5(15)+12$.
**Step 2:** Compute: $d=87$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '835ba3b0-b86f-497d-825a-05dccb70a751';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":517,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '849ee65c-f538-4470-9039-7734446eda47';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-41)^2+43$, where $t$ is seconds. What is $h(44)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$43$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$61$","is_correct":true,"explanation":"**Step 1:** $h(44)=2(44-41)^2+43=2(9)+43=61$."},{"id":"C","text":"$59$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$45$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=44$: $h(44)=2(44-41)^2+43$.
**Step 2:** $(44-41)^2=9$ → $h(44)=61$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '84b6eae5-d6ea-4721-bc61-c14c0f2538ed';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of 12\pi. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of 12\pi. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where r is the radius.  We are given that the circumference is 12\pi, so 12\pi = 2\pi r.  Dividing both sides by 2\pi gives r = 6.  The area of a circle is given by the formula A = \pi r^2, so the area of this circle is A = \pi (6)^2 = 36\pi.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":962,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '84bafb48-499c-4a7b-b205-df7d31b23a76';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"15","is_correct":false,"explanation":"Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** To find *f*(2), we substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 2(2) + 1. Simplifying, we get *f*(2) = 12 - 4 + 1 = 9.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (15): Choice D (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":431,"opensat_domain":"Algebra","opensat_raw_id":"random_id_24","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '853a0bab-16f4-49b7-9a0e-57b18e381f12';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 16 by 15 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$240$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$31$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$236$","is_correct":true,"explanation":"**Step 1:** Full area $240$. **Step 2:** Subtract $2^2$ → $236$."},{"id":"D","text":"$238$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $16×15=240$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $240-4=236$ sq in.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.066Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '85774209-b285-4d39-9683-dc92dfd5a1bf';

UPDATE public.questions SET
  question_text = 'The function $f(x) = ax^2 + bx + c$, where $a$, $b$, and $c$ are constants, has a minimum value of 5 at $x = 2$. If the graph of $f(x)$ intersects the y-axis at $(0, 9)$, what is the value of $c$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = ax^2 + bx + c$, where $a$, $b$, and $c$ are constants, has a minimum value of 5 at $x = 2$. If the graph of $f(x)$ intersects the y-axis at $(0, 9)$, what is the value of $c$?

**Step 2 — Solve.** Since the function has a minimum value of 5 at x = 2, the vertex of the parabola is at (2, 5).  We can use the vertex form of a quadratic equation to write the equation:  $f(x) = a(x - 2)^2 + 5$.  We know the graph intersects the y-axis at (0, 9), which means f(0) = 9. Substituting these values into the equation, we get: 9 = a(0 - 2)^2 + 5.  Simplifying the equation, we get: 9 = 4a + 5.  Solving for a, we get a = 1.  Substituting this value of a back into the vertex form, we get: $f(x) = (x - 2)^2 + 5$.  Expanding the equation, we get: $f(x) = x^2 - 4x + 4 + 5$, or $f(x) = x^2 - 4x + 9$.  Therefore, the value of c is 9.

**Step 3 — Select C.** 9

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":715,"opensat_domain":"Advanced Math","opensat_raw_id":"4444222","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '85a6fa61-8640-45e9-8d5f-08b95b761565';

UPDATE public.questions SET
  question_text = 'A square has side length 10. What is the length of the diagonal of the square? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10$\\sqrt{2}$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A square has side length 10. What is the length of the diagonal of the square? 

**Step 2 — Solve.** A diagonal of a square divides the square into two 45-45-90 right triangles. The ratio of the length of a leg to the length of the hypotenuse in a 45-45-90 triangle is 1:$\sqrt{2}$. Therefore, the length of the diagonal of the square, which is the hypotenuse of the 45-45-90 triangle, is $10\sqrt{2}$.

**Step 3 — Select B.** 10$\sqrt{2}$

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":170,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8605a8fe-5ee5-4e0e-bbd5-54445d08aa80';

COMMIT;
