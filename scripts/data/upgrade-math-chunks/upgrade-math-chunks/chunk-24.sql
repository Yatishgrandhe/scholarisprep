BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $2x^2 - 8x + c = 0$ has exactly one solution. What is the value of *c*?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"8","is_correct":false,"explanation":"Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"-8","is_correct":false,"explanation":"Choice C (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-16","is_correct":false,"explanation":"Choice D (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $2x^2 - 8x + c = 0$ has exactly one solution. What is the value of *c*?

**Step 2 — Solve.** A quadratic equation has exactly one solution when its discriminant is equal to zero.  The discriminant of $ax^2 + bx + c = 0$ is $b^2 - 4ac$.  In this equation, $a = 2$, $b = -8$, and $c = c$.  Setting the discriminant equal to zero gives $(-8)^2 - 4(2)(c) = 0$, or $64 - 8c = 0$.  Solving for $c$ yields $c = 8$.  The correct answer is 8.

**Step 3 — Select B.** 16

**Distractor analysis:**
- **A** (8): Choice A (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (-8): Choice C (-8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-16): Choice D (-16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":780,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1f68ddef-bc70-45cb-9836-a19a5b87cc00';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 44, 48, 52, 56, and one score $x$ is missing. The mean is 48.4.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$42$","is_correct":true,"explanation":"**Step 1:** Sum needed $=48.4×5=242$. **Step 2:** $x=242-200=42$."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=48.4×5=242$.
**Step 2:** $x=242-200=42$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '1f759c45-c73a-4b1d-91ee-099d2301f0c7';

UPDATE public.questions SET
  question_text = 'A circle with center $O$ has a radius of 5. Point $A$ lies on the circle, and line segment $OA$ is a diameter of the circle.  If point $B$ lies on the circle such that angle $AOB$ measures 120 degrees, what is the length of line segment $AB$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5","is_correct":false,"explanation":"Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5\\sqrt{2}","is_correct":false,"explanation":"Choice B (5\\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5\\sqrt{3}","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with center $O$ has a radius of 5. Point $A$ lies on the circle, and line segment $OA$ is a diameter of the circle.  If point $B$ lies on the circle such that angle $AOB$ measures 120 degrees, what is the length of line segment $AB$?

**Step 2 — Solve.** Triangle $AOB$ is an equilateral triangle because it has two sides that are radii of the circle and a 120-degree angle.  The length of side $AB$ is equal to the radius of the circle, which is 5.  Since triangle $AOB$ is equilateral, the length of side $AB$ is also equal to 5.  Therefore, the length of line segment $AB$ is $5\sqrt{3}$.

**Step 3 — Select C.** 5\sqrt{3}

**Distractor analysis:**
- **A** (5): Choice A (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5\sqrt{2}): Choice B (5\sqrt{2}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":1015,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_12","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1fdf2666-f639-479e-a083-d7cf5dcbbc1f';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5.  A chord of the circle is 8 units long.  What is the distance, in units, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5.  A chord of the circle is 8 units long.  What is the distance, in units, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius.  The distance from the center of the circle to the chord is the perpendicular distance from the center to the chord.  This perpendicular line bisects the chord.  The two halves of the chord, the radius, and the perpendicular distance form a right triangle with the radius as the hypotenuse.  The Pythagorean Theorem tells us that , or .  Thus, the distance from the center of the circle to the chord is 3 units.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":578,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1fe84ef4-9597-44e9-8c8e-e19262cc3ad6';

UPDATE public.questions SET
  question_text = 'The height of a projectile is $h(t)=2(t-11)^2+13$, where $t$ is seconds. What is $h(14)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$13$","is_correct":false,"explanation":"That is the minimum height at the vertex."},{"id":"B","text":"$31$","is_correct":true,"explanation":"**Step 1:** $h(14)=2(14-11)^2+13=2(9)+13=31$."},{"id":"C","text":"$29$","is_correct":false,"explanation":"Subtracts $a$ incorrectly."},{"id":"D","text":"$15$","is_correct":false,"explanation":"Adds coefficient and constant."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $t=14$: $h(14)=2(14-11)^2+13$.
**Step 2:** $(14-11)^2=9$ → $h(14)=31$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '1feda0e0-1599-48b3-a9e3-2f4f4b07e8db';

UPDATE public.questions SET
  question_text = 'If \(x + 1\) is a factor of the polynomial \(2x^3 + 5x^2 - 4x - 3\), what is the value of the constant term in the polynomial? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-1","is_correct":false,"explanation":"Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"1","is_correct":false,"explanation":"Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3","is_correct":false,"explanation":"Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If \(x + 1\) is a factor of the polynomial \(2x^3 + 5x^2 - 4x - 3\), what is the value of the constant term in the polynomial? 

**Step 2 — Solve.** If \(x + 1\) is a factor of the polynomial, then by the Factor Theorem, the polynomial must equal 0 when x = -1.  Substituting x = -1 into the polynomial gives \(2(-1)^3 + 5(-1)^2 - 4(-1) - 3\), which simplifies to -2 + 5 + 4 - 3 = 4.  Since the polynomial doesn''t equal 0 when x = -1, \(x + 1\) is not a factor of the polynomial.  Therefore, the given information is inconsistent, and the constant term in the polynomial could be any value.  Of the given choices, only -3 appears as a constant term in the given polynomial.

**Step 3 — Select A.** -3

**Distractor analysis:**
- **B** (-1): Choice B (-1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1): Choice C (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3): Choice D (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":111,"opensat_domain":"Advanced Math","opensat_raw_id":"6b2173d9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '1ff9fc1e-a6ff-4a01-9b86-fbd23b8cd078';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 46 by 45 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$2070$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$91$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$2066$","is_correct":true,"explanation":"**Step 1:** Full area $2070$. **Step 2:** Subtract $2^2$ → $2066$."},{"id":"D","text":"$2068$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $46×45=2070$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $2070-4=2066$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2063b5c8-3fdb-4b27-8ff1-e297b197abc8';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 44, 48, 52, 56, and one score $x$ is missing. The mean is 48.4.',
  options = '[{"id":"A","text":"$40$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$42$","is_correct":true,"explanation":"**Step 1:** Sum needed $=48.4×5=242$. **Step 2:** $x=242-200=42$."},{"id":"C","text":"$44$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$48$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=48.4×5=242$.
**Step 2:** $x=242-200=42$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.060Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '20a7dcb9-b2cd-41c5-a803-31ddd1f2c258';

COMMIT;
