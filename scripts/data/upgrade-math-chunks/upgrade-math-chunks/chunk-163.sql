BEGIN;
UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 23, 27, 31, 35, and one score $x$ is missing. The mean is 27.4.',
  options = '[{"id":"A","text":"$19$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$21$","is_correct":true,"explanation":"**Step 1:** Sum needed $=27.4×5=137$. **Step 2:** $x=137-116=21$."},{"id":"C","text":"$23$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$27$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=27.4×5=137$.
**Step 2:** $x=137-116=21$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'df000934-4859-47a1-a4dc-83512459e9c2';

UPDATE public.questions SET
  question_text = 'A circle with a radius of 5 units is inscribed in a square. What is the area, in square units, of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with a radius of 5 units is inscribed in a square. What is the area, in square units, of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square.  Since the radius of the circle is 5 units, the diameter is 10 units. Therefore, the side length of the square is 10 units, and the area of the square is 10^2 = 100 square units.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":94,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'df013e3a-dfb5-4b35-8a48-6877fd7cf51c';

UPDATE public.questions SET
  question_text = 'If $2x - 3y = 12$ and $x + 2y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"4","is_correct":false,"explanation":"Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x - 3y = 12$ and $x + 2y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for $x$, we can use elimination.  Multiplying the second equation by 3, we get $3x + 6y = 3$.  Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we get $x = 3$.

**Step 3 — Select C.** 3

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (4): Choice D (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":473,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'df0c123e-7f6e-4a0d-9f71-ded69c2ef3f2';

UPDATE public.questions SET
  question_text = 'What is the circumference? (Use $\pi \approx 3.14$.)',
  stimulus_text = 'A circular track has radius 5 meters.',
  options = '[{"id":"A","text":"$31.40$","is_correct":true,"explanation":"**Step 1:** $C=2\\pi r$. **Step 2:** $2(3.14)(5)=31.40$."},{"id":"B","text":"$78.50$","is_correct":false,"explanation":"Area formula $\\pi r^2$, not circumference."},{"id":"C","text":"$10.00$","is_correct":false,"explanation":"Diameter only."},{"id":"D","text":"$15.70$","is_correct":false,"explanation":"Half of circumference."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Formula $C=2\pi r$.
**Step 2:** $C≈2(3.14)(5)=31.40$ m.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'df18f6ba-244a-46ff-81f7-e081fbd751cf';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 15 by 14 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$210$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$29$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$206$","is_correct":true,"explanation":"**Step 1:** Full area $210$. **Step 2:** Subtract $2^2$ → $206$."},{"id":"D","text":"$208$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $15×14=210$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $210-4=206$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'df7b00f9-eb23-48bc-81be-83ffff444ed4';

UPDATE public.questions SET
  question_text = 'If the original price is $270$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 25%.',
  options = '[{"id":"A","text":"$254$","is_correct":true,"explanation":"**Step 1:** $270×1.25=338$. **Step 2:** $338×0.75=254$."},{"id":"B","text":"$270$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$338$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$264$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $270×(1+25/100)=338$.
**Step 2:** Discount: $338×(1-25/100)=254$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'df814fa4-7d92-41b9-bb54-a94971a53108';

UPDATE public.questions SET
  question_text = 'If  $x^2+2x+1 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-1","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"0","is_correct":false,"explanation":"Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2","is_correct":false,"explanation":"Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If  $x^2+2x+1 = 0$, what is the value of $x$?

**Step 2 — Solve.** The given equation can be factored as $(x+1)^2 = 0$.  Taking the square root of both sides gives $x+1 = 0$. Subtracting 1 from both sides gives $x = -1$.

**Step 3 — Select A.** -1

**Distractor analysis:**
- **B** (0): Choice B (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2): Choice D (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":279,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'dfcebb36-eb06-4f0e-ae83-d38b041470fc';

UPDATE public.questions SET
  question_text = 'Which value of $x$ satisfies $7x + 8 > 208$ and represents a feasible weight?',
  stimulus_text = 'A package must weigh more than 208 grams but at most 221 grams to ship.',
  options = '[{"id":"A","text":"$26$","is_correct":false,"explanation":"Too small: $7(26)+8=190$."},{"id":"B","text":"$27$","is_correct":false,"explanation":"Still below threshold 208."},{"id":"C","text":"$28$","is_correct":false,"explanation":"Borderline; check strict inequality."},{"id":"D","text":"$29$","is_correct":true,"explanation":"**Step 1:** $7x > 200$. **Step 2:** $x > 28.571428571428573$. Smallest integer choice: 29."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Isolate: $7x > 200$.
**Step 2:** $x > 28.57$.
**Step 3:** Among choices, $29$ is the smallest valid value.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.075Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'dfcfe4c3-8017-49dc-a41a-4c490bf0e39b';

COMMIT;
