BEGIN;
UPDATE public.questions SET
  question_text = 'In triangle $ABC$, angle $A$ is a right angle, and $AB = 3$ and $BC = 5$. What is the length of $AC$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"8","is_correct":false,"explanation":"Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In triangle $ABC$, angle $A$ is a right angle, and $AB = 3$ and $BC = 5$. What is the length of $AC$?

**Step 2 — Solve.** Triangle $ABC$ is a right triangle, so we can use the Pythagorean theorem to find the length of $AC$.  The Pythagorean theorem states that in a right triangle, the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. In this case, $BC$ is the hypotenuse, so $BC^2 = AB^2 + AC^2$.  Substituting the given values, we get $5^2 = 3^2 + AC^2$.  This simplifies to $25 = 9 + AC^2$.  Subtracting 9 from both sides, we get $16 = AC^2$. Taking the square root of both sides, we get $AC = 4$.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (8): Choice C (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN_G","domain_id":"geometry","opensat_index":838,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d78cc60-ddee-4c31-8959-c19f0c154792';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 10 by 9 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$90$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$19$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$86$","is_correct":true,"explanation":"**Step 1:** Full area $90$. **Step 2:** Subtract $2^2$ → $86$."},{"id":"D","text":"$88$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $10×9=90$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $90-4=86$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4d826b3b-405b-4479-9cc5-77b3fdaddd74';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 11 by 10 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$110$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$21$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$106$","is_correct":true,"explanation":"**Step 1:** Full area $110$. **Step 2:** Subtract $2^2$ → $106$."},{"id":"D","text":"$108$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $11×10=110$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $110-4=106$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4db25458-488d-436c-9556-b864b2b46b34';

UPDATE public.questions SET
  question_text = 'If $2x+3=7$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** If $2x+3=7$, what is the value of $x$?

**Step 2 — Solve.** Subtracting 3 from both sides of the equation gives $2x = 4$. Dividing both sides by 2 gives $x=2$.

**Step 3 — Select A.** 2

**Distractor analysis:**
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":281,"opensat_domain":"Algebra","opensat_raw_id":"random_id_15","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4dc24c84-9818-4c37-b633-56485fb058ad';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $4:6$ to make 102 milliliters of solution.',
  options = '[{"id":"A","text":"$38$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$40$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$41$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{4}{10}$. **Step 2:** $\\frac{4}{10}×102=41$."},{"id":"D","text":"$102$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{4}{10}$ of 102.
**Step 2:** $\frac{4}{10}×102=41$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4dd3ab6a-90a1-4835-8705-42ea602252bf';

UPDATE public.questions SET
  question_text = 'If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"8","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"16","is_correct":false,"explanation":"Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $x + 2y = 10$ and $x - 2y = 6$, what is the value of $x$?

**Step 2 — Solve.** Adding the two equations together eliminates $y$ and gives us $2x = 16$. Dividing both sides by 2 gives $x = 8$.

**Step 3 — Select C.** 8

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (16): Choice D (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":820,"opensat_domain":"Algebra","opensat_raw_id":"81a5872d","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4e70e096-01f5-4215-b602-845c60a4cb20';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 29 by 28 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$812$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$808$","is_correct":true,"explanation":"**Step 1:** Full area $812$. **Step 2:** Subtract $2^2$ → $808$."},{"id":"D","text":"$810$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $29×28=812$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $812-4=808$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ea3514c-4aa9-49d8-8ece-1108b15f5855';

UPDATE public.questions SET
  question_text = 'If $3x + 4y = 17$ and $2x - 3y = 9$, what is the value of $x + y$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":false,"explanation":"Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"7","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If $3x + 4y = 17$ and $2x - 3y = 9$, what is the value of $x + y$?

**Step 2 — Solve.** To solve for $x+y$, we can add the two equations together.  Adding the left sides gives us $(3x + 4y) + (2x - 3y) = 5x + y$.  Adding the right sides gives us $17 + 9 = 26$.  Therefore, $5x + y = 26$.  Dividing both sides by 5 gives us $x + y = \frac{26}{5}$, or $x + y = 5.2$.  Since the answer must be a whole number, we round 5.2 to the nearest whole number, 5.  Therefore, $x + y = 5$.

**Step 3 — Select D.** 7

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (5): Choice B (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":802,"opensat_domain":"Algebra","opensat_raw_id":"b678452b","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '4ea571b8-cb0f-4802-9359-803bb1feb77c';

COMMIT;
