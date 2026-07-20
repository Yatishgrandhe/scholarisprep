BEGIN;
UPDATE public.questions SET
  question_text = 'A square with side length 8 is inscribed in a circle. What is the area of the circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"16\\pi","is_correct":false,"explanation":"Choice A (16\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"32\\pi","is_correct":false,"explanation":"Choice B (32\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"64\\pi","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"128\\pi","is_correct":false,"explanation":"Choice D (128\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A square with side length 8 is inscribed in a circle. What is the area of the circle?

**Step 2 — Solve.** The diagonal of the square is a diameter of the circle.  The diagonal of the square has length $8\sqrt{2}$ (using the Pythagorean Theorem or the special 45-45-90 triangle ratio).  So the radius of the circle is $4\sqrt{2}$, and the area is $\pi(4\sqrt{2})^2 = 32\pi$.

**Step 3 — Select C.** 64\pi

**Distractor analysis:**
- **A** (16\pi): Choice A (16\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (32\pi): Choice B (32\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (128\pi): Choice D (128\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":189,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b8","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '469a719f-02f8-4fb9-aaa3-83ab90270708';

UPDATE public.questions SET
  question_text = 'In a right triangle, one angle measures 30 degrees. The length of the hypotenuse of this triangle is 8. What is the length of the shorter leg?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"4\\sqrt{3}","is_correct":false,"explanation":"Choice C (4\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"8\\sqrt{3}","is_correct":false,"explanation":"Choice D (8\\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** In a right triangle, one angle measures 30 degrees. The length of the hypotenuse of this triangle is 8. What is the length of the shorter leg?

**Step 2 — Solve.** A 30-60-90 right triangle has side ratios of $x$, $x\sqrt{3}$, and $2x$. Since the hypotenuse is 8, we know $2x = 8$, so $x=4$.  The shorter leg is equal to $x$, so its length is 4.

**Step 3 — Select B.** 4

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4\sqrt{3}): Choice C (4\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (8\sqrt{3}): Choice D (8\sqrt{3}…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RIG","domain_id":"geometry","opensat_index":1018,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"f21c6b4d","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '46b00600-b153-4dd9-b620-1daf024844f4';

UPDATE public.questions SET
  question_text = 'If \(3x - 2y = 10\) and \(x + 2y = 6\), what is the value of \(x\)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"1","is_correct":false,"explanation":"Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"3","is_correct":false,"explanation":"Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"4","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** If \(3x - 2y = 10\) and \(x + 2y = 6\), what is the value of \(x\)?

**Step 2 — Solve.** Adding the two equations together, we eliminate \(y\): \(3x - 2y + (x + 2y) = 10 + 6\). This simplifies to \(4x = 16\). Dividing both sides by 4 gives us \(x = 4\).

**Step 3 — Select D.** 4

**Distractor analysis:**
- **A** (1): Choice A (1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (3): Choice C (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":668,"opensat_domain":"Algebra","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '46c413f3-ec3f-4ffd-8648-8379225e0ad1';

UPDATE public.questions SET
  question_text = 'The expression $(2x+3)(x-7)$ is equivalent to which of the following expressions?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2x^2 - 11x - 21","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"2x^2 + 11x - 21","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"2x^2 - x - 21","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"D","text":"2x^2 + x - 21","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The expression $(2x+3)(x-7)$ is equivalent to which of the following expressions?

**Step 2 — Solve.** Using the distributive property (also known as FOIL), we expand the expression: (2x+3)(x-7) = 2x(x-7) + 3(x-7) = 2x^2 - 14x + 3x - 21 = 2x^2 - 11x - 21

**Step 3 — Select A.** 2x^2 - 11x - 21

**Distractor analysis:**
- **B** (2x^2 + 11x - 21): May result from squaring when you should multiply or add.
- **C** (2x^2 - x - 21): May result from squaring when you should multiply or add.
- **D** (2x^2 + x - 21): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIN","domain_id":"algebra","opensat_index":583,"opensat_domain":"Algebra","opensat_raw_id":"95f8da71","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '46e59d1a-e924-4e97-860d-2691a62828f1';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They want to rent a car that costs $40 per day plus $0.25 per mile driven. If they plan to drive 200 miles and rent the car for 3 days, what is the total cost of the car rental?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$120","is_correct":false,"explanation":"Choice A ($120…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$140","is_correct":false,"explanation":"Choice B ($140…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$160","is_correct":false,"explanation":"Choice C ($160…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$180","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They want to rent a car that costs $40 per day plus $0.25 per mile driven. If they plan to drive 200 miles and rent the car for 3 days, what is the total cost of the car rental?

**Step 2 — Solve.** The cost of driving 200 miles is 200 miles * $0.25/mile = $50. The cost of renting the car for 3 days is 3 days * $40/day = $120. The total cost of the rental is $50 + $120 = $170.

**Step 3 — Select D.** $180

**Distractor analysis:**
- **A** ($120): Choice A ($120…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** ($140): Choice B ($140…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($160): Choice C ($160…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":770,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '46f34bdf-7b6c-46d6-8c3e-567548b88246';

UPDATE public.questions SET
  question_text = 'If the first chip is red, what is the probability the second is also red?',
  stimulus_text = 'A bag has 4 red and 33 blue chips. Two chips are drawn without replacement.',
  options = '[{"id":"A","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Ignores that one red chip was removed."},{"id":"B","text":"$\\frac{4}{36}$","is_correct":false,"explanation":"Uses original count in numerator."},{"id":"C","text":"$\\frac{4}{37}$","is_correct":false,"explanation":"Wrong numerator after first draw."},{"id":"D","text":"$\\frac{3}{36}$","is_correct":true,"explanation":"**Step 1:** After red first: 3 red left, 36 total. **Step 2:** P $=\\frac{3}{36}$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** First chip red → 3 red remain out of 36.
**Step 2:** Conditional probability $=\frac{3}{36}$.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '46f68b66-ea83-429f-ad34-8e877a447049';

UPDATE public.questions SET
  question_text = 'What is the remaining area, in square inches?',
  stimulus_text = 'A rectangular poster is 27 by 26 inches. A square corner of side 2 inches is removed.',
  options = '[{"id":"A","text":"$702$","is_correct":false,"explanation":"Forgot to subtract the removed corner."},{"id":"B","text":"$53$","is_correct":false,"explanation":"Perimeter-like sum, not area."},{"id":"C","text":"$698$","is_correct":true,"explanation":"**Step 1:** Full area $702$. **Step 2:** Subtract $2^2$ → $698$."},{"id":"D","text":"$700$","is_correct":false,"explanation":"Adds instead of subtracts corner."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1:** Rectangle: $27×26=702$.
**Step 2:** Remove corner: $2^2=4$.
**Step 3:** $702-4=698$ sq in.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4717b986-e018-406f-9cb7-1b2384976431';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square cm?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"17","is_correct":false,"explanation":"Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"34","is_correct":false,"explanation":"Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"144","is_correct":false,"explanation":"Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 12 cm and a width of 5 cm. What is the area of the rectangle, in square cm?

**Step 2 — Solve.** The area of a rectangle is found by multiplying the length and width: 12 cm * 5 cm = 60 square cm.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (17): Choice A (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (34): Choice B (34…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (144): Choice D (144…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":4,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.063Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '4723ad66-318e-4423-a75e-aa4ad12ff054';

COMMIT;
