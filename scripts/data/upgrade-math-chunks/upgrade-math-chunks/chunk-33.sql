BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. The diameter is twice the radius, so the side length of the square is 10.  The area of the square is (side length)^2 = 10^2 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":229,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_d2","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2e210755-86eb-4899-a005-787d2c93fddb';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 is inscribed in a square. What is the area of the square?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"25","is_correct":false,"explanation":"Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"50","is_correct":false,"explanation":"Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"100","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"200","is_correct":false,"explanation":"Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 is inscribed in a square. What is the area of the square?

**Step 2 — Solve.** The diameter of the circle is equal to the side length of the square. Since the radius of the circle is 5, the diameter is 10. The area of the square is then side length squared, or 10 * 10 = 100.

**Step 3 — Select C.** 100

**Distractor analysis:**
- **A** (25): Choice A (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (50): Choice B (50…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (200): Choice D (200…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":325,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"9389fa32","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2e52b9de-b777-4725-bb2a-cfcb7f086b92';

UPDATE public.questions SET
  question_text = 'The expression $(x + 3)^2$ is equivalent to which of the following?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"x^2 + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"x^2 + 6x + 9","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"x^2 + 9x + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"x^2 + 3x + 9","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** The expression $(x + 3)^2$ is equivalent to which of the following?

**Step 2 — Solve.** The expression $(x + 3)^2$ is equivalent to $(x + 3)(x + 3)$. Using the distributive property, we expand this to get $x^2 + 3x + 3x + 9$. Combining like terms gives us $x^2 + 6x + 9$.

**Step 3 — Select B.** x^2 + 6x + 9

**Distractor analysis:**
- **A** (x^2 + 9): May result from squaring when you should multiply or add.
- **C** (x^2 + 9x + 9): May result from squaring when you should multiply or add.
- **D** (x^2 + 3x + 9): May result from squaring when you should multiply or add.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"EQS","domain_id":"advanced","opensat_index":764,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_12","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2eba7996-a0e6-4452-bf6d-d584964b0b77';

UPDATE public.questions SET
  question_text = 'How many milliliters of substance A are in the mixture?',
  stimulus_text = 'A chemist mixes substances A and B in ratio $5:5$ to make 216 milliliters of solution.',
  options = '[{"id":"A","text":"$105$","is_correct":false,"explanation":"Underestimates A''s share."},{"id":"B","text":"$107$","is_correct":false,"explanation":"Close but ratio arithmetic is off."},{"id":"C","text":"$108$","is_correct":true,"explanation":"**Step 1:** A''s fraction $\\frac{5}{10}$. **Step 2:** $\\frac{5}{10}×216=108$."},{"id":"D","text":"$216$","is_correct":false,"explanation":"That is the total volume."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** A''s share: $\frac{5}{10}$ of 216.
**Step 2:** $\frac{5}{10}×216=108$ mL.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_bulk_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2f30aac5-f288-4386-98fe-bf075a01a9f8';

UPDATE public.questions SET
  question_text = 'The function f(x) is defined as f(x) = (x^2 - 4)/(x-2), where x is not equal to 2. What is the value of f(3)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"7","is_correct":false,"explanation":"Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function f(x) is defined as f(x) = (x^2 - 4)/(x-2), where x is not equal to 2. What is the value of f(3)?

**Step 2 — Solve.** We can simplify the function by factoring the numerator: f(x) = (x + 2)(x - 2)/(x - 2). Since x is not equal to 2, we can cancel out the (x - 2) terms, leaving us with f(x) = x + 2.  Therefore, f(3) = 3 + 2 = 5.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (7): Choice D (7…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":200,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_d3","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2f6810b9-6daa-44bd-a177-bac914b62f4c';

UPDATE public.questions SET
  question_text = 'A circle has a radius of 5 units and a diameter with endpoints (2, 4) and (2, 14).  An equation of this circle is $(x - h)^2 + (y - k)^2 = r^2$, where r is a positive constant. What is the value of r?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"5","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"10","is_correct":false,"explanation":"Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"25","is_correct":false,"explanation":"Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle has a radius of 5 units and a diameter with endpoints (2, 4) and (2, 14).  An equation of this circle is $(x - h)^2 + (y - k)^2 = r^2$, where r is a positive constant. What is the value of r?

**Step 2 — Solve.** The radius of a circle is the distance from the center of the circle to any point on the circle.  Since the endpoints of a diameter are given, the length of the diameter is the distance between those two points.  The distance between (2, 4) and (2, 14) is 10.  Since the radius is half the diameter, the radius is 5.  In the equation of the circle, r represents the radius, so r = 5.

**Step 3 — Select B.** 5

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (10): Choice C (10…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (25): Choice D (25…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":352,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '2f85d30a-c79f-4c08-9455-8da52d787b84';

UPDATE public.questions SET
  question_text = 'A circle has a circumference of $12\pi$ centimeters. What is the area, in square centimeters, of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"6\\pi","is_correct":false,"explanation":"Choice A (6\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"12\\pi","is_correct":false,"explanation":"Choice B (12\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144\\pi","is_correct":false,"explanation":"Choice D (144\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle has a circumference of $12\pi$ centimeters. What is the area, in square centimeters, of the circle?

**Step 2 — Solve.** The circumference of a circle is given by the formula $C = 2\pi r$, where $r$ is the radius of the circle.  We are given that the circumference is $12\pi$ centimeters, so we can solve for the radius: 
 $12\pi = 2\pi r$ 
 $r = 6$ 
 The area of a circle is given by the formula $A = \pi r^2$. Substituting 6 for $r$ gives us $A = \pi(6)^2 = 36\pi$ square centimeters.

**Step 3 — Select C.** 36\pi

**Distractor analysis:**
- **A** (6\pi): Choice A (6\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (12\pi): Choice B (12\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144\pi): Choice D (144\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":485,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '2fb9a686-8217-4949-8904-39c739df0b90';

UPDATE public.questions SET
  question_text = 'A store sells apples and oranges. The ratio of apples to oranges sold on a particular day was 3:5. If 120 apples were sold that day, how many oranges were sold?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"80","is_correct":false,"explanation":"Choice A (80…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"160","is_correct":false,"explanation":"Choice B (160…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"200","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"300","is_correct":false,"explanation":"Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A store sells apples and oranges. The ratio of apples to oranges sold on a particular day was 3:5. If 120 apples were sold that day, how many oranges were sold?

**Step 2 — Solve.** The ratio 3:5 means for every 3 apples sold, 5 oranges were sold.  We can set up a proportion: 3/5 = 120/x.  Solving for x, we get 3x = 600, and dividing both sides by 3 yields x = 200.  Therefore, 200 oranges were sold.

**Step 3 — Select C.** 200

**Distractor analysis:**
- **A** (80): Choice A (80…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (160): Choice B (160…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (300): Choice D (300…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":954,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_8","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.061Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '2fd12944-b637-4963-952e-9cd275864144';

COMMIT;
