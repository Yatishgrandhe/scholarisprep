BEGIN;
UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"40","is_correct":false,"explanation":"Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":false,"explanation":"Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"80","is_correct":false,"explanation":"Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 40 people like oranges, and 20 people like both apples and oranges. How many people like only apples?

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem: [Venn Diagram] The 20 people who like both apples and oranges are in the overlap of the two circles.  Since 60 people like apples, and 20 of those like oranges, 60 - 20 = 40 people like only apples.

**Step 3 — Select A.** 20

**Distractor analysis:**
- **B** (40): Choice B (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (60): Choice C (60…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (80): Choice D (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":475,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_b2","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '018fd0c1-1a41-4234-86c0-5977d3ae6593';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 inches and a width of 5 inches. What is the area, in square inches, of the rectangle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"120","is_correct":false,"explanation":"Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 inches and a width of 5 inches. What is the area, in square inches, of the rectangle?

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width. So, the area is 12 inches * 5 inches = 60 square inches.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (120): Choice D (120…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":480,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c6","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '01b38ff4-2584-44a7-adde-ef00a8389757';

UPDATE public.questions SET
  question_text = 'What is the measure of the adjacent interior angle?',
  stimulus_text = 'An exterior angle of a triangle measures 182°.',
  options = '[{"id":"A","text":"$182°$","is_correct":false,"explanation":"That is the exterior angle."},{"id":"B","text":"$-2°$","is_correct":true,"explanation":"**Step 1:** Linear pair sums to 180°. **Step 2:** $180-182=-2°$."},{"id":"C","text":"$8°$","is_correct":false,"explanation":"Does not satisfy linear pair."},{"id":"D","text":"$90°$","is_correct":false,"explanation":"Not necessarily 90°."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Exterior and interior form a linear pair.
**Step 2:** $180°-182°=-2°$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '01b6f3f5-9c16-4adf-93f1-cbbda0f5c5e5';

UPDATE public.questions SET
  question_text = 'If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"5","is_correct":false,"explanation":"Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** If $2x + 3y = 12$ and $x - y = 1$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get $3x - 3y = 3$. Adding this equation to the first equation, we get $5x = 15$. Dividing both sides by 5 gives us $x = 3$.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (5): Choice D (5…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":427,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '01c1c54b-a970-4001-9408-d60934a95c92';

UPDATE public.questions SET
  question_text = 'A circle in the $xy$-plane has center $(1,2)$ and radius 3.  Which of the following is an equation of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x + 1)^2 + (y + 2)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x - 1)^2 + (y - 2)^2 = 3","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 1)^2 + (y - 2)^2 = 9","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 1)^2 + (y + 2)^2 = 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle in the $xy$-plane has center $(1,2)$ and radius 3.  Which of the following is an equation of the circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center $(h,k)$ and radius $r$ is $(x - h)^2 + (y - k)^2 = r^2$.  Substituting the given values, we get $(x - 1)^2 + (y - 2)^2 = 3^2$, or $(x - 1)^2 + (y - 2)^2 = 9$.

**Step 3 — Select C.** (x - 1)^2 + (y - 2)^2 = 9

**Distractor analysis:**
- **A** ((x + 1)^2 + (y + 2)^2 = 3): May result from squaring when you should multiply or add.
- **B** ((x - 1)^2 + (y - 2)^2 = 3): May result from squaring when you should multiply or add.
- **D** ((x + 1)^2 + (y + 2)^2 = 9): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":77,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_c8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '02154eb1-882d-4ae3-88c8-9c1af8f0c36c';

UPDATE public.questions SET
  question_text = 'A group of friends went to a restaurant. The bill was $\$100.00. They decided to split the bill evenly among themselves. If each person paid $\$20.00, how many people were in the group?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"4","is_correct":false,"explanation":"Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"20","is_correct":false,"explanation":"Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends went to a restaurant. The bill was $\$100.00. They decided to split the bill evenly among themselves. If each person paid $\$20.00, how many people were in the group?

**Step 2 — Solve.** To find the number of people in the group, we divide the total bill by the amount each person paid: $\$100.00 / $\$20.00 = 5 people.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (4): Choice A (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (20): Choice D (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":436,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '023b4cc0-8d70-4eeb-92b7-007d382d7061';

UPDATE public.questions SET
  question_text = 'Which expression is equivalent to $(3x+53)^2 - (3x-53)^2$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$636x$","is_correct":true,"explanation":"**Step 1:** Difference of squares in disguise: $(u+v)(u-v)$ with $u=3x+53$, $v=3x-53$ → $636x$."},{"id":"B","text":"$6x^2$","is_correct":false,"explanation":"Squares each binomial separately — wrong approach."},{"id":"C","text":"$212x$","is_correct":false,"explanation":"Uses $4b$ instead of $4ab$."},{"id":"D","text":"$9x^2+2809$","is_correct":false,"explanation":"Adds squares; not equivalent."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Let $u=3x+53$, $v=3x-53$.
**Step 2:** $u^2-v^2=(u+v)(u-v)=(6x)(106)=636x$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '02cbab1e-2239-4767-9e23-c660623de569';

UPDATE public.questions SET
  question_text = 'What is the value of the missing score $x$?',
  stimulus_text = 'Scores: 52, 56, 60, 64, and one score $x$ is missing. The mean is 56.4.',
  options = '[{"id":"A","text":"$48$","is_correct":false,"explanation":"Pulls the mean down too far."},{"id":"B","text":"$50$","is_correct":true,"explanation":"**Step 1:** Sum needed $=56.4×5=282$. **Step 2:** $x=282-232=50$."},{"id":"C","text":"$52$","is_correct":false,"explanation":"Too high for the given mean."},{"id":"D","text":"$56$","is_correct":false,"explanation":"Confuses mean with missing value."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Total sum $=56.4×5=282$.
**Step 2:** $x=282-232=50$.
**Step 3:** Verify mean.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.055Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '03315d96-8584-410b-b9cd-53b8d9bbf603';

COMMIT;
