BEGIN;
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length $12$ and $16$. What is the length of the hypotenuse of this triangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"28","is_correct":false,"explanation":"Choice C (28…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length $12$ and $16$. What is the length of the hypotenuse of this triangle?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse,  h, satisfies the equation $h^2 = 12^2 + 16^2 = 144 + 256 = 400$.  Therefore, the length of the hypotenuse is $h = \sqrt{400} = 20$.

**Step 3 — Select B.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (28): Choice C (28…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":756,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"2935a423","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd68bb68c-66f5-4508-b8c3-071fc1db6d8d';

UPDATE public.questions SET
  question_text = 'After $t=23$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+20$.',
  options = '[{"id":"A","text":"$108$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=23$."},{"id":"B","text":"$112$","is_correct":true,"explanation":"**Step 1:** Substitute $t=23$. **Step 2:** $d=4(23)+20=112$."},{"id":"C","text":"$113$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$24$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=23$: $d=4(23)+20$.
**Step 2:** Compute: $d=112$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'd6cc4c77-88fe-493c-972b-ba62fca88b94';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:8$ to make 306 milliliters of solution.',
  options = '[{"id":"A","text":"$115$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$117$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$118$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{13}$. **Step 2:** $\\frac{5}{13}×306=118$."},{"id":"D","text":"$306$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{13}$ of 306.
**Step 2:** $\frac{5}{13}×306=118$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd6dfaf4f-5445-49d4-8450-2fada97e0372';

UPDATE public.questions SET
  question_text = 'The function \(f\) is defined by \(f(x) = \frac{2x}{x+1}\). What is the value of \(f(\frac{1}{2})\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The function \(f\) is defined by \(f(x) = \frac{2x}{x+1}\). What is the value of \(f(\frac{1}{2})\)?

**Step 2 — Solve.** Substitute \(x=\frac{1}{2}\) into the function: \(f(\frac{1}{2}) = \frac{2(\frac{1}{2})}{(\frac{1}{2})+1} = \frac{1}{(\frac{3}{2})} = \frac{2}{3}\).

**Step 3 — Select A.** 1

**Distractor analysis:**
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":566,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'd6eeac28-463a-4018-bbba-924081bc167c';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 36 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{39}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{40}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{39}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 39 total. **Step 2:** P $=\\frac{3}{39}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 39.
**Step 2:** Conditional probability $=\frac{3}{39}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd72920d0-dfb6-4bfa-bb42-6e8e29d8dd29';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 8x + 15 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$8$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$5$","is_correct":true,"explanation":"**Step 1:** Factor $(x-3)(x-5)=0$. **Step 2:** Positive root is $5$."},{"id":"D","text":"$9$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-3)(x-5)=0$.
**Step 2:** Roots $x=3$ and $x=5$.
**Step 3:** Positive solution: $5$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd7327715-de8f-4d40-8563-359cdb5f5c5f';

UPDATE public.questions SET
  question_text = 'In the figure below, triangle ABC is isosceles with AB = AC, and the measure of angle BAC is 40 degrees.  What is the measure of angle ABC?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"40","is_correct":false,"explanation":"Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"70","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"80","is_correct":false,"explanation":"Choice C (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In the figure below, triangle ABC is isosceles with AB = AC, and the measure of angle BAC is 40 degrees.  What is the measure of angle ABC?

**Step 2 — Solve.** Since triangle ABC is isosceles, angle ABC and angle ACB have the same measure.  The sum of the measures of the angles in a triangle is 180 degrees.  Therefore, the measure of angle ABC is (180 - 40)/2 = 70 degrees.

**Step 3 — Select B.** 70

**Distractor analysis:**
- **A** (40): Choice A (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (80): Choice C (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":108,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f8b7928d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd742339e-c251-44f2-8c18-b74617864720';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"50\\pi","is_correct":false,"explanation":"Choice D (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5. What is the area of the circle?

**Step 2 — Solve.** The area of a circle is given by the formula A = πr², where r is the radius.  Substituting 5 for r, we get A = π(5)² = 25π.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (50\pi): Choice D (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":169,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_11","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.074Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'd791b21c-6065-49ce-9428-ba3fdfd971f5';

COMMIT;
