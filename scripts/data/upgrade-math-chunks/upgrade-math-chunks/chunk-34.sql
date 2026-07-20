BEGIN;
UPDATE public.questions SET
  question_text = 'The sum of two numbers is 10 and their product is 21. What are the two numbers?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3 and 7","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2 and 10","is_correct":false,"explanation":"Choice B (2 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4 and 6","is_correct":false,"explanation":"Choice C (4 and 6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"1 and 21","is_correct":false,"explanation":"Choice D (1 and 21…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The sum of two numbers is 10 and their product is 21. What are the two numbers?

**Step 2 — Solve.** We can find the two numbers by factoring 21.  The factors of 21 that add up to 10 are 3 and 7.

**Step 3 — Select A.** 3 and 7

**Distractor analysis:**
- **B** (2 and 10): Choice B (2 and 10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4 and 6): Choice C (4 and 6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (1 and 21): Choice D (1 and 21…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":565,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '304fcb9c-4d5c-4196-bac3-b06617013f64';

UPDATE public.questions SET
  question_text = 'After $t=5$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+2$.',
  options = '[{"id":"A","text":"$18$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=5$."},{"id":"B","text":"$22$","is_correct":true,"explanation":"**Step 1:** Substitute $t=5$. **Step 2:** $d=4(5)+2=22$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$6$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=5$: $d=4(5)+2$.
**Step 2:** Compute: $d=22$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '306c8c85-d593-4f03-8f15-0d964dc503e0';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(6)=2$ and $f(11)=22$, what is $f(-8)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-50$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-8$)."},{"id":"C","text":"$-57$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-54$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-8)=4(-8-6)+(2)=-54$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{22-2}{11-6}=4$.
**Step 2:** Point-slope: $f(-8)=4(-8-6)+(2)$.
**Step 3:** $f(-8)=-54$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '308b22fb-388f-434f-a296-a440ab643893';

UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"18","is_correct":false,"explanation":"Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"24","is_correct":false,"explanation":"Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"36","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with a radius of 6. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  The side length of each equilateral triangle is equal to the radius of the circle, which is 6.  The perimeter of the hexagon is then 6 times the side length of the equilateral triangle, or 6 * 6 = 36.

**Step 3 — Select D.** 36

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (18): Choice B (18…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (24): Choice C (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":424,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30b1ef7c-821d-4222-ba5b-66411bf4c62f';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 45 by 44 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1980$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$89$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1976$","is_correct":true,"explanation":"**Step 1:** Full area $1980$. **Step 2:** Subtract $2^2$ → $1976$."},{"id":"D","text":"$1978$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $45×44=1980$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1980-4=1976$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30b739c2-5b09-4d29-b045-01eaefe4be24';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 6 red and 47 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{6}{53}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{6}{52}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{6}{53}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{5}{52}$","is_correct":true,"explanation":"**Step 1:** After red first: 5 red left, 52 total. **Step 2:** P $=\\frac{5}{52}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 5 red remain out of 52.
**Step 2:** Conditional probability $=\frac{5}{52}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '30f53983-2819-49c6-a519-8cdb23103abc';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$ gives us $A = \pi (5)^2$, or $A = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1023,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '311145cd-f448-43aa-bda6-d380a5e04473';

UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30 degree angle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees and the hypotenuse has a length of 10. What is the length of the side opposite the 30 degree angle?

**Step 2 — Solve.** In a 30-60-90 right triangle, the side opposite the 30 degree angle is half the length of the hypotenuse. Therefore, the length of the side opposite the 30 degree angle is 10/2 = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":92,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '314550a7-1e79-4027-bcd5-57e21a0dd8b3';

COMMIT;
