BEGIN;
UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for which value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 - 4}{x - 2}$ is undefined for which value of $x$?

**Step 2 — Solve.** A function is undefined when the denominator of a fraction equals 0. In this case, the denominator $x - 2$ equals 0 when $x = 2$. Therefore, the function is undefined for $x = 2$.

**Step 3 — Select C.** 2

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":70,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c4","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5cc4e427-e5df-4ef4-846b-8868a5774984';

UPDATE public.questions SET
  question_text = 'After $t=24$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=5t+21$.',
  options = '[{"id":"A","text":"$136$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=24$."},{"id":"B","text":"$141$","is_correct":true,"explanation":"**Step 1:** Substitute $t=24$. **Step 2:** $d=5(24)+21=141$."},{"id":"C","text":"$142$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$26$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=24$: $d=5(24)+21$.
**Step 2:** Compute: $d=141$ miles.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5cc6c928-4d09-4170-b680-56bcf3a93a48';

UPDATE public.questions SET
  question_text = 'In a right triangle, the length of the hypotenuse is 10 and the length of one leg is 6. What is the length of the other leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"8","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"12","is_correct":false,"explanation":"Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, the length of the hypotenuse is 10 and the length of one leg is 6. What is the length of the other leg?

**Step 2 — Solve.** We can use the Pythagorean Theorem to solve for the missing leg. The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  So, we have 10^2 = 6^2 + x^2, where x is the length of the other leg.  Simplifying, we get 100 = 36 + x^2.  Subtracting 36 from both sides, we get 64 = x^2.  Taking the square root of both sides, we get x = 8.

**Step 3 — Select B.** 8

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (12): Choice C (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":1012,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a7","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5ced3f26-bebc-44d2-b80c-24495b081d6d';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 15 by 14 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$206$","is_correct":true,"explanation":"**Step 1:** Full area $210$. **Step 2:** Subtract $2^2$ → $206$."},{"id":"D","text":"$208$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $210-4=206$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5cf2f132-512e-4120-8813-aace340d7a3c';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip.  They decide to rent a car for the trip.  The car rental company charges a flat fee of $30 plus $25 per day.  If the friends rent the car for 5 days, what is the total cost of renting the car?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$100","is_correct":false,"explanation":"Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$125","is_correct":false,"explanation":"Choice B ($125…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$155","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$200","is_correct":false,"explanation":"Choice D ($200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip.  They decide to rent a car for the trip.  The car rental company charges a flat fee of $30 plus $25 per day.  If the friends rent the car for 5 days, what is the total cost of renting the car?

**Step 2 — Solve.** The cost of renting the car for 5 days is 5 x $25 = $125.  Adding the flat fee of $30, the total cost is $125 + $30 = $155.

**Step 3 — Select C.** $155

**Distractor analysis:**
- **A** ($100): Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($125): Choice B ($125…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($200): Choice D ($200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":182,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5d0db9e3-3dfa-4b33-a0a8-a72f069f00b3';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 52 ft from the wall and the top is 59 ft high.',
  options = '[{"id":"A","text":"$77$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$111$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$78$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$79$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{52^2+59^2}=79$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 52 and 59.
**Step 2:** $c=\sqrt{52^2+59^2}=79$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5d689759-26ed-4a58-97d5-ceaf848c792c';

UPDATE public.questions SET
  question_text = 'If $x^2 + 2x + 1 = 0$, what is the value of $x^3 + 3x^2 + 3x + 1$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-8","is_correct":false,"explanation":"Choice A (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $x^2 + 2x + 1 = 0$, what is the value of $x^3 + 3x^2 + 3x + 1$?

**Step 2 — Solve.** The expression $x^3 + 3x^2 + 3x + 1$ is a perfect cube: $(x+1)^3$.  Since $x^2 + 2x + 1 = 0$ is equivalent to $(x + 1)^2 = 0$, it follows that $x + 1 = 0$, and therefore, $(x + 1)^3 = 0^3 = 0$.  Thus, the value of $x^3 + 3x^2 + 3x + 1$ is 0.

**Step 3 — Select B.** 0

**Distractor analysis:**
- **A** (-8): Choice A (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":78,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5d6c40aa-534f-4e90-ac48-e9082cae1d70';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined by $f(x) = \frac{x^2 - 9}{x - 3}$.  For what value of $x$ is $f(x)$ undefined?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined by $f(x) = \frac{x^2 - 9}{x - 3}$.  For what value of $x$ is $f(x)$ undefined?

**Step 2 — Solve.** The function $f(x)$ is undefined when the denominator of the fraction is equal to zero.  The denominator is $x - 3$, and this is equal to zero when $x = 3$.  Therefore, $f(x)$ is undefined for $x = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":827,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5d6d8e6b-b33a-4872-be38-f03c57ff55e8';

COMMIT;
