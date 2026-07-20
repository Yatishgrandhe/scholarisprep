BEGIN;
UPDATE public.questions SET
  question_text = 'A circle with center O has a radius of 5. If point A lies on the circle and $\angle AOB = 120^\circ$, what is the length of minor arc AB?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"$\\frac{10\\pi}{3}$","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"$\\frac{20\\pi}{3}$","is_correct":false,"explanation":"Choice B ($\\frac{20\\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\frac{10\\pi}{6}$","is_correct":false,"explanation":"Choice C ($\\frac{10\\pi}{6}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\frac{5\\pi}{3}$","is_correct":false,"explanation":"Choice D ($\\frac{5\\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A circle with center O has a radius of 5. If point A lies on the circle and $\angle AOB = 120^\circ$, what is the length of minor arc AB?

**Step 2 — Solve.** The length of an arc is a fraction of the circumference of the circle, determined by the central angle of the arc. The fraction is the ratio of the arc''s central angle to 360 degrees. In this case, the ratio is $\frac{120^\circ}{360^\circ} = \frac{1}{3}$.  The circumference of the circle is given by $2\pi r = 2\pi (5) = 10\pi$.  Therefore, the length of minor arc AB is $\frac{1}{3} \cdot 10\pi = \frac{10\pi}{3}$.

**Step 3 — Select A.** $\frac{10\pi}{3}$

**Distractor analysis:**
- **B** ($\frac{20\pi}{3}$): Choice B ($\frac{20\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\frac{10\pi}{6}$): Choice C ($\frac{10\pi}{6}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** ($\frac{5\pi}{3}$): Choice D ($\frac{5\pi}{3}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":227,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"a9012a34","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0fb09a26-e1f2-4ed5-9092-903a89f6e5b1';

UPDATE public.questions SET
  question_text = 'The equation $x^2 - 6x + k = 0$ has exactly one solution. What is the value of $k$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"9","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"-9","is_correct":false,"explanation":"Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"36","is_correct":false,"explanation":"Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"-36","is_correct":false,"explanation":"Choice D (-36…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** The equation $x^2 - 6x + k = 0$ has exactly one solution. What is the value of $k$?

**Step 2 — Solve.** A quadratic equation has exactly one solution when its discriminant is equal to 0. The discriminant of the quadratic equation  is , where a, b, and c are the coefficients of the quadratic equation.  In this equation, a=1, b=-6, and c=k.  Substituting these values into the discriminant formula yields .  Setting the discriminant equal to zero yields , or k = 9.

**Step 3 — Select A.** 9

**Distractor analysis:**
- **B** (-9): Choice B (-9…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (36): Choice C (36…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (-36): Choice D (-36…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":912,"opensat_domain":"Advanced Math","opensat_raw_id":"7679a5a5","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0fcd74b8-fec0-41c1-9f1e-792691b73d60';

UPDATE public.questions SET
  question_text = 'A rectangle has a length of 10 centimeters and a width of 6 centimeters. What is the area, in square centimeters, of the rectangle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"16","is_correct":false,"explanation":"Choice A (16…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"32","is_correct":false,"explanation":"Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"60","is_correct":true,"explanation":"Correct (C). Matches the worked solution above."},{"id":"D","text":"100","is_correct":false,"explanation":"Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'C',
  explanation = '**Step 1 — Understand the problem.** A rectangle has a length of 10 centimeters and a width of 6 centimeters. What is the area, in square centimeters, of the rectangle? 

**Step 2 — Solve.** The area of a rectangle is calculated by multiplying its length and width.  Therefore, the area of the rectangle is (10)(6) = 60 square centimeters.

**Step 3 — Select C.** 60

**Distractor analysis:**
- **A** (16): Choice A (16…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (32): Choice B (32…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (100): Choice D (100…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"ARE","domain_id":"geometry","opensat_index":847,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_c4","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0fd652d0-3cf5-44c5-8eca-3dfa4fde7d3a';

UPDATE public.questions SET
  question_text = 'The function $f(x)$ is defined as $f(x) = \frac{x^2 - 4}{x - 2}$.  What is the value of $f(2)$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"0","is_correct":false,"explanation":"Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"2","is_correct":false,"explanation":"Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"4","is_correct":false,"explanation":"Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"The expression is undefined.","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** The function $f(x)$ is defined as $f(x) = \frac{x^2 - 4}{x - 2}$.  What is the value of $f(2)$?

**Step 2 — Solve.** The function $f(x)$ is undefined when $x = 2$ because this would make the denominator of the fraction equal to 0.  Dividing by 0 is undefined.

**Step 3 — Select D.** The expression is undefined.

**Distractor analysis:**
- **A** (0): Choice A (0…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (2): Choice B (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (4): Choice C (4…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRE","domain_id":"advanced","opensat_index":417,"opensat_domain":"Advanced Math","opensat_raw_id":"random_id_a7","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.057Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '0fe0cbc4-cf87-446e-adbf-a17bd7e23943';

UPDATE public.questions SET
  question_text = 'If the original price is $120$, what is the final price after both changes?',
  stimulus_text = 'A retail price is increased by 25% and then discounted by 10%.',
  options = '[{"id":"A","text":"$135$","is_correct":true,"explanation":"**Step 1:** $120×1.25=150$. **Step 2:** $150×0.9=135$."},{"id":"B","text":"$120$","is_correct":false,"explanation":"Ignores both percent changes."},{"id":"C","text":"$150$","is_correct":false,"explanation":"Only applies the markup."},{"id":"D","text":"$145$","is_correct":false,"explanation":"Adds 10 without reason."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1:** Markup: $120×(1+25/100)=150$.
**Step 2:** Discount: $150×(1-10/100)=135$.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"original":true,"generator":"scholaris_template_v1","explanation_v2":true,"math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '0ff87174-17a6-47a3-8e00-5805de93f34f';

UPDATE public.questions SET
  question_text = 'In the xy-plane, a circle with center (2, -3) passes through the point (5, 0). What is the radius of the circle? ',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"2","is_correct":false,"explanation":"Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"3","is_correct":false,"explanation":"Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"C","text":"$\\sqrt{10}$","is_correct":false,"explanation":"Choice C ($\\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"$\\sqrt{34}$","is_correct":true,"explanation":"Correct (D). Matches the worked solution above."}]'::jsonb,
  correct_answer = 'D',
  explanation = '**Step 1 — Understand the problem.** In the xy-plane, a circle with center (2, -3) passes through the point (5, 0). What is the radius of the circle? 

**Step 2 — Solve.** The radius of the circle is the distance between the center of the circle and any point on the circle.  We can use the distance formula to find the distance between (2, -3) and (5, 0).  The distance formula is $\sqrt{(x_2-x_1)^2 + (y_2-y_1)^2}$. Substituting (2, -3) for $(x_1, y_1)$ and (5, 0) for $(x_2, y_2)$, we get $\sqrt{(5-2)^2 + (0-(-3))^2} = \sqrt{3^2 + 3^2} = \sqrt{18} = 3\sqrt{2}$.  Thus, the radius of the circle is $\sqrt{34}$.

**Step 3 — Select D.** $\sqrt{34}$

**Distractor analysis:**
- **A** (2): Choice A (2…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **B** (3): Choice B (3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** ($\sqrt{10}$): Choice C ($\sqrt{10}$…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"CIR","domain_id":"geometry","opensat_index":345,"opensat_domain":"Geometry and Trigonometry","opensat_raw_id":"random_id_b6","opensat_difficulty":"Hard","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"hard"}'::jsonb,
  updated_at = now()
WHERE id = '103a53d3-a873-482d-80b9-8c98e1ad3514';

UPDATE public.questions SET
  question_text = 'A group of friends are planning a trip. They decide to rent a car for $\$35 per day, plus a one-time fee of $\$20 for insurance. If the total cost of renting the car for $\$d$ days is $\$c$, which equation represents the total cost?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"c = 35d + 20","is_correct":true,"explanation":"Correct (A). Matches the worked solution above."},{"id":"B","text":"c = 35 + 20d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"C","text":"c = (35 + 20)d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."},{"id":"D","text":"c = 35d + 20d","is_correct":false,"explanation":"Adds quantities that should be multiplied or compares unrelated terms."}]'::jsonb,
  correct_answer = 'A',
  explanation = '**Step 1 — Understand the problem.** A group of friends are planning a trip. They decide to rent a car for $\$35 per day, plus a one-time fee of $\$20 for insurance. If the total cost of renting the car for $\$d$ days is $\$c$, which equation represents the total cost?

**Step 2 — Solve.** The daily cost is represented by 35d, and the one-time insurance fee is represented by 20.  Therefore, the total cost is the sum of these two, represented by the equation c = 35d + 20.

**Step 3 — Select A.** c = 35d + 20

**Distractor analysis:**
- **B** (c = 35 + 20d): Adds quantities that should be multiplied or compares unrelated terms.
- **C** (c = (35 + 20)d): Adds quantities that should be multiplied or compares unrelated terms.
- **D** (c = 35d + 20d): Adds quantities that should be multiplied or compares unrelated terms.',
  difficulty = 'hard'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"RAT","domain_id":"psda","opensat_index":464,"opensat_domain":"Problem-Solving and Data Analysis","opensat_raw_id":"random_id_c1","opensat_difficulty":"Medium","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"medium"}'::jsonb,
  updated_at = now()
WHERE id = '105f2c35-42b0-43de-a67c-59d5c36efe89';

UPDATE public.questions SET
  question_text = 'What is the solution to the equation  $x^{2} - 2x - 3 = 0$?',
  stimulus_text = NULL,
  options = '[{"id":"A","text":"-3 and 1","is_correct":false,"explanation":"Choice A (-3 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"B","text":"-1 and 3","is_correct":true,"explanation":"Correct (B). Matches the worked solution above."},{"id":"C","text":"1 and -3","is_correct":false,"explanation":"Choice C (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question."},{"id":"D","text":"3 and -1","is_correct":false,"explanation":"Choice D (3 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question."}]'::jsonb,
  correct_answer = 'B',
  explanation = '**Step 1 — Understand the problem.** What is the solution to the equation  $x^{2} - 2x - 3 = 0$?

**Step 2 — Solve.** The equation is in the form of a quadratic equation, where the coefficients are 1, -2, and -3. This equation can be solved by factoring. The factors of the equation are (x - 3) and (x + 1), which equal 0 when x = 3 and x = -1, respectively. Therefore, the solutions are x = -1 and x = 3.

**Step 3 — Select B.** -1 and 3

**Distractor analysis:**
- **A** (-3 and 1): Choice A (-3 and 1…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **C** (1 and -3): Choice C (1 and -3…) reflects a common misread or arithmetic slip — re-check each operation against the question.
- **D** (3 and -1): Choice D (3 and -1…) reflects a common misread or arithmetic slip — re-check each operation against the question.',
  difficulty = 'medium'::public.difficulty,
  source_metadata = '{"section":"math","skill_id":"NRM","domain_id":"advanced","opensat_index":610,"opensat_domain":"Advanced Math","opensat_raw_id":"e60f8e2e","opensat_difficulty":"Easy","math_difficulty_upgrade":"math_difficulty_v1","math_difficulty_upgrade_at":"2026-06-12T20:03:17.058Z","prior_difficulty":"easy"}'::jsonb,
  updated_at = now()
WHERE id = '106035e4-6a09-4e7c-be15-1dbf9f303433';

COMMIT;
