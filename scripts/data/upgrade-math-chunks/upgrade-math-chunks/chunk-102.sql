BEGIN;
UPDATE public.questions SET
  question_text = 'If $x^2 - 2x - 15 = 0$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":false,"explanation":"Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"-5","is_correct":false,"explanation":"Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $x^2 - 2x - 15 = 0$, what is the value of $x$?

**Step 2 — Solve.** Factoring the quadratic expression, we get $(x-5)(x+3) = 0$. This means either $(x-5) = 0$ or $(x+3) = 0$. Solving for $x$ in each case, we get $x = 5$ or $x = -3$. Since the question asks for the value of $x$, the answer is 5.

**Step 3 — Select D.** 5

**Distractor analysis:**
- **A** (-3): Choice A (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-5): Choice C (-5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":212,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8af22374-1386-4fa3-a0fc-8802098f07c0';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+10)^2 - (2x-10)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$80x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+10$, $v=2x-10$ → $80x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$40x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+100$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+10$, $v=2x-10$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(20)=80x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8b9a8c0b-3f85-4298-9004-fe8d657dd3ee';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-9)^2+11$, where $t$ is seconds. What is $h(12)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$11$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$29$","is_correct":true,"explanation":"**Step 1:** $h(12)=2(12-9)^2+11=2(9)+11=29$."},{"id":"C","text":"$27$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$13$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=12$: $h(12)=2(12-9)^2+11$.
**Step 2:** $(12-9)^2=9$ → $h(12)=29$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8c6bdf0f-9444-4fa9-ae2a-b9e497196199';

UPDATE public.questions SET
  question_text = 'The function $f(x) = \frac{x^2 + 2x - 3}{x^2 - x - 6}$ is undefined for which value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-2","is_correct":false,"explanation":"Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2","is_correct":false,"explanation":"Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x) = \frac{x^2 + 2x - 3}{x^2 - x - 6}$ is undefined for which value of $x$?

**Step 2 — Solve.** A rational function is undefined when the denominator equals zero. Factoring the denominator, we get $(x+2)(x-3)=0$.  Therefore, the function is undefined when $x=-2$ or $x=3$, and of these choices, only 3 is given.

**Step 3 — Select D.** 3

**Distractor analysis:**
- **A** (-2): Choice A (-2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2): Choice C (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":198,"opensat_domain":"Advanced Math","opensat_raw_id":"986421af","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8c82ff3d-e2c3-4357-919b-74d4fcd6dac4';

UPDATE public.questions SET
  question_text = 'A survey of 200 randomly selected college students found that 120 students prefer to study in a quiet environment, 80 students prefer to study in a noisy environment, and 50 students prefer to study in either a quiet or noisy environment. How many of the 200 students surveyed prefer to study in a quiet environment only?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"70","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"90","is_correct":false,"explanation":"Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"110","is_correct":false,"explanation":"Choice C (110…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"130","is_correct":false,"explanation":"Choice D (130…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 200 randomly selected college students found that 120 students prefer to study in a quiet environment, 80 students prefer to study in a noisy environment, and 50 students prefer to study in either a quiet or noisy environment. How many of the 200 students surveyed prefer to study in a quiet environment only?

**Step 2 — Solve.** 50 students prefer to study in either a quiet or noisy environment, but 120 students prefer to study in a quiet environment. Therefore, 120 - 50 = 70 students prefer to study in a quiet environment only.

**Step 3 — Select A.** 70

**Distractor analysis:**
- **B** (90): Choice B (90…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (110): Choice C (110…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (130): Choice D (130…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":535,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"f876c81c","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8c9b8dae-c821-4a0f-8dc6-47e62feaf77c';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(2x+31)^2 - (2x-31)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$248x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=2x+31$, $v=2x-31$ → $248x$."},{"id":"B","text":"$4x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$124x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$4x^2+961$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=2x+31$, $v=2x-31$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(4x)(62)=248x$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '8ca45dde-d9fd-4fe7-b8b8-2cdf4ddb69af';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. A chord of the circle is 8 cm long. What is the distance, in centimeters, between the center of the circle and the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. A chord of the circle is 8 cm long. What is the distance, in centimeters, between the center of the circle and the chord?

**Step 2 — Solve.** Draw a diagram: [Diagram: A circle with center O and chord AB.  Draw a perpendicular line from O to AB, intersecting AB at point M.  This perpendicular bisects AB, so AM=MB=4.   Triangle AOM is a right triangle with hypotenuse OA=5 and AM=4.  By the Pythagorean Theorem, OM = 3.]  Since OM is the perpendicular distance from the center of the circle to the chord, the distance between the center of the circle and the chord is **3** centimeters.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":233,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a2f4d6d2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '8cd88728-b7cf-4318-a2c5-7ff112453844';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 174°.',
  options = '[{"id":"A","text":"$174°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$6°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-174=6°$."},{"id":"C","text":"$16°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-174°=6°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '8d01c6ca-e144-4ceb-9231-8862950db2f6';

COMMIT;
