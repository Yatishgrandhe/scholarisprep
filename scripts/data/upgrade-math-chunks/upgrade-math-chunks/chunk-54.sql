BEGIN;
UPDATE public.questions SET
  question_text = 'The equation $x^2 - 6x + 9 = 0$ has exactly one solution. What is the value of the solution?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"6","is_correct":false,"explanation":"Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"9","is_correct":false,"explanation":"Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 6x + 9 = 0$ has exactly one solution. What is the value of the solution?

**Step 2 — Solve.** The equation is a perfect square trinomial, which can be factored as $(x-3)^2 = 0$. Taking the square root of both sides yields $x-3 = 0$.  Adding 3 to both sides of the equation yields $x=3$.  Therefore, the solution to the equation is 3.

**Step 3 — Select B.** 3

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (6): Choice C (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (9): Choice D (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":606,"opensat_domain":"Advanced Math","opensat_raw_id":"f469d82a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '48415e7d-5e99-431c-a617-25083a57c6fa';

UPDATE public.questions SET
  question_text = 'The product of two positive integers is 48. The difference between the two integers is 2. What is the sum of the two integers?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"14","is_correct":false,"explanation":"Choice A (14…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"16","is_correct":false,"explanation":"Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"20","is_correct":false,"explanation":"Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"26","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The product of two positive integers is 48. The difference between the two integers is 2. What is the sum of the two integers?

**Step 2 — Solve.** Let the two integers be x and y. We are given that xy = 48 and x - y = 2. Solving for x in the second equation gives us x = y + 2. Substituting y + 2 for x in the first equation gives (y + 2)y = 48, or y^2 + 2y = 48. Subtracting 48 from both sides yields y^2 + 2y - 48 = 0. Factoring this equation gives (y + 8)(y - 6) = 0, which means y = -8 or y = 6. Since the integers are positive, y must equal 6. Substituting 6 for y in the equation x = y + 2 gives us x = 6 + 2, or x = 8. Therefore, the sum of the two integers is 8 + 6 = 14.

**Step 3 — Select D.** 26

**Distractor analysis:**
- **A** (14): Choice A (14…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (16): Choice B (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (20): Choice C (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":882,"opensat_domain":"Advanced Math","opensat_raw_id":"b587417a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4873e4f8-1b4d-494a-af59-c89c1ac0330c';

UPDATE public.questions SET
  question_text = 'A survey of 100 people found that 60 people like apples, 50 people like oranges, and 20 people like both apples and oranges. How many people like only oranges? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10","is_correct":false,"explanation":"Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20","is_correct":false,"explanation":"Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"40","is_correct":false,"explanation":"Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A survey of 100 people found that 60 people like apples, 50 people like oranges, and 20 people like both apples and oranges. How many people like only oranges? 

**Step 2 — Solve.** We can use a Venn diagram to visualize the problem. The number of people who like only oranges is represented by the region of the orange circle that doesn''t overlap with the apple circle. Since 20 people like both apples and oranges, and 50 people like oranges in total, then 50 – 20 = 30 people like only oranges.

**Step 3 — Select C.** 30

**Distractor analysis:**
- **A** (10): Choice A (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (20): Choice B (20…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40): Choice D (40…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"IEE","domain_id":"psda","opensat_index":890,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '487655e4-3bf9-49b1-a222-491ca629dfd0';

UPDATE public.questions SET
  question_text = 'What is the slope, and what does it represent?',
  stimulus_text = 'A line models cost vs. units produced, passing through $(32,95)$ and $(38,113)$.',
  options = '[{"id":"A","text":"$3$; cost increases $3$ per unit","is_correct":true,"explanation":"**Step 1:** Slope $=\\frac{113-95}{38-32}=3$. Interpretation: $3$ dollars per unit."},{"id":"B","text":"$2$; cost decreases per unit","is_correct":false,"explanation":"Wrong sign and magnitude."},{"id":"C","text":"$113$; total cost","is_correct":false,"explanation":"That is a coordinate, not slope."},{"id":"D","text":"$6$; time elapsed","is_correct":false,"explanation":"Horizontal change only."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Slope $=\frac{18}{6}=3$.
**Step 2:** In context, each additional unit adds $3$ to cost.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '49288293-8f9a-4202-8fb7-e6c61a511988';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 25 ft from the wall and the top is 32 ft high.',
  options = '[{"id":"A","text":"$39$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$57$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$40$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$41$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{25^2+32^2}=41$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 25 and 32.
**Step 2:** $c=\sqrt{25^2+32^2}=41$ ft.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '49af7d1d-50f0-4606-bdcf-a43721e36064';

UPDATE public.questions SET
  question_text = 'Given $x+y=20$ and $2x-y=19$, what is $x$?',
  stimulus_text = 'At a fundraiser, 20 tickets were sold in two price tiers. VIP tickets cost twice as much as standard tickets, and revenue from 13 VIP and 7 standard tickets follows the system below.',
  options = '[{"id":"A","text":"$13$","is_correct":true,"explanation":"**Step 1:** Add equations: $3x=39$. **Step 2:** $x=13$."},{"id":"B","text":"$12$","is_correct":false,"explanation":"One less than the solution."},{"id":"C","text":"$7$","is_correct":false,"explanation":"That is $y$, not $x$."},{"id":"D","text":"$14$","is_correct":false,"explanation":"One more than the solution."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Add: $(x+y)+(2x-y)=20+19$ → $3x=39$.
**Step 2:** $x=13$.
**Step 3:** Back-substitute: $y=7$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4a395719-8fa7-4d53-ae74-d6422b3d00c4';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is $\$1200. If there are 6 friends going on the trip, how much will each friend pay? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$100","is_correct":false,"explanation":"Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$200","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$300","is_correct":false,"explanation":"Choice C ($300…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$600","is_correct":false,"explanation":"Choice D ($600…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly. The total cost of the trip is $\$1200. If there are 6 friends going on the trip, how much will each friend pay? 

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost of the trip by the number of friends.  $\frac{1200}{6} = 200$, so each friend will pay $\$200.

**Step 3 — Select B.** $200

**Distractor analysis:**
- **A** ($100): Choice A ($100…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($300): Choice C ($300…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($600): Choice D ($600…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":174,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c3","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4ae65559-6e99-44b4-ad6a-2bb0681eeb27';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 cm. What is the area, in square centimeters, of a sector of this circle with a central angle of 72 degrees?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10\\pi","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"20\\pi","is_correct":false,"explanation":"Choice B (20\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"30\\pi","is_correct":false,"explanation":"Choice C (30\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"40\\pi","is_correct":false,"explanation":"Choice D (40\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 cm. What is the area, in square centimeters, of a sector of this circle with a central angle of 72 degrees?

**Step 2 — Solve.** The area of a sector of a circle is given by (central angle/360 degrees) * (pi * radius^2).  Plugging in the values we get (72/360) * (pi * 5^2) = (1/5) * 25pi = 5pi.  Therefore, the area of the sector is 5pi square centimeters.

**Step 3 — Select A.** 10\pi

**Distractor analysis:**
- **B** (20\pi): Choice B (20\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (30\pi): Choice C (30\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (40\pi): Choice D (40\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":856,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '4af8eeba-39af-4405-8008-81284a648561';

COMMIT;
