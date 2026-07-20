BEGIN;
UPDATE public.questions SET
  question_text = 'If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If  $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** We can solve this system of equations using elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5, we find that $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":857,"opensat_domain":"Algebra","opensat_raw_id":"random_id_12","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f41063df-a777-4c8a-83dc-1ed5b9277f73';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like neither apples nor oranges?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"30","is_correct":false,"explanation":"Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like neither apples nor oranges?

**Step 2 — Solve.** We can use a Venn Diagram to visualize the problem: [Venn Diagram showing 60 people in the apple circle, 40 people in the orange circle, and 20 people in the overlap. The remaining space outside of the circles represent those who like neither.]  Since 20 people like both, 40 people like only apples (60 - 20) and 20 people like only oranges (40 - 20). Therefore, 100 - 40 - 20 - 20 = 20 people like neither apples nor oranges.

**Step 3 — Select B.** 20

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30): Choice C (30…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":1028,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f46c6712-b095-4a02-a32c-762749aeb0c8';

UPDATE public.questions SET
  question_text = 'After $t=20$ hours, how many miles has the car traveled?',
  stimulus_text = 'A car''s distance $d$ (miles) after $t$ hours is modeled by $d=4t+17$.',
  options = '[{"id":"A","text":"$93$","is_correct":false,"explanation":"Uses $t-1$ instead of $t=20$."},{"id":"B","text":"$97$","is_correct":true,"explanation":"**Step 1:** Substitute $t=20$. **Step 2:** $d=4(20)+17=97$."},{"id":"C","text":"$98$","is_correct":false,"explanation":"Adds 1 to the correct distance."},{"id":"D","text":"$21$","is_correct":false,"explanation":"Adds slope and intercept instead of evaluating."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Plug in $t=20$: $d=4(20)+17$.
**Step 2:** Compute: $d=97$ miles.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f48157be-0dc2-43dc-a181-0ed86f8059c9';

UPDATE public.questions SET
  question_text = 'A circle with center (-2, 5) passes through the point (4, -1). What is the radius of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"10","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A circle with center (-2, 5) passes through the point (4, -1). What is the radius of the circle?

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  We can use the distance formula to find the distance between (-2, 5) and (4, -1): \begin{align*} \sqrt{(4 - (-2))^2 + (-1 - 5)^2} &= \sqrt{6^2 + (-6)^2}\\ &= \sqrt{36 + 36} \\ &= \sqrt{72} \\ &= 6\sqrt{2} \\ &= 6(1.41) \\ &\approx 8.46. \end{align*} Since the radius is the distance between the center and a point on the circle, the radius is approximately 8.46. Of the given choices, the closest value is 10.

**Step 3 — Select D.** 10

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":823,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9284ac76","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = 'f4a1a7bb-6389-4a9c-8219-fd92ff9304e7';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7 cm","is_correct":false,"explanation":"Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4 cm","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5 cm","is_correct":false,"explanation":"Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157 cm","is_correct":false,"explanation":"Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2 \pi r$, where $r$ is the radius.  Substituting 5 for $r$ and 3.14 for $\pi$, we get $C = 2(3.14)(5) = 31.4$ cm.

**Step 3 — Select B.** 31.4 cm

**Distractor analysis:**
- **A** (15.7 cm): Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5 cm): Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157 cm): Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":228,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_12","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f4a3523a-77f5-46ae-a61d-32cf8a9f1080';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people prefer to eat breakfast, 40 people prefer to eat lunch, and 20 people prefer to eat dinner. If a person is chosen at random from the survey, what is the probability that the person prefers to eat breakfast? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0.2","is_correct":false,"explanation":"Choice A (0.2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"0.4","is_correct":false,"explanation":"Choice B (0.4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"0.6","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"0.8","is_correct":false,"explanation":"Choice D (0.8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people prefer to eat breakfast, 40 people prefer to eat lunch, and 20 people prefer to eat dinner. If a person is chosen at random from the survey, what is the probability that the person prefers to eat breakfast? 

**Step 2 — Solve.** The probability of an event is the number of favorable outcomes divided by the total number of outcomes. In this case, there are 60 people who prefer to eat breakfast out of a total of 100 people. Therefore, the probability that a randomly chosen person prefers to eat breakfast is 60/100, or 0.6.

**Step 3 — Select C.** 0.6

**Distractor analysis:**
- **A** (0.2): Choice A (0.2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (0.4): Choice B (0.4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (0.8): Choice D (0.8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"PRO","domain_id":"psda","opensat_index":667,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a9","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f50b1364-2faf-46cd-b8cc-13026a9d16e6';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"15.7 cm","is_correct":false,"explanation":"Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"31.4 cm","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"78.5 cm","is_correct":false,"explanation":"Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"157 cm","is_correct":false,"explanation":"Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the circumference of the circle? (Use $\pi = 3.14$)

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius. Plugging in the values, we get $C = 2(3.14)(5) = 31.4$ cm.

**Step 3 — Select B.** 31.4 cm

**Distractor analysis:**
- **A** (15.7 cm): Choice A (15.7 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (78.5 cm): Choice C (78.5 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (157 cm): Choice D (157 cm…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":800,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_a4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f5407e7a-cdc5-4694-a41b-642d433e17e0';

UPDATE public.questions SET
  question_text = 'If the original price is $300$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 20%.',
  options = '[{"id":"A","text":"$300$","is_correct":true,"explanation":"**Step 1:** $300×1.25=375$. **Step 2:** $375×0.8=300$."},{"id":"B","text":"$300$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$375$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$310$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $300×(1+25/100)=375$.
**Step 2:** Discount: $375×(1-20/100)=300$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.076Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = 'f57a0cf4-2fa7-421b-a984-c4a8462f21b3';

COMMIT;
