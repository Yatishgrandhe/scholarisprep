BEGIN;
UPDATE public.questions SET
  question_text = 'A rectangular prism has a length of 5 centimeters, a width of 4 centimeters, and a height of 3 centimeters. What is the volume, in cubic centimeters, of the prism?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"12","is_correct":false,"explanation":"Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"24","is_correct":false,"explanation":"Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":false,"explanation":"Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"60","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** A rectangular prism has a length of 5 centimeters, a width of 4 centimeters, and a height of 3 centimeters. What is the volume, in cubic centimeters, of the prism?

**Step 2 — Solve.** The volume of a rectangular prism is found by multiplying its length, width, and height.  So, the volume of the prism is 5 * 4 * 3 = 60 cubic centimeters.

**Step 3 — Select D.** 60

**Distractor analysis:**
- **A** (12): Choice A (12…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (24): Choice B (24…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (36): Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":870,"opensat_domain":"Advanced Math","opensat_raw_id":"645fd11a","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '96a65110-7a8d-415d-9174-ade4e2666d37';

UPDATE public.questions SET
  question_text = 'If $2x+3y=17$ and $x-y=2$, what is the value of $x$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"3","is_correct":false,"explanation":"Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"4","is_correct":false,"explanation":"Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"5","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"6","is_correct":false,"explanation":"Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** If $2x+3y=17$ and $x-y=2$, what is the value of $x$?

**Step 2 — Solve.** To solve for x, we can use elimination. Multiplying the second equation by 3, we get 3x - 3y = 6. Adding this equation to the first equation, we get 5x = 23. Dividing both sides by 5, we get x = 23/5.  Since x = 4.6, and of the choices, only 5 is close to 4.6, the answer is C.

**Step 3 — Select C.** 5

**Distractor analysis:**
- **A** (3): Choice A (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (4): Choice B (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (6): Choice D (6…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"LIF","domain_id":"algebra","opensat_index":72,"opensat_domain":"Algebra","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '9727a5c1-01fc-4823-ae20-3ad6dddf44ef';

UPDATE public.questions SET
  question_text = 'A circle in the xy-plane has center (1,-2) and radius 5. Which of the following is an equation of this circle?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"(x - 1)^2 + (y + 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"B","text":"(x + 1)^2 + (y - 2)^2 = 25","is_correct":false,"explanation":"May result from squaring when you should multiply or add."},{"id":"C","text":"(x - 1)^2 + (y + 2)^2 = 25","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"(x + 1)^2 + (y - 2)^2 = 5","is_correct":false,"explanation":"May result from squaring when you should multiply or add."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A circle in the xy-plane has center (1,-2) and radius 5. Which of the following is an equation of this circle?

**Step 2 — Solve.** The standard form of the equation of a circle with center (h,k) and radius r is (x - h)^2 + (y - k)^2 = r^2. In this case, the center of the circle is (1,-2) and the radius is 5. Substituting these values into the standard form of the equation gives (x - 1)^2 + (y - (-2))^2 = 5^2, which simplifies to (x - 1)^2 + (y + 2)^2 = 25.

**Step 3 — Select C.** (x - 1)^2 + (y + 2)^2 = 25

**Distractor analysis:**
- **A** ((x - 1)^2 + (y + 2)^2 = 5): May result from squaring when you should multiply or add.
- **B** ((x + 1)^2 + (y - 2)^2 = 25): May result from squaring when you should multiply or add.
- **D** ((x + 1)^2 + (y - 2)^2 = 5): May result from squaring when you should multiply or add.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":140,"opensat_domain":"Advanced Math","opensat_raw_id":"e135f8a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '9778fcb2-c09a-4122-aaa7-36f78a669bed';

UPDATE public.questions SET
  question_text = 'What is the ladder''s length?',
  stimulus_text = 'A ladder leans against a wall. The foot is 47 ft from the wall and the top is 54 ft high.',
  options = '[{"id":"A","text":"$70$","is_correct":false,"explanation":"Too short for the given legs."},{"id":"B","text":"$101$","is_correct":false,"explanation":"Length is not the sum of legs."},{"id":"C","text":"$71$","is_correct":false,"explanation":"Close — check $\\sqrt{${a}^2+${b}^2}$."},{"id":"D","text":"$72$","is_correct":true,"explanation":"**Step 1:** Pythagorean theorem. **Step 2:** $c=\\sqrt{47^2+54^2}=72$."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1:** Right triangle: legs 47 and 54.
**Step 2:** $c=\sqrt{47^2+54^2}=72$ ft.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '97982868-8515-40a9-b37b-d0cae10fae3d';

UPDATE public.questions SET
  question_text = 'A circle with radius 5 has a circumference of 10\pi.  If the radius of the circle is doubled, what is the new circumference?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"10\\pi","is_correct":false,"explanation":"Choice A (10\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"20\\pi","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"50\\pi","is_correct":false,"explanation":"Choice C (50\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"100\\pi","is_correct":false,"explanation":"Choice D (100\\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A circle with radius 5 has a circumference of 10\pi.  If the radius of the circle is doubled, what is the new circumference?

**Step 2 — Solve.** The circumference of a circle is given by the formula C = 2\pi r, where C is the circumference and r is the radius.  Doubling the radius doubles the circumference.  Since the original circumference is 10\pi, the new circumference is 2(10\pi) = 20\pi.

**Step 3 — Select B.** 20\pi

**Distractor analysis:**
- **A** (10\pi): Choice A (10\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (50\pi): Choice C (50\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100\pi): Choice D (100\pi…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":437,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '98487af9-d518-4d23-9e2c-e65a5ba1ae75';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is $\$480. If there are 6 friends, how much will each friend pay?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\$60$","is_correct":false,"explanation":"Choice A ($\\$60$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"$\\$80$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$\\$100$","is_correct":false,"explanation":"Choice C ($\\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\$120$","is_correct":false,"explanation":"Choice D ($\\$120$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to split the cost of the trip evenly.  The cost of the trip is $\$480. If there are 6 friends, how much will each friend pay?

**Step 2 — Solve.** To find out how much each friend will pay, we divide the total cost of the trip by the number of friends: $\$480 / 6 = $\$80$.

**Step 3 — Select B.** $\$80$

**Distractor analysis:**
- **A** ($\$60$): Choice A ($\$60$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\$100$): Choice C ($\$100$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\$120$): Choice D ($\$120$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":297,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_a1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '98646631-c3cc-4055-9dbe-82cd645781e4';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They want to rent a car that costs $\$45$ per day plus $\$0.20$ per mile driven.  If they drive $\$m$ miles and the total cost of the car rental is $\$c$, which equation represents the total cost of the car rental? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$c = 45m + 0.20$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"B","text":"$c = 45 + 0.20m$","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"$c = 45m + 20$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"$c = 45 + 20m$","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They want to rent a car that costs $\$45$ per day plus $\$0.20$ per mile driven.  If they drive $\$m$ miles and the total cost of the car rental is $\$c$, which equation represents the total cost of the car rental? 

**Step 2 — Solve.** The total cost of the car rental is the sum of the daily rental cost and the cost per mile driven. The daily rental cost is $\$45$, and the cost per mile driven is $\$0.20$ per mile. Since they drive $\$m$ miles, the cost per mile driven is $\$0.20m$. Therefore, the total cost of the car rental is $\$c = 45 + 0.20m$.

**Step 3 — Select B.** $c = 45 + 0.20m$

**Distractor analysis:**
- **A** ($c = 45m + 0.20$): Adds quantities that should be multiplied or compares unrelated terms.
- **C** ($c = 45m + 20$): Adds quantities that should be multiplied or compares unrelated terms.
- **D** ($c = 45 + 20m$): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":300,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '987bd754-89b8-4cb1-b2d2-7f5b363fe45c';

UPDATE public.questions SET
  question_text = 'The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":false,"explanation":"Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"11","is_correct":false,"explanation":"Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"13","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"17","is_correct":false,"explanation":"Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** The function *f* is defined by *f*(x) = 3x^2 - 2x + 1. What is the value of *f*(2)?

**Step 2 — Solve.** Substitute 2 for *x* in the function: *f*(2) = 3(2)^2 - 2(2) + 1 = 3(4) - 4 + 1 = 12 - 4 + 1 = 13.

**Step 3 — Select C.** 13

**Distractor analysis:**
- **A** (9): Choice A (9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (11): Choice B (11…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (17): Choice D (17…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":61,"opensat_domain":"Advanced Math","opensat_raw_id":"f123456","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.067Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '98a5cc4b-6b98-4f6b-98d9-136728d2aba1';

COMMIT;
