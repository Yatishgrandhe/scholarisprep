BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-15","is_correct":false,"explanation":"Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"13","is_correct":false,"explanation":"Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = 2x^2 + 3x - 5$ is defined for all real numbers. What is the value of $f(-2)$?

**Step 2 — Solve.** To find f(-2), we substitute -2 for x in the function:  f(-2) = 2(-2)^2 + 3(-2) - 5 = 8 - 6 - 5 = 3

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-15): Choice A (-15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (13): Choice D (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":894,"opensat_domain":"Advanced Math","opensat_raw_id":"f456d12a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bfec6d3d-5975-4c3b-bb4e-4c666d79c42d';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-49)^2+51$, where $t$ is seconds. What is $h(52)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$51$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$69$","is_correct":true,"explanation":"**Step 1:** $h(52)=2(52-49)^2+51=2(9)+51=69$."},{"id":"C","text":"$67$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$53$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=52$: $h(52)=2(52-49)^2+51$.
**Step 2:** $(52-49)^2=9$ → $h(52)=69$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'bfefc97a-467e-407e-9bec-0bf4be8d86ab';

UPDATE public.questions SET
  question_text = 'A linear function $f$ models temperature change. Given $f(17)=13$ and $f(22)=33$, what is $f(-19)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$-127$","is_correct":false,"explanation":"Adds slope once too many."},{"id":"B","text":"$4$","is_correct":false,"explanation":"That is the rate of change, not $f(-19$)."},{"id":"C","text":"$-134$","is_correct":false,"explanation":"Arithmetic error in point-slope form."},{"id":"D","text":"$-131$","is_correct":true,"explanation":"**Step 1:** Slope $m=4$. **Step 2:** $f(-19)=4(-19-17)+(13)=-131$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** $m=\frac{33-13}{22-17}=4$.
**Step 2:** Point-slope: $f(-19)=4(-19-17)+(13)$.
**Step 3:** $f(-19)=-131$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c00683e0-673d-4f3e-9b2a-b11afa45a122';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units. A chord of the circle is 8 units long. What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius drawn to the midpoint of the chord.  The radius, the chord, and the line segment from the center of the circle to the midpoint of the chord form a right triangle, with the radius being the hypotenuse. Since the chord is 8 units long, the line segment from the center of the circle to the midpoint of the chord is 4 units long.  The Pythagorean Theorem tells us that  The distance from the center of the circle to the chord is 3 units.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":403,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a11","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0d5c966-c623-4a3f-baba-93b9aa02ccfd';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 42 by 41 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$1722$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$83$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$1718$","is_correct":true,"explanation":"**Step 1:** Full area $1722$. **Step 2:** Subtract $2^2$ → $1718$."},{"id":"D","text":"$1720$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $42×41=1722$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $1722-4=1718$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0e933f5-c0d5-44e2-b3cb-afeb9288f92d';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 13x + 42 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$13$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-6)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-6)(x-7)=0$.
**Step 2:** Roots $x=6$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'c0eb2435-5ed3-46c3-8bc9-098220db2fe9';

UPDATE public.questions SET
  question_text = 'A survey of 100 students asked whether they preferred pizza or burgers.  70 students preferred pizza, and 30 students preferred burgers.  What percentage of the students surveyed preferred burgers? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10%","is_correct":false,"explanation":"Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20%","is_correct":false,"explanation":"Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"70%","is_correct":false,"explanation":"Choice D (70%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 students asked whether they preferred pizza or burgers.  70 students preferred pizza, and 30 students preferred burgers.  What percentage of the students surveyed preferred burgers? 

**Step 2 — Solve.** To find the percentage, we divide the number who preferred burgers (30) by the total number of students (100) and multiply by 100%.  This gives us (30/100) * 100% = 30%.

**Step 3 — Select C.** 30%

**Distractor analysis:**
- **A** (10%): Choice A (10%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20%): Choice B (20%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (70%): Choice D (70%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":692,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_10","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c10505bc-b9cf-4dee-a2fb-33d8f224bf2e';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 5 red and 10 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{5}{15}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{5}{14}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{5}{15}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{4}{14}$","is_correct":true,"explanation":"**Step 1:** After red first: 4 red left, 14 total. **Step 2:** P $=\\frac{4}{14}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 4 red remain out of 14.
**Step 2:** Conditional probability $=\frac{4}{14}$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'c10c1f21-4032-4d3c-a5b6-e8a95172d77d';

COMMIT;
