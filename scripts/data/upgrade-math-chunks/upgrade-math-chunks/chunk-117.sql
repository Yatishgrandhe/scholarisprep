BEGIN;
UPDATE public.questions SET
  question_text = 'A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"30","is_correct":false,"explanation":"Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"60","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"60\\sqrt{3}","is_correct":false,"explanation":"Choice C (60\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"120\\sqrt{3}","is_correct":false,"explanation":"Choice D (120\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A regular hexagon is inscribed in a circle with radius 10. What is the perimeter of the hexagon?

**Step 2 — Solve.** A regular hexagon can be divided into 6 equilateral triangles.  Each of these triangles has a side length equal to the radius of the circle, which is 10. Therefore, the perimeter of the hexagon is 6 * 10 = 60.

**Step 3 — Select B.** 60

**Distractor analysis:**
- **A** (30): Choice A (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60\sqrt{3}): Choice C (60\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120\sqrt{3}): Choice D (120\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":654,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_9","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a31a5d66-bfb8-4724-b636-d2b63f415557';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is \sqrt{5^2 + 12^2} = \sqrt{169} = 13.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":86,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a32ed8c1-febf-4e64-9b36-097ab86a8f6b';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 25, 29, 33, 37, and one score $x$ is missing. The mean is 29.4.',
  options = '[{"id":"A","text":"$21$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$23$","is_correct":true,"explanation":"**Step 1:** Sum needed $=29.4×5=147$. **Step 2:** $x=147-124=23$."},{"id":"C","text":"$25$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$29$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=29.4×5=147$.
**Step 2:** $x=147-124=23$.
**Step 3:** Verify mean.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a332be46-92b9-4097-aaae-7ad08fe981b8';

UPDATE public.questions SET
  question_text = 'A store sells two types of cookies: chocolate chip and peanut butter. The store sells 3 chocolate chip cookies for every 2 peanut butter cookies. If the store sells 45 chocolate chip cookies in a day, how many peanut butter cookies do they sell in a day?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15","is_correct":false,"explanation":"Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"22.5","is_correct":false,"explanation":"Choice B (22.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"67.5","is_correct":false,"explanation":"Choice D (67.5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells two types of cookies: chocolate chip and peanut butter. The store sells 3 chocolate chip cookies for every 2 peanut butter cookies. If the store sells 45 chocolate chip cookies in a day, how many peanut butter cookies do they sell in a day?

**Step 2 — Solve.** The ratio of chocolate chip cookies to peanut butter cookies is 3:2.  Since the store sells 45 chocolate chip cookies, which is 3 times the value of the ratio, the store must sell 2 times that value in peanut butter cookies, or 30 peanut butter cookies.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (15): Choice A (15…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (22.5): Choice B (22.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (67.5): Choice D (67.5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":57,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a344baed-d4b4-4799-9b01-50fa212ced16';

UPDATE public.questions SET
  question_text = 'A group of students are selling raffle tickets to raise money for a school trip.  They have sold 150 tickets so far, and they need to sell a total of 300 tickets.  What percentage of the total number of tickets have they sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25%","is_correct":false,"explanation":"Choice A (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"33.3%","is_correct":false,"explanation":"Choice B (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"50%","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"66.7%","is_correct":false,"explanation":"Choice D (66.7%…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of students are selling raffle tickets to raise money for a school trip.  They have sold 150 tickets so far, and they need to sell a total of 300 tickets.  What percentage of the total number of tickets have they sold?

**Step 2 — Solve.** They have sold half of the total number of tickets, which is 150/300 = 0.5.  This is equivalent to 50%.

**Step 3 — Select C.** 50%

**Distractor analysis:**
- **A** (25%): Choice A (25%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (33.3%): Choice B (33.3%…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (66.7%): Choice D (66.7%…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PER","domain_id":"psda","opensat_index":132,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a385e114-4b4c-4a9d-9561-2ba9e53304d4';

UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"19","is_correct":false,"explanation":"Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean Theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  Therefore, the length of the hypotenuse is $\sqrt{5^2 + 12^2} = \sqrt{169} = 13$.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (19): Choice D (19…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":913,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"34b49314","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'a38f72bf-267d-4fae-9806-d11dfffbbbd9';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 13 by 12 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$156$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$25$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$152$","is_correct":true,"explanation":"**Step 1:** Full area $156$. **Step 2:** Subtract $2^2$ → $152$."},{"id":"D","text":"$154$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $13×12=156$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $156-4=152$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'a392f164-d274-49ba-9bc2-3f8730be6779';

UPDATE public.questions SET
  question_text = 'If the original price is $290$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 20% and then discounted by 15%.',
  options = '[{"id":"A","text":"$296$","is_correct":true,"explanation":"**Step 1:** $290×1.2=348$. **Step 2:** $348×0.85=296$."},{"id":"B","text":"$290$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$348$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$306$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $290×(1+20/100)=348$.
**Step 2:** Discount: $348×(1-15/100)=296$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"model":"gemma-4-26b-a4b-it","original":true,"generator":"scholaris_ai_v1","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.069Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = 'a396425d-1983-4dc0-b8b5-efb3a7fecc16';

COMMIT;
