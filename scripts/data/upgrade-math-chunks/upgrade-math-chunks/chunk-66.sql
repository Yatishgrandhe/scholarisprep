BEGIN;
UPDATE public.questions SET
  question_text = 'A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"11","is_correct":false,"explanation":"Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"13","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"17","is_correct":false,"explanation":"Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"22","is_correct":false,"explanation":"Choice D (22…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A right triangle has legs of length 5 and 12. What is the length of the hypotenuse?

**Step 2 — Solve.** The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the legs.  In this case, the hypotenuse squared is equal to 5 squared plus 12 squared, or 169.  The square root of 169 is 13, so the length of the hypotenuse is 13.

**Step 3 — Select B.** 13

**Distractor analysis:**
- **A** (11): Choice A (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (17): Choice C (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (22): Choice D (22…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":955,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_15","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5b1d0094-77f2-48aa-8d3b-ac7ce39de60c';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(20,59)$ and $(26,77)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{77-59}{26-20}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$77$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5b34535b-3767-4bc0-bc47-2348b388cc90';

UPDATE public.questions SET
  question_text = 'A store sells apples for $1.20 per pound and oranges for $0.80 per pound. A customer buys pounds of apples and pounds of oranges. What is the total cost, in dollars, of the apples and oranges the customer bought? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1.2x + 0.8y","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"1.2xy","is_correct":false,"explanation":"Choice B (1.2xy…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"2xy","is_correct":false,"explanation":"Choice C (2xy…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"2x + 2y","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A store sells apples for $1.20 per pound and oranges for $0.80 per pound. A customer buys pounds of apples and pounds of oranges. What is the total cost, in dollars, of the apples and oranges the customer bought? 

**Step 2 — Solve.** The total cost of the apples is $1.20 times the number of pounds of apples, or 1.2x.  The total cost of the oranges is $0.80 times the number of pounds of oranges, or 0.8y.  The total cost of the apples and oranges is the sum of these two costs, or 1.2x + 0.8y.

**Step 3 — Select A.** 1.2x + 0.8y

**Distractor analysis:**
- **B** (1.2xy): Choice B (1.2xy…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (2xy): Choice C (2xy…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (2x + 2y): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"OIA","domain_id":"psda","opensat_index":36,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5b7bf390-cf41-435e-a5d4-36761f381f85';

UPDATE public.questions SET
  question_text = 'The circumference of a circle is $12 \pi$. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12\\pi","is_correct":false,"explanation":"Choice A (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"36\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"144\\pi","is_correct":false,"explanation":"Choice C (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The circumference of a circle is $12 \pi$. What is the area of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  We are given that $C = 12\pi$, so we can solve for the radius: \begin{align*} 12\pi &= 2\pi r \\ \Rightarrow \qquad 6 &= r \end{align*} The area of a circle is given by the formula $A = \pi r^2$.  Substituting 6 for $r$ gives us $A = \pi (6)^2 = 36\pi$.

**Step 3 — Select B.** 36\pi

**Distractor analysis:**
- **A** (12\pi): Choice A (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (144\pi): Choice C (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":751,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5b8aa799-921f-41fe-ba8c-0ed9d54553c8';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 centimeters. A chord of the circle is 8 centimeters long. What is the distance, in centimeters, from the center of the circle to the chord?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8","is_correct":false,"explanation":"Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 centimeters. A chord of the circle is 8 centimeters long. What is the distance, in centimeters, from the center of the circle to the chord?

**Step 2 — Solve.** Draw a diagram of the circle with the chord and the radius to the chord. The radius, the chord, and the line segment from the center of the circle to the midpoint of the chord form a right triangle, with the radius as the hypotenuse and the line segment from the center of the circle to the midpoint of the chord as one leg. Since the chord is 8 centimeters long, the line segment from the center of the circle to the midpoint of the chord is 4 centimeters long.  Applying the Pythagorean theorem, we get that the distance from the center of the circle to the chord is $\sqrt{5^2-4^2} = \sqrt{9} = 3$ centimeters.

**Step 3 — Select A.** 3

**Distractor analysis:**
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8): Choice D (8…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":39,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '5bfd4396-b0a0-4a59-90b2-4e5edfef3c4d';

UPDATE public.questions SET
  question_text = 'For what value of $k$ does the equation $6(x-6)+2k = 114$ have solution $x=23$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$5$","is_correct":false,"explanation":"Substituting this $k$ does not yield $x=23$."},{"id":"B","text":"$6$","is_correct":true,"explanation":"Expand: $6x-36+2k=114$ → $6x=138$ → $x=23$ when $k=6$."},{"id":"C","text":"$7$","is_correct":false,"explanation":"Too large; check substitution."},{"id":"D","text":"$23$","is_correct":false,"explanation":"That is $x$, not $k$."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1:** Substitute $x=23$: $6(23-k)+2k=114$.
**Step 2:** Simplify: $138-6k+2k=114$ → $138+-4k=114$.
**Step 3:** Solve for $k$: $-4k=-24$ → $k=6$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '5c3a8d4c-f3d8-4c15-b586-30edcfb85926';

UPDATE public.questions SET
  question_text = 'The expression $(x + 2)^2$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^2 + 4","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"x^2 + 2x + 4","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"x^2 + 4x + 4","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"x^2 + 4x + 2","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The expression $(x + 2)^2$ is equivalent to which of the following?

**Step 2 — Solve.** The expression $(x + 2)^2$ is a perfect square trinomial.  We can use the pattern (a + b)^2 = a^2 + 2ab + b^2 to expand it:  (x + 2)^2 = x^2 + 2(x)(2) + 2^2 = x^2 + 4x + 4.

**Step 3 — Select C.** x^2 + 4x + 4

**Distractor analysis:**
- **A** (x^2 + 4): May result from squaring when you should multiply or add.
- **B** (x^2 + 2x + 4): May result from squaring when you should multiply or add.
- **D** (x^2 + 4x + 2): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":334,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_6","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5c5e9d9d-e77b-4aae-bdb7-49eba043ef95';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly. If the total cost of the trip is \$240 and there are 8 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$10$","is_correct":false,"explanation":"Choice A ($\\$10$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$20$","is_correct":false,"explanation":"Choice B ($\\$20$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\$30$","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"$\\$40$","is_correct":false,"explanation":"Choice D ($\\$40$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly. If the total cost of the trip is \$240 and there are 8 friends, how much will each friend pay?

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost of the trip by the number of friends: $240 / 8 = 30$. Therefore, each friend will pay $\$30.

**Step 3 — Select C.** $\$30$

**Distractor analysis:**
- **A** ($\$10$): Choice A ($\$10$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($\$20$): Choice B ($\$20$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$40$): Choice D ($\$40$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":513,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c7","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.064Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '5cb97f14-1278-43ae-beba-3ead8531ba9b';

COMMIT;
