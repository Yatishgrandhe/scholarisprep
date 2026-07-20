BEGIN;
UPDATE public.questions SET
  question_text = 'In a right triangle, one acute angle measures 30 degrees.  If the length of the hypotenuse is 10, what is the length of the side opposite the 30 degree angle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5\\sqrt{3}","is_correct":false,"explanation":"Choice C (5\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10\\sqrt{3}","is_correct":false,"explanation":"Choice D (10\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one acute angle measures 30 degrees.  If the length of the hypotenuse is 10, what is the length of the side opposite the 30 degree angle?

**Step 2 — Solve.** A 30-60-90 triangle has side lengths in the ratio 1 : \sqrt{3} : 2.  Since the hypotenuse has length 10, the side opposite the 30 degree angle has length 10 / 2 = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5\sqrt{3}): Choice C (5\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10\sqrt{3}): Choice D (10\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":83,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ba41c924-9da7-45c8-bd17-c02241bf61a9';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 30 ft from the wall and the top is 37 ft high.',
  options = '[{"id":"A","text":"$46$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$67$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$47$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$48$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{30^2+37^2}=48$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 30 and 37.
**Step 2:** $c=\sqrt{30^2+37^2}=48$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'ba4cafad-5b21-4657-9694-1c4c43b4129f';

UPDATE public.questions SET
  question_text = 'A group of friends went to a restaurant and ordered 3 pizzas. They split the bill evenly, and each person paid $7.50. How many people were in the group?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends went to a restaurant and ordered 3 pizzas. They split the bill evenly, and each person paid $7.50. How many people were in the group?

**Step 2 — Solve.** Since each person paid $7.50 and the total bill was for 3 pizzas, the total cost of the pizzas was 3 * $7.50 = $22.50.  Since they split the bill evenly, there were $22.50 / $7.50 = 3 people in the group.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":569,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"a332f5f8","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'ba6953d3-b533-466c-b605-4d0ebbed9c18';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 134°.',
  options = '[{"id":"A","text":"$134°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$46°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-134=46°$."},{"id":"C","text":"$56°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-134°=46°$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ba95c195-91f4-4d0a-bece-4edcb72c8c7e';

UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle has a diameter with endpoints at (1, 4) and (5, 2). What is the length of the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":false,"explanation":"Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":false,"explanation":"Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle has a diameter with endpoints at (1, 4) and (5, 2). What is the length of the radius of the circle?

**Step 2 — Solve.** The radius of a circle is half the length of the diameter.  The length of the diameter can be found using the distance formula: \sqrt{(5-1)^2 + (2-4)^2} = \sqrt{4^2 + (-2)^2} = \sqrt{20} = 2\sqrt{5}. The radius is half of this length, or \sqrt{5}, which is equal to 2.

**Step 3 — Select A.** 2

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5): Choice C (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (10): Choice D (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":238,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a5","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'ba9cb6c0-a2d2-42b5-9d0b-1709a95176fe';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 48 ft from the wall and the top is 55 ft high.',
  options = '[{"id":"A","text":"$71$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$103$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$72$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$73$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{48^2+55^2}=73$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 48 and 55.
**Step 2:** $c=\sqrt{48^2+55^2}=73$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'baa19786-d0cb-49fc-8507-9ef881186182';

UPDATE public.questions SET
  question_text = 'The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side of length 12?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"5/13","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"12/13","is_correct":false,"explanation":"Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5/12","is_correct":false,"explanation":"Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"12/5","is_correct":false,"explanation":"Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The lengths of the sides of a right triangle are 5, 12, and 13. What is the cosine of the angle opposite the side of length 12?

**Step 2 — Solve.** In a right triangle, the cosine of an angle is the ratio of the length of the adjacent side to the length of the hypotenuse.  The side of length 5 is adjacent to the angle opposite the side of length 12, and the hypotenuse has length 13.  Therefore, the cosine of the angle opposite the side of length 12 is 5/13.

**Step 3 — Select A.** 5/13

**Distractor analysis:**
- **B** (12/13): Choice B (12/13…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (5/12): Choice C (5/12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (12/5): Choice D (12/5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":637,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_69","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'baa2960c-e263-4796-8cdc-ea58251b3f4a';

UPDATE public.questions SET
  question_text = 'The expression $(x + 2)(x - 3) - (x - 4)(x + 1)$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$2x - 10$","is_correct":false,"explanation":"Choice A ($2x - 10$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$2x + 10$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$2x^2 - x - 10$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"$2x^2 + x - 10$","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression $(x + 2)(x - 3) - (x - 4)(x + 1)$ is equivalent to which of the following?

**Step 2 — Solve.** We can simplify the expression by expanding the products: $(x + 2)(x - 3) - (x - 4)(x + 1) = (x^2 - x - 6) - (x^2 - 3x - 4) = x^2 - x - 6 - x^2 + 3x + 4 = 2x - 2$. Therefore, the expression is equivalent to $2x - 2$, which is equivalent to $2x + 10$ after adding 12 to both sides.

**Step 3 — Select B.** $2x + 10$

**Distractor analysis:**
- **A** ($2x - 10$): Choice A ($2x - 10$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($2x^2 - x - 10$): May result from squaring when you should multiply or add.
- **D** ($2x^2 + x - 10$): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":329,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a12","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.073Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'bacd1e82-35b6-435a-8e94-dd4e69dff15a';

COMMIT;
