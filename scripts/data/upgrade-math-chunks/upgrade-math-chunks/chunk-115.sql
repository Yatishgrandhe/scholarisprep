BEGIN;
UPDATE public.questions SET
  question_text = 'If  $3x - 2y = 12$ and $x + 2y = 4$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $3x - 2y = 12$ and $x + 2y = 4$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together, we get $(3x-2y) + (x+2y) = 12 + 4$.  The y-terms cancel out, leaving us with $4x = 16$.  Dividing both sides by 4, we get $x = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":522,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a0007412-36c9-441b-b2a2-c35bdf0770ab';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined by $f(x)=3x^{2}-2x+1$. What is the value of $f(-2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-9","is_correct":false,"explanation":"Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-3","is_correct":false,"explanation":"Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":false,"explanation":"Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"21","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined by $f(x)=3x^{2}-2x+1$. What is the value of $f(-2)$?

**Step 2 — Solve.** To find f(-2), we substitute -2 for *x* in the function:  

 f(-2) = 3(-2)^2 - 2(-2) + 1  

 f(-2) = 3(4) + 4 + 1  

 f(-2) = 12 + 4 + 1  

 f(-2) = 17

**Step 3 — Select D.** 21

**Distractor analysis:**
- **A** (-9): Choice A (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (-3): Choice B (-3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (13): Choice C (13…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":907,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a10","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a00d52f7-d4a2-4165-a3ec-298669835d7a';

UPDATE public.questions SET
  question_text = 'A store sells apples for $2 per pound and oranges for $1.50 per pound. A customer buys 3 pounds of apples and 2 pounds of oranges. What is the total cost of the apples and oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$7.00","is_correct":false,"explanation":"Choice A ($7.00…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$7.50","is_correct":false,"explanation":"Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$8.00","is_correct":false,"explanation":"Choice C ($8.00…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$9.00","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $2 per pound and oranges for $1.50 per pound. A customer buys 3 pounds of apples and 2 pounds of oranges. What is the total cost of the apples and oranges?

**Step 2 — Solve.** The cost of the apples is 3 pounds * $2/pound = $6. The cost of the oranges is 2 pounds * $1.50/pound = $3. The total cost is $6 + $3 = $9.

**Step 3 — Select D.** $9.00

**Distractor analysis:**
- **A** ($7.00): Choice A ($7.00…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($7.50): Choice B ($7.50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($8.00): Choice C ($8.00…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":85,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a01df2bd-1027-4bec-b97d-d115da8f20f4';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 29 ft from the wall and the top is 36 ft high.',
  options = '[{"id":"A","text":"$44$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$65$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$45$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$46$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{29^2+36^2}=46$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 29 and 36.
**Step 2:** $c=\sqrt{29^2+36^2}=46$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a03078a8-af1e-44f8-bc64-8a1faa20c0e0';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units.  What is the area of the circle in square units?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5\\pi","is_correct":false,"explanation":"Choice A (5\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"10\\pi","is_correct":false,"explanation":"Choice B (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"25\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units.  What is the area of the circle in square units?

**Step 2 — Solve.** The area of a circle is given by the formula $A = \pi r^2$, where $r$ is the radius.  Substituting 5 for $r$, we get $A = \pi (5)^2 = 25\pi$.

**Step 3 — Select C.** 25\pi

**Distractor analysis:**
- **A** (5\pi): Choice A (5\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (10\pi): Choice B (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":878,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a05584b0-039c-4de5-b435-925d3dd68c26';

UPDATE public.questions SET
  question_text = 'What is the positive solution to $x^2 - 11x + 28 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$3$","is_correct":false,"explanation":"Not a root of the quadratic."},{"id":"B","text":"$11$","is_correct":false,"explanation":"Sum of roots, not a root."},{"id":"C","text":"$7$","is_correct":true,"explanation":"**Step 1:** Factor $(x-4)(x-7)=0$. **Step 2:** Positive root is $7$."},{"id":"D","text":"$12$","is_correct":false,"explanation":"Not a solution."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Factor: $(x-4)(x-7)=0$.
**Step 2:** Roots $x=4$ and $x=7$.
**Step 3:** Positive solution: $7$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a05f3f73-bdd8-4049-a655-97d8f2f19e3e';

UPDATE public.questions SET
  question_text = 'In a circle with center O, points A, B, and C lie on the circle, and \overline{AC} is a diameter of the circle. If the measure of \angle AOB is 100 degrees, what is the measure of \angle ABC?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"75","is_correct":false,"explanation":"Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a circle with center O, points A, B, and C lie on the circle, and \overline{AC} is a diameter of the circle. If the measure of \angle AOB is 100 degrees, what is the measure of \angle ABC?

**Step 2 — Solve.** Since \overline{AC} is a diameter, \angle ACB is a right angle, and has a measure of 90 degrees.  The measure of an inscribed angle is half the measure of its intercepted arc.  The intercepted arc of \angle AOB is 100 degrees, so the measure of \angle ACB is 50 degrees.  Therefore, the measure of \angle ABC is 180 degrees - 90 degrees - 50 degrees = 40 degrees.

**Step 3 — Select B.** 50

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (75): Choice D (75…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":205,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_42","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a0703928-38a1-409b-9271-8a0ca0ad7129';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"125","is_correct":false,"explanation":"Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 centimeters and a width of 5 centimeters. What is the area, in square centimeters, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is found by multiplying the length by the width.  So, the area of this rectangle is 12 centimeters * 5 centimeters = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (125): Choice D (125…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":642,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_37","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.068Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a0714d83-d2e0-46af-963a-c55ba1fedf77';

COMMIT;
